package com.shopper.web.saleshoes.service.Impl;

import com.shopper.web.saleshoes.domain.Users;
import com.shopper.web.saleshoes.dto.UsersDTO;
import com.shopper.web.saleshoes.repository.UserRepository;
import com.shopper.web.saleshoes.service.UserService;
import org.apache.commons.lang3.StringUtils;
import org.springframework.beans.BeanUtils;
import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Service;

import java.util.Optional;

@Service
public class UserServiceImpl implements UserService {

    @Autowired
    private UserRepository userRepository;

    private UsersDTO user;

    @Override
    public Optional<UsersDTO> login(String username, String password) {
        if (StringUtils.isAnyBlank(username, password)) {
            return Optional.empty();
        }
        Optional<UsersDTO> usersDTO = userRepository.findByUsernameAndPassword(username, password)
                .map(users -> {
                    UsersDTO dto = new UsersDTO();
                    BeanUtils.copyProperties(users, dto);
                    return dto;
                });
        user = usersDTO.orElse(null);
        return Optional.ofNullable(user);
    }

    @Override
    public boolean checkLogin() {
        return user != null;
    }

    @Override
    public void save(Users user) {
        user.setDisplayName(user.getDisplayName());
        user.setUsername(user.getUsername());
        user.setEmail(user.getEmail());
        user.setPassword(user.getPassword());
        userRepository.save(user);
    }
}
