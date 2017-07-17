package com.master.love.controller;

import com.master.love.domain.BlogCategory;
import com.master.love.service.BlogCategoryService;
import org.apache.log4j.Logger;
import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Controller;
import org.springframework.web.bind.annotation.RequestMapping;
import org.springframework.web.bind.annotation.ResponseBody;

import java.util.List;

@Controller
@RequestMapping("blogCategory")
public class BlogCategoryController {

    private static final Logger logger = Logger.getLogger(BlogCategoryController.class);

    @Autowired
    private BlogCategoryService blogCategoryService;

    @RequestMapping("/load")
    @ResponseBody
    public List<BlogCategory> load() {
        return blogCategoryService.load();
    }

}