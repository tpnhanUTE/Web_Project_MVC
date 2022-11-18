package com.wepr.booking.model;

import javax.persistence.Column;
import javax.persistence.Entity;
import javax.persistence.GeneratedValue;
import javax.persistence.Id;
import javax.persistence.Table;
@Entity
@Table
public class User {
    @Id
    @GeneratedValue
    public Integer User_ID;
    @Column
    public String User_Name;



}
