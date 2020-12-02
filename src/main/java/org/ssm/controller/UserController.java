package org.ssm.controller;

import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.http.HttpRequest;
import org.springframework.stereotype.Controller;
import org.springframework.ui.Model;
import org.springframework.web.bind.annotation.RequestMapping;
import org.springframework.web.bind.annotation.RequestParam;
import org.ssm.bean.Product;
import org.ssm.bean.User;
import org.ssm.service.ProductService;
import org.ssm.service.UserService;

import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpSession;
import java.util.List;
import java.util.Map;

@Controller
public class UserController {
    @Autowired
    UserService userService;

    @Autowired
    ProductService productService;

//    login
    @RequestMapping("/login")
    public String login(@RequestParam(value = "name") String name,
                        @RequestParam(value = "password") String password, Map<String,Object> map, HttpSession httpSession){
        User user = new User(null, name, "", "", password);
        User user1 = userService.checkLogin(user);
        if (user1==null||!(user.getPassword().equals(user1.getPassword()))){
            map.put("loginMsg","fail");
            return "redirect:/index.jsp";
        }
        else if (user1!=null&&user.getPassword().equals(user1.getPassword())){
            httpSession.setAttribute("nowUser", user1);
            return "list";
        }

        else return "fail";

    }
//register
    @RequestMapping(value = "/register")
    public String register(@RequestParam(value = "name",required = false) String name,@RequestParam(value = "password",required = false) String password
            ,@RequestParam(value = "email",required = false)String email,@RequestParam(value = "phone",required = false)String phone

    ){
        User user = new User();
        user.setName(name);
        user.setEmail(email);
        user.setPhone(phone);
        user.setPassword(password);

        return userService.checkRegister(user);
    }

//Person_center
    @RequestMapping("/person_center")
     public String info(HttpServletRequest request){
        List<Product> publishedProducts = productService.getPublishedProductsById(((User) request.getSession().getAttribute("nowUser")).getId());
        request.setAttribute("publishedProducts", publishedProducts);
        return "person_center";
     }

     @RequestMapping("/returnlist")
    public String returnList(){
        return "list";
     }

     @RequestMapping("/updateInfo")
    public String updateInfo(User user,HttpSession httpSession){
         User nowUser = (User)httpSession.getAttribute("nowUser");
         user.setId(nowUser.getId());
         userService.updatePersonInfo(user);
         httpSession.setAttribute("nowUser",user);
         return "list";
     }

//    @RequestMapping("/getoneproduct")
//    public String doGetPublisherName(@RequestParam("pid") String pid, HttpServletRequest request){
//        Product product = (Product) request.getAttribute("product");
//        Product product1 = productService.getProductById(Integer.valueOf(pid));
//        request.setAttribute("product", product1);
//        String publisherName = userService.getUserById(product.getPpublisherid()).getName();
//        request.setAttribute("publisherName", publisherName);
//        return "productinfo";
//    }

    @RequestMapping("/getoneproduct")
    public String doGetPublisherName(@RequestParam("pid") String pid,HttpServletRequest request){

        Product product1 = productService.getProductById(Integer.valueOf(pid));
        request.setAttribute("product", product1);

//        Product product = (Product) request.getAttribute("product");
        String publisherName = userService.getUserById(product1.getPpublisherid()).getName();
        request.setAttribute("publisherName", publisherName);
        return "productinfo";
    }

    @RequestMapping("/exit")
    public String exit(){
        return "redirect:/index.jsp";
    }


}
