package com.master.love.dao.impl;

import com.master.love.dao.AbstractDao;
import com.master.love.dao.DaoCallBack;
import com.master.love.dao.UserDao;
import com.master.love.domain.User;
import org.hibernate.Session;
import org.hibernate.criterion.Restrictions;

import java.util.List;

public class UserDaoImpl extends AbstractDao<User> implements UserDao {

    @Override
    public List<User> load() {
        return load(User.class);
    }

    @Override
    public User findByUserName(final String username) {

        return super.execute(new DaoCallBack<User>() {
            @Override
            public User doInAction(Session session) {
                List<User> list = session.createCriteria(User.class).add(Restrictions.eq("username", username)).list();
                if(list != null && list.size() > 0)
                    return list.get(0);
                return null;
            }
        });
    }

}