package tk.curexia.dao;

import org.json.JSONArray;
import org.json.JSONObject;
import sun.plugin2.message.JavaScriptBaseMessage;
import tk.curexia.connection.ConnectionUtil;
import tk.curexia.constant.Constants;
import tk.curexia.model.News;

import java.io.BufferedReader;
import java.io.IOException;
import java.io.InputStreamReader;
import java.io.PrintWriter;
import java.net.HttpURLConnection;
import java.net.URL;
import java.sql.Connection;
import java.sql.PreparedStatement;
import java.sql.ResultSet;
import java.sql.SQLException;
import java.util.ArrayList;

public class NewsDAO {

    static Connection conn;

    public static void deleteNews(){
        if(conn == null){
            conn = ConnectionUtil.getConnection();
        }
        try {
            PreparedStatement ps = conn.prepareStatement("delete from news");
            ps.executeQuery();
        } catch (SQLException throwables) {
            throwables.printStackTrace();
        }
    }

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
                        rs.getString(4));
                news.add(d);
            }
        } catch (SQLException throwables) {
            throwables.printStackTrace();
        }
        return news;
    }

    public static void setNews(News news){
        if(conn == null){
            conn = ConnectionUtil.getConnection();
        }
        try {
            PreparedStatement ps = conn.prepareStatement("insert into news (title,url,urltoimage,description) values(?,?,?,?);");
            ps.setString(1, news.getTitle());
            ps.setString(2, news.getUrl());
            ps.setString(3, news.getUrltoimage());
            ps.setString(4, news.getDescription());
            int result = ps.executeUpdate();
        } catch (SQLException throwables) {
            throwables.printStackTrace();
        }
    }

    public static void refreshNews() throws IOException {
        URL url = new URL("https://newsapi.org/v2/top-headlines?country=in&category=health&apiKey="+ Constants.getApikey());
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
        ArrayList<News> topHeadlines = new ArrayList<>();
        JSONObject response = new JSONObject(resp.toString());
        if(response.getString("status").equalsIgnoreCase("ok")) {
            JSONArray news = response.getJSONArray("articles");
            for(int i=0; i<news.length(); i++){
                JSONObject nw = (JSONObject) news.get(i);
                News temp = new News(nw.getString("title"),nw.get("url").toString(),nw.get("urlToImage").toString(),nw.get("description").toString());
                topHeadlines.add(temp);
            }
        }
        new Thread(()->{
            deleteNews();
            for(News news: topHeadlines){
                setNews(news);
                try {
                    Thread.sleep(2000);
                } catch (InterruptedException e) {
                    e.printStackTrace();
                }
            }
        }).start();
    }
}
