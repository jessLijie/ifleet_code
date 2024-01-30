package my.utm.ip.spring_jdbc.Controller;

import org.springframework.stereotype.Controller;
import org.springframework.web.bind.annotation.RequestMapping;
import org.springframework.web.servlet.ModelAndView;

@Controller
public class _Controller {
    @RequestMapping("/")
    ModelAndView login() {
        ModelAndView mv = new ModelAndView("login");
        return mv;
    }


    @RequestMapping("/home")
    ModelAndView homePage() {
        ModelAndView mv = new ModelAndView("home");
        return mv;
    }
}
