package com.master.love.controller;

import com.master.love.domain.Blog;
import com.master.love.service.BlogService;
import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Controller;
import org.springframework.web.bind.annotation.PathVariable;
import org.springframework.web.bind.annotation.RequestMapping;
import org.springframework.web.bind.annotation.RequestParam;
import org.springframework.web.bind.annotation.ResponseBody;
import org.springframework.web.multipart.MultipartFile;

import javax.servlet.http.HttpServletRequest;
import java.io.File;
import java.io.Serializable;
import java.util.List;

import static org.springframework.web.bind.annotation.RequestMethod.GET;

@Controller
@RequestMapping("blog")
public class BlogController {

    @Autowired
    private BlogService blogService;

    @RequestMapping(value = "/save")
    @ResponseBody
    public Serializable save(Blog blog) {
        Serializable id = blogService.save(blog);
        System.out.println(id);
        return id;
    }

    @RequestMapping(value = "/load")
    @ResponseBody
    public List<Blog> load() {
        return blogService.load();
    }

}