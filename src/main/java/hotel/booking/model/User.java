package hotel.booking.model;

import javax.persistence.*;
import java.util.List;

/**
 * Created by val on 01.03.2018.
 */

@Entity
@Table (name = "users")
public class User {
    @Id
    @GeneratedValue (strategy = GenerationType.IDENTITY)
    @Column (name = "id")
    private int id;

    @Column (name = "first_name")
    private String first_name;

    @Column (name = "last_name")
    private String last_name;

    @Column (name = "email")
    private String email;

    @Column (name = "password")
    private String password;

    @Column (name = "password_confirmation")
    private String password_confirmation;

    @OneToMany(fetch = FetchType.LAZY, mappedBy = "user", cascade = CascadeType.ALL)
    private List<Booking> bookings;

    public int getId() {return id;}
    public void setId(int id) {this.id = id;}

    public String getFirst_name() {return first_name;}
    public void setFirst_name(String first_name) {this.first_name = first_name;}

    public String getLast_name() {return last_name;}
    public void setLast_name(String last_name) {this.last_name = last_name;}

    public String getEmail() {return email;}
    public void setEmail(String email) {this.email = email;}

    public String getPassword() {return password;}
    public void setPassword(String password) {this.password = password;}

    public String getPassword_confirmation() {return password_confirmation;}
    public void setPassword_confirmation(String password_confirmation) {this.password_confirmation = password_confirmation;}

    public List<Booking> getBookings() {return bookings;}
    public void setBookings(List<Booking> bookings) {this.bookings = bookings;}
}
