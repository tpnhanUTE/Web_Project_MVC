package com.wepr.booking.controller.admin;

import com.wepr.booking.model.User;

import javax.servlet.ServletException;
import javax.servlet.annotation.WebServlet;
import javax.servlet.http.HttpServlet;
import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpServletResponse;
import java.io.IOException;

@WebServlet("/register")
public class RegisterController extends HttpServlet {
    @Override
    protected void doGet(HttpServletRequest request, HttpServletResponse response) throws ServletException, IOException {

    }

    @Override
    protected void doPost(HttpServletRequest request, HttpServletResponse response) throws ServletException, IOException {
        //response.setContentType("text/html");

        User  user = new User();
        user.setEmail(request.getParameter("email"));
        user.setUser_Name(request.getParameter("userName"));
        user.setFirst_Name(request.getParameter("firstName"));
        user.setLast_Name(request.getParameter("lastName"));
        user.setPassword(request.getParameter("password"));
        String confirmPassword = request.getParameter("confirmPassword");

        request.setAttribute("user", user);

        String url = "/Login.jsp";
        if(!user.getPassword().equals(confirmPassword)){
            url = "/register.jsp";
            request.setAttribute("error", "Please re-enter password");
        }else {
            request.setAttribute("error", "");
        }
        getServletContext().getRequestDispatcher(url).forward(request,response);
    }
}
