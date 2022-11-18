package com.wepr.booking.model;
import javax.persistence.*;
@Entity
@Table
public class Catalog {
    @Id
    @GeneratedValue
    private  Integer Catalog_ID;
    private String Catalog_Name;

    public Integer getCatalog_ID(){return Catalog_ID;}
    public  void setCatalog_ID(Integer catalog_ID){this.Catalog_ID = catalog_ID;}
    public  String getCatalog_Name(){return Catalog_Name;}
    public void setCatalog_Name(String catalog_Name){this.Catalog_Name = catalog_Name;}
}
