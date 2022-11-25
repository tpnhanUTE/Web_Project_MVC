package com.wepr.booking.model;
import  javax.persistence.*;
@Entity
@Table(name = "tourImage")
public class Tour_Image {
    @Id
    @GeneratedValue
    private Integer imageID;
    @Column(nullable = false)
    private String tourImageUrl;
    private String tourImageDescription;
    @ManyToOne
    @JoinColumn(name = "fk_tourID")
    private Tour tour;

    public Integer getImageID() {
        return imageID;
    }

    public String getTourImageUrl() {
        return tourImageUrl;
    }

    public void setTourImageUrl(String tourImageUrl) {
        this.tourImageUrl = tourImageUrl;
    }

    public String getTourImageDescription() {
        return tourImageDescription;
    }

    public void setTourImageDescription(String tourImageDescription) {
        this.tourImageDescription = tourImageDescription;
    }

    public Tour getTour() {
        return tour;
    }

    public void setTour(Tour tour) {
        this.tour = tour;
    }
}
