package com.wepr.booking.model;
import javax.persistence.*;
import java.io.Serializable;

@Entity
@Table(name = "tourCatalog")
public class Tour_Catalog implements Serializable {
    @Id
    @Column(name = "fk_tourID")
    private Integer tourId;
    @Id
    @Column(name = "fk_catalogID")
    private Integer catalogId;

    @ManyToOne
    private Catalog catalog;
    @ManyToOne
    private Tour tour;
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

    public Integer getTourId() {
        return tourId;
    }

    public void setCatalogId(Integer catalogId) {
        this.catalogId = catalogId;
    }

    public Integer getCatalogId() {
        return catalogId;
    }

    public void setTourId(Integer tourId) {
        this.tourId = tourId;
    }
}
