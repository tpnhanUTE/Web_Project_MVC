package com.wepr.booking.controller.admin;

import com.wepr.booking.model.Tour;
import com.wepr.booking.model.Catalog;
//import com.wepr.booking.model.Place;

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
        List<Catalog> catalogList = new ArrayList<Catalog>(); //Query all catalog
        request.setAttribute("categoryItems", catalogList);

//        List <Place> placeList = new ArrayList<Place>(); //Query all place
//        request.setAttribute("destinationItems", placeList);

        String servletPath = request.getServletPath();
        String itemID = request.getParameter("id");
        if(servletPath.contains("city")) {
            List <Tour> tourList = new ArrayList<Tour>();  //Query by itemID
            request.setAttribute("searchItems", tourList);
            String desHtmlID = "DesCheckBox-" + itemID;
            request.setAttribute("desHtmlID", desHtmlID);
        }
        else if(servletPath.contains("cate")) {
            List <Tour> tourList = new ArrayList<Tour>();  //Query by itemID
            request.setAttribute("searchItems", tourList);
            String cateHtmlID = "CategoryCheckBox-" + itemID;
            request.setAttribute("cateHtmlID", cateHtmlID);
        }
        else {
            System.out.println("search by key");
        }

        RequestDispatcher dispatcher = getServletContext().getRequestDispatcher("search.jsp");
        dispatcher.forward(request, response);



    }
}
