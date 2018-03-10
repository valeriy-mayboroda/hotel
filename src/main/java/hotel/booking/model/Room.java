package hotel.booking.model;

import javax.persistence.*;
import java.util.List;

/**
 * Created by val on 28.02.2018.
 */

@Entity
@Table (name = "rooms")
public class Room {
    @Id
    @GeneratedValue (strategy = GenerationType.IDENTITY)
    @Column (name = "id")
    private int id;

    @Column (name = "number")
    private int number;

    @Column (name = "category")
    private String category;

    @Column (name = "price")
    private double price;

    @OneToMany(fetch = FetchType.LAZY, mappedBy = "room", cascade = CascadeType.ALL)
    private List<Booking> bookings;

    public int getId() {return id;}
    public void setId(int id) {this.id = id;}

    public int getNumber() {return number;}
    public void setNumber(int number) {this.number = number;}

    public String getCategory() {return category;}
    public void setCategory(String category) {this.category = category;}

    public double getPrice() {return price;}
    public void setPrice(double price) {this.price = price;}

    public List<Booking> getBookings() {return bookings;}
    public void setBookings(List<Booking> bookings) {this.bookings = bookings;}
}
