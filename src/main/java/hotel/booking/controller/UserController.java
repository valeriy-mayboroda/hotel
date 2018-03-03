package hotel.booking.controller;

import hotel.booking.model.User;
import hotel.booking.service.UserService;
import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Controller;
import org.springframework.ui.Model;
import org.springframework.web.bind.annotation.ModelAttribute;
import org.springframework.web.bind.annotation.PathVariable;
import org.springframework.web.bind.annotation.RequestMapping;
import org.springframework.web.bind.annotation.RequestMethod;

/**
 * Created by val on 03.03.2018.
 */

@Controller
@RequestMapping("/users")
public class UserController {
    @Autowired(required = true)
    private UserService userService;

    public void setUserService(UserService userService) {this.userService = userService;}

    @RequestMapping(value = "", method = RequestMethod.GET)
    public String usersList(Model model) {
        model.addAttribute("user", new User());
        model.addAttribute("usersList", userService.getUsers()); //В users.jsp используем items=${usersList} для вывода пользователей
        return "users";
    }

    @RequestMapping(value = "/add", method = RequestMethod.POST)
    public String addUser(@ModelAttribute("user") User user) {
        if (user.getId() == 0) {
            this.userService.addUser(user);
        }
        else {
            this.userService.updateUser(user);
        }
        return "redirect:/users";
    }

    @RequestMapping("/remove/{id}")
    public String removeUser(@PathVariable("id") int id) {
        this.userService.deleteUser(id);
        return "redirect:/users";
    }

    @RequestMapping("/edit/{id}")
    public String editUser(@PathVariable("id") int id, Model model) {
        model.addAttribute("user", this.userService.getUserById(id));
        model.addAttribute("usersList", this.userService.getUsers());
        return "users";
    }
}
