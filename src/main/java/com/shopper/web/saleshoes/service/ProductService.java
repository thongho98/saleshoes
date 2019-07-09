package com.shopper.web.saleshoes.service;

import com.shopper.web.saleshoes.domain.Products;

import java.util.List;

public interface ProductService {

    List<Products> showListProduct(int categoryId);
    List<Products> getAllProducts();
}
