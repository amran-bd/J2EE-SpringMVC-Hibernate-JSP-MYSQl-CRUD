/*
 * To change this license header, choose License Headers in Project Properties.
 * To change this template file, choose Tools | Templates
 * and open the template in the editor.
 */
package com.test.dao;

import com.test.model.Product;
import java.util.List;
import org.hibernate.Session;
import org.hibernate.SessionFactory;
import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Repository;
import org.springframework.transaction.annotation.Transactional;

/**
 *
 * @author Md.Amran
 */
@Repository
public class ProductDaoImpl implements ProductDao {

    @Autowired
    private SessionFactory sessionFactory;

    public ProductDaoImpl() {
    }

    @Override
    @Transactional
    public boolean insertRow(Product product) {
        sessionFactory.getCurrentSession().save(product);
        return true;
    }

    @Override
     @Transactional
    public List<Product> getList() { 
        List<Product> productList = (List<Product>) sessionFactory.getCurrentSession().createQuery("from Product").list();
        return productList;
    }

    @Override
     @Transactional
    public Product getRowById(Long id) {
        Product product = (Product) sessionFactory.getCurrentSession().get(Product.class, id);
        return product;
    }

    @Override
    @Transactional
    public boolean updateRow(Product product) {
        sessionFactory.getCurrentSession().saveOrUpdate(product);
        return true;
    }

    @Override
    @Transactional
    public boolean deleteRow(Long id) {
        Product product = (Product) sessionFactory.getCurrentSession().load(Product.class, id);
        sessionFactory.getCurrentSession().delete(product);
        return true;
    }

    /**
     * @return the sessionFactory
     */
    public SessionFactory getSessionFactory() {
        return sessionFactory;
    }

    /**
     * @param sessionFactory the sessionFactory to set
     */
    public void setSessionFactory(SessionFactory sessionFactory) {
        this.sessionFactory = sessionFactory;
    }

}
