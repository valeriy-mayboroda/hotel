package hotel.booking.dao;

import hotel.booking.model.User;
import org.hibernate.Session;
import org.hibernate.SessionFactory;
import org.slf4j.Logger;
import org.slf4j.LoggerFactory;
import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Repository;
import java.util.List;

/**
 * Created by val on 03.03.2018.
 */

@Repository
public class UserDaoImpl implements UserDao {

    private static final Logger logger = LoggerFactory.getLogger(UserDaoImpl.class);

    @Autowired(required = true)
    private SessionFactory sessionFactory;

    public void setSessionFactory(SessionFactory sessionFactory) {this.sessionFactory = sessionFactory;}

    public void addUser(User user) {
        Session session = this.sessionFactory.getCurrentSession();
        session.persist(user);
        logger.info("User successfully saved. User details: " + user);
    }

    public void updateUser(User user) {
        Session session = this.sessionFactory.getCurrentSession();
        session.update(user);
        logger.info("User successfully updated. User details: " + user);
    }

    public void deleteUser(int id) {
        Session session = this.sessionFactory.getCurrentSession();
        User user = (User)session.load(User.class, new Integer(id));
        if (user != null) {
            session.delete(user);
        }
        logger.info("User successfully deleted. User details: " + user);
    }

    public User getUserById(int id) {
        Session session = this.sessionFactory.getCurrentSession();
        User user = (User)session.load(User.class, new Integer(id));
        logger.info("User successfully loaded. User details: " + user);
        return user;
    }

    @SuppressWarnings("unchecked")
    public List<User> getUsers() {
        Session session = this.sessionFactory.getCurrentSession();
        List<User> users = session.createQuery("from User").list();
        for (User user : users)
            logger.info("User list: " + user);
        return users;
    }
}
