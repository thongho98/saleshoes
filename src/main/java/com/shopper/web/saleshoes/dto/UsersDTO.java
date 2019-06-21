package com.shopper.web.saleshoes.dto;

import lombok.Data;

import java.util.Map;

@Data
public class UsersDTO {

    private static final long serialVersionUID = 610719292839918760L;

    private Long id;

    private String displayName;

    private String username;

    private String email;

    private String phone;

    private String password;

    private String hashType;

    private boolean active;

    private Map<String, String> info;
}
