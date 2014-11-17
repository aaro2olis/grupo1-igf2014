package eu.lucazanini.springsecurity;
 
import java.security.Principal;
 
import org.springframework.stereotype.Controller;
import org.springframework.ui.ModelMap;
import org.springframework.web.bind.annotation.RequestMapping;
import org.springframework.web.bind.annotation.RequestMethod;
import org.apache.log4j.Logger;
 
@Controller
public class LoginController {
 
    private static org.apache.log4j.Logger log = Logger
        .getLogger(LoginController.class);
 
    @RequestMapping(value = "/index", method = RequestMethod.GET)
    public String printWelcome(ModelMap model, Principal principal) {
 
    log.debug("LoginController");
    String name = principal.getName();
    model.addAttribute("username", name);
    model.addAttribute("message", "you are logged in");
 
    return "index";
 
    }
 
}