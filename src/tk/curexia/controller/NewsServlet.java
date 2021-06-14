package tk.curexia.controller;

import tk.curexia.dao.NewsDAO;
import tk.curexia.model.News;

import javax.servlet.RequestDispatcher;
import javax.servlet.ServletContext;
import javax.servlet.ServletException;
import javax.servlet.annotation.WebServlet;
import javax.servlet.http.HttpServlet;
import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpServletResponse;
import javax.servlet.http.HttpSession;
import java.io.IOException;
import java.io.PrintWriter;
import java.util.ArrayList;

@WebServlet("/news")
public class NewsServlet extends HttpServlet {
    protected void doPost(HttpServletRequest request, HttpServletResponse response) throws ServletException, IOException {
        doGet(request,response);
    }

    protected void doGet(HttpServletRequest request, HttpServletResponse response) throws ServletException, IOException {
        HttpSession session = request.getSession();
        if(session.getAttribute("news")==null){
            ArrayList<News> news = NewsDAO.getNews();
            session.setAttribute("news",news);
        }
        String url = "/views/news.jsp";
        RequestDispatcher rd = request.getRequestDispatcher(url);
        rd.forward(request,response);
    }
}
