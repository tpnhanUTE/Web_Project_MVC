package com.wepr.booking.model;
import javax.persistence.*;
@Entity
@Table(name = "catalog")
public class Catalog {
    @Id
    @GeneratedValue
    private Integer catalogID;
    @Column(nullable = false)
    private String catalogName;
    private String catalogImageUrl;
    public Integer getCatalogID(){return catalogID;}
    public  void setCatalogID(Integer catalogID){this.catalogID = catalogID;}
    public  String getCatalogName(){return catalogName;}
    public void setCatalogName(String catalogName){this.catalogName = catalogName;}

    public String getCatalogImageUrl() {
        return catalogImageUrl;
    }

    public void setCatalogImageUrl(String catalogImageUrl) {
        this.catalogImageUrl = catalogImageUrl;
    }
}
