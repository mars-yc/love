package com.master.love.controller;

import com.master.love.domain.Blog;
import com.master.love.domain.User;
import com.master.love.service.BlogService;
import com.master.love.util.SessionHelper;
import org.apache.log4j.Logger;
import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Controller;
import org.springframework.web.bind.annotation.RequestBody;
import org.springframework.web.bind.annotation.RequestMapping;
import org.springframework.web.bind.annotation.ResponseBody;

import javax.servlet.http.HttpSession;
import java.io.Serializable;
import java.util.List;

@Controller
@RequestMapping("blog")
public class BlogController {

    private static final Logger logger = Logger.getLogger(BlogController.class);

    @Autowired
    private BlogService blogService;

    @RequestMapping(value = "/save")
    @ResponseBody
    public Serializable save(HttpSession session, @RequestBody BlogUserWrapper param) {
        logger.info(param);
        String username = SessionHelper.getLoginId(session);

        Blog blog = param.getBlog();

        Serializable id = blogService.save(blog, username);
        logger.info(id);
        return id;
    }

    @RequestMapping(value = "/load")
    @ResponseBody
    public List<Blog> load() {
        return blogService.load();
    }

}

/**
 * request的content-body是以流的形式进行读取的，读取完一次后，便无法再次读取了
 * 不能传递两个参数，如(@RequestBody Blog blogItem, @RequestBody User toUser)
 * 所以, 需要自己封装,封装类不能是内部类, 不然报错
 */
class BlogUserWrapper {

    private Blog blog;
    private User toUser;

    public Blog getBlog() {
        return blog;
    }

    public void setBlog(Blog blog) {
        this.blog = blog;
    }

    public User getToUser() {
        return toUser;
    }

    public void setToUser(User toUser) {
        this.toUser = toUser;
    }

    @Override
    public String toString() {
        return "BlogUserWrapper{" +
                "blog=" + blog +
                ", toUser=" + toUser +
                '}';
    }
}