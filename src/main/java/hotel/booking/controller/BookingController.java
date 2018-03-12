package hotel.booking.controller;

import hotel.booking.model.Booking;
import hotel.booking.service.BookingService;
import hotel.booking.service.RoomService;
import hotel.booking.service.UserService;
import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Controller;
import org.springframework.ui.Model;
import org.springframework.web.bind.annotation.ModelAttribute;
import org.springframework.web.bind.annotation.PathVariable;
import org.springframework.web.bind.annotation.RequestMapping;
import org.springframework.web.bind.annotation.RequestMethod;

/**
 * Created by val on 08.03.2018.
 */

@Controller
@RequestMapping("/bookings")
public class BookingController {
    @Autowired(required = true)
    private BookingService bookingService;

    @Autowired(required = true)
    private UserService userService;

    @Autowired(required = true)
    private RoomService roomService;

    public void setBookingService(BookingService bookingService) {this.bookingService = bookingService;}

    public void setUserService(UserService userService) {this.userService = userService;}

    public void setRoomService(RoomService roomService) {this.roomService = roomService;}

    @RequestMapping(value = "", method = RequestMethod.GET)
    public String getBookingsList(Model model) {
        model.addAttribute("booking", new Booking());
        model.addAttribute("bookingsList", bookingService.getBookings());
        return "bookings/index";
    }

    @RequestMapping(value = "/{id}", method = RequestMethod.GET)
    public String getBooking(@PathVariable("id") int id, Model model) {
        model.addAttribute("booking", this.bookingService.getBookingById(id));
        return "bookings/show";
    }

    @ModelAttribute("booking")
    public Booking newBooking() {
        return new Booking();
    }

    @RequestMapping(value = "/create", method = RequestMethod.GET)
    public String getCreateBooking(Model model) {
        model.addAttribute("usersList", userService.getUsers());
        model.addAttribute("roomsList", roomService.getRooms());
        return "bookings/new";
    }

    @RequestMapping(value = "", method = RequestMethod.POST)
    public String addNewBooking(@ModelAttribute("booking") Booking booking) {
        this.bookingService.addBooking(booking);
        return "redirect:/bookings";
    }

    @RequestMapping(value = "/{id}/edit", method = RequestMethod.GET)
    public String getUpdateBooking(@PathVariable("id") int id, Model model) {
        model.addAttribute("booking", this.bookingService.getBookingById(id));
        return "bookings/edit";
    }

    @RequestMapping(value = "/{id}", method = RequestMethod.PUT)
    public String updateBooking(@ModelAttribute("booking") Booking booking) {
        this.bookingService.updateBooking(booking);
        return "redirect:/bookings";
    }

    @RequestMapping(value = "/{id}", method = RequestMethod.DELETE)
    public String removeBooking(@PathVariable("id") int id) {
        this.bookingService.deleteBooking(id);
        return "redirect:/bookings";
    }
}