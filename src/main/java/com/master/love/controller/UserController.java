package com.master.love.controller;

import org.apache.log4j.Logger;
import org.springframework.stereotype.Controller;
import org.springframework.web.bind.annotation.PathVariable;
import org.springframework.web.bind.annotation.RequestMapping;
import org.springframework.web.bind.annotation.RequestParam;
import org.springframework.web.bind.annotation.ResponseBody;

import javax.servlet.http.HttpSession;

import static com.master.love.util.SessionHelper.SESSION_LOGIN_USER;

@Controller
@RequestMapping("user")
public class UserController {

    private static final Logger logger = Logger.getLogger(UserController.class);

    @RequestMapping(value = "/login/{username}")
    @ResponseBody
    public boolean login(HttpSession session, @PathVariable String username, @RequestParam("password") String password) {
        session.setAttribute(SESSION_LOGIN_USER, username);
        return true;
    }

}