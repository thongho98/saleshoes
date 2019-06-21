package com.shopper.web.saleshoes.domain;

import lombok.Data;

import javax.persistence.*;
import java.io.Serializable;

@Data
@Entity
@Table(name = "users")
public class Users implements Serializable {

    private static final long serialVersionUID = -3074924826644002793L;

    @Id
    @GeneratedValue(strategy = GenerationType.IDENTITY)
    private Long id;

    private String displayName;

    private String username;

    private String email;

    private String phone;

    private String password;

    @Column(name = "hash_type")
    private String hashType;

    private boolean active;
}
