package com.wepr.booking.controller.admin;


import com.wepr.booking.dao.PlaceDAO;
import com.wepr.booking.dao.TourDAO;
import com.wepr.booking.dao.UserDAO;
import com.wepr.booking.model.Place;
import com.wepr.booking.model.Tour;
import com.wepr.booking.model.User;

import javax.servlet.ServletException;
import javax.servlet.annotation.WebServlet;
import javax.servlet.http.HttpServlet;
import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpServletResponse;
import java.io.IOException;
import java.util.List;
import java.util.Optional;

@WebServlet(name = "Admin", urlPatterns = "/admin")
public class Admin extends HttpServlet {
    @Override
    protected void doGet(HttpServletRequest request, HttpServletResponse response) throws ServletException, IOException {
        doPost(request,response);
    }

    @Override
    protected void doPost(HttpServletRequest request, HttpServletResponse response) throws ServletException, IOException {
        String action = request.getParameter("action");

        String tourName = request.getParameter("TourName");
        String tourPrice =  request.getParameter("TourPrice");
        String tourOldPrice = request.getParameter("TourOldPrice");
        String tourDescription = request.getParameter("TourDescription");
        //String tourPolicy = request.getParameter("TourPolicy");
        String tourSchedule = request.getParameter("TourSchedule");
        System.out.print(request.getParameter("TourPolicy"));
        String PlaceId = request.getParameter("place");
        String[] imageUrl = request.getParameterValues("Image_Url");

        if(action != null){
            switch (action){
                case "edit":
                    String id = request.getParameter("id");
                    TourDAO tourDAO = new TourDAO();
                    Tour tour = tourDAO.getTour(Integer.parseInt(id)).get();

                    tour.setTourName(tourName);
                    tour.setTourPrice(Double.parseDouble(tourPrice));
                    tour.setTourOldPrice(Double.parseDouble(tourOldPrice));
                    tour.setTourDescription(tourDescription);
                    //tour.setPolicy(tourPolicy);
                    tour.setTourSchedule(tourSchedule);

                    PlaceDAO placeDAO = new PlaceDAO();
                    Optional<Place> place = placeDAO.GetPlace(Integer.parseInt(PlaceId));
                    tour.setPlace(place.get());

                    if(tour != null) {
                        tourDAO.updateTour(tour);
                    }
                    break;
                case  "add":
                    tour = new Tour();
                    tour.setTourName(tourName);
                    tour.setTourPrice(Double.parseDouble(tourPrice));
                    tour.setTourOldPrice(Double.parseDouble(tourOldPrice));
                    tour.setTourDescription(tourDescription);
                    //tour.setPolicy(tourPolicy);
                    tour.setTourSchedule(tourSchedule);

                    PlaceDAO placeDAO1 = new PlaceDAO();
                    Optional<Place> place1 = placeDAO1.GetPlace(Integer.parseInt(PlaceId));
                    tour.setPlace(place1.get());
                    TourDAO tourDAO1 = new TourDAO();
                    tourDAO1.insertTour(tour);
                    break;
                default:
                    break;
            }
        }

        UserDAO userDAO = new UserDAO();
        List<User> users = userDAO.getUsers();

        TourDAO tourDAO = new TourDAO();
        List<Tour> tours = tourDAO.getTour();

        PlaceDAO placeDAO = new PlaceDAO();
        List<Place> places = placeDAO.GetPlace();

        request.setAttribute("users", users);
        request.setAttribute("tours",tours);
        request.setAttribute("places",places);

        getServletContext().getRequestDispatcher("/admin.jsp").forward(request,response);
    }
}
