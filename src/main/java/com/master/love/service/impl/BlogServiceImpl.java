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

    /**
     * Since lazy load blogs, exception will be thrown if return user.getBlogs() directly
     */
    @Override
    public List<Blog> loadByUserName(String username) {
        User user = userDao.findByUserName(username);
        List<Blog> list = null;
        if(user != null && user.getBlogs() != null && user.getBlogs().size() > 0) {
            list = new ArrayList<>();
            list.addAll(user.getBlogs());
        }
        return list;
    }

    @Override
    public List<Blog> load() {
        List<Blog> list = blogDao.load();
        System.out.println(list);
        return list;
    }

}