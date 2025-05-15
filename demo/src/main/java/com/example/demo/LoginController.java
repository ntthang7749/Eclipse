package com.example.demo;

import org.springframework.stereotype.Controller;
import org.springframework.ui.Model;
import org.springframework.web.bind.annotation.GetMapping;
import org.springframework.web.bind.annotation.PostMapping;
import org.springframework.web.bind.annotation.RequestParam;

@Controller
public class LoginController {

    @GetMapping("/login")
    public String showLoginForm() {
        return "login";
    }

    @PostMapping("/login")
    public String processLogin(@RequestParam("username") String username,
                               @RequestParam("password") String password,
                               Model model) {
        if ("admin".equals(username) && "123".equals(password)) {
            model.addAttribute("message", "Đăng ký thành công");
        } else {
            model.addAttribute("message", "Sai tài khoản hoặc mật khẩu");
        }
        return "login";
    }
}