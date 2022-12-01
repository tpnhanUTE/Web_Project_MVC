package com.wepr.booking.model;
import javax.persistence.*;
import java.util.Date;
import java.util.List;
import java.util.Set;

@Entity
@Table
public class Payment {
    @Id
    @GeneratedValue
    private Integer paymentID;
    @Column(nullable = false)
    private Double paymentTotal;
    @Column(nullable = false)
    private String datePayment;
    @OneToMany(cascade = CascadeType.ALL)
    @JoinColumn(name = "fk_userID")
    private Set<User> users;

    public Integer getPaymentID() {
        return paymentID;
    }

    public void setPaymentID(Integer paymentID) {
        this.paymentID = paymentID;
    }

    public Double getPaymentTotal() {
        return paymentTotal;
    }

    public void setPaymentTotal(Double paymentTotal) {
        this.paymentTotal = paymentTotal;
    }

    public String getDatePayment() {
        return datePayment;
    }

    public void setDatePayment(String datePayment) {
        this.datePayment = datePayment;
    }

    public Set<User> getUsers() {
        return users;
    }

    public void setUsers(Set<User> users) {
        this.users = users;
    }
}
