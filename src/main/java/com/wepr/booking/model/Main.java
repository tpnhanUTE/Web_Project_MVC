package com.wepr.booking.model;

import javax.persistence.EntityManager;
import javax.persistence.EntityManagerFactory;
import javax.persistence.EntityTransaction;
import javax.persistence.Persistence;
public class Main {
    public static  void main(String[] args){
        EntityManagerFactory emf = Persistence.createEntityManagerFactory("heroku_e9bd0b1d044616c");
        EntityManager em = emf.createEntityManager();
        EntityTransaction transaction = em.getTransaction();
        transaction.begin();



        //Catalog
        Catalog catalog = new Catalog();
        em.persist(catalog);
        transaction.commit();

        em.close();
        emf.close();
    }
}
