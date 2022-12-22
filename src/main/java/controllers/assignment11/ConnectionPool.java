package controllers.assignment11;

import javax.naming.InitialContext;
import javax.naming.NamingException;
import javax.sql.DataSource;
import java.sql.Connection;
import java.sql.DriverManager;
import java.sql.SQLException;

public class ConnectionPool {
    private static ConnectionPool pool = null;
    private static Connection connection = connect();

    private static Connection connect(){
        try {
            Class.forName("com.mysql.jdbc.Driver");

            connection = DriverManager.getConnection("jdbc:mysql://remotemysql.com:3306/oS3QzoMSgJ?useUnicode=true&createDatabaseIfNotExist=true&characterEncoding=utf-8&autoReconnect=true",
                    "oS3QzoMSgJ", "9yKb1asNch");
        }catch (ClassNotFoundException | SQLException e) {
            throw new RuntimeException(e);
        }
        return connection;
    }
    private ConnectionPool() {
        connection = connect();
    }

    public static synchronized ConnectionPool getInstance() {
        if (pool == null) {
            pool = new ConnectionPool();
        }
        return pool;
    }

    public Connection getConnection() {

        return connect();
    }

    public void freeConnection(Connection c) {
        try {
            c.close();
        } catch (SQLException e) {
            System.out.println(e);
        }
    }
}
