package hotel.booking.model;

import javax.persistence.*;

/**
 * Created by val on 01.03.2018.
 */

@Entity
@Table (name = "bookings")
public class Booking {
    @Id
    @GeneratedValue (strategy = GenerationType.IDENTITY)
    @Column (name = "id")
    private int id;

    @Column (name = "user_id")
    private int user_id;

    @Column (name = "room_id")
    private int room_id;

    @Column (name = "date_start")
    private java.sql.Date date_start;

    @Column (name = "date_end")
    private java.sql.Date date_end;
}
