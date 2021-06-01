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
            URI dbUri = new URI("postgres://fcwluqfzbhgcza:48d26e964d24d1c1c8e4f4786f4481a6aa2351b2c79bb362965613e6adfcc1a3@ec2-54-167-152-185.compute-1.amazonaws.com:5432/da1e4ll9rl661h");

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
