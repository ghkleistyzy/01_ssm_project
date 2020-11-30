package org.ssm.service.Impl;

import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Service;
import org.ssm.bean.User;
import org.ssm.dao.UserDao;
import org.ssm.service.UserService;
@Service
public class UserServiceImpl implements UserService {
    @Autowired
    UserDao userDao;


//    @Override
//    public String checkLogin(String name, String password) {
//        User user = userDao.findUserByName(name);
//        if (user==null){
//            return "fail";
//        }
//        if (password.equals(user.getPassword())){
//            return "list";
//        }
//        else
//            return "fail";
//
//    }

    @Override
    public User checkLogin(User user) {
        User userByName = userDao.findUserByName(user.getName());
//        if (userByName==null){
//            return "fail";
//        }
//        if (user.getPassword().equals(userByName.getPassword())){
//            return "list";
//        }
//        else
//            return "fail";
        return userByName;
    }

    @Override
    public String checkRegister(User user) {
        User userByName = userDao.findUserByName(user.getName());
        if (userByName==null){
            int user1 = userDao.createUser(user);
            return "list";
        }
        return "fail";
    }

    @Override
    public User checkInfo(User user) {
        User infoByName = userDao.findInfoByName(user.getName());
        return infoByName;
    }

    @Override
    public int updatePersonInfo(User user) {
        return userDao.updateInfo(user);
    }

    @Override
    public User getUserById(int id) {
        return userDao.selectUserById(id);
    }
}
