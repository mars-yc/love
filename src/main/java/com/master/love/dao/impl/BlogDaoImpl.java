package com.master.love.dao.impl;

import com.master.love.dao.AbstractDao;
import com.master.love.dao.BlogDao;
import com.master.love.domain.Blog;
import org.springframework.stereotype.Repository;

import java.io.Serializable;
import java.util.List;

@Repository("clientDao")
public class BlogDaoImpl extends AbstractDao<Blog> implements BlogDao {

    @Override
    public List<Blog> load() {
        return load(Blog.class);
    }

}