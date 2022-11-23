package com.wepr.booking.controller.admin;
import com.wepr.booking.model.User;


import javax.servlet.ServletException;
import javax.servlet.annotation.WebServlet;
import javax.servlet.http.HttpServlet;
import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpServletResponse;
import javax.servlet.http.HttpSession;
import java.io.IOException;

@WebServlet("/login")
public class LoginController extends HttpServlet {

    @Override
    protected void doGet(HttpServletRequest req, HttpServletResponse resp) throws ServletException, IOException {
        req.getRequestDispatcher("/Login.jsp").forward(req,resp);
    }

    @Override
    protected void doPost(HttpServletRequest request, HttpServletResponse response) throws ServletException, IOException {
        User user = new User();
        user.setEmail(request.getParameter("email"));
        user.setPassword(request.getParameter("password"));

        // load from data
        String url = "/home.jsp";
        //url = "/index.jsp";
        //new user
        //when login success
        HttpSession session = request.getSession();

        session.setAttribute("user", user);
        System.out.println(session.getAttribute("user"));
        //System.out.println((session.ti));

        getServletContext().getRequestDispatcher(url).forward(request,response);
    }
}
