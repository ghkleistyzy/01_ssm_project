package org.ssm.controller;

import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Controller;
import org.springframework.web.bind.annotation.RequestMapping;
import org.springframework.web.bind.annotation.RequestParam;
import org.ssm.bean.Product;
import org.ssm.bean.User;
import org.ssm.service.ProductService;

import javax.servlet.http.HttpServletRequest;
import java.util.List;

@Controller
public class ProductController {
    @Autowired
    ProductService productService;

//    @RequestMapping("/publishedproducts")
//    public String doPublishedProducts(HttpServletRequest request){
//        List<Product> publishedProducts = productService.getPublishedProductsById(((User) request.getSession().getAttribute("nowUser")).getId());
//        request.setAttribute("publishedProducts", publishedProducts);
//        return "person_center";
//    }

    //    @RequestMapping("/main")
//    public String doMain(HttpServletRequest request){
//        request.setAttribute("isFirstLoad","false");
//
//        return "list";
//    }
    @RequestMapping("/main")
    public String doGetRandomProducts(HttpServletRequest request) {
        List<Product> randomProducts = productService.getRandomProducts();
        request.setAttribute("isFirstLoad","false");
        request.setAttribute("randomProducts", randomProducts);
        return "list";
    }

//    @RequestMapping("/getoneproduct")
//    public String doGetOneProduct(@RequestParam("pid") String pid, HttpServletRequest request){
//        Product product = productService.getProductById(Integer.valueOf(pid));
//        request.setAttribute("product", product);
//        return "/getpublishername.";
//    }


}
