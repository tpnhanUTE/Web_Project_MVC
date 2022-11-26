package com.wepr.booking.controller.admin;

import com.wepr.booking.dao.TourDAO;
import com.wepr.booking.model.Tour;

import javax.servlet.*;
import javax.servlet.http.*;
import javax.servlet.annotation.*;
import java.io.IOException;

@WebServlet(name = "TourController", urlPatterns = "/tour")
public class TourController extends HttpServlet {
    @Override
    protected void doGet(HttpServletRequest request, HttpServletResponse response) throws ServletException, IOException {
        doPost(request,response);
    }

    @Override
    protected void doPost(HttpServletRequest request, HttpServletResponse response) throws ServletException, IOException {
        Integer tourId = Integer.parseInt(request.getParameter("Id"));
        TourDAO tourDAO = new TourDAO();
        Tour tour = tourDAO.getTour(tourId).get();
        if(tour!= null){
            request.setAttribute("Tour",tour);
        }
    }
}
