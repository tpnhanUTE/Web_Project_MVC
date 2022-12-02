package com.wepr.booking.model;

public class Tour_TourBook {
    public  Tour tour;
    public  User_Tour_Book userTourBook;
    public Tour_TourBook(Tour_TourBook tour_tourBook){
        this.tour = tour_tourBook.tour;
        this.userTourBook = tour_tourBook.userTourBook;
    }
    public Tour_TourBook(){

    }
}
