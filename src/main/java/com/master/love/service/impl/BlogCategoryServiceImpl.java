package com.master.love.service.impl;

import com.master.love.dao.BlogCategoryDao;
import com.master.love.domain.BlogCategory;
import com.master.love.service.BlogCategoryService;
import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Service;
import org.springframework.transaction.annotation.Transactional;

import java.util.List;

@Service("blogCategoryService")
@Transactional
public class BlogCategoryServiceImpl implements BlogCategoryService {

    @Autowired
    private BlogCategoryDao blogCategoryDao;

    @Override
    public List<BlogCategory> load() {
        return blogCategoryDao.load();
    }

}