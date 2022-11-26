package com.wepr.booking.dao;

import com.wepr.booking.JpaConfig.JpaConfig;
import com.wepr.booking.model.Tour;
import com.wepr.booking.model.User_Tour_Comment;

import javax.persistence.TypedQuery;
import java.util.ArrayList;
import java.util.List;
import javax.persistence.EntityManager;
import javax.persistence.TypedQuery;
import java.util.*;

public class UserTourCommentDAO {
    public List<User_Tour_Comment> getUserTourCommentByTourId(Integer tourId){
        List<User_Tour_Comment> user_tour_comments= new ArrayList<User_Tour_Comment>();
        EntityManager em = JpaConfig.getEntityManager();
        String queryString = "SELECT t FROM User_Tour_Comment t WHERE  t.tour.tourID =: tourId";
        TypedQuery<User_Tour_Comment> q = em.createQuery(queryString,User_Tour_Comment.class);
        q.setParameter("tourId", tourId);
        try{
            user_tour_comments = q.getResultList();
        }
        finally {
            em.close();
        }
        return user_tour_comments;
    }
}
