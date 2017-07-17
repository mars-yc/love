package com.master.love.dao.impl;

import com.master.love.dao.AbstractDao;
import com.master.love.dao.BlogCategoryDao;
import com.master.love.domain.BlogCategory;
import org.springframework.stereotype.Repository;

import java.util.List;

@Repository("blogCategoryDao")
public class BlogCategoryDaoImpl extends AbstractDao<BlogCategory> implements BlogCategoryDao {

    @Override
    public List<BlogCategory> load() {
        return super.load(BlogCategory.class);
    }

}