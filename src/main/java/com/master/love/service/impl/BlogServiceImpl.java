package com.master.love.service.impl;

import com.master.love.dao.BlogDao;
import com.master.love.domain.Blog;
import com.master.love.service.BlogService;
import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Service;
import org.springframework.transaction.annotation.Transactional;

import java.io.Serializable;
import java.util.List;

@Service("blogService")
@Transactional
public class BlogServiceImpl implements BlogService {

    @Autowired
    private BlogDao blogDao;

    @Override
    public Serializable save(Blog blog) {
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