package tk.curexia.controller;

import tk.curexia.dao.DiseaseDAO;
import tk.curexia.dao.NotiDAO;
import tk.curexia.dao.UserDAO;
import tk.curexia.model.Disease;
import tk.curexia.model.Notification;
import tk.curexia.model.Person;

import javax.servlet.RequestDispatcher;
import javax.servlet.ServletException;
import javax.servlet.annotation.WebServlet;
import javax.servlet.http.HttpServlet;
import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpServletResponse;
import javax.servlet.http.HttpSession;
import java.io.IOException;
import java.util.ArrayList;

@WebServlet("/user/*")
public class UserServlet extends HttpServlet {
    private String reqUri(HttpServletRequest request){
        String temp = request.getPathInfo();
        temp = temp.replaceAll("/","");
        return temp;
    }

    private void infoPost(HttpServletRequest request, HttpServletResponse response) {
    }

    private void notiPost(HttpServletRequest request, HttpServletResponse response) {
    }

    private void searchPost(HttpServletRequest request, HttpServletResponse response) {
    }

    protected void doPost(HttpServletRequest request, HttpServletResponse response) throws ServletException, IOException {
        String url = reqUri(request);
        switch(url){
            case "search":
                searchPost(request,response);
                break;
            case "notification":
                notiPost(request,response);
                break;
            default:
                infoPost(request,response);
        }
    }

    protected void doGet(HttpServletRequest request, HttpServletResponse response) throws ServletException, IOException {
        HttpSession session = request.getSession();

        int id = (Integer)session.getAttribute("id");
        if(session.getAttribute("current")==null) {
            Person current = UserDAO.getPerson(id);
            session.setAttribute("current", current);
        }
        if(session.getAttribute("diseases")==null) {
            ArrayList<Disease> diseases = DiseaseDAO.getDiseaseForPerson(id);
            session.setAttribute("diseases",diseases);
        }

        new Thread(()->{
                ArrayList<Notification> notis = NotiDAO.getNotificationForPerson(id);
                session.setAttribute("notis", notis);
        }).start();

        request.setAttribute("getOrPost","get");
        String url = "";
        switch(reqUri(request)){
            case "search":
                url = "/views/userSearch.jsp";
                break;
            case "notification":
                url = "/views/notification.jsp";
                break;
            default:
                url = "/views/profile.jsp";
                break;
        }
        RequestDispatcher rd = request.getRequestDispatcher(url);
        rd.forward(request,response);
    }
}
