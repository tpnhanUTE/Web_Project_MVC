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
}
