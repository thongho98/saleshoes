package com.shopper.web.saleshoes.repository;

import org.junit.Test;
import org.junit.runner.RunWith;
import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.boot.test.context.SpringBootTest;
import org.springframework.test.context.junit4.SpringJUnit4ClassRunner;

import javax.transaction.Transactional;

@RunWith(SpringJUnit4ClassRunner.class)
@SpringBootTest
public class DescriptionRepositoryTest {

    @Autowired
    DescriptionRepository reposDes;

    @Test
    @Transactional
    public void test() {
        String products = reposDes.getOne(1L).getDetailDescription();
        System.out.println(products);
    }
}