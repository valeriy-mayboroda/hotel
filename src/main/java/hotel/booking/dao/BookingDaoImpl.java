package hotel.booking.dao;

import hotel.booking.model.Booking;
import org.hibernate.Session;
import org.hibernate.SessionFactory;
import org.slf4j.Logger;
import org.slf4j.LoggerFactory;
import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Repository;
import java.util.List;

/**
 * Created by val on 08.03.2018.
 */

@Repository
public class BookingDaoImpl implements BookingDao {
    private static final Logger logger = LoggerFactory.getLogger(BookingDaoImpl.class);

    @Autowired(required = true)
    private SessionFactory sessionFactory;

    public void setSessionFactory(SessionFactory sessionFactory) {this.sessionFactory = sessionFactory;}


    public void addBooking(Booking booking) {
        Session session = this.sessionFactory.getCurrentSession();
        session.persist(booking);
        logger.info("Booking successfully saved. Booking details: " + booking);
    }

    public void updateBooking(Booking booking) {
        Session session = this.sessionFactory.getCurrentSession();
        session.update(booking);
        logger.info("Booking successfully updated. Booking details: " + booking);
    }

    public void deleteBooking(int id) {
        Session session = this.sessionFactory.getCurrentSession();
        Booking booking = (Booking)session.load(Booking.class, new Integer(id));
        if (booking != null) {
            session.delete(booking);
        }
        logger.info("Booking successfully deleted. Booking details: " + booking);
    }

    public Booking getBookingById(int id) {
        Session session = this.sessionFactory.getCurrentSession();
        Booking booking = (Booking)session.load(Booking.class, new Integer(id));
        logger.info("Booking successfully loaded. Booking details: " + booking);
        return booking;
    }

    @SuppressWarnings("unchecked")
    public List<Booking> getBookings() {
        Session session = this.sessionFactory.getCurrentSession();
        List<Booking> bookings = session.createQuery("from Booking").list();
        for (Booking booking : bookings)
            logger.info("Booking list: " + booking);
        return bookings;
    }
}
