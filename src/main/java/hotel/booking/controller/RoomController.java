package hotel.booking.controller;

import hotel.booking.model.Room;
import hotel.booking.service.RoomService;
import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Controller;
import org.springframework.ui.Model;
import org.springframework.web.bind.annotation.ModelAttribute;
import org.springframework.web.bind.annotation.PathVariable;
import org.springframework.web.bind.annotation.RequestMapping;
import org.springframework.web.bind.annotation.RequestMethod;

/**
 * Created by val on 02.03.2018.
 */

@Controller
@RequestMapping("/rooms")
public class RoomController {
    @Autowired(required = true)
    private RoomService roomService;

    public void setRoomService(RoomService roomService) {this.roomService = roomService;}

    @RequestMapping(value = "", method = RequestMethod.GET)
    public String getRoomsList(Model model) {
        model.addAttribute("room", new Room());
        model.addAttribute("roomsList", roomService.getRooms());
        return "rooms/index";
    }

    @RequestMapping(value = "/{id}", method = RequestMethod.GET)
    public String getRoom(@PathVariable("id") int id, Model model) {
        model.addAttribute("room", this.roomService.getRoomById(id));
        return "rooms/show";
    }

    @ModelAttribute("room")
    public Room newRoom() {
        return new Room();
    }

    @RequestMapping(value = "/create", method = RequestMethod.GET)
    public String getCreateRoom() {
        return "rooms/new";
    }

    @RequestMapping(value = "", method = RequestMethod.POST)
    public String addNewRoom(@ModelAttribute("room") Room room) {
        this.roomService.addRoom(room);
        return "redirect:/rooms";
    }

    @RequestMapping(value = "/{id}/edit", method = RequestMethod.GET)
    public String getUpdateRoom(@PathVariable("id") int id, Model model) {
        model.addAttribute("room", this.roomService.getRoomById(id));
        return "rooms/edit";
    }

    @RequestMapping(value = "/{id}", method = RequestMethod.PUT)
    public String updateRoom(@ModelAttribute("room") Room room) {
        this.roomService.updateRoom(room);
        return "redirect:/rooms";
    }

    @RequestMapping(value = "/{id}", method = RequestMethod.DELETE)
    public String removeRoom(@PathVariable("id") int id) {
        this.roomService.deleteRoom(id);
        return "redirect:/rooms";
    }
}
