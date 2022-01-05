package tk.curexia.dao;

import javax.servlet.ServletContextEvent;
import javax.servlet.ServletContextListener;
import java.io.IOException;

public class NewsListener implements ServletContextListener {

    public void contextInitialized(ServletContextEvent ce) {
        try {
            NewsDAO.refreshNews();
        } catch (IOException e) {
            e.printStackTrace();
        }
    }


    public void contextDestroyed(ServletContextEvent ce) {

    }
}
