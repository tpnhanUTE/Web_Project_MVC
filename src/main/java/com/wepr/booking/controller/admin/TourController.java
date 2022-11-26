package com.wepr.booking.controller.admin;

import com.wepr.booking.dao.TourDAO;
import com.wepr.booking.dao.UserTourCommentDAO;
import com.wepr.booking.model.Tour;
import com.wepr.booking.model.User_Tour_Comment;

import javax.servlet.*;
import javax.servlet.http.*;
import javax.servlet.annotation.*;
import java.io.IOException;
import java.util.List;

@WebServlet(name = "TourController", urlPatterns = "/tour")
public class TourController extends HttpServlet {
    @Override
    protected void doGet(HttpServletRequest request, HttpServletResponse response) throws ServletException, IOException {
        doPost(request,response);
    }

    @Override
    protected void doPost(HttpServletRequest request, HttpServletResponse response) throws ServletException, IOException {
        String url = "/error.jsp";
        Integer tourId = Integer.parseInt(request.getParameter("Id"));
        TourDAO tourDAO = new TourDAO();
        Tour tour = tourDAO.getTour(tourId).get();

        UserTourCommentDAO userTourCommentDAO = new UserTourCommentDAO();
        List<User_Tour_Comment> user_tour_comments = userTourCommentDAO.getUserTourCommentByTourId(tourId);
        if(tour!= null){
            request.setAttribute("Tour",tour);
            request.setAttribute("UserTourComments", user_tour_comments);
            url = "/detail.jsp";
        }
        getServletContext().getRequestDispatcher(url).forward(request,response);
    }
}
