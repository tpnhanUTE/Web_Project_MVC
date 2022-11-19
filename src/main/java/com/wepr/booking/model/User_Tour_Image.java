package com.wepr.booking.model;
import javax.persistence.*;
@Entity
@Table
public class User_Tour_Image {
    @Id
    @GeneratedValue
    private Integer Image_ID;
    private String Image_Url;
    @ManyToOne
    private User_Tour_Comment User_Tour_Comment_ID;

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

    public User_Tour_Comment getUser_Tour_Comment_ID() {
        return User_Tour_Comment_ID;
    }

    public void setUser_Tour_Comment_ID(User_Tour_Comment user_Tour_Comment_ID) {
        this.User_Tour_Comment_ID = user_Tour_Comment_ID;
    }
}
