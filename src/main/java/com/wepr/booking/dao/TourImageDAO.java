package com.wepr.booking.dao;

import com.wepr.booking.JpaConfig.JpaConfig;
import com.wepr.booking.model.Tour_Image;

import javax.persistence.EntityManager;
import javax.persistence.TypedQuery;
import java.util.List;
import java.util.Optional;

public class TourImageDAO {
    public List<Tour_Image> getImages(int tourId){
        List<Tour_Image> tour_Image = null;
        EntityManager em = JpaConfig.getEntityManager();
        String queryString = "SELECT t FROM Tour_Image t WHERE  t.tour.tourID =:tourId";
        TypedQuery<Tour_Image> q = em.createQuery(queryString,Tour_Image.class);
        q.setParameter("tourId", tourId);
        try{
            tour_Image = q.getResultList();
        }
        finally {
            em.close();
        }

        return tour_Image;
    }
    public Optional<Tour_Image> getImage(int tourId){
        Optional<Tour_Image> tour_Image = null;
        EntityManager em = JpaConfig.getEntityManager();
        String queryString = "SELECT t FROM Tour_Image t WHERE  t.tour.tourID =:tourId";
        TypedQuery<Tour_Image> q = em.createQuery(queryString,Tour_Image.class);
        q.setParameter("tourId", tourId);
        try{
            tour_Image = q.getResultList().stream().findFirst();
        }
        finally {
            em.close();
        }

        return tour_Image;
    }

}
