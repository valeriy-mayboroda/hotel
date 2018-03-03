package hotel.booking.model;

import javax.persistence.*;

/**
 * Created by val on 01.03.2018.
 */

@Entity
@Table (name = "bookings_additional_services")
public class BookingAdditionalService {
    @Id
    @GeneratedValue (strategy = GenerationType.IDENTITY)
    @Column (name = "id")
    private int id;

    @Column (name = "additional_service_id")
    private int additional_service_id;

    @Column (name = "quantity")
    private int quantity;
}
