package org.ssm.dao;

import org.ssm.bean.Product;

import java.util.List;

public interface ProductDao {


//    void insertProduct(Product product);

    List<Product> selectPublishedProductsById(Integer id);

//    void deleteProductById(int pid);
//
    Product selectProductById(Integer pid);
//
//    void updateProduct(Product product);

    List<Product> selectRandomProducts();

//    List<Product> selectAllProducts();
}
