package com.wepr.booking.dao;

import com.wepr.booking.JpaConfig.JpaConfig;
import com.wepr.booking.model.Tour;

import javax.persistence.EntityManager;
import javax.persistence.TypedQuery;
import java.util.*;

public class TourDAO {

    public Optional<Tour> getTour(int id){
        EntityManager em = JpaConfig.getEntityManager();
        String queryString = "SELECT t FROM Tour t WHERE t.Tour_ID =:id";
        TypedQuery<Tour> q = em.createQuery(queryString,Tour.class);
        List<Tour> tours;
        try{
            tours = q.getResultList();
            if(tours==null || tours.isEmpty())
                tours = null;
        }finally {
            em.close();
        }
        return tours.stream().findFirst();
    }
//    public Optional<Tour_Image> getTourImage(int id){
//        Optional<Tour> tour = getTour(id);
//        if(tour!=null){
//
//        }
//    }


}
