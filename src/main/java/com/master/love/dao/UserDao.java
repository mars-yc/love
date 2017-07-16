package com.master.love.dao;

import com.master.love.domain.User;

public interface UserDao extends BaseDao<User> {

    User findByUserName(String username);

}