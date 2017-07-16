package com.master.love.service.impl;

import com.master.love.dao.UserDao;
import com.master.love.domain.User;
import com.master.love.service.UserService;
import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Service;
import org.springframework.transaction.annotation.Transactional;

import java.io.Serializable;
import java.util.List;

@Service("userService")
@Transactional
public class UserServiceImpl implements UserService {

    @Autowired
    private UserDao userDao;

    @Override
    public User findByUserName(String username) {
        return userDao.findByUserName(username);
    }

    @Override
    public List<User> load() {
        return userDao.load();
    }

    @Override
    public Serializable save(User user) {
        return userDao.save(user);
    }
}