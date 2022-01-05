package tk.curexia.dao;

import tk.curexia.connection.ConnectionUtil;
import tk.curexia.model.Disease;

import java.sql.Connection;
import java.sql.PreparedStatement;
import java.sql.ResultSet;
import java.sql.SQLException;
import java.util.ArrayList;

public class DiseaseDAO {
    static Connection conn;

    public static ArrayList<Disease> getDiseaseForPerson(int id) {
        if (conn == null) {
            conn = ConnectionUtil.getConnection();
        }
        ArrayList<Disease> diseases = new ArrayList<>();
        try {
            PreparedStatement ps = conn.prepareStatement("select * from disease where userid=?");
            ps.setInt(1, id);
            ResultSet rs = ps.executeQuery();
            while (rs.next()) {
                Disease d = new Disease(rs.getInt(1), rs.getString(2), rs.getString(3),
                        rs.getString(4), rs.getString(5), rs.getString(6), rs.getString(7));
                diseases.add(d);
            }
        } catch (SQLException throwables) {
            throwables.printStackTrace();
        }
        return diseases;
    }

}
