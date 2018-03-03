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
    public String roomsList(Model model) {
        model.addAttribute("room", new Room());
        model.addAttribute("roomsList", roomService.getRooms()); //В rooms.jsp используем items=${roomsList} для вывода комнат
        return "rooms";
    }

    @RequestMapping(value = "/add", method = RequestMethod.POST)
    public String addRoom(@ModelAttribute("room") Room room) {
        if (room.getId() == 0) {
            this.roomService.addRoom(room);
        }
        else {
            this.roomService.updateRoom(room);
        }
        return "redirect:/rooms";
    }

    @RequestMapping("/remove/{id}")
    public String removeRoom(@PathVariable("id") int id) {
        this.roomService.deleteRoom(id);
        return "redirect:/rooms";
    }

    @RequestMapping("/edit/{id}")
    public String editRoom(@PathVariable("id") int id, Model model) {
        model.addAttribute("room", this.roomService.getRoomById(id));
        model.addAttribute("roomsList", this.roomService.getRooms());
        return "rooms";
    }
}
