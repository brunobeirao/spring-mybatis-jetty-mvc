package bruno.beirao.spring.controller;

import org.springframework.stereotype.Controller;
import org.springframework.web.bind.annotation.RequestMapping;

@Controller
@RequestMapping(value = { "/about" })
public class AboutController {
    
   	@RequestMapping("/controller")
	public String about() {
		return "about";
	}
}

