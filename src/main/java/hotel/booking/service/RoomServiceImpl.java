package hotel.booking.service;

import hotel.booking.dao.RoomDao;
import hotel.booking.model.Room;
import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Service;
import org.springframework.transaction.annotation.Transactional;
import java.util.List;

/**
 * Created by val on 02.03.2018.
 */

@Service
public class RoomServiceImpl implements RoomService {
    @Autowired(required = true)
    private RoomDao roomDao;

    public void setRoomDao(RoomDao roomDao) {this.roomDao = roomDao;}

    @Transactional
    public void addRoom(Room room) {this.roomDao.addRoom(room);}
    @Transactional
    public void updateRoom(Room room) {this.roomDao.updateRoom(room);}
    @Transactional
    public void deleteRoom(int id) {this.roomDao.deleteRoom(id);}
    @Transactional
    public Room getRoomById(int id) {return this.roomDao.getRoomById(id);}
    @Transactional
    public List<Room> getRooms() {return this.roomDao.getRooms();}
}
