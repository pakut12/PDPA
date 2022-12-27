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

    public static Boolean SaveDataUser(UserData user) throws SQLException {
        boolean status = false;
        try {
            String sql = "";
            conn = ConnectionDB.GetConnectionDB();
        //ps = conn.prepareStatement(sql);
        } catch (Exception e) {
            e.printStackTrace();
        } finally {
            try {
                // ps.close();
                ConnectionDB.closeConnection(conn);
            } catch (SQLException e) {
                e.printStackTrace();
            }
        }

        return status;
    }
}
