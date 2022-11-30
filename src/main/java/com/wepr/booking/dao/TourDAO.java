package com.wepr.booking.dao;

import com.wepr.booking.JpaConfig.JpaConfig;
import com.wepr.booking.model.Tour;

import javax.persistence.EntityManager;
import javax.persistence.EntityTransaction;
import javax.persistence.TypedQuery;
import java.util.*;

public class TourDAO {

    public Optional<Tour> getTour(Integer id){
        EntityManager em = JpaConfig.getEntityManager();
        String queryString = "SELECT t FROM Tour t WHERE t.tourID=:id";
        TypedQuery<Tour> q = em.createQuery(queryString,Tour.class);
        q.setParameter("id",id);
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
    public  List<Tour> getTour(){
        EntityManager em = JpaConfig.getEntityManager();
        String queryString = "SELECT t FROM Tour t";
        TypedQuery<Tour> q = em.createQuery(queryString,Tour.class);
        List<Tour> tours;
        try{
            tours = q.getResultList();
            if(tours==null || tours.isEmpty())
                tours = null;
        }finally {
            em.close();
        }
        return tours;
    }
    public List<Tour> getTour(Integer... catalogId){
        List<Tour> newTour = new ArrayList<>();
        List<Tour> tours = getTour();
        for(int i=0;i< catalogId.length;i++){
            for (Tour tour:tours) {
                if(tour.getPlace().getPlaceID() == catalogId[i]){
                    newTour.add(tour);
                }
            }
        }
        return newTour;
    }
    public void updateTour(Tour tour){
        EntityManager em = JpaConfig.getEntityManager();
        EntityTransaction trans = em.getTransaction();
        try{
            trans.begin();
            em.merge(tour);
            trans.commit();
        }catch (Exception e){
            e.printStackTrace();
            trans.rollback();
        }
        finally {
            em.close();
        }
    }
    public void insertTour(Tour tour){
        EntityManager em = JpaConfig.getEntityManager();
        EntityTransaction trans = em.getTransaction();
        try{
            trans.begin();
            em.persist(tour);
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
