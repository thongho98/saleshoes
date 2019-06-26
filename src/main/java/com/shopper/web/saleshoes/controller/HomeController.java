package com.shopper.web.saleshoes.controller;

import com.shopper.web.saleshoes.domain.Products;
import com.shopper.web.saleshoes.domain.Users;
import com.shopper.web.saleshoes.dto.LoginRequest;
import com.shopper.web.saleshoes.dto.RegisterRequest;
import com.shopper.web.saleshoes.dto.UsersDTO;
import com.shopper.web.saleshoes.service.Impl.ProductsSearchlmpl;
import com.shopper.web.saleshoes.service.ProductsService;
import com.shopper.web.saleshoes.service.UserService;
import org.springframework.beans.BeanUtils;
import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Controller;
import org.springframework.ui.Model;
import org.springframework.web.bind.annotation.GetMapping;
import org.springframework.web.bind.annotation.ModelAttribute;
import org.springframework.web.bind.annotation.PostMapping;
import org.springframework.web.bind.annotation.RequestMapping;

import javax.servlet.http.HttpSession;
import java.util.List;
import java.util.Optional;

@Controller
public class HomeController {

    @Autowired
    private HttpSession session;
    @Autowired
    private UserService userService;
    @Autowired
    private ProductsSearchlmpl productsSearch;

    @RequestMapping({"", "/", "/index"})
    public String index() {
        UsersDTO userSession = (UsersDTO)session.getAttribute("usersession");
        if(userSession == null){
            return "redirect:/sign-in";
        }
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

    @RequestMapping("/shop")
    public String shop() {
        return "shop";
    }

    @RequestMapping("/shop-single")
    public String shopsingle() {
        return "shop-single";
    }

    @RequestMapping("/sign-in")
    public String signin() {
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
        Optional<UsersDTO> user = userService.login(loginRequest.getUsername(), loginRequest.getPassword());
        if (!user.isPresent()) {
            model.addAttribute("messsage", "Username or Password is wrong!");
            return "redirect:/sign-in";
        }
        session.setAttribute("usersession",user.get());
        return "index";
    }

    @GetMapping("/sign-up")
    public String register(Model model) {
        model.addAttribute("title", "Register");
        //model.addAttribute("messsage", null);
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
            return "redirect:/sign-in";
        }
        return "redirect:/sign-up";
    }

    @RequestMapping("/search")
    public String search(String q, Model model) {
        List<Products> searchResults = null;
        try {
            searchResults = productsSearch.search(q);
        }
        catch (Exception ex) {

        }
        model.addAttribute("searchResults", searchResults);
        return "search";
    }

}
