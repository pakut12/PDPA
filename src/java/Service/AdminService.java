/*
 * To change this template, choose Tools | Templates
 * and open the template in the editor.
 */
package Service;

import Model.Admin;
import java.sql.*;
import Utility.ConnectionDB;

/**
 *
 * @author pakutsing
 */
public class AdminService {

    private static Connection conn;
    private static PreparedStatement ps;
    private static ResultSet rs;

    public static Boolean LoginAdmin(String user, String pass) {
        boolean status = false;
        try {
            int Chack = 0;
            String sql = "SELECT COUNT(*) as Chack FROM `tb_admin` WHERE admin_user = ? and admin_pass = ?";
            conn = ConnectionDB.GetConnectionDB();
            ps = conn.prepareStatement(sql);
            ps.setString(1, user);
            ps.setString(2, pass);
            rs = ps.executeQuery();
            while (rs.next()) {
                Chack = rs.getInt("Chack");
            }
         
            if (Chack > 0) {
                status = true;
            } else {
                status = false;
            }
         
        } catch (Exception e) {
            e.printStackTrace();
        } finally {
            try {
                ps.close();
                ConnectionDB.closeConnection(conn);
            } catch (SQLException e) {
                e.printStackTrace();
            }
        }

        return status;
    }
}
