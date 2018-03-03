package hotel.booking.dao;

import hotel.booking.model.Room;
import org.hibernate.Session;
import org.hibernate.SessionFactory;
import org.slf4j.Logger;
import org.slf4j.LoggerFactory;
import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Repository;
import java.util.List;

/**
 * Created by val on 02.03.2018.
 */

@Repository
public class RoomDaoImpl implements RoomDao {
    private static final Logger logger = LoggerFactory.getLogger(RoomDaoImpl.class);

    @Autowired(required = true)
    private SessionFactory sessionFactory;

    public void setSessionFactory(SessionFactory sessionFactory) {this.sessionFactory = sessionFactory;}

    public void addRoom(Room room) {
        Session session = this.sessionFactory.getCurrentSession();
        session.persist(room);
        logger.info("Room successfully saved. Room details: " + room);
    }

    public void updateRoom(Room room) {
        Session session = this.sessionFactory.getCurrentSession();
        session.update(room);
        logger.info("Room successfully updated. Room details: " + room);
    }

    public void deleteRoom(int id) {
        Session session = this.sessionFactory.getCurrentSession();
        Room room = (Room)session.load(Room.class, new Integer(id));
        if (room != null) {
            session.delete(room);
        }
        logger.info("Room successfully deleted. Room details: " + room);
    }

    public Room getRoomById(int id) {
        Session session = this.sessionFactory.getCurrentSession();
        Room room = (Room)session.load(Room.class, new Integer(id));
        logger.info("Room successfully loaded. Room details: " + room);
        return room;
    }

    @SuppressWarnings("unchecked")
    public List<Room> getRooms() {
        Session session = this.sessionFactory.getCurrentSession();
        List<Room> rooms = session.createQuery("from Room").list();
        for (Room room : rooms)
            logger.info("Room list: " + room);
        return rooms;
    }
}
