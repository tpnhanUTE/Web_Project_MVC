package com.wepr.booking.model;
import javax.persistence.*;
@Entity
@Table
public class Tour_Detail {
    @Id
    @GeneratedValue
    private Integer Tour_Detail_ID;
    @OneToOne
    @JoinColumn(name = "Tour_ID")
    private Tour Tour_ID;
    private String Tour_Schedule;

    public Integer getTour_Detail_ID() {
        return Tour_Detail_ID;
    }

    public void setTour_Detail_ID(Integer tour_Detail_ID) {
        this.Tour_Detail_ID = tour_Detail_ID;
    }

    public Tour getTour_ID() {
        return Tour_ID;
    }

    public void setTour_ID(Tour tour_ID) {
        this.Tour_ID = tour_ID;
    }

    public String getTour_Schedule() {
        return Tour_Schedule;
    }

    public void setTour_Schedule(String tour_Schedule) {
        this.Tour_Schedule = tour_Schedule;
    }
}
