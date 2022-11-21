package com.wepr.booking.dao;

import com.wepr.booking.JpaConfig.JpaConfig;
import com.wepr.booking.model.User;

import javax.persistence.EntityManager;
import javax.persistence.EntityTransaction;
import java.util.List;
import java.util.Optional;

public class UserDAO  implements  DAO<User> {

    @Override
    public Optional<User> get(String id) {
        User user = null;
        return Optional.ofNullable(user);
    }

    @Override
    public List<User> getAll() {
        return DAO.super.getAll();
    }

    @Override
    public void insert(User user) {
        EntityManager enma = JpaConfig.getEntityManager();
        EntityTransaction trans =enma.getTransaction();
        try {
            trans.begin();
            trans.commit();
        }catch (Exception e){
            e.printStackTrace();
            trans.rollback();
        }finally {
            enma.close();
        }
    }

    @Override
    public void update(User user, String[] params) {
        EntityManager enma = JpaConfig.getEntityManager();
        EntityTransaction trans =enma.getTransaction();
        try {
            trans.begin();
            enma.merge(user);
            trans.commit();
        }catch (Exception e){
            e.printStackTrace();
            trans.rollback();
        }finally {
            enma.close();
        }
    }

    @Override
    public void delete(User user) {

    }
}
