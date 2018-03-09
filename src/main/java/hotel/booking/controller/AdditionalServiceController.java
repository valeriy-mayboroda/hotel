package hotel.booking.controller;

import hotel.booking.model.AdditionalService;
import hotel.booking.service.AdditionalServiceService;
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
@RequestMapping("/additionalservices")
public class AdditionalServiceController {
    @Autowired(required = true)
    private AdditionalServiceService additionalServiceService;

    public void setAdditionalServiceService(AdditionalServiceService additionalServiceService) {this.additionalServiceService = additionalServiceService;}

    @RequestMapping(value = "", method = RequestMethod.GET)
    public String getAdditionalServicesList(Model model) {
        model.addAttribute("additionalservice", new AdditionalService());
        model.addAttribute("additionalservicesList", additionalServiceService.getAdditionalServices());
        return "additionalservices/index";
    }

    @RequestMapping(value = "/{id}", method = RequestMethod.GET)
    public String getAdditionalService(@PathVariable("id") int id, Model model) {
        model.addAttribute("additionalservice", this.additionalServiceService.getAdditionalServiceById(id));
        return "additionalservices/show";
    }

    @ModelAttribute("additionalservice")
    public AdditionalService newAdditionalService() {
        return new AdditionalService();
    }

    @RequestMapping(value = "/create", method = RequestMethod.GET)
    public String getCreateAdditionalService() {
        return "additionalservices/new";
    }

    @RequestMapping(value = "", method = RequestMethod.POST)
    public String addNewAdditionalService(@ModelAttribute("additionalservice") AdditionalService additionalService) {
        this.additionalServiceService.addAdditionalService(additionalService);
        return "redirect:/additionalservices";
    }

    @RequestMapping(value = "/{id}/edit", method = RequestMethod.GET)
    public String getUpdateAdditionalService(@PathVariable("id") int id, Model model) {
        model.addAttribute("additionalservice", this.additionalServiceService.getAdditionalServiceById(id));
        return "additionalservices/edit";
    }

    @RequestMapping(value = "/{id}", method = RequestMethod.PUT)
    public String updateAdditionalService(@ModelAttribute("additionalservice") AdditionalService additionalService) {
        this.additionalServiceService.updateAdditionalService(additionalService);
        return "redirect:/additionalservices";
    }

    @RequestMapping(value = "/{id}", method = RequestMethod.DELETE)
    public String removeAdditionalService(@PathVariable("id") int id) {
        this.additionalServiceService.deleteAdditionalService(id);
        return "redirect:/additionalservices";
    }
}
