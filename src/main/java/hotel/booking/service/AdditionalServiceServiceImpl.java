package hotel.booking.service;

import hotel.booking.dao.AdditionalServiceDao;
import hotel.booking.model.AdditionalService;
import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Service;
import org.springframework.transaction.annotation.Transactional;
import java.util.List;

/**
 * Created by val on 08.03.2018.
 */

@Service
public class AdditionalServiceServiceImpl implements AdditionalServiceService {
    @Autowired(required = true)
    private AdditionalServiceDao additionalServiceDao;

    public void setAdditionalServiceDao(AdditionalServiceDao additionalServiceDao) {this.additionalServiceDao = additionalServiceDao;}

    @Transactional
    public void addAdditionalService(AdditionalService additionalService) {this.additionalServiceDao.addAdditionalService(additionalService);}
    @Transactional
    public void updateAdditionalService(AdditionalService additionalService) {this.additionalServiceDao.updateAdditionalService(additionalService);}
    @Transactional
    public void deleteAdditionalService(int id) {this.additionalServiceDao.deleteAdditionalService(id);}
    @Transactional
    public AdditionalService getAdditionalServiceById(int id) {return this.additionalServiceDao.getAdditionalServiceById(id);}
    @Transactional
    public List<AdditionalService> getAdditionalServices() {return this.additionalServiceDao.getAdditionalServices();}
}
