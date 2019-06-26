package com.shopper.web.saleshoes.repository;

import com.shopper.web.saleshoes.domain.Category;
import org.springframework.data.jpa.repository.JpaRepository;

public interface CategoryRepository extends JpaRepository<Category, Integer> {
}
