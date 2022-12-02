package com.wepr.booking.controller.admin;

import com.wepr.booking.model.Tour;
import com.wepr.booking.model.Place;
import com.wepr.booking.model.Catalog;
import com.wepr.booking.dao.PlaceDAO;
import com.wepr.booking.dao.TourDAO;
import com.wepr.booking.dao.CatalogDAO;

import javax.servlet.RequestDispatcher;
import javax.servlet.ServletException;
import javax.servlet.annotation.WebServlet;
import javax.servlet.http.HttpServlet;
import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpServletResponse;
import java.io.IOException;
import java.util.*;

@WebServlet(urlPatterns = {"/search/*", "/cate/*", "/city/*"})
public class SearchController extends HttpServlet {
    @Override
    protected void doGet(HttpServletRequest request, HttpServletResponse response) throws ServletException, IOException {
        doPost(request,response);
    }

    @Override
    protected void doPost(HttpServletRequest request, HttpServletResponse response) throws ServletException, IOException {
        CatalogDAO catalog = new CatalogDAO();
        TourDAO tour = new TourDAO();
        PlaceDAO place = new PlaceDAO();

        List<Catalog> catalogList = catalog.GetCatalog(); //Query all catalog
        request.setAttribute("categoryItems", catalogList);

        List <Place> placeList = place.GetPlace(); //Query all place
        request.setAttribute("destinationItems", placeList);

        List <Tour> tourList = tour.getTour();
        request.setAttribute("tourList", tourList);

        String servletPath = request.getServletPath();
        String itemID = request.getParameter("id");
        if(servletPath.contains("city")) {
            request.setAttribute("desHtmlID", itemID);
        }
        else if(servletPath.contains("cate")) {
            request.setAttribute("cateHtmlID", itemID);
        }
        else {
//            String[] keyArr = request.getQueryString().substring(4).split("%");
//            String keyString = "";
//            for(int i = 0; i < keyArr.length; i++) {
//                keyString += keyArr[i] + " ";
//            }
//            keyString = keyString.trim();
//            request.setAttribute("key", keyString);
//
//            System.out.println(request.getQueryString());
//            System.out.println(keyString);
        }

        RequestDispatcher dispatcher = getServletContext().getRequestDispatcher("/search.jsp");
        dispatcher.forward(request, response);



    }
}
