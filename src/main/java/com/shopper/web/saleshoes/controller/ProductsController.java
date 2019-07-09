package com.shopper.web.saleshoes.controller;

import com.shopper.web.saleshoes.domain.Products;
import com.shopper.web.saleshoes.repository.ProductRepository;
import com.shopper.web.saleshoes.service.ProductService;
import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.beans.support.PagedListHolder;
import org.springframework.data.domain.Pageable;
import org.springframework.stereotype.Controller;
import org.springframework.ui.Model;
import org.springframework.web.bind.annotation.RequestMapping;
import org.springframework.web.bind.annotation.RequestParam;

import java.util.List;
import java.util.Optional;

@Controller
public class ProductsController {

    @Autowired
    private ProductService productService;

    @Autowired
    private ProductRepository repository;

    @RequestMapping({"/men","shop/men"})
    public String getListMen(Model model, Pageable pageable ) {
        List<Products> list = productService.showListProduct(0); // do catefory là 1 list nên bắt đầu từ 0
        PagedListHolder<Products> page = new PagedListHolder<>(list);
        page.setPage(pageable.getPageNumber());
        page.setPageSize(pageable.getPageSize());
        model.addAttribute("shop", page.getPageList());
        model.addAttribute("key", "/men");
        model.addAttribute("page", page.getPage());
        model.addAttribute("hasPre", !page.isFirstPage());
        model.addAttribute("hasNext", !page.isLastPage());
        return "shop";
    }

    @RequestMapping({"/women","shop/women"})
    public String getListWomen(Model model, Pageable pageable ) {
        List<Products> list = productService.showListProduct(1);
        PagedListHolder<Products> page = new PagedListHolder<>(list);
        page.setPage(pageable.getPageNumber());
        page.setPageSize(pageable.getPageSize());
        model.addAttribute("shop", page.getPageList());
        model.addAttribute("key", "/women");
        model.addAttribute("page", page.getPage());
        model.addAttribute("hasPre", !page.isFirstPage());
        model.addAttribute("hasNext", !page.isLastPage());
        return "shop";
    }

    @RequestMapping({"/children","shop/children"})
    public String getListChildren(Model model, Pageable pageable ) {
        List<Products> list = productService.showListProduct(2);
        PagedListHolder<Products> page = new PagedListHolder<>(list);
        page.setPage(pageable.getPageNumber());
        page.setPageSize(pageable.getPageSize());
        model.addAttribute("shop", page.getPageList());
        model.addAttribute("key", "/children");
        model.addAttribute("page", page.getPage());
        model.addAttribute("hasPre", !page.isFirstPage());
        model.addAttribute("hasNext", !page.isLastPage());
        return "shop";
    }

    @RequestMapping(value = "/shop")
    public String getAllProducts(Model model, Pageable pageable) {
        List<Products> list = productService.getAllProducts();
        PagedListHolder<Products> page = new PagedListHolder<>(list);
        page.setPage(pageable.getPageNumber());
        page.setPageSize(pageable.getPageSize());
        model.addAttribute("shop", page.getPageList());
        model.addAttribute("key", "/shop");
        model.addAttribute("page", page.getPage());
        model.addAttribute("hasPre", !page.isFirstPage());
        model.addAttribute("hasNext", !page.isLastPage());
        return "shop";
    }

    @RequestMapping(value = "/shop-single")
    public String getDetailProduct(@RequestParam("id") Long id, Model model){
        Optional<Products> products = repository.findById(id);
        if(products != null){
            model.addAttribute("product",products.get());
        }
        return "shop-single";
    }
}
