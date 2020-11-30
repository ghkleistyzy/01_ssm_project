package org.ssm.service.Impl;

import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Service;
import org.ssm.bean.Product;
import org.ssm.dao.ProductDao;
import org.ssm.service.ProductService;

import java.util.List;
import java.util.Set;

@Service
public class ProductServiceImpl implements ProductService {
    @Autowired
    ProductDao productDao;



    @Override
    public List<Product> getPublishedProductsById(Integer id) {
        return (List<Product>) productDao.selectPublishedProductsById(id);
    }



    @Override
    public List<Product> getRandomProducts() {
        return productDao.selectRandomProducts();
    }




}
