package com.wepr.booking.controller.admin;

import com.wepr.booking.dao.TourDAO;
import com.wepr.booking.dao.UserBookTourDAO;
import com.wepr.booking.model.Tour;
import com.wepr.booking.model.Tour_TourBook;
import com.wepr.booking.model.User;
import com.wepr.booking.model.User_Tour_Book;

import javax.servlet.ServletException;
import javax.servlet.annotation.WebServlet;
import javax.servlet.http.HttpServlet;
import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpServletResponse;
import javax.servlet.http.HttpSession;
import java.io.IOException;
import java.util.Hashtable;
import java.util.List;
import java.util.concurrent.atomic.AtomicReference;

@WebServlet(name = "CartController", urlPatterns = "/cart")
public class CartController extends HttpServlet {
    @Override
    protected void doGet(HttpServletRequest request, HttpServletResponse response) throws ServletException, IOException {
        doPost(request,response);
    }

    @Override
    protected void doPost(HttpServletRequest request, HttpServletResponse response) throws ServletException, IOException {
        String url = "/error.jsp";
        HttpSession session = request.getSession();
        Tour tour = new Tour();
        User_Tour_Book userTourBook = new User_Tour_Book();
        User user = (User) session.getAttribute("user");
        Hashtable<Integer, Tour_TourBook> tourDis = null;
        if (user != null) {
            url = "/cart.jsp";
            TourDAO tourDAO = new TourDAO();
            List<Tour> tours = tourDAO.getTour();
            UserBookTourDAO userBookTourDAO = new UserBookTourDAO();
            List<User_Tour_Book> user_tour_books = userBookTourDAO.Get();
            tourDis = new Hashtable<Integer, Tour_TourBook>();
            for (User_Tour_Book user_tour_book :
                    user_tour_books) {
                for (Tour t :
                        tours) {
                    if (user_tour_book.getTour().getTourID() == t.getTourID() && user_tour_book.getUser().getUserID() == user.getUserID() && user_tour_book.getPayment() ==null) {
                        Tour_TourBook tour_tourBook = new Tour_TourBook();
                        tour_tourBook.tour = t;
                        tour_tourBook.userTourBook = user_tour_book;
                        tourDis.put(user_tour_book.getUserBookTourID(),tour_tourBook);
                    }
                }
            }
            request.setAttribute("tourDis", tourDis);
        }else {
            url ="/Login.jsp";
        }
        AtomicReference<Double> price = new AtomicReference<>(0.0);
        tourDis.forEach((k,v)->{
            Double m = (v.tour.getTourPrice() * v.userTourBook.getAdultAmount()) + (v.tour.getTourPrice() * v.userTourBook.getChildAmount() / 2);
            price.updateAndGet(v1 -> v1 + m);
        });
        request.setAttribute("amount",price);
        System.out.print(tourDis.toString());
        getServletContext().getRequestDispatcher(url).forward(request,response);
    }
}
