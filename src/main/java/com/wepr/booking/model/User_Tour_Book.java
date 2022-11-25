package com.wepr.booking.model;
import javax.persistence.*;
import java.util.Date;

@Entity
@Table(name = "user_tour_book")
public class User_Tour_Book {
    @Id
    @GeneratedValue
    private Integer userBookTourID;
    @Column(nullable = false)
    private Date dateBook;
    @Column(nullable = false)
    private Integer adultAmount;
    @Column(nullable = false)
    private Integer childAmount;
    @Column(nullable = false)
    private Date dateDeparture;
    @ManyToOne
    @JoinColumn(name = "fk_userID")
    private User user;
    @ManyToOne
    @JoinColumn(name = "fk_tourID")
    private Tour tour;
    @ManyToOne
    @JoinColumn(name = "fk_paymentID")
    private Payment payment;
    public Integer getUserBookTourID(){ return userBookTourID; }
    public void setUserBookTourID(Integer userBookTourID){ this.userBookTourID = userBookTourID; }

    public Date getDateBook() {
        return dateBook;
    }

    public void setDateBook(Date dateBook) {
        this.dateBook = dateBook;
    }

    public Integer getAdultAmount() {
        return adultAmount;
    }

    public void setAdultAmount(Integer adultAmount) {
        this.adultAmount = adultAmount;
    }

    public Integer getChildAmount() {
        return childAmount;
    }

    public void setChildAmount(Integer childAmount) {
        this.childAmount = childAmount;
    }

    public Date getDateDeparture() {
        return dateDeparture;
    }

    public void setDateDeparture(Date dateDeparture) {
        this.dateDeparture = dateDeparture;
    }

    public User getUser() {
        return user;
    }

    public void setUser(User user) {
        this.user = user;
    }

    public Tour getTour() {
        return tour;
    }

    public void setTour(Tour tour) {
        this.tour = tour;
    }

    public Payment getPayment() {
        return payment;
    }

    public void setPayment(Payment payment) {
        this.payment = payment;
    }
}

