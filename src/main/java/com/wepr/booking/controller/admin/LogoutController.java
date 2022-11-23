package com.wepr.booking.controller.admin;



import javax.servlet.ServletException;
import javax.servlet.annotation.WebServlet;
import javax.servlet.http.HttpServlet;
import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpServletResponse;
import javax.servlet.http.HttpSession;
import java.io.IOException;

@WebServlet(name = "logout", urlPatterns = "/logout")
public class LogoutController extends HttpServlet {
    @Override
    protected void doGet(HttpServletRequest request, HttpServletResponse response) throws ServletException, IOException {
        doPost(request,response);
    }
    @Override
    protected void doPost(HttpServletRequest request, HttpServletResponse response) throws ServletException, IOException {
        String action = request.getParameter("action");
        System.out.println( "action "+ action);
        if(action.equals("logout") && action != null) {
            HttpSession session = request.getSession();
            session.invalidate();
            getServletContext().getRequestDispatcher("/home.jsp").forward(request,response);
        }
        if(action.equals("register") && action!= null){
            getServletContext().getRequestDispatcher("/register.jsp").forward(request,response);
        }
    }
}
