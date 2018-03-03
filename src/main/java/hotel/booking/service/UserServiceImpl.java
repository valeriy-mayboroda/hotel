package hotel.booking.service;

import hotel.booking.dao.UserDao;
import hotel.booking.model.User;
import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Service;
import org.springframework.transaction.annotation.Transactional;
import java.util.List;

/**
 * Created by val on 03.03.2018.
 */

@Service
public class UserServiceImpl implements UserService {
    @Autowired(required = true)
    private UserDao userDao;

    public void setUserDao(UserDao userDao) {this.userDao = userDao;}

    @Transactional
    public void addUser(User user) {this.userDao.addUser(user);}
    @Transactional
    public void updateUser(User user) {this.userDao.updateUser(user);}
    @Transactional
    public void deleteUser(int id) {this.userDao.deleteUser(id);}
    @Transactional
    public User getUserById(int id) {return this.userDao.getUserById(id);}
    @Transactional
    public List<User> getUsers() {return this.userDao.getUsers();}
}
