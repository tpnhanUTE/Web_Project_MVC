package com.wepr.booking.model;
import javax.persistence.*;
@Entity
@Table(name = "tour")
public class Tour {
    @Id
    @GeneratedValue
    private Integer tourID;
    @Column(nullable = false)
    private String tourName;
    @Column(nullable = false)
    private Double tourPrice;
    private Double tourOldPrice;
    @Column(nullable = false)
    private Boolean policy;
    private String tourDescription;
    private  String tourSchedule;
    @ManyToOne
    @JoinColumn(name = "fk_placeID")
    private Place place;

    public Integer getTourID(){ return tourID; }
    public void setTourID(Integer tourID){ this.tourID = tourID; }
    public String getTourName(){return tourName;}
    public void setTourName(String tourName){this.tourName = tourName;}
    public  Double getTourPrice(){return tourPrice;}
    public void setTourPrice(Double tourPrice){this.tourPrice = tourPrice;}
    public Double getTourOldPrice(){return tourOldPrice;}
    public void setTourOldPrice(Double tourOldPrice){this.tourOldPrice = tourOldPrice;}

    public Boolean getPolicy() {
        return policy;
    }

    public void setPolicy(Boolean policy) {
        this.policy = policy;
    }

    public String getTourDescription() {
        return tourDescription;
    }

    public void setTourDescription(String tourDescription) {
        this.tourDescription = tourDescription;
    }

    public String getTourSchedule() {
        return tourSchedule;
    }

    public void setTourSchedule(String tourSchedule) {
        this.tourSchedule = tourSchedule;
    }

    public Place getPlace() {
        return place;
    }

    public void setPlace(Place place) {
        this.place = place;
    }
}
