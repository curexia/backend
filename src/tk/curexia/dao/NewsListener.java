package tk.curexia.dao;

import javax.servlet.ServletContext;
import javax.servlet.ServletContextEvent;
import javax.servlet.ServletContextListener;
import java.io.BufferedReader;
import java.io.InputStreamReader;
import java.net.HttpURLConnection;
import java.net.URL;

public class NewsListener implements ServletContextListener {

    public void contextInitialized(ServletContextEvent ce)
    {
        URL url = new URL("");     //Enter the URL of news api
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

            ServletContext ctxt = ce.getServletContext();
            ctxt.setAttribute("newsResponse",resp.toString());

        }

    }


    public void contextDestroyed(ServletContextEvent ce)
    {

    }
}
