package org.ssm.service;

import org.ssm.bean.User;

public interface UserService {

//    public String checkLogin(String name, String password);

    public User checkLogin(User user);

    public String checkRegister(User user);

    public User checkInfo(User user);

    public int updatePersonInfo(User user);
}
