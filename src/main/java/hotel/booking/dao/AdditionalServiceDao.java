package hotel.booking.dao;

import hotel.booking.model.AdditionalService;
import java.util.List;

/**
 * Created by val on 08.03.2018.
 */

public interface AdditionalServiceDao {
    void addAdditionalService(AdditionalService additionalService);
    void updateAdditionalService(AdditionalService additionalService);
    void deleteAdditionalService(int id);
    AdditionalService getAdditionalServiceById(int id);
    List<AdditionalService> getAdditionalServices();
}
