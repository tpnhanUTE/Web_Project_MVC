package com.wepr.booking.model;
import javax.persistence.*;
import java.util.List;

@Entity
@Table
public class Payment {
    @Id
    @GeneratedValue
    private Integer Payment_ID;
    private Boolean Payment_Status;
    private Integer Payment_Total;
    @OneToMany
    @JoinColumn(name = "User_ID")
    private List<User_Tour_Book> User_Book_Tour;

    public Integer getPayment_ID() {
        return Payment_ID;
    }

    public void setPayment_ID(Integer payment_ID) {
        this.Payment_ID = payment_ID;
    }

    public Boolean getPayment_Status() {
        return Payment_Status;
    }

    public void setPayment_Status(Boolean payment_Status) {
        this.Payment_Status = payment_Status;
    }

    public Integer getPayment_Total() {
        return Payment_Total;
    }

    public void setPayment_Total(Integer payment_Total) {
        this.Payment_Total = payment_Total;
    }

    public List<User_Tour_Book> getUser_Book_Tour() {
        return User_Book_Tour;
    }
}
