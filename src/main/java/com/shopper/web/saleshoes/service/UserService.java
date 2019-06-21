package com.shopper.web.saleshoes.service;

import com.shopper.web.saleshoes.domain.Users;
import com.shopper.web.saleshoes.dto.UsersDTO;

import java.util.Optional;

public interface UserService {

    Optional<UsersDTO> login(String username, String password);

    boolean checkLogin();

    void save(Users user);
}
