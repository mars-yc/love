package com.master.love.dao;

import org.hibernate.Session;

public interface DaoCallBack<T> {
    T doInAction(Session session);
}