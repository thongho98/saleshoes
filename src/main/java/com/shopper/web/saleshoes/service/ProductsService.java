package com.shopper.web.saleshoes.service;

import com.shopper.web.saleshoes.domain.Products;

import java.util.List;

public interface ProductsService {
     List<Products> search(String Keyword);
}
