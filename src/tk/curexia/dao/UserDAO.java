package tk.curexia.dao;

import tk.curexia.connection.ConnectionUtil;
import tk.curexia.model.Person;

import java.sql.*;
import java.text.ParseException;
import java.text.SimpleDateFormat;

public class UserDAO {

    static Connection conn;

    public static boolean createEmp(Person p) {
        if (conn == null) {
            conn = ConnectionUtil.getConnection();
        }
        boolean res = false;
        SimpleDateFormat sdf = new SimpleDateFormat("dd/MM/yyyy");
        java.util.Date parsed = null;
        try {
            parsed = sdf.parse(p.getDob());
        } catch (ParseException e1) {
            // TODO Auto-generated catch block
            e1.printStackTrace();
        }
        Date data = new Date(parsed.getTime());
        try {
            PreparedStatement ps = conn.prepareStatement("insert into person (name,address,dob,designation,phone,email,pass) values(?,?,?,?,?,?,?);");
            ps.setString(1, p.getName());
            ps.setString(2, p.getAddress());
            ps.setDate(3, data);
            ps.setString(4, p.getDesignation());
            ps.setLong(5, p.getPhone());
            ps.setString(6, p.getEmail());
            ps.setString(7, p.getPassword());
            int result = ps.executeUpdate();
            if (result > 0) {
                res = true;
            }
        } catch (SQLException throwables) {
            throwables.printStackTrace();
        }
        return res;
    }

    public static int getID(String email) {
        if(conn == null){
            conn = ConnectionUtil.getConnection();
        }
        Person p = null;
        int id = 0;
        try {
            PreparedStatement ps = conn.prepareStatement("select * from person where email=?");
            ps.setString(1,email);
            ResultSet rs = ps.executeQuery();
            while(rs.next()){
                p = new Person(rs.getInt(1),rs.getString(2),rs.getString(3),
                        rs.getDate(4).toString(),rs.getString(5),rs.getLong(6),rs.getString(6),rs.getString(7));
            }
            id = p.getId();
        } catch (SQLException throwables) {
            throwables.printStackTrace();
        }
        return id;
    }

    public static boolean checkLogin(String email, String password) {
        if (conn == null) {
            conn = ConnectionUtil.getConnection();
        }
        try {
            PreparedStatement ps = conn.prepareStatement("Select * from person where email=? and pass=?");
            ps.setString(1, email);
            ps.setString(2, password);
            ResultSet rs = ps.executeQuery();
            return rs.next();
        } catch (Exception e) {
            e.printStackTrace();
            return false;
        }
    }
}
