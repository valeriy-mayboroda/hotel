package hotel.booking.model;

import javax.persistence.*;
import java.util.ArrayList;
import java.util.List;

/**
 * Created by val on 01.03.2018.
 */

@Entity
@Table (name = "additional_services")
public class AdditionalService {
    @Id
    @GeneratedValue (strategy = GenerationType.IDENTITY)
    @Column (name = "id")
    private int id;

    @Column (name = "name")
    private String name;

    @Column (name = "price")
    private double price;

    @ManyToMany(mappedBy = "additionalServices")
    private List<Booking> additionalServices = new ArrayList<Booking>();

    public int getId() {return id;}
    public void setId(int id) {this.id = id;}

    public String getName() {return name;}
    public void setName(String name) {this.name = name;}

    public double getPrice() {return price;}
    public void setPrice(double price) {this.price = price;}
}
