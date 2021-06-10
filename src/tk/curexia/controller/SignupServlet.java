package tk.curexia.controller;

import tk.curexia.dao.UserDAO;
import tk.curexia.model.Person;

import javax.servlet.RequestDispatcher;
import javax.servlet.ServletException;
import javax.servlet.annotation.WebServlet;
import javax.servlet.http.HttpServlet;
import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpServletResponse;
import javax.servlet.http.HttpSession;
import java.io.IOException;

@WebServlet("/signup")
public class SignupServlet extends HttpServlet {
    protected void doPost(HttpServletRequest request, HttpServletResponse response) throws ServletException, IOException {
        String name = request.getParameter("name");
        String email = request.getParameter("email");
        String password = request.getParameter("pwd");
        String designation = request.getParameter("designation");
        String address = request.getParameter("address");
        String dob = request.getParameter("dob");
        long phone = 0;
        try {
            phone = Long.parseLong(request.getParameter("phone"));
        }catch(Exception e){
            RequestDispatcher rd = request.getRequestDispatcher("views/signup.jsp");
            request.setAttribute("process","fail");
            request.setAttribute("getOrPost","post");
            rd.forward(request,response);
            return;
        }
        Person p = new Person(name,address,dob,designation,phone,password,email);

        if(UserDAO.createPerson(p)){
            response.sendRedirect("/login");
        }else {
            RequestDispatcher rd = request.getRequestDispatcher("views/signup.jsp");
            request.setAttribute("process","fail");
            request.setAttribute("getOrPost","post");
            rd.forward(request,response);
        }
    }

    protected void doGet(HttpServletRequest request, HttpServletResponse response) throws ServletException, IOException {
        RequestDispatcher rd = request.getRequestDispatcher("views/signup.jsp");
        request.setAttribute("getOrPost","get");
        rd.forward(request, response);
    }
}
