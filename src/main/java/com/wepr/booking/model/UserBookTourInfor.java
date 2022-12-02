package com.wepr.booking.model;

import javax.persistence.Column;

public class UserBookTourInfor {

    public Integer getUserBookTourId() {
        return userBookTourId;
    }

    public Integer getTourID() {
        return tourID;
    }

    public String getTourName() {
        return tourName;
    }

    public Double getTourPrice() {
        return tourPrice*adult+ tourPrice*child/2;
    }



    public void setUserBookTourId(Integer userBookTourId) {
        this.userBookTourId = userBookTourId;
    }

    public void setTourID(Integer tourID) {
        this.tourID = tourID;
    }

    public void setTourName(String tourName) {
        this.tourName = tourName;
    }

    public void setTourPrice(Double tourPrice) {
        this.tourPrice = tourPrice;
    }

    private Integer userBookTourId;
    private Integer tourID;
    private String tourName;
    private Double tourPrice;

    public String getDateDepartment() {
        return dateDepartment;
    }

    public void setDateDepartment(String dateDepartment) {
        this.dateDepartment = dateDepartment;
    }

    private  String dateDepartment;
    public Integer getAdult() {
        return adult;
    }

    public void setAdult(Integer adult) {
        this.adult = adult;
    }

    public Integer getChild() {
        return child;
    }

    public void setChild(Integer child) {
        this.child = child;
    }

    private Integer adult;
    private  Integer child;



}
