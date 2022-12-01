package com.wepr.booking.controller.admin;

import com.wepr.booking.dao.*;
import com.wepr.booking.model.*;

import javax.servlet.*;
import javax.servlet.http.*;
import javax.servlet.annotation.*;
import java.io.IOException;
import java.text.ParseException;
import java.text.SimpleDateFormat;
import java.time.LocalDate;
import java.util.Date;
import java.util.List;

@WebServlet(name = "BookTourController", urlPatterns = "/booktour")
public class BookTourController extends HttpServlet {
    @Override
    protected void doGet(HttpServletRequest request, HttpServletResponse response) throws ServletException, IOException {
        doPost(request,response);
    }

    @Override
    protected void doPost(HttpServletRequest request, HttpServletResponse response) throws ServletException, IOException {
        String url = "/error.jsp";

        Integer tourId = Integer.parseInt(request.getParameter("Id"));
        HttpSession session = request.getSession();
        User user = (User) session.getAttribute("user");
        if(user!=null){
            url = "/detail.jsp";
            String dateDeparture = request.getParameter("dateDeparture").toString();
            //SimpleDateFormat sdf = new SimpleDateFormat("MM/dd/yyyy");
            //Date dateDeparture = new Date();
            Date dateBook = new Date();
            Integer adultAmount = Integer.parseInt(request.getParameter("adultAmount"));
            Integer childAmount = Integer.parseInt(request.getParameter("childAmount"));


            TourDAO tourDAO = new TourDAO();
            Tour tour = tourDAO.getTour(tourId).get();
            UserBookTourDAO userBookTourDAO = new UserBookTourDAO();
            User_Tour_Book userTourBook = new User_Tour_Book();
            TourImageDAO tourImageDAO = new TourImageDAO();
            UserDAO userDAO = new UserDAO();

            userTourBook.setDateBook(dateBook.toString());
            userTourBook.setAdultAmount(adultAmount);
            userTourBook.setChildAmount(childAmount);
            userTourBook.setDateDeparture(dateDeparture);
            userTourBook.setUser(user);
            userTourBook.setTour(tourDAO.getTour(tourId).get());
            userTourBook.setPayment(null);
            List<Tour_Image> tour_images = tourImageDAO.getImage(tourId);


            for (Tour_Image tour_image:tour_images) {
                System.out.print(tour_image.getTourImageUrl());
            }

            if(tour!= null){
                request.setAttribute("Tour",tour);
                request.setAttribute("TourImages", tour_images);
                request.setAttribute("addToCart",userBookTourDAO);
                userBookTourDAO.Insert(userTourBook);
                url = "/detail.jsp";
            }
        }
        else {
            url = "/Login.jsp";
        }
        //request.setAttribute("error", "eror");
        getServletContext().getRequestDispatcher(url).forward(request,response);
    }
}

//       UserTourCommentDAO userTourCommentDAO = new UserTourCommentDAO();
//       List<User_Tour_Comment> user_tour_comments = userTourCommentDAO.getUserTourCommentByTourId(tourId);

//        int rates = 0;
//        for (User_Tour_Comment user_tour_comment :user_tour_comments) {
//            rates+=user_tour_comment.getRate();
//        }

//            request.setAttribute("UserTourComments", user_tour_comments);

//            if(user_tour_comments.size()>0)
//            {
//                request.setAttribute("Rate", (double)rates/ user_tour_comments.size());
//            }