package hotel.booking.service;

import hotel.booking.model.Booking;
import java.util.List;

/**
 * Created by val on 08.03.2018.
 */

public interface BookingService {
    void addBooking(Booking booking);
    void updateBooking(Booking booking);
    void deleteBooking(int id);
    Booking getBookingById(int id);
    List<Booking> getBookings();
}
