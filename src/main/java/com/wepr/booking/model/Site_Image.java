package com.wepr.booking.model;
import javax.persistence.*;
@Entity
@Table
public class Site_Image {
    @Id
    @GeneratedValue
    private  Integer Image_ID;
    private  String Image_Url;
    @ManyToOne
    @JoinColumn(name = "Site_ID")
    private Site Site_ID;

    public Integer getImage_ID() {
        return Image_ID;
    }

    public void setImage_ID(Integer image_ID) {
        this.Image_ID = image_ID;
    }

    public String getImage_Url() {
        return Image_Url;
    }

    public void setImage_Url(String image_Url) {
        this.Image_Url = image_Url;
    }

    public Site getSite_ID() {
        return Site_ID;
    }

    public void setSite_ID(Site site_ID) {
        this.Site_ID = site_ID;
    }

}
