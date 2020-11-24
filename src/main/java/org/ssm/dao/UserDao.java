package org.ssm.dao;

import org.ssm.bean.User;

public interface UserDao {

    User findUserByName(String name);

    int createUser(User user);
}
