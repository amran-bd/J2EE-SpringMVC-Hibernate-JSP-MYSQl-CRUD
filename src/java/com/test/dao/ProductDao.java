/*
 * To change this license header, choose License Headers in Project Properties.
 * To change this template file, choose Tools | Templates
 * and open the template in the editor.
 */
package com.test.dao;

import com.test.model.Product;
import java.util.List;

/**
 *
 * @author Md.Amran
 */
public interface ProductDao {
    
    public abstract boolean insertRow(Product product);

    public abstract List<Product> getList();

    public abstract Product getRowById(Long i);

    public abstract boolean updateRow(Product product);

    public abstract boolean deleteRow(Long i);
}
