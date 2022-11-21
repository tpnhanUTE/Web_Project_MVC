package com.wepr.booking.JpaConfig;
import javax.persistence.EntityManager;
import javax.persistence.EntityManagerFactory;
import javax.persistence.Persistence;

public class JpaConfig {
    public static  EntityManager getEntityManager(){
        EntityManagerFactory emf = Persistence.createEntityManagerFactory("heroku_e9bd0b1d044616c");
        EntityManager em = emf.createEntityManager();
        return  em;
    }
}
