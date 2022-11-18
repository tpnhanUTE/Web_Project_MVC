package com.wepr.booking.model;

import javax.persistence.*;

@Entity
@Table
public class User {
    @Id
    @GeneratedValue
    private Integer User_ID;
    @Column
    private String User_Name;
    private String Email;
    private String Password;
    private String User_Avatar_Url;
    private String User_Address;
    private String User_Phone;
    private String First_Name;
    private String Last_Name;
    //@JoinColumn(Decentralization_ID)
    private Integer Decentralization_ID;

    public Integer getUser_ID(){
        return User_ID;
    }

    public void setUser_ID(Integer user_ID) {
        this.User_ID = user_ID;
    }

    public  String getUser_Name(){
        return User_Name;
    }
    public void setUser_Name(String user_Name){
        this.User_Name = user_Name;
    }
}
