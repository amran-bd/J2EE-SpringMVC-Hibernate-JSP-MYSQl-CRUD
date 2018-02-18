/*
 * To change this license header, choose License Headers in Project Properties.
 * To change this template file, choose Tools | Templates
 * and open the template in the editor.
 */
package com.test.controller;

import com.test.model.Product;
import com.test.service.ProductService;
import java.util.List;
import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Controller;
import org.springframework.web.bind.annotation.ModelAttribute;
import org.springframework.web.bind.annotation.RequestMapping;
import org.springframework.web.bind.annotation.RequestParam;
import org.springframework.web.portlet.ModelAndView;

@Controller
public class ProductController {

    @Autowired
    ProductService productService;

    public ProductController() {
    }

    @RequestMapping("form")
    public ModelAndView getForm(@ModelAttribute Product product) {
        return new ModelAndView("form");
    }

    @RequestMapping("add")
    public ModelAndView addProduct(@ModelAttribute Product product) {
        productService.insertRow(product);
        return new ModelAndView("redirect:list");
    }

    @RequestMapping("list")
    public ModelAndView getList() {
        List<Product> productList = productService.getList();
        return new ModelAndView("list", "productList", productList);
    }

    @RequestMapping("delete")
    public ModelAndView deleteProduct(@RequestParam Long id) {
        productService.deleteRow(id);
        return new ModelAndView("redirect:list");
    }

    @RequestMapping("edit")
    public ModelAndView editProduct(@RequestParam Long id, @ModelAttribute Product product) {
        Product productObject = productService.getRowById(id);
        return new ModelAndView("edit", "productObject", productObject);
    }

    @RequestMapping("update")  
    public ModelAndView updateProduct(@ModelAttribute Product product) {
        productService.updateRow(product);
        return new ModelAndView("redirect:list");
    }
}
