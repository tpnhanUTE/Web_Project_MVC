package com.wepr.booking.model;
import javax.persistence.*;
@Entity
@Table
public class User_Tour_Favorite {
    @Id
    @GeneratedValue
    private Integer User_Tour_Favorite_ID;
    @ManyToOne
    @JoinColumn(name = "user_ID")
    private User User;
    @ManyToOne
    @JoinColumn(name = "tour_ID")
    private Tour Tour;
    public Integer getUser_Tour_Favorite_ID(){ return User_Tour_Favorite_ID; }
    public void  setUser_Tour_Favorite_ID(Integer user_Tour_Favorite_ID){ this.User_Tour_Favorite_ID = user_Tour_Favorite_ID; }
    public User getUser(){ return User; }
    public void setUser(User user){ this.User = user; }

    public com.wepr.booking.model.Tour getTour() {
        return Tour;
    }

    public void setTour(com.wepr.booking.model.Tour tour) {
        this.Tour = tour;
    }
}
