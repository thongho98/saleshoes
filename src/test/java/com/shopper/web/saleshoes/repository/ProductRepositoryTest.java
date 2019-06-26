package com.shopper.web.saleshoes.repository;


import com.shopper.web.saleshoes.domain.Products;
import org.junit.Test;
import org.junit.runner.RunWith;
import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.boot.test.context.SpringBootTest;
import org.springframework.test.context.junit4.SpringJUnit4ClassRunner;

import java.util.List;

@RunWith(SpringJUnit4ClassRunner.class)
@SpringBootTest
public class ProductRepositoryTest {
    @Autowired
    private ProductRepository repository;

    @Test
    public void testFindAll(){
        List<Products> list = repository.findAll();
        for (Products products:list) {
            System.out.println(products.getName());
        }
    }
}