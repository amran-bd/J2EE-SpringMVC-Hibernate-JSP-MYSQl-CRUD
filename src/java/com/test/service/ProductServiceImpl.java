/*
 * To change this license header, choose License Headers in Project Properties.
 * To change this template file, choose Tools | Templates
 * and open the template in the editor.
 */
package com.test.service;

import com.test.dao.ProductDao;
import com.test.model.Product;
import java.util.List;
import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Service;

/**
 *
 * @author Md.Amran
 */
@Service
public class ProductServiceImpl implements ProductService {

    @Autowired
    ProductDao productDao;

    public ProductServiceImpl() {
    }

    @Override
    public boolean insertRow(Product product) {
        productDao.insertRow(product);
        return true;
    }

    @Override
    public List<Product> getList() {
        return productDao.getList();
    }

    @Override
    public Product getRowById(Long id) {
        return productDao.getRowById(id);
    }

    @Override
    public boolean updateRow(Product product) {
        return productDao.updateRow(product);
    }

    @Override
    public boolean deleteRow(Long id) {
        return productDao.deleteRow(id);
    }

}
