package com.wepr.booking.controller.admin;


import com.wepr.booking.dao.UserDAO;
import com.wepr.booking.model.User;

import javax.servlet.ServletException;
import javax.servlet.annotation.WebServlet;
import javax.servlet.http.HttpServlet;
import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpServletResponse;
import javax.servlet.http.HttpSession;
import java.io.IOException;
import java.util.Optional;

@WebServlet(name = "HomeController",  urlPatterns= {"/home","/login","/register","/logout"})
public class HomeController extends HttpServlet {
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
        String action = request.getParameter("action");
        String url = "";
        switch (action){
            case "home":
                url = "/home.jsp";
                break;
            case "login":
                User user = new User();
                user.setEmail(request.getParameter("email"));
                user.setPassword(request.getParameter("password"));

                UserDAO userDAO = new UserDAO();
                Optional<User> oUser =  userDAO.getUser(user.getEmail(), user.getPassword());
                if(!oUser.isPresent()){
                    url = "/home?action=login";
                }else {
                    HttpSession session = request.getSession();
                    session.setAttribute("user", user);
                    url = "/home?action=home";
                }
                break;
            case "register":
                user = new User();
                user.setEmail(request.getParameter("email"));
                user.setUser_Name(request.getParameter("userName"));
                user.setFirst_Name(request.getParameter("firstName"));
                user.setLast_Name(request.getParameter("lastName"));
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
                    if(userDAO.IsValid(user.getEmail(), user.getUser_Name())){
                        userDAO.insertUsers(user);
                    }else{
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
