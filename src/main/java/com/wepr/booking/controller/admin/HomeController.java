package com.wepr.booking.controller.admin;


import com.wepr.booking.dao.CatalogDAO;
import com.wepr.booking.dao.PlaceDAO;
import com.wepr.booking.dao.TourDAO;
import com.wepr.booking.dao.UserDAO;
import com.wepr.booking.model.Catalog;
import com.wepr.booking.model.Place;
import com.wepr.booking.model.Tour;
import com.wepr.booking.model.User;
import com.wepr.booking.utils.EmailUtility;

import javax.mail.MessagingException;
import javax.servlet.ServletContext;
import javax.servlet.ServletException;
import javax.servlet.annotation.WebServlet;
import javax.servlet.http.HttpServlet;
import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpServletResponse;
import javax.servlet.http.HttpSession;
import java.io.IOException;
import java.util.List;
import java.util.Optional;

@WebServlet(name = "HomeController",  urlPatterns= {"/home","/login","/register","/logout"})
public class HomeController extends HttpServlet {
    private String host;
    private String port;
    private String username;
    private String mailPassword;
    public void init() {
        ServletContext context = getServletContext();
        host = context.getInitParameter("host");
        port = context.getInitParameter("port");
        username = context.getInitParameter("email");
        mailPassword = context.getInitParameter("pass");
    }
    @Override
    protected void doGet(HttpServletRequest request, HttpServletResponse response) throws ServletException, IOException {
        String action = request.getParameter("action");
        String url = "";
        if(action ==null || action.isEmpty())
        {
            url = "/error.jsp";
        }
        else {
            switch (action){
                case "register":
                    url = "/register.jsp";
                    break;
                case "login":
                    url = "/Login.jsp";
                    break;
                case "home":
                    url = "/home.jsp";
                    break;
                case "logout":
                    HttpSession session = request.getSession();
                    session.invalidate();
                    url = "/home.jsp";
                    break;
                default:
                    break;
            }
        }
        getServletContext().getRequestDispatcher(url).forward(request,response);
    }

    @Override
    protected void doPost(HttpServletRequest request, HttpServletResponse response) throws ServletException, IOException {
        request.setCharacterEncoding("UTF-8");
        String action = request.getParameter("action");
        String url = "";
        switch (action){
            case "home":
                url = "/index";
                break;
            case "login":
                User user = new User();
                user.setEmail(request.getParameter("email"));
                user.setPassword(request.getParameter("password"));

                UserDAO userDAO = new UserDAO();
                Optional<User> oUser =  userDAO.getUser(user.getEmail(), user.getPassword());
                if(!oUser.isPresent()){
                    url = "/Login.jsp";
                }else {
                    HttpSession session = request.getSession();
                    session.setAttribute("user", oUser.get());
                    request.setAttribute("user",oUser.get());
                    if(oUser.get().getIsAdmin() !=null ){
                        userDAO = new UserDAO();
                        List<User> users = userDAO.getUsers();

                        TourDAO tourDAO = new TourDAO();
                        List<Tour> tours = tourDAO.getTour();

                        PlaceDAO placeDAO = new PlaceDAO();
                        List<Place> places = placeDAO.GetPlace();

                        request.setAttribute("users", users);
                        request.setAttribute("tours",tours);
                        request.setAttribute("places",places);
                        url = "/admin.jsp";

                    }
                    else{
                        PlaceDAO placeDAO = new PlaceDAO();
//                    CatalogDAO catalogDAO = new CatalogDAO();
//                    List<Place> places = placeDAO.GetPlace();
//
//                    List<Catalog> catalogs = catalogDAO.GetCatalog();
//                    request.setAttribute("Places", places);
//                    request.setAttribute("Catalogs", catalogs);
                        System.out.print(oUser.get().getUserAvatarUrl());
                        url = "/index";
                    }
                }
                break;
            case "register":
                user = new User();
                user.setEmail(request.getParameter("email"));
                user.setUserName(request.getParameter("userName"));
                user.setFirstname(request.getParameter("firstName"));
                user.setLastname(request.getParameter("lastName"));
                user.setPassword(request.getParameter("password"));
                String confirmPassword = request.getParameter("confirmPassword");
                request.setAttribute("user", user);

                url = "/Login.jsp";
                if(!user.getPassword().equals(confirmPassword)){
                    url = "/register.jsp";
                    request.setAttribute("error", "Please re-enter password");

                }else {
                    request.setAttribute("error", "");
                    userDAO = new UserDAO();
                    if(userDAO.IsValid(user.getEmail(), user.getUserName())){

                        url ="/otp.jsp";
                        HttpSession session = request.getSession();
                        session.setAttribute("User", user);
                        session.setAttribute("OTP", EmailUtility.randomOtp());
                        try {
                            EmailUtility.sendEmail(host,port,username,mailPassword,user.getEmail(),
                                    "Use this otp to activate your account", (String) session.getAttribute("OTP"));
                            url = "/OTP.jsp";
                        } catch (MessagingException e) {
                            request.setAttribute("error", "please try again");
                            url = "/register.jsp";
                        }
                        //userDAO.insertUsers(user);
                    }else{
                        request.setAttribute("error", "email or user name has existed");
                        url = "/register.jsp";
                    }
                }
                break;
            default:
                url = "/error.jsp";
                break;
        }
        getServletContext().getRequestDispatcher(url).forward(request,response);
    }
}
