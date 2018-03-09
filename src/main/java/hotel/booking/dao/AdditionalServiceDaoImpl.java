package hotel.booking.dao;

import hotel.booking.model.AdditionalService;
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
public class AdditionalServiceDaoImpl implements AdditionalServiceDao {
    private static final Logger logger = LoggerFactory.getLogger(AdditionalServiceDaoImpl.class);

    @Autowired(required = true)
    private SessionFactory sessionFactory;

    public void setSessionFactory(SessionFactory sessionFactory) {this.sessionFactory = sessionFactory;}

    public void addAdditionalService(AdditionalService additionalService) {
        Session session = this.sessionFactory.getCurrentSession();
        session.persist(additionalService);
        logger.info("AdditionalService successfully saved. AdditionalService details: " + additionalService);
    }

    public void updateAdditionalService(AdditionalService additionalService) {
        Session session = this.sessionFactory.getCurrentSession();
        session.update(additionalService);
        logger.info("AdditionalService successfully updated. AdditionalService details: " + additionalService);
    }

    public void deleteAdditionalService(int id) {
        Session session = this.sessionFactory.getCurrentSession();
        AdditionalService additionalService = (AdditionalService)session.load(AdditionalService.class, new Integer(id));
        if (additionalService != null) {
            session.delete(additionalService);
        }
        logger.info("AdditionalService successfully deleted. AdditionalService details: " + additionalService);
    }

    public AdditionalService getAdditionalServiceById(int id) {
        Session session = this.sessionFactory.getCurrentSession();
        AdditionalService additionalService = (AdditionalService)session.load(AdditionalService.class, new Integer(id));
        logger.info("AdditionalService successfully loaded. AdditionalService details: " + additionalService);
        return additionalService;
    }

    @SuppressWarnings("unchecked")
    public List<AdditionalService> getAdditionalServices() {
        Session session = this.sessionFactory.getCurrentSession();
        List<AdditionalService> additionalServices = session.createQuery("from AdditionalService").list();
        for (AdditionalService additionalService : additionalServices)
            logger.info("AdditionalService list: " + additionalService);
        return additionalServices;
    }
}
