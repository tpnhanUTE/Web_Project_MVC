package com.wepr.booking.model;
import javax.persistence.*;
import java.sql.Date;

@Entity
@Table
public class User_Tour_Comment {
    @Id
    @ManyToOne
    @JoinColumn(name = "user_ID")
    private Integer User_ID;
    @Id
    @ManyToOne
    @JoinColumn(name = "Tour_ID")
    private Integer Tour_ID;
    private String Comment;
    private Date Comment_Date;
    private Integer Rate;

    public Integer getUser_ID() {
        return User_ID;
    }

    public void setUser_ID(Integer user_ID) {
        this.User_ID = user_ID;
    }

    public Integer getTour_ID() {
        return Tour_ID;
    }

    public void setTour_ID(Integer tour_ID) {
        this.Tour_ID = tour_ID;
    }

    public String getComment() {
        return Comment;
    }

    public void setComment(String comment) {
        this.Comment = comment;
    }

    public Date getComment_Date() {
        return Comment_Date;
    }

    public void setComment_Date(Date comment_Date) {
        this.Comment_Date = comment_Date;
    }

    public Integer getRate() {
        return Rate;
    }

    public void setRate(Integer rate) {
        Rate = rate;
    }
}
