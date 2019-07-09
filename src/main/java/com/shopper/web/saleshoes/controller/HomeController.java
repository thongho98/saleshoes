package com.shopper.web.saleshoes.controller;

import com.shopper.web.saleshoes.domain.Users;
import com.shopper.web.saleshoes.dto.ChangePasswordRequest;
import com.shopper.web.saleshoes.dto.LoginRequest;
import com.shopper.web.saleshoes.dto.RegisterRequest;
import com.shopper.web.saleshoes.dto.UsersDTO;
import com.shopper.web.saleshoes.repository.UserRepository;
import com.shopper.web.saleshoes.service.UserService;
import org.springframework.beans.BeanUtils;
import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Controller;
import org.springframework.ui.Model;
import org.springframework.web.bind.annotation.*;

import javax.servlet.http.HttpSession;
import java.util.Optional;

@Controller
public class HomeController {

    @Autowired
    private HttpSession session;
    @Autowired
    private UserService userService;
    @Autowired
    private UserRepository userRepository;

    @RequestMapping({"", "/", "/index"})
    public String index() {
        return "index";
    }

    @RequestMapping("/about")
    public String about() {
        return "about";
    }

    @RequestMapping("/cart")
    public String cart() {
        return "cart";
    }

    @RequestMapping("/checkout")
    public String checkout() {
        return "checkout";
    }

    @RequestMapping("/contact")
    public String contact() {
        return "contact";
    }

//    @RequestMapping("/shop")
//    public String shop() {
//        return "shop";
//    }

    @RequestMapping("/thankyou-account")
    public String thankyouaccount() {
        return "thankyou-account";
    }

    @RequestMapping("/sign-in")
    public String signin() {
        if(userService.checkLogin()) {
            return "redirect:/index";
        }
        return "sign-in";
    }

    @RequestMapping("/sign-up")
    public String signup() {
        return "sign-up";
    }

    @RequestMapping("/thankyou")
    public String thankyou() {
        return "thankyou";
    }

    @GetMapping("/sign-in")
    public String loginPage(Model model) {
        model.addAttribute("title", "Sign In");
        model.addAttribute("loginRequest", new LoginRequest());
        return "sign-in";
    }

    @PostMapping("/sign-in")
    public String loginUser(@ModelAttribute LoginRequest loginRequest, Model model) {
        System.out.println(loginRequest.getUsername());
        System.out.println(loginRequest.getPassword());
        Optional<UsersDTO> userDTO = userService.login(loginRequest.getUsername(), loginRequest.getPassword());
        if (!userDTO.isPresent()) {
            model.addAttribute("messsage", "Username or Password is wrong!");
            return "redirect:/sign-in";
        }
        session.setAttribute("usersession",userDTO.get());
        return "index";
    }

    @GetMapping("/sign-up")
    public String register(Model model) {
        model.addAttribute("title", "Register");
        model.addAttribute("registerRequest", new RegisterRequest());
        return "sign-up";
    }

    @PostMapping("/sign-up")
    public String registerUser(@ModelAttribute RegisterRequest registerUser, Model model) {
        Users user = new Users();
        if(registerUser.getPassword().equals(registerUser.getConfirmPassword())){
            BeanUtils.copyProperties(registerUser,user);
            userService.save(user);
            userService.sendEmail(registerUser.getEmail());
            return "redirect:/thankyou-account";
        }
        return "sign-up";
    }
}
