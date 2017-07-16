package com.master.love.service.impl;

import com.master.love.dao.BlogDao;
import com.master.love.dao.UserDao;
import com.master.love.domain.Blog;
import com.master.love.domain.User;
import com.master.love.service.BlogService;
import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Service;
import org.springframework.transaction.annotation.Transactional;

import java.io.Serializable;
import java.util.ArrayList;
import java.util.List;

@Service("blogService")
@Transactional
public class BlogServiceImpl implements BlogService {

    @Autowired
    private BlogDao blogDao;
    @Autowired
    private UserDao userDao;

    @Override
    public Serializable save(Blog blog, String username) {
        User user = userDao.findByUserName(username);
        blog.setUser(user);
        if(user != null) {
            List<Blog> list = user.getBlogs();
            if(list == null)
                list = new ArrayList<>();
            list.add(blog);
        }
        return blogDao.save(blog);
    }

    @Override
    public List<Blog> loadByUserName(String username) {
        return null;
    }

    @Override
    public List<Blog> load() {
        List<Blog> list = blogDao.load();
        System.out.println(list);
        return list;
    }

}