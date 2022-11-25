package com.wepr.booking.model;
import javax.persistence.*;
@Entity
@Table(name = "place")
public class Place {
    @Id
    @GeneratedValue
    private Integer placeID;
    @Column(unique = true,nullable = false)
    private String placeName;
    private String placeImageUrl;

    public Integer getPlaceID() {
        return placeID;
    }

    public void setPlaceID(Integer placeID) {
        this.placeID = placeID;
    }

    public String getPlaceName() {
        return placeName;
    }

    public void setPlaceName(String placeName) {
        this.placeName = placeName;
    }

    public String getPlaceImageUrl() {
        return placeImageUrl;
    }

    public void setPlaceImageUrl(String placeImageUrl) {
        this.placeImageUrl = placeImageUrl;
    }
}
