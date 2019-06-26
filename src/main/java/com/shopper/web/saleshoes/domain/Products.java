package com.shopper.web.saleshoes.domain;

import lombok.Data;
import org.hibernate.search.annotations.Field;
import org.springframework.stereotype.Indexed;

import javax.persistence.*;
import javax.validation.constraints.NotNull;
import java.io.Serializable;
import java.util.Date;

@Data
@Entity
@Indexed
@Table(name = "products")
public class Products  {

    @Id
    @GeneratedValue(strategy = GenerationType.AUTO)
    private Long id;

    @Field
    @NotNull
    private String name;

    @Field
    @NotNull
    private double price;

    @Field
    @NotNull
    private Date update_at;

    @Field
    @NotNull
    private int id_category;

    @Field
    @NotNull
    private int id_status;

    @Field
    @NotNull
    private int id_img;








}
