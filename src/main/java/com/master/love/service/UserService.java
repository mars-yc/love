package com.master.love.service;

import com.master.love.domain.User;

import java.util.List;

public interface UserService {

    User findByUserName(String username);
    List<User> load();

}