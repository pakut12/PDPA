/*
 * To change this template, choose Tools | Templates
 * and open the template in the editor.
 */
package Service;

import Model.UserData;
import Utility.ConnectionDB;


import java.sql.*;
import java.sql.PreparedStatement;

/**
 *
 * @author pakutsing
 */
public class UserService {

    private static Connection conn;
    private static PreparedStatement ps;
    private static ResultSet rs;

    public static UserData SetDataUser(String[] data) {
        UserData datauser = new UserData();

        String homephone = "";
        try {
            if (data.length == 19) {
                homephone = "-";
            } else {
                homephone = data[16].replaceAll("-", "").replaceAll("_", "").trim();
            }
            datauser.setIdcard(data[0].replaceAll("-", "").replaceAll("_", "").trim());
            datauser.setPrefix(data[1].trim());
            datauser.setFirstname(data[2].trim());
            datauser.setSurname(data[3].trim());
            datauser.setBirthday(data[4].trim());
            datauser.setAge(data[5].trim());
            datauser.setEmail(data[6].trim());
            datauser.setVillage(data[7].trim());
            datauser.setNumber(data[8].trim());
            datauser.setGroup(data[9].trim());
            datauser.setAlley(data[10].trim());
            datauser.setRoad(data[11].trim());
            datauser.setDistrict(data[12].trim());
            datauser.setAmphoe(data[13].trim());
            datauser.setProvince(data[14].trim());
            datauser.setZipcode(data[15].trim());
            datauser.setHomephone(data[16].replaceAll("-", "").replaceAll("_", "").trim());
            datauser.setPhonenumber(data[18].replaceAll("-", "").replaceAll("_", "").trim());
        } catch (Exception e) {
            e.printStackTrace();
        }

        return datauser;
    }

    public static Boolean Savedatatotb_user(UserData user) throws SQLException {
        boolean status = false;
        int primarykey = getlastprimarykey();
        try {
            String sql = "INSERT INTO `tb_user` (`user_id`, `user_idcard`, `user_prefix`, `user_firstname`, `user_surname`, `user_birthday`, `user_age`, `user_email`) " +
                    "VALUES (?, ?, ?, ?, ?, ?, ?, ?)";
            conn = ConnectionDB.GetConnectionDB();
            ps = conn.prepareStatement(sql);
            ps.setInt(1, primarykey);
            ps.setString(2, user.getIdcard());
            ps.setString(3, user.getPrefix());
            ps.setString(4, user.getFirstname());
            ps.setString(5, user.getSurname());
            ps.setString(6, user.getBirthday());
            ps.setString(7, user.getAge());
            ps.setString(8, user.getEmail());


            if (ps.executeUpdate() > 0) {
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

    private static int getlastprimarykey() {
        int lastprimarykey = 0;

        try {
            String sql = "SELECT MAX(user_id) as lastprimary FROM `tb_usermaster`";
            conn = ConnectionDB.GetConnectionDB();
            ps = conn.prepareStatement(sql);
            rs = ps.executeQuery();
            while (rs.next()) {
                lastprimarykey = (rs.getInt("lastprimary") + 1);
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
        return lastprimarykey;
    }

    public static Boolean Savedatatotb_address(UserData user) throws SQLException {
        boolean status = false;
        int primarykey = getlastprimarykey();
        try {
            String sql = "INSERT INTO `tb_address` (`address_id`, `address_village`, `address_number`,`address_alley`,`address_group`, `address_road`, `address_district`, `address_amphoe`, `address_province`, `address_zipcode`, `address_homephone`, `address_phonenumber`) " +
                    "VALUES (?, ?, ?, ?, ?, ?, ?, ?, ?, ?,?,?);";
            conn = ConnectionDB.GetConnectionDB();
            ps = conn.prepareStatement(sql);
            ps.setInt(1, primarykey);
            ps.setString(2, user.getVillage());
            ps.setString(3, user.getNumber());
            ps.setString(4, user.getGroup());
            ps.setString(5, user.getAlley());
            ps.setString(6, user.getRoad());
            ps.setString(7, user.getDistrict());
            ps.setString(8, user.getAmphoe());
            ps.setString(9, user.getProvince());
            ps.setString(10, user.getZipcode());
            ps.setString(11, user.getHomephone());
            ps.setString(12, user.getPhonenumber());

            if (ps.executeUpdate() > 0) {
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

    public static Boolean Savedatatotb_usermaster(UserData user) throws SQLException {
        boolean status = false;
        int primarykey = getlastprimarykey();
        try {
            String sql = "INSERT INTO `tb_usermaster` (`usermaster_id`, `user_id`, `address_id`) VALUES (?, ?, ?)";
            conn = ConnectionDB.GetConnectionDB();
            ps = conn.prepareStatement(sql);
            ps.setInt(1, primarykey);
            ps.setInt(2, primarykey);
            ps.setInt(3, primarykey);
           
            if (ps.executeUpdate() > 0) {
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
