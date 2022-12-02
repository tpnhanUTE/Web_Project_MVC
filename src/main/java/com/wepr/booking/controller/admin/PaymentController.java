package com.wepr.booking.controller.admin;


import com.wepr.booking.dao.PaymentDAO;
import com.wepr.booking.dao.TourDAO;
import com.wepr.booking.dao.UserBookTourDAO;
import com.wepr.booking.model.Payment;
import com.wepr.booking.model.Tour;
import com.wepr.booking.model.User;
import com.wepr.booking.model.User_Tour_Book;

import javax.servlet.ServletException;
import javax.servlet.annotation.WebServlet;
import javax.servlet.http.HttpServlet;
import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpServletResponse;
import javax.servlet.http.HttpSession;
import java.io.IOException;
import java.text.DateFormat;
import java.text.SimpleDateFormat;
import java.util.ArrayList;
import java.util.Arrays;
import java.util.Date;
import java.util.List;

@WebServlet(name = "PaymentController",urlPatterns = "/payment")
public class PaymentController extends HttpServlet {
    @Override
    protected void doGet(HttpServletRequest request, HttpServletResponse response) throws ServletException, IOException {
        doPost(request,response);
    }

    @Override
    protected void doPost(HttpServletRequest request, HttpServletResponse response) throws ServletException, IOException {
        String[] checkTours = request.getParameterValues("checkTour");
        if(checkTours ==null){
            String url = "/cart";
            getServletContext().getRequestDispatcher(url).forward(request,response);
        }
        HttpSession session = request.getSession();
        User user = (User) session.getAttribute("user");

        List<String> checkTourList = new ArrayList<>();
        for(int i=0;i< checkTours.length;i++){
            checkTourList.add(checkTours[i]);
        }
        UserBookTourDAO userBookTourDAO = new UserBookTourDAO();
        List<User_Tour_Book> user_tour_books = userBookTourDAO.Get(user);

        TourDAO tourDAO = new TourDAO();
        List<Tour> tours = tourDAO.getTour();

        List<User_Tour_Book> newUserTourBook = new ArrayList<>();

        Double amount = 0.0;
        for (User_Tour_Book userTourBook:user_tour_books
             ) {
            if(checkTourList.contains(userTourBook.getUserBookTourID().toString())){
                newUserTourBook.add(userTourBook);
                amount += userTourBook.getAdultAmount()*userTourBook.getTour().getTourPrice() + userTourBook.getChildAmount()*userTourBook.getTour().getTourPrice()/2;
            }
        }
        //Payment
        PaymentDAO paymentDAO = new PaymentDAO();
        Payment payment = new Payment();
        payment.setPaymentTotal(amount);
        payment.setUser(user);
        DateFormat dateFormat = new SimpleDateFormat("yyyy/MM/dd");
        Date date = new Date();
        payment.setDatePayment(date.toString());

        paymentDAO.insert(payment);


        for (User_Tour_Book userTourBook : newUserTourBook) {
            userTourBook.setPayment(payment);
            userBookTourDAO.Update(userTourBook);
        }

        String url = "/cart";
        getServletContext().getRequestDispatcher(url).forward(request,response);
    }
}
