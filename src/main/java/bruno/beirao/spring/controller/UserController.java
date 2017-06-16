package bruno.beirao.spring.controller;

import java.util.List;
import java.util.Map;

import org.springframework.stereotype.Controller;
import org.springframework.web.bind.annotation.RequestMapping;
import org.springframework.web.bind.annotation.RequestMethod;
import org.springframework.web.bind.annotation.RequestParam;

import bruno.beirao.spring.model.User;
import bruno.beirao.spring.model.UserService;

@Controller
@RequestMapping(value = { "/user" })
public class UserController {

	private UserService userService;
	
	@RequestMapping(method = RequestMethod.GET)
	public String list(Map<String, Object> model) {
		userService = new UserService();
		List<User> listUsers = userService.getUsers();
		model.put("listUsers", listUsers);
		return "/user/list";
	}
	
	@RequestMapping(value = "/findUsers", method = RequestMethod.POST)
	public String filterUsers(Map<String, Object> model, @RequestParam String palavra) {
		List<User> listUsers = userService.findUser(palavra);
		model.put("listUsers", listUsers);
		return "/user/list";
	}
	
	@RequestMapping("/about")
	public String about() {
		return "about";
	}
}
