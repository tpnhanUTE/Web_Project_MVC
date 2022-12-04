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

@WebServlet(name = "OTPController",  urlPatterns ={"/OTP"})
public class OTPController extends HttpServlet {
    @Override
    protected void doGet(HttpServletRequest request, HttpServletResponse response) throws ServletException, IOException {
        doPost(request,response);
    }

    @Override
    protected void doPost(HttpServletRequest request, HttpServletResponse response) throws ServletException, IOException {
        String url ="/error.jsp";
        HttpSession session = request.getSession();
        String otp = request.getParameter("otp");
        String OTP = (String) session.getAttribute("OTP");
        User user = (User) session.getAttribute("User");
        if(otp.equals(OTP)){
            url ="/Login.jsp";
            UserDAO userDAO = new UserDAO();
            userDAO.insertUsers(user);
        }
        else {
            request.setAttribute("error","Please re input OTP");
            url = "/OTP.jsp";
        }
        getServletContext().getRequestDispatcher(url).forward(request,response);
    }
}
