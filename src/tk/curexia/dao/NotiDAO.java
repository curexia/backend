package tk.curexia.dao;

import tk.curexia.connection.ConnectionUtil;
import tk.curexia.model.Disease;
import tk.curexia.model.Notification;
import tk.curexia.model.Person;

import java.sql.Connection;
import java.sql.PreparedStatement;
import java.sql.ResultSet;
import java.sql.SQLException;
import java.util.ArrayList;

public class NotiDAO {
    static Connection conn;

    public static ArrayList<Notification> getNotificationForPerson(int id){
        if(conn == null){
            conn = ConnectionUtil.getConnection();
        }
        ArrayList<Notification> notis = new ArrayList<>();
        try {
            PreparedStatement ps = conn.prepareStatement("select * from notification where touser=?");
            ps.setInt(1,id);
            ResultSet rs = ps.executeQuery();
            while(rs.next()){
                Notification d = new Notification(rs.getInt(1),rs.getInt(2),rs.getString(3),
                        rs.getString(4),rs.getString(5));
                notis.add(d);
            }
        } catch (SQLException throwables) {
            throwables.printStackTrace();
        }
        return notis;
    }

}
