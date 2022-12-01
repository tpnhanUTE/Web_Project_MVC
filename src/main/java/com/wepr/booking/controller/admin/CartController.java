package com.wepr.booking.controller.admin;

import com.wepr.booking.dao.TourDAO;
import com.wepr.booking.dao.UserBookTourDAO;
import com.wepr.booking.dao.UserDAO;
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
import java.util.Hashtable;
import java.util.List;

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
        Hashtable<Integer, Tour> tourDis = null;
        if (user != null) {
            url = "/cart.jsp";
            TourDAO tourDAO = new TourDAO();
            List<Tour> tours = tourDAO.getTour();
            UserBookTourDAO userBookTourDAO = new UserBookTourDAO();
            List<User_Tour_Book> user_tour_books = userBookTourDAO.Get(user);
            tourDis = new Hashtable<Integer, Tour>();
            for (User_Tour_Book user_tour_book :
                    user_tour_books) {
                for (Tour t :
                        tours) {
                    if (user_tour_book.getTour().getTourID() == t.getTourID()) {
                        tourDis.put(user_tour_book.getUserBookTourID(), tour);
                    }
                }
            }
            request.setAttribute("tourDis", tourDis);
        }else {
            url ="/Login.jsp";
        }

        getServletContext().getRequestDispatcher(url).forward(request,response);
    }
}
