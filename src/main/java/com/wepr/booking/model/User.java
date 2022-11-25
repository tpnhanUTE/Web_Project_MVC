package com.wepr.booking.model;

import com.wepr.booking.utils.Utils;

import javax.persistence.*;
import java.util.Set;

@Entity
@Table(name = "user")
public class User {
    @Id
    @GeneratedValue
    private Integer userID;
    @Column(unique = true,nullable = false)
    private String userName;
    @Column(unique = true,nullable = false)
    private String email;
    @Column(nullable = false)
    private String password;
    private String userAvatarUrl;
    private String userPhone;
    @Column(nullable = false)
    private String firstname;
    @Column(nullable = false)
    private String lastname;
    private Boolean isAdmin;
    public Integer getUserID(){
        return userID;
    }
    public void setUserID(Integer userID) {
        this.userID = userID;
    }
    public  String getUserName(){
        return userName;
    }
    public void setUserName(String userName){
        this.userName = userName;
    }
    public String getEmail(){
        return email;
    }
    public void setEmail(String email){
        this.email = email;
    }
    public String getPassword(){
        return password;
    }
    public void setPassword(String password){
        this.password = password;
    }
    public String getUserAvatarUrl(){
        return userAvatarUrl;
    }
    public void setUserAvatarUrl(String userAvatarUrl){
        this.userAvatarUrl = userAvatarUrl;
    }
    public String getUserPhone(){
        return userPhone;
    }
    public void setUserPhone(String userPhone){
        this.userPhone = userPhone;
    }
    public  String getFirst_Name(){
        return firstname;
    }
    public void setFirstname(String firstname){
        this.firstname = firstname;
    }
    public  String getLastname(){
        return lastname;
    }
    public void setLastname(String lastname){
        this.lastname = lastname;
    }
    public Boolean getIsAdmin(){ return isAdmin; }
    public void setIsAdmin(Boolean isAdmin){
        this.isAdmin = isAdmin;
    }

}
