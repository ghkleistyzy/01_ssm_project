package org.ssm.controller;

import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Controller;
import org.springframework.ui.Model;
import org.springframework.web.bind.annotation.RequestMapping;
import org.springframework.web.bind.annotation.RequestParam;
import org.ssm.bean.User;
import org.ssm.service.UserService;

import javax.servlet.http.HttpSession;
import java.util.Map;

@Controller
public class UserController {
    @Autowired
    UserService userService;

//    login
    @RequestMapping("/login")
    public String login(@RequestParam(value = "name") String name,
                        @RequestParam(value = "password") String password, Map<String,Object> map, HttpSession httpSession){
        User user = new User(null, name, "", "", password);
        User user1 = userService.checkLogin(user);
        if (user1==null){
            map.put("loginMsg","fail");
            return "redirect:/index.jsp";
        }
        else if (user1!=null){
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
     public String info(){
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


}
