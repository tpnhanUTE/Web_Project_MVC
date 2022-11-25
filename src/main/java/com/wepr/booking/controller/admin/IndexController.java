package com.wepr.booking.controller.admin;

import com.wepr.booking.dao.PlaceDAO;
import com.wepr.booking.model.Place;

import javax.servlet.*;
import javax.servlet.http.*;
import javax.servlet.annotation.*;
import java.io.IOException;
import java.util.List;

@WebServlet(name = "IndexController", urlPatterns = "/index")
public class IndexController extends HttpServlet {
    @Override
    protected void doGet(HttpServletRequest request, HttpServletResponse response) throws ServletException, IOException {
        doPost(request,response);
    }

    @Override
    protected void doPost(HttpServletRequest request, HttpServletResponse response) throws ServletException, IOException {
        String url = "/home.jsp";
        PlaceDAO placeDAO = new PlaceDAO();
        List<Place> place =placeDAO.GetPlace();
        for(int i=0;i< place.size();i++){
            System.out.print(place.get(i).getPlaceImageUrl());
        }
        request.setAttribute("Place", place);
        getServletContext().getRequestDispatcher(url).forward(request,response);
    }
}
