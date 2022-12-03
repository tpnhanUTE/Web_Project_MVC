package com.wepr.booking.controller.admin;

import com.wepr.booking.dao.CatalogDAO;
import com.wepr.booking.dao.PlaceDAO;
import com.wepr.booking.dao.TourDAO;
import com.wepr.booking.model.Catalog;
import com.wepr.booking.model.Place;
import com.wepr.booking.model.Tour;

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
        request.setCharacterEncoding("UTF-8");
        String url = "/home.jsp";
        PlaceDAO placeDAO = new PlaceDAO();
        CatalogDAO catalogDAO = new CatalogDAO();
        TourDAO tourDAO = new TourDAO();

        List<Place> places = placeDAO.GetPlace();
        List<Catalog> catalogs = catalogDAO.GetCatalog();
        List<Tour> tours = tourDAO.getTour();

        for(int i=0;i< places.size();i++){
            System.out.print(places.get(i).getPlaceImageUrl());
        }

        request.setAttribute("Places", places);
        request.setAttribute("Catalogs", catalogs);
        request.setAttribute("Tours",tours);
        getServletContext().getRequestDispatcher(url).forward(request,response);
    }
}
