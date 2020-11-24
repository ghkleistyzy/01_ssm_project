package org.ssm.controller;

import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Controller;
import org.springframework.ui.Model;
import org.springframework.web.bind.annotation.RequestBody;
import org.springframework.web.bind.annotation.RequestMapping;
import org.springframework.web.bind.annotation.RequestMethod;
import org.springframework.web.bind.annotation.RequestParam;
import org.ssm.bean.User;
import org.ssm.service.UserService;

@Controller
public class UserController {
    @Autowired
    UserService userService;

//    login
    @RequestMapping("/login")
    public String login(@RequestParam(value = "name") String name,
                        @RequestParam(value = "password") String password){

        return userService.checkLogin(name, password);
    }

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


}
