package hotel.booking.converter;

import hotel.booking.model.AdditionalService;
import hotel.booking.service.AdditionalServiceService;
import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.core.convert.converter.Converter;
import org.springframework.stereotype.Component;

/**
 * Created by val on 22.03.2018.
 */

@Component
public class IdToAdditionalService implements Converter<Object, AdditionalService> {

    @Autowired
    AdditionalServiceService additionalServiceService;

    public AdditionalService convert(Object obj) {
        int id = Integer.parseInt((String)obj);
        AdditionalService additionalService = additionalServiceService.getAdditionalServiceById(id);
        return additionalService;
    }
}
