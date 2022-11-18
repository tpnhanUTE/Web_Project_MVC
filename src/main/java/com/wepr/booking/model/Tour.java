package com.wepr.booking.model;
import javax.persistence.*;
@Entity
@Table
public class Tour {
    @Id
    @GeneratedValue
    private Integer Tour_ID;
    private String Tour_Description;
    private String Tour_Name;
    private Integer Tour_Price;
    @ManyToOne
    @JoinColumn(name = "Catalog_ID")
    private Catalog Catalog_ID;

    public Integer getTour_ID(){ return Tour_ID; }
    public void setTour_ID(Integer tour_ID){ this.Tour_ID = tour_ID; }
    public String getTour_Description(){return Tour_Description;}
    public void setTour_Description(String tour_Description){this.Tour_Description = tour_Description;}
    public  String getTour_Name(){return Tour_Name;}
    public void setTour_Name(String tour_Name){this.Tour_Name = tour_Name;}
    public Integer getTour_Price(){return Tour_Price;}
    public void setTour_Price(Integer tour_Price){this.Tour_Price = tour_Price;}
    public Catalog getCatalog_ID(){return Catalog_ID;}
    public void setCatalog_ID(Catalog catalog_ID){this.Catalog_ID = catalog_ID;}
}
