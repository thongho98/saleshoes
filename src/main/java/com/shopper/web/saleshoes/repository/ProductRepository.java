package com.shopper.web.saleshoes.repository;

import com.shopper.web.saleshoes.domain.Products;
import org.springframework.data.jpa.repository.JpaRepository;

import java.util.List;

public interface ProductRepository extends JpaRepository<Products,Long> {

}
