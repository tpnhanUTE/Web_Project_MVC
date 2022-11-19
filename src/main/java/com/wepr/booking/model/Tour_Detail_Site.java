package com.wepr.booking.model;
import javax.persistence.*;
@Entity
@Table
public class Tour_Detail_Site {
    @Id
    @ManyToOne
    @JoinColumn(name = "Site_ID")
    private Site Site_ID;
    @Id
    @ManyToOne
    @JoinColumn(name = "Tour_Detail_ID")
    private Tour_Detail Tour_Detail_ID;

    public Site getSite_ID() {
        return Site_ID;
    }

    public void setSite_ID(Site site_ID) {
        this.Site_ID = site_ID;
    }

    public Tour_Detail getTour_Detail_ID() {
        return Tour_Detail_ID;
    }

    public void setTour_Detail_ID(Tour_Detail tour_Detail_ID) {
        this.Tour_Detail_ID = tour_Detail_ID;
    }
}
