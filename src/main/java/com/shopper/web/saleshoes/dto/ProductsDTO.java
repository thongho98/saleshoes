package com.shopper.web.saleshoes.dto;

import lombok.Data;

import java.util.Calendar;
import java.util.Map;

@Data
public class ProductsDTO {

    private static final long serialVersionUID = 610719292839918760L;

    private Long id;

    private String name;

    private Double price;

    private Calendar updateAt;

    private int categoryId;

    private int statusId;

    private int imgId;

    private Map<String, String> info;
}
