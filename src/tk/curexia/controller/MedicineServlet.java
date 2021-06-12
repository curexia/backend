package tk.curexia.controller;

import org.json.JSONArray;
import org.json.JSONObject;
import tk.curexia.model.Medicine;

import javax.servlet.RequestDispatcher;
import javax.servlet.ServletException;
import javax.servlet.annotation.WebServlet;
import javax.servlet.http.HttpServlet;
import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpServletResponse;
import java.io.BufferedReader;
import java.io.IOException;
import java.io.InputStreamReader;
import java.io.PrintWriter;
import java.net.HttpURLConnection;
import java.net.URL;
import java.util.ArrayList;

@WebServlet("/medicine/*")
public class MedicineServlet extends HttpServlet {
    private String reqUri(HttpServletRequest request){
        String temp = request.getPathInfo();
        temp = temp.replaceAll("/","");
        return temp;
    }

    private void infoPost(HttpServletRequest request, HttpServletResponse response) throws IOException, ServletException {
        String uri = (String) request.getParameter("code");
        URL url = new URL("https://adimdsearch.herokuapp.com/api/medicine/details?code="+uri);
        HttpURLConnection con = (HttpURLConnection)url.openConnection();
        con.setRequestProperty("Content-Type", "application/json; utf-8");
        StringBuilder resp = new StringBuilder();
        resp.append("");
        try(BufferedReader br = new BufferedReader(
                new InputStreamReader(con.getInputStream(), "utf-8"))) {
            String responseLine = null;
            while ((responseLine = br.readLine()) != null) {
                resp.append(responseLine.trim());
            }
        }
        JSONObject json = new JSONObject(resp.toString()).getJSONObject("result");
        JSONObject tmp = json.getJSONObject("Benifits");
        JSONArray tmp1 = tmp.getJSONArray("main");
        ArrayList<String> main = new ArrayList<>();
        for(Object str:tmp1){
            main.add((String)str);
        }
        JSONArray tmp2 = tmp.getJSONArray("others");
        ArrayList<String> others = new ArrayList<>();
        for(Object str:tmp2){
            others.add((String)str);
        }
        Medicine md = new Medicine(json.getString("name"),json.getString("producer"),json.getString("storage"),json.getString("detail"),json.getString("contains"),json.getString("Dosage"),main, others);
        request.setAttribute("medicine",md);
        RequestDispatcher rd = request.getRequestDispatcher("/views/medInfo.jsp");
        rd.forward(request,response);
    }

    private void searchPost(HttpServletRequest request, HttpServletResponse response) throws IOException {
        String name = (String) request.getParameter("name");
        URL url = new URL("https://adimdsearch.herokuapp.com/api/medicine/search?name="+name);
        HttpURLConnection con = (HttpURLConnection)url.openConnection();
        con.setRequestProperty("Content-Type", "application/json; utf-8");
        StringBuilder resp = new StringBuilder();
        resp.append("");
        try(BufferedReader br = new BufferedReader(
                new InputStreamReader(con.getInputStream(), "utf-8"))) {
            String responseLine = null;
            while ((responseLine = br.readLine()) != null) {
                resp.append(responseLine.trim());
            }
        }
        PrintWriter out = response.getWriter();
        response.setContentType("application/json");
        response.setCharacterEncoding("UTF-8");
        out.print(resp.toString());
        out.flush();
    }

    protected void doPost(HttpServletRequest request, HttpServletResponse response) throws ServletException, IOException {
        String url = reqUri(request);
        switch(url){
            case "info":
                infoPost(request,response);
                break;
            default:
                searchPost(request,response);
        }
    }

    protected void doGet(HttpServletRequest request, HttpServletResponse response) throws ServletException, IOException {
        request.setAttribute("getOrPost","get");
        String url = "";
        switch(reqUri(request)){
            case "info":
                if(request.getParameter("code")!=null) {
                    doPost(request,response);
                }else {
                    response.sendRedirect("/error");
                }
                break;
            default:
                url = "/views/medicineSearch.jsp";
                break;

        }
        RequestDispatcher rd = request.getRequestDispatcher(url);
        rd.forward(request,response);
    }
}
