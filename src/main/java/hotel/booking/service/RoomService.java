package hotel.booking.service;

import hotel.booking.model.Room;

import java.util.List;

/**
 * Created by val on 02.03.2018.
 */

public interface RoomService {
    void addRoom(Room room);
    void updateRoom(Room room);
    void deleteRoom(int id);
    Room getRoomById(int id);
    List<Room> getRooms();
}
