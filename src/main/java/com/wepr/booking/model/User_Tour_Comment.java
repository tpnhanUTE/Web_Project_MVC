package com.wepr.booking.model;
import javax.persistence.*;
import java.sql.Date;

@Entity
@Table
public class User_Tour_Comment {
    @Id
    @ManyToOne
    @JoinColumn(name = "User_ID")
    private User User;
    @Id
    @ManyToOne
    @JoinColumn(name = "Tour_ID")
    private Tour Tour;
    private String Comment;
    private Date Comment_Date;
    private Integer Rate;

    public com.wepr.booking.model.User getUser() {
        return User;
    }

    public void setUser(com.wepr.booking.model.User user) {
        this.User = user;
    }

    public com.wepr.booking.model.Tour getTour() {
        return Tour;
    }

    public void setTour(com.wepr.booking.model.Tour tour) {
        this.Tour = tour;
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
