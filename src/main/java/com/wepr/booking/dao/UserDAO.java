package com.wepr.booking.dao;

import com.wepr.booking.JpaConfig.JpaConfig;
import com.wepr.booking.model.User;

import javax.persistence.EntityManager;
import javax.persistence.EntityTransaction;
import javax.persistence.TypedQuery;
import java.util.List;
import java.util.Objects;
import java.util.Optional;

public class UserDAO  {

    public Optional<User> getUser(String email,String password ){
        EntityManager em = JpaConfig.getEntityManager();
        String queryString = "SELECT u FROM User u WHERE u.Email = :email and u.Password =:password";
        TypedQuery<User> q = em.createQuery(queryString,User.class);
        List<User> users;
        try{
            users = q.getResultList();
            if(users== null || users.isEmpty())
                users = null;
        }finally {
            em.close();
        }
        return users.stream().findFirst();
    }

    public Optional<User> getUser(int id){
        EntityManager em = JpaConfig.getEntityManager();
        String queryString = "SELECT u FROM User u WHERE u.User_ID =:id";
        TypedQuery<User> q = em.createQuery(queryString,User.class);
        List<User> users= null;
        try {
            users = q.getResultList();
            if(users== null || users.isEmpty())
                users = null;
        }finally {
            em.close();
        }
        return users.stream().findFirst();
    }
    public boolean IsValid(String email, String userName ){
        EntityManager em = JpaConfig.getEntityManager();
        String queryString = "SELECT u FROM User u WHERE u.Email =:email or u.User_Name =:userName";
        TypedQuery<User> q = em.createQuery(queryString,User.class);
        List<User> users= null;
        boolean isValid =true;
        try{
            users = q.getResultList();
            if(users.stream().count() >0)
                isValid = false;
        }
        finally {
            em.close();
        }
        return isValid;
    }
    public void insertUsers(Objects... user){
        EntityManager em = JpaConfig.getEntityManager();
        EntityTransaction trans = em.getTransaction();
        try{
            trans.begin();
            for (int i=0;i<user.length;i++){
                em.persist(user[i]);
            }
            trans.commit();
        }catch (Exception e){
            e.printStackTrace();
            trans.rollback();
        }finally {
            em.close();
        }
    }
    public void updateUser(User user){
        EntityManager em = JpaConfig.getEntityManager();
        EntityTransaction trans = em.getTransaction();
        try{
            trans.begin();
            em.merge(user);
            trans.commit();
        }catch (Exception e){
            e.printStackTrace();
            trans.rollback();
        }
        finally {
            em.close();
        }
    }
}
