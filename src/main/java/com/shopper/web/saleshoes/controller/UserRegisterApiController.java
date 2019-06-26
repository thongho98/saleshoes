package com.shopper.web.saleshoes.controller;

import com.shopper.web.saleshoes.domain.Users;
import com.shopper.web.saleshoes.repository.UserRepository;
import com.shopper.web.saleshoes.service.UserService;
import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.http.HttpStatus;
import org.springframework.http.ResponseEntity;
import org.springframework.web.bind.annotation.*;

@RestController
@RequestMapping(value = "/api")
public class UserRegisterApiController {

    @Autowired
    private UserRepository userRepository;

    @Autowired
    private UserService userService;

    @RequestMapping(value = "/user", method = RequestMethod.POST)
    public ResponseEntity<Void> createsUser(@RequestBody Users users) {
        System.out.println("Creating User " + users.getDisplayName());
        userService.save(users);
        return new ResponseEntity<Void>(HttpStatus.CREATED);
    }

//    @RequestMapping(value = "/user", method = RequestMethod.POST)
//    @ResponseStatus(HttpStatus.CREATED)
//    public void createsUserV2(@RequestBody Users users) {
//        System.out.println("Creating User " + users.getDisplayName());
//        userService.save(users);
//    }
}
