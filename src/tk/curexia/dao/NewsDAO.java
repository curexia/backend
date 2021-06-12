package tk.curexia.dao;

import tk.curexia.connection.ConnectionUtil;
import tk.curexia.model.News;

import java.sql.Connection;
import java.sql.PreparedStatement;
import java.sql.ResultSet;
import java.sql.SQLException;
import java.util.ArrayList;

public class NewsDAO {

    static Connection conn;

    public static ArrayList<News> getNews(){
        if(conn == null){
            conn = ConnectionUtil.getConnection();
        }
        ArrayList<News> news = new ArrayList<>();
        try {
            PreparedStatement ps = conn.prepareStatement("select * from news");
            ResultSet rs = ps.executeQuery();
            while(rs.next()){
                News d = new News(rs.getString(1),rs.getString(2),rs.getString(3),
                        rs.getString(4),rs.getString(5),rs.getString(6));
                news.add(d);
            }
        } catch (SQLException throwables) {
            throwables.printStackTrace();
        }
        return news;
    }
}
