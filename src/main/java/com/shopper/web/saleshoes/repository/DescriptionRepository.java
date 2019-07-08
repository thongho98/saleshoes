package com.shopper.web.saleshoes.repository;

import com.shopper.web.saleshoes.domain.Description;
import org.springframework.data.jpa.repository.JpaRepository;

public interface DescriptionRepository extends JpaRepository<Description, Long> {
}
