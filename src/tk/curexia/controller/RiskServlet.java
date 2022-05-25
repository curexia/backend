package tk.curexia.controller;

import tk.curexia.dao.RiskDAO;

import javax.servlet.RequestDispatcher;
import javax.servlet.annotation.WebServlet;
import java.io.IOException;

@WebServlet("/riskchecker")
public class RiskServlet extends javax.servlet.http.HttpServlet {
    protected void doPost(javax.servlet.http.HttpServletRequest request, javax.servlet.http.HttpServletResponse response) throws javax.servlet.ServletException, IOException {
        float age = Float.parseFloat(request.getParameter("age"));
        float dbp = Float.parseFloat(request.getParameter("dbp"));
        float sbp = Float.parseFloat(request.getParameter("sbp"));
        float pi = Float.parseFloat(request.getParameter("pvi"));
        float race = Float.parseFloat(request.getParameter("race"));
        float rbc = Float.parseFloat(request.getParameter("rbc"));
        float wbc = Float.parseFloat(request.getParameter("wbc"));
        float sr = Float.parseFloat(request.getParameter("sr"));
        float sa = Float.parseFloat(request.getParameter("sa"));
        float sc = Float.parseFloat(request.getParameter("sc"));
        float si = Float.parseFloat(request.getParameter("si"));
        float sm = Float.parseFloat(request.getParameter("sm"));
        float sp = Float.parseFloat(request.getParameter("sp"));
        float sex = Float.parseFloat(request.getParameter("sex"));
        float tibc = Float.parseFloat(request.getParameter("tibc"));
        float ts = Float.parseFloat(request.getParameter("ts"));
        float bmi = Float.parseFloat(request.getParameter("bmi"));
        float pp = Float.parseFloat(request.getParameter("pp"));

        String result = RiskDAO.getResult(age, dbp, sbp, pi, race, rbc, wbc, sr, sa, sc, si, sm, sp, sex, tibc, ts, bmi, pp);
        request.setAttribute("getOrPost", "post");
        request.setAttribute("result", result);
        System.out.println(result);
        RequestDispatcher rq = request.getRequestDispatcher("views/risk.jsp");
        rq.forward(request, response);
    }

    protected void doGet(javax.servlet.http.HttpServletRequest request, javax.servlet.http.HttpServletResponse response) throws javax.servlet.ServletException, IOException {
        request.setAttribute("getOrPost", "get");
        RequestDispatcher rq = request.getRequestDispatcher("views/risk.jsp");
        rq.forward(request, response);
    }
}
