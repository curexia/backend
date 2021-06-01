package tk.curexia.connection;

import java.net.URI;
import java.sql.Connection;
import java.sql.DriverManager;
import java.sql.SQLException;

public class ConnectionUtil {
    static Connection conn;

    public static Connection getConnection() {
        try {
            Class.forName("org.postgresql.Driver");
            URI dbUri = new URI("postgres://byqdsehauwxdpc:1f84c5ecde076998e9e786f4fc90b2b991276184f727b065e5045de5c6d6beb4@ec2-54-87-112-29.compute-1.amazonaws.com:5432/d8hopge0hot7ag");

            String username = dbUri.getUserInfo().split(":")[0];
            String password = dbUri.getUserInfo().split(":")[1];
            String dbUrl = "jdbc:postgresql://" + dbUri.getHost() + ':' + dbUri.getPort() + dbUri.getPath();

            conn = DriverManager.getConnection(dbUrl,username,password);
        } catch (Exception e) {
            e.printStackTrace();
        }
        return conn;
    }

    public static void closeConnection() {
        try {
            conn.close();
        } catch (SQLException throwables) {
            throwables.printStackTrace();
        }
    }
}
