package hotel.booking.service;

import hotel.booking.model.AdditionalService;
import java.util.List;

/**
 * Created by val on 08.03.2018.
 */

public interface AdditionalServiceService {
    void addAdditionalService(AdditionalService additionalService);
    void updateAdditionalService(AdditionalService additionalService);
    void deleteAdditionalService(int id);
    AdditionalService getAdditionalServiceById(int id);
    List<AdditionalService> getAdditionalServices();
}
