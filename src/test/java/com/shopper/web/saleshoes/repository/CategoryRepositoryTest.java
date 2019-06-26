package com.shopper.web.saleshoes.repository;

import com.shopper.web.saleshoes.domain.Category;
import com.shopper.web.saleshoes.domain.Products;
import org.junit.Test;
import org.junit.runner.RunWith;
import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.boot.test.context.SpringBootTest;
import org.springframework.test.context.junit4.SpringJUnit4ClassRunner;

import javax.transaction.Transactional;
import java.util.List;

@RunWith(SpringJUnit4ClassRunner.class)
@SpringBootTest
public class CategoryRepositoryTest {
    @Autowired
    private CategoryRepository repos;
    @Test
    @Transactional
    public void test() {
        List<Category> list = repos.findAll();
        List<Products> products = list.get(0).getProductsList();
        System.out.println(list.get(0).getProductsList());
    }
}
