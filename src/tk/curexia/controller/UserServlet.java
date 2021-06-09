package tk.curexia.controller;

import javax.servlet.RequestDispatcher;
import javax.servlet.ServletException;
import javax.servlet.annotation.WebServlet;
import javax.servlet.http.HttpServlet;
import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpServletResponse;
import java.io.IOException;

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
                url = "/views/info.jsp";
                break;
        }
        RequestDispatcher rd = request.getRequestDispatcher(url);
        rd.forward(request,response);
    }
}
