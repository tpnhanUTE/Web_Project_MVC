package com.wepr.booking.model;
import javax.persistence.*;
@Entity
@Table
public class User_Tour_Favorite {
    @Id
    @OneToOne
    @JoinColumn(name = "Tour_ID")
    private Integer Tour_ID;
    @Id
    @ManyToOne
    @JoinColumn(name = "User_ID")
    private User User;

    public Integer getTour_ID(){ return Tour_ID; }
    public void  setTour_ID(Integer tour_ID){ this.Tour_ID = tour_ID; }
    public User getUser(){ return User; }
    public void setUser(User user){ this.User = user; }
}
