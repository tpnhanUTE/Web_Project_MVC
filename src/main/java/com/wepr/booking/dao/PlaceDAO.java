package com.wepr.booking.dao;

import com.wepr.booking.JpaConfig.JpaConfig;
import com.wepr.booking.model.Place;
import com.wepr.booking.model.User;

import javax.persistence.EntityManager;
import javax.persistence.TypedQuery;
import java.util.List;
import java.util.Optional;

public class PlaceDAO {

    public List<Place> GetPlace(){
        EntityManager em = JpaConfig.getEntityManager();
        String queryString = "SELECT u FROM Place u";
        TypedQuery<Place> q = em.createQuery(queryString,Place.class);
        List<Place> place= null;
        try {
            place = q.getResultList();
        }finally {
            em.close();
        }
        return place;
    }
    public Optional<Place> GetPlace(Integer id){
        EntityManager em = JpaConfig.getEntityManager();
        String queryString = "SELECT u FROM Place u WHERE u.placeID =:id";
        TypedQuery<Place> q = em.createQuery(queryString,Place.class);
        q.setParameter("id", id);
        Optional<Place> place= null;
        try {
            place = q.getResultList().stream().findFirst();
        }finally {
            em.close();
        }
        return place;
    }
}
