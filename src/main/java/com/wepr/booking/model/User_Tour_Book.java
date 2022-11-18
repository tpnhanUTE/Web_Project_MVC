package com.wepr.booking.model;
import javax.persistence.*;
@Entity
@Table
public class User_Tour_Book {
    @Id
    @ManyToOne
    @JoinColumn(name = "User_ID")
    private User User_ID;
    @Id
    @ManyToOne
    @JoinColumn(name = "Tour_ID")
    private Tour Tour_ID;

    public User getUser_ID(){ return User_ID; }
    public void setUser_ID(User user_ID){ this.User_ID = user_ID; }
    public Tour getTour_ID(){ return Tour_ID; }
    public void  setTour_ID(Tour tour_ID){ this.Tour_ID = tour_ID; }
}
