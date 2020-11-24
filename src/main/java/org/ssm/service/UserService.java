package org.ssm.service;

import org.ssm.bean.User;

public interface UserService {

    public String checkLogin(String name, String password);

    public String checkRegister(User user);
}
