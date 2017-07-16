package com.master.love.util;

import org.apache.log4j.Logger;

import javax.servlet.http.HttpSession;

public class SessionHelper {

    private static final String SESSION_LOGIN_USER = "SESSION_LOGIN_USER";
    private static final String ALLOWED_NOT_AUTHENTICATED_ID = "SESSION_LOGIN_USER";
    private static final Logger logger = Logger.getLogger(SessionHelper.class);

    public static String getLoginId(HttpSession session) {
        String loginId = (String) session.getAttribute(SESSION_LOGIN_USER);
        if(loginId == null) {
            loginId = ALLOWED_NOT_AUTHENTICATED_ID;
            logger.info("User is not yet log in, set the log in id to be: " + ALLOWED_NOT_AUTHENTICATED_ID);
        }
        return loginId;
    }

}