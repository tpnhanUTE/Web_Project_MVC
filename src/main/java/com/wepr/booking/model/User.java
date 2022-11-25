package com.wepr.booking.model;

import com.wepr.booking.utils.Utils;

import javax.persistence.*;
import java.util.Set;

@Entity
@Table(name = "user")
public class User {
    @Id
    @GeneratedValue
    private Integer User_ID;
    @Column(unique = true,nullable = false)
    private String User_Name;
    @Column(unique = true,nullable = false)
    private String Email;
    @Column(nullable = false)
    private String Password;
    private String User_Avatar_Url;
    private String User_Phone;
    @Column(nullable = false)
    private String First_Name;
    @Column(nullable = false)
    private String Last_Name;
    private Boolean Is_Admin;
//    @OneToMany//(mappedBy = "user",cascade = CascadeType.MERGE)
//    private Set<User_Tour_Favorite>  user_tour_favorites;
//    @OneToMany//(mappedBy = "user")
//    private Set<User_Tour_Comment> user_tour_comments;
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
    public String getEmail(){
        return Email;
    }
    public void setEmail(String email){
        this.Email = email;
    }
    public String getPassword(){
        return Password;
    }
    public void setPassword(String password){
        this.Password = password;
    }
    public String getUser_Avatar_Url(){
        return User_Avatar_Url;
    }
    public void setUser_Avatar_Url(String user_Avatar_Url){
        this.User_Avatar_Url = user_Avatar_Url;
    }
    public String getUser_Phone(){
        return User_Phone;
    }
    public void setUser_Phone(String user_Phone){
        this.User_Phone = user_Phone;
    }
    public  String getFirst_Name(){
        return First_Name;
    }
    public void setFirst_Name(String first_Name){
        this.First_Name = first_Name;
    }
    public  String getLast_Name(){
        return Last_Name;
    }
    public void setLast_Name(String last_Name){
        this.Last_Name = last_Name;
    }
    public Boolean getIs_Admin(){ return Is_Admin; }
    public void setIs_Admin(Boolean isAdmin){
        this.Is_Admin = isAdmin;
    }

//    public Set<User_Tour_Favorite> getUser_tour_favorites() {
//        return user_tour_favorites;
//    }
//
//    public void setUser_tour_favorites(Set<User_Tour_Favorite> user_tour_favorites) {
//        this.user_tour_favorites = user_tour_favorites;
//    }
//
//    public Set<User_Tour_Comment> getUser_tour_comments() {
//        return user_tour_comments;
//    }
//
//    public void setUser_tour_comments(Set<User_Tour_Comment> user_tour_comments) {
//        this.user_tour_comments = user_tour_comments;
//    }
}
