package com.wepr.booking.dao;

import com.wepr.booking.JpaConfig.JpaConfig;
import com.wepr.booking.model.User_Tour_Book;

import javax.persistence.EntityManager;
import javax.persistence.EntityTransaction;
import javax.persistence.TypedQuery;
import java.util.List;
import java.util.Optional;

public class UserBookTourDAO {
    public void Insert(User_Tour_Book userTourBook){
        EntityManager em = JpaConfig.getEntityManager();
        EntityTransaction trans = em.getTransaction();
        try{
            trans.begin();
            em.persist(userTourBook);
            trans.commit();
        }catch (Exception e){
            e.printStackTrace();
            trans.rollback();
        }finally {
            em.close();
        }
    }
    public Optional<User_Tour_Book> Get(int tourId, int userId){
        EntityManager em = JpaConfig.getEntityManager();
        String queryString = "SELECT u FROM User_Tour_Book u WHERE u.tour =:tourId and u.user =: userId";
        TypedQuery<User_Tour_Book> q = em.createQuery(queryString,User_Tour_Book.class);
        List<User_Tour_Book> user_Tour_Book;
        try{
            user_Tour_Book = q.getResultList();
            if(user_Tour_Book== null || user_Tour_Book.isEmpty())
                user_Tour_Book = null;
        }finally {
            em.close();
        }
        return user_Tour_Book.stream().findFirst();
    }
}
