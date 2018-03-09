package hotel.booking.service;

import hotel.booking.dao.BookingDao;
import hotel.booking.model.Booking;
import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Service;
import org.springframework.transaction.annotation.Transactional;
import java.util.List;

/**
 * Created by val on 08.03.2018.
 */

@Service
public class BookingServiceImpl implements BookingService {
    @Autowired(required = true)
    private BookingDao bookingDao;

    public void setBookingDao(BookingDao bookingDao) {this.bookingDao = bookingDao;}

    @Transactional
    public void addBooking(Booking booking) {this.bookingDao.addBooking(booking);}
    @Transactional
    public void updateBooking(Booking booking) {this.bookingDao.updateBooking(booking);}
    @Transactional
    public void deleteBooking(int id) {this.bookingDao.deleteBooking(id);}
    @Transactional
    public Booking getBookingById(int id) {return this.bookingDao.getBookingById(id);}
    @Transactional
    public List<Booking> getBookings() {return this.bookingDao.getBookings();}
}
