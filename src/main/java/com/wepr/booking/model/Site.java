package com.wepr.booking.model;
import javax.persistence.*;
@Entity
@Table
public class Site {
    @Id
    @GeneratedValue
    private Integer Site_ID;
    private String Site_Name;
    private String Site_Address;

    public Integer getSite_ID() {
        return Site_ID;
    }

    public void setSite_ID(Integer site_ID) {
        this.Site_ID = site_ID;
    }

    public String getSite_Name() {
        return Site_Name;
    }

    public void setSite_Name(String site_Name) {
        this.Site_Name = site_Name;
    }

    public String getSite_Address() {
        return Site_Address;
    }

    public void setSite_Address(String site_Address) {
        this.Site_Address = site_Address;
    }
}
