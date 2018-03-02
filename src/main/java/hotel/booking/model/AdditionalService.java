package hotel.booking.model;

import javax.persistence.*;

/**
 * Created by val on 01.03.2018.
 */

@Entity
@Table (name = "additional_services")
public class AdditionalService {
    @Id
    @GeneratedValue (strategy = GenerationType.IDENTITY)
    @Column (name = "additional_service_id")
    private int additional_service_id;

    @Column (name = "name")
    private String name;

    @Column (name = "price")
    private double price;
}
