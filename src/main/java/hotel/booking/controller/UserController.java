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
    public String getUsersList(Model model) {
        model.addAttribute("user", new User());
        model.addAttribute("usersList", userService.getUsers()); //В users.jsp используем items=${usersList} для вывода пользователей
        return "users_view/users";
    }

    @RequestMapping(value = "/{id}", method = RequestMethod.GET)
    public String getUser(@PathVariable("id") int id, Model model) {
        model.addAttribute("user", this.userService.getUserById(id));
        return "users_view/usersdata";
    }

    @ModelAttribute("user")
    public User newUser() {
        return new User();
    }

    @RequestMapping(value = "/create", method = RequestMethod.GET)
    public String getCreateUser() {
        return "users_view/userscreate";
    }

    @RequestMapping(value = "", method = RequestMethod.POST)
    public String addNewUser(@ModelAttribute("user") User user) {
        this.userService.addUser(user);
        return "redirect:/users";
    }

    @RequestMapping(value = "/{id}/edit", method = RequestMethod.GET)
    public String getUpdateUser(@PathVariable("id") int id, Model model) {
        model.addAttribute("user", this.userService.getUserById(id));
        return "users_view/usersedit";
    }

    @RequestMapping(value = "/{id}/edit", method = RequestMethod.POST)
    public String updateUser(@ModelAttribute("user") User user) {
        this.userService.updateUser(user);
        return "redirect:/users";
    }

    @RequestMapping(value = "/{id}/remove")
    public String removeUser(@PathVariable("id") int id) {
        this.userService.deleteUser(id);
        return "redirect:/users";
    }
}
