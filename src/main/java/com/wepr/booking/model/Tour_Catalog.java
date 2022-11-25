package com.wepr.booking.model;
import javax.persistence.*;
@Entity
@Table(name = "tourCatalog")
public class Tour_Catalog {
    @Id
    @OneToMany
    @Column(name = "fk_tourID")
    private Tour tour;
    @Id
    @OneToMany
    @Column(name = "fk_catalogID")
    private Catalog catalog;

    public Tour getTour() {
        return tour;
    }

    public void setTour(Tour tour) {
        this.tour = tour;
    }

    public Catalog getCatalog() {
        return catalog;
    }

    public void setCatalog(Catalog catalog) {
        this.catalog = catalog;
    }
}
