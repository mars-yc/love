package com.master.love.service.impl;

import com.master.love.domain.Blog;
import com.master.love.domain.BlogCategory;
import com.master.love.domain.User;
import com.master.love.service.UserService;
import org.junit.After;
import org.junit.Before;
import org.junit.FixMethodOrder;
import org.junit.Test;
import org.junit.runner.RunWith;
import org.junit.runners.MethodSorters;
import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.test.annotation.Rollback;
import org.springframework.test.context.ContextConfiguration;
import org.springframework.test.context.junit4.SpringJUnit4ClassRunner;
import org.springframework.transaction.annotation.Transactional;

import java.util.ArrayList;
import java.util.Date;
import java.util.List;

@Transactional
@Rollback(false)
@RunWith(SpringJUnit4ClassRunner.class)
@ContextConfiguration("classpath:/applicationContext.xml")
@FixMethodOrder(MethodSorters.NAME_ASCENDING)
public class UserServiceImplTest {

    @Autowired
    private UserService userService;

    @Before
    public void setUp() throws Exception {
    }

    @After
    public void tearDown() throws Exception {
    }

    @Test
    public void findByUserName() throws Exception {
    }

    @Test
    public void test1Save() throws Exception {
        User user = new User("eval", "女", "eval@foxmail.com", "18912839212", "北京", new Date());
        final Blog blog1 = new Blog("Junit test subject1", "Hello World!", new Date(), new Date(), new BlogCategory(), 100);
        final Blog blog2 = new Blog("Junit test subject2", "Nice to meet u", new Date(), new Date(), new BlogCategory(), 50);
        user.setBlogs(new ArrayList<Blog>(){{add(blog1); add(blog2);}});
        userService.save(user);
    }

    @Test
    public void test2Load() throws Exception {
        List<User> list = userService.load();
        for(User user : list) {
            System.out.println(user);
        }
    }
}