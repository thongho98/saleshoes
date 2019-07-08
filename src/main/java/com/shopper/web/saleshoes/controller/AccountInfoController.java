package com.shopper.web.saleshoes.controller;

import com.shopper.web.saleshoes.domain.Users;
import com.shopper.web.saleshoes.dto.ChangePasswordRequest;
import com.shopper.web.saleshoes.dto.UsersDTO;
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

@Controller
public class AccountInfoController {

    @Autowired
    private HttpSession session;
    @Autowired
    private UserService userService;

    @RequestMapping("/account-info")
    public String accountinfo() {
        return "account-info";
    }

    @GetMapping("/account-info")
    public String accountInfo(Model model) {
        model.addAttribute("title", "Account Infomation");
        model.addAttribute("changePassRequest", new ChangePasswordRequest());
        return "account-info";
    }

    @PostMapping("/account-info")
    public String updateUser(@ModelAttribute ChangePasswordRequest changePasswordRequest, Model model) {
        UsersDTO usersDTO = (UsersDTO) session.getAttribute("usersession");
        Users users = new Users();
        BeanUtils.copyProperties(usersDTO,users);
        if(!changePasswordRequest.getPassword().equals(users.getPassword())) {
            model.addAttribute("error","Password không đúng!");
        }
        if(changePasswordRequest.getNewPassword().equals(changePasswordRequest.getConfirmNewPassword())){
            users.setPassword(changePasswordRequest.getNewPassword());
            model.addAttribute("message","Cập nhật thành công");
            userService.update(users);
            return "redirect:/account-info";
        }
        return "account-info";
    }
}
