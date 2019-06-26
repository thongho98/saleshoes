package com.shopper.web.saleshoes.service.Impl;

import java.util.List;

import javax.persistence.EntityManager;
import javax.persistence.EntityManagerFactory;
import javax.persistence.PersistenceContext;
import javax.transaction.Transactional;


import com.shopper.web.saleshoes.domain.Products;
import org.hibernate.search.jpa.FullTextEntityManager;
import org.hibernate.search.query.dsl.QueryBuilder;
import org.springframework.stereotype.Repository;


@Repository
@Transactional
public class ProductsSearchlmpl {

    @PersistenceContext
    private EntityManager entityManager;


    public List<Products> search(String text) {

        FullTextEntityManager fullTextEntityManager =
                org.hibernate.search.jpa.Search.
                        getFullTextEntityManager(entityManager);


        QueryBuilder queryBuilder =
                fullTextEntityManager.getSearchFactory()
                        .buildQueryBuilder().forEntity(Products.class).get();

        org.apache.lucene.search.Query query =
                queryBuilder
                        .keyword()
                        .onFields("name")
                        .matching(text)
                        .createQuery();


        org.hibernate.search.jpa.FullTextQuery jpaQuery =
                fullTextEntityManager.createFullTextQuery(query, Products.class);


        @SuppressWarnings("unchecked")
        List<Products> results = jpaQuery.getResultList();

        return results;
    }


}

