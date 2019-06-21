package com.shopper.web.saleshoes.dto;

import lombok.Data;

import java.io.Serializable;

@Data
public class RegisterRequest implements Serializable {

    private String displayName;

    private String username;

    private String email;

    private String phone;

    private String password;

    private String confirmPassword;
}
