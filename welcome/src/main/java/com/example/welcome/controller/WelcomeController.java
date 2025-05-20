package com.example.welcome.controller;

import com.example.welcome.model.WelcomeModel;
import org.springframework.stereotype.Controller;
import org.springframework.ui.Model;
import org.springframework.web.bind.annotation.GetMapping;

@Controller
public class WelcomeController {

	@GetMapping("/welcome")
	public String showWelcomePage(Model model) {
	    WelcomeModel welcome = new WelcomeModel("Chào mừng bạn đến với ứng dụng Spring MVC!");
	    model.addAttribute("welcome", welcome);
	    return "welcome";  // trả về tên file welcome.jsp
	}
}
