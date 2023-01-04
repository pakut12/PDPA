/*
 * To change this template, choose Tools | Templates
 * and open the template in the editor.
 */
package Service;

import Model.AdminDetail;
import Model.UserData;
import java.security.NoSuchAlgorithmException;
import java.sql.*;
import Utility.ConnectionDB;
import java.math.BigInteger;
import java.security.MessageDigest;
import java.util.ArrayList;
import java.util.List;

/**
 *
 * @author pakutsing
 */
public class AdminService {

    private static Connection conn;
    private static PreparedStatement ps;
    private static ResultSet rs;

    private static String CoverToMD5(String text) throws NoSuchAlgorithmException {
        MessageDigest md = MessageDigest.getInstance("MD5");
        md.reset();
        md.update(text.getBytes());
        String digestpass = new BigInteger(1, md.digest()).toString(16).toUpperCase();
        return digestpass;
    }

    public static List<UserData> AdminGetUser() {
        List<UserData> datauser = new ArrayList<UserData>();
        try {
            String sql = "SELECT tb_usermaster.usermaster_id, tb_user.*, tb_address.* FROM `tb_usermaster` INNER JOIN tb_user ON tb_user.user_id = tb_usermaster.address_id INNER JOIN tb_address ON tb_address.address_id = tb_usermaster.address_id  WHERE tb_usermaster.usermaster_id > 99";
            conn = ConnectionDB.GetConnectionDB();
            ps = conn.prepareStatement(sql);
            rs = ps.executeQuery();
            while (rs.next()) {
                UserData data = new UserData();
                data.setId(rs.getString("user_id"));
                data.setIdcard(rs.getString("user_idcard"));
                data.setPrefix(rs.getString("user_prefix"));
                data.setFirstname(rs.getString("user_firstname"));
                data.setSurname(rs.getString("user_surname"));
                data.setBirthday(rs.getString("user_birthday"));
                data.setAge(rs.getString("user_age"));
                data.setEmail(rs.getString("user_email"));
                data.setVillage(rs.getString("address_village"));
                data.setNumber(rs.getString("address_number"));
                data.setGroup(rs.getString("address_alley"));
                data.setAlley(rs.getString("address_group"));
                data.setRoad(rs.getString("address_road"));
                data.setDistrict(rs.getString("address_district"));
                data.setAmphoe(rs.getString("address_amphoe"));
                data.setProvince(rs.getString("address_province"));
                data.setZipcode(rs.getString("address_zipcode"));
                data.setHomephone(rs.getString("address_homephone"));
                data.setPhonenumber(rs.getString("address_phonenumber"));
                datauser.add(data);
            }

        } catch (Exception e) {
            e.printStackTrace();
        } finally {
            try {
                rs.close();
                ps.close();
                ConnectionDB.closeConnection(conn);
            } catch (SQLException e) {
                e.printStackTrace();
            }
        }

        return datauser;
    }

    public static AdminDetail AdminDetailAll() {
        List<AdminDetail> listadmin = new ArrayList<AdminDetail>();
        try {
            int Chack = 0;
            String sql = "SELECT * FROM `tb_admin` WHERE admin_user = ? and admin_pass = ?";
            conn = ConnectionDB.GetConnectionDB();
            ps = conn.prepareStatement(sql);

            rs = ps.executeQuery();
            while (rs.next()) {
                AdminDetail admindetail = new AdminDetail();
                admindetail.setAdmin_id(rs.getString("admin_id"));
                admindetail.setAdmin_pass(rs.getString("admin_pass"));
                admindetail.setAdmin_user(rs.getString("admin_user"));
                admindetail.setAdmin_name(rs.getString("admin_name"));
            }
        } catch (Exception e) {
            e.printStackTrace();
        } finally {
            try {
                rs.close();
                ps.close();
                ConnectionDB.closeConnection(conn);
            } catch (SQLException e) {
                e.printStackTrace();
            }
        }
        return (AdminDetail) listadmin;
    }

    public static AdminDetail Admindetail(String user, String pass) {
        AdminDetail admindetail = new AdminDetail();
        try {
            int Chack = 0;
            String sql = "SELECT * FROM `tb_admin` WHERE admin_user = ? and admin_pass = ?";
            conn = ConnectionDB.GetConnectionDB();
            ps = conn.prepareStatement(sql);
            ps.setString(1, CoverToMD5(user));
            ps.setString(2, CoverToMD5(pass));
            rs = ps.executeQuery();
            while (rs.next()) {
                admindetail.setAdmin_id(rs.getString("admin_id"));
                admindetail.setAdmin_pass(rs.getString("admin_pass"));
                admindetail.setAdmin_user(rs.getString("admin_user"));
                admindetail.setAdmin_name(rs.getString("admin_name"));
            }
        } catch (Exception e) {
            e.printStackTrace();
        } finally {
            try {
                rs.close();
                ps.close();
                ConnectionDB.closeConnection(conn);
            } catch (SQLException e) {
                e.printStackTrace();
            }
        }
        return admindetail;
    }

    public static Boolean LoginAdmin(String user, String pass) {
        boolean status = false;
        try {
            int Chack = 0;
            String sql = "SELECT COUNT(*) as Chack FROM `tb_admin` WHERE admin_user = ? and admin_pass = ?";
            conn = ConnectionDB.GetConnectionDB();
            ps = conn.prepareStatement(sql);
            ps.setString(1, CoverToMD5(user));
            ps.setString(2, CoverToMD5(pass));
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
                rs.close();
                ps.close();
                ConnectionDB.closeConnection(conn);
            } catch (SQLException e) {
                e.printStackTrace();
            }
        }

        return status;
    }
}
