package hotel.booking.service;

import hotel.booking.model.User;
import java.util.List;

/**
 * Created by val on 03.03.2018.
 */
public interface UserService {
    void addUser(User user);
    void updateUser(User user);
    void deleteUser(int id);
    User getUserById(int id);
    List<User> getUsers();
}
