package org.ssm.service;

import org.ssm.bean.Product;

import java.util.List;
import java.util.Set;

public interface ProductService {

    List<Product> getPublishedProductsById(Integer uid);

    List<Product> getRandomProducts();

    Product getProductById(Integer pid);





}
