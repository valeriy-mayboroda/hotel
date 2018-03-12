package hotel.booking.model;

import javax.persistence.*;
import java.sql.Date;

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

    @Column (name = "user_id", insertable = false, updatable = false)
    private int user_id;

    @Column (name = "room_id", insertable = false, updatable = false)
    private int room_id;

    @Column (name = "date_start")
    private java.sql.Date date_start;

    @Column (name = "date_end")
    private java.sql.Date date_end;

    @ManyToOne (fetch = FetchType.EAGER, cascade = CascadeType.REFRESH)
    @JoinColumn (name = "user_id")
    private User user;

    @ManyToOne (fetch = FetchType.EAGER, cascade = CascadeType.REFRESH)
    @JoinColumn (name = "room_id")
    private Room room;

    public int getId() {return id;}
    public void setId(int id) {this.id = id;}

    public int getUser_id() {return user_id;}
    public void setUser_id(int user_id) {this.user_id = user_id;}

    public int getRoom_id() {return room_id;}
    public void setRoom_id(int room_id) {this.room_id = room_id;}

    public Date getDate_start() {return date_start;}
    public void setDate_start(Date date_start) {this.date_start = date_start;}

    public Date getDate_end() {return date_end;}
    public void setDate_end(Date date_end) {this.date_end = date_end;}

    public User getUser() {return user;}
    public void setUser(User user) {this.user = user;}

    public Room getRoom() {return room;}
    public void setRoom(Room room) {this.room = room;}
}
