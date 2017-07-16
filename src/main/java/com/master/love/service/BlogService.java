package com.master.love.service;

import com.master.love.domain.Blog;

import java.io.Serializable;
import java.util.List;

public interface BlogService {

    Serializable save(Blog blog, String username);
    List<Blog> loadByUserName(String username);
    List<Blog> load();

}