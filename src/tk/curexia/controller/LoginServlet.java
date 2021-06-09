package tk.curexia.controller;

import tk.curexia.dao.UserDAO;

import javax.servlet.RequestDispatcher;
import javax.servlet.ServletException;
import javax.servlet.annotation.WebServlet;
import javax.servlet.http.HttpServlet;
import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpServletResponse;
import javax.servlet.http.HttpSession;
import java.io.IOException;

@WebServlet("/login")
public class LoginServlet extends HttpServlet {
    protected void doPost(HttpServletRequest request, HttpServletResponse response) throws ServletException, IOException {
        String email = request.getParameter("email");
        String password = request.getParameter("pwd");

        HttpSession session = request.getSession();

        System.out.println("In LoginServlet: " + email + " : " + password);

        if(UserDAO.checkLogin(email,password)){
            int id = UserDAO.getID(email);
            session.setAttribute("id",id);
            response.sendRedirect("/user/info");
        }else{
            RequestDispatcher rd = request.getRequestDispatcher("views/login.jsp");
            request.setAttribute("process","fail");
            request.setAttribute("getOrPost","post");
            rd.forward(request,response);
        }
    }

    protected void doGet(HttpServletRequest request, HttpServletResponse response) throws ServletException, IOException {
        RequestDispatcher rd = request.getRequestDispatcher("views/login.jsp");
        request.setAttribute("getOrPost","get");
        rd.forward(request, response);
    }
}
