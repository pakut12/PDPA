/*
 * To change this template, choose Tools | Templates
 * and open the template in the editor.
 */
package Utility;

import java.sql.*;

/**
 *
 * @author pakutsing
 */
public class ConnectionDB {

    public static Connection GetConnectionDB() {
        Connection con = null;
        try {
//            Class.forName("oracle.jdbc.driver.OracleDriver");
//            con = DriverManager.getConnection("jdbc:oracle:thin:@10.0.62.18:1521:stock", "comp", "pmoc4");

            //4306
            Class.forName("com.mysql.jdbc.Driver");
            con = DriverManager.getConnection("jdbc:mysql://localhost:4306/test" +
                    "?user=root&password=");
        } catch (Exception e) {
            e.printStackTrace();
            return null;
        }

        return con;
    }

    public static void closeConnection(Connection conn) throws SQLException {
        conn.close();
        conn = null;
    }
}
