package tk.curexia.dao;

import javax.servlet.ServletContext;
import javax.servlet.ServletContextEvent;
import javax.servlet.ServletContextListener;
import java.io.BufferedReader;
import java.io.IOException;
import java.io.InputStreamReader;
import java.net.HttpURLConnection;
import java.net.URL;

public class NewsListener implements ServletContextListener {

    public void contextInitialized(ServletContextEvent ce) {
        try {
            NewsDAO.refreshNews();
        } catch (IOException e) {
            e.printStackTrace();
        }
    }


    public void contextDestroyed(ServletContextEvent ce)
    {

    }
}
