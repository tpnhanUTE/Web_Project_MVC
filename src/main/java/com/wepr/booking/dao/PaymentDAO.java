package com.wepr.booking.dao;

import com.wepr.booking.JpaConfig.JpaConfig;
import com.wepr.booking.model.Payment;
import com.wepr.booking.model.Tour;

import javax.persistence.EntityManager;
import javax.persistence.EntityTransaction;

public class PaymentDAO {
    public void insert(Payment payment){
        EntityManager em = JpaConfig.getEntityManager();
        EntityTransaction trans = em.getTransaction();
        try{
            trans.begin();
            em.persist(payment);
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
