package com.master.love.service;

import com.master.love.domain.User;

import java.io.Serializable;
import java.util.List;

public interface UserService {

    User findByUserName(String username);
    List<User> load();
    Serializable save(User user);

}