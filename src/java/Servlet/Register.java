/*
 * To change this template, choose Tools | Templates
 * and open the template in the editor.
 */
package Servlet;

import Model.UserData;
import Service.UserService;
import java.io.*;
import java.net.*;

import java.util.Map;
import javax.servlet.*;
import javax.servlet.http.*;
import org.json.JSONObject;

/**
 *
 * @author pakutsing
 */
public class Register extends HttpServlet {

    /** 
     * Processes requests for both HTTP <code>GET</code> and <code>POST</code> methods.
     * @param request servlet request
     * @param response servlet response
     */
    protected void processRequest(HttpServletRequest request, HttpServletResponse response)
            throws ServletException, IOException {
        response.setContentType("text/html;charset=UTF-8");
        request.setCharacterEncoding("UTF-8");
        response.setCharacterEncoding("UTF-8");
        PrintWriter out = response.getWriter();
        try {
            try {
                String type = request.getParameter("type").trim();
                if (type.equals("register")) {

                    JSONObject obj = new JSONObject();
                    String status = null;
                    try {
                        String home = request.getParameter("homephone").trim();

                        out.print(home);

                        UserData datauser = new UserData();
                        datauser.setIdcard(request.getParameter("idcard").replaceAll("-", "").replaceAll("_", "").trim());
                        datauser.setPrefix(request.getParameter("prefix").trim());
                        datauser.setFirstname(request.getParameter("firstname").trim());
                        datauser.setSurname(request.getParameter("surname").trim());
                        datauser.setBirthday(request.getParameter("birthday").trim());
                        datauser.setAge(request.getParameter("age").trim());
                        datauser.setEmail(request.getParameter("email").trim());
                        datauser.setVillage(request.getParameter("village").trim());
                        datauser.setNumber(request.getParameter("number").trim());
                        datauser.setGroup(request.getParameter("group").trim());
                        datauser.setAlley(request.getParameter("alley").trim());
                        datauser.setRoad(request.getParameter("road").trim());
                        datauser.setDistrict(request.getParameter("district").trim());
                        datauser.setAmphoe(request.getParameter("amphoe").trim());
                        datauser.setProvince(request.getParameter("province").trim());
                        datauser.setZipcode(request.getParameter("zipcode").trim());
                        datauser.setHomephone(request.getParameter("homephone").replaceAll("-", "").replaceAll("_", "").trim());
                        datauser.setPhonenumber(request.getParameter("phonenumber").replaceAll("-", "").replaceAll("_", "").trim());

                        UserService user = new UserService();
                        Boolean status_address = user.Savedatatotb_address(datauser);
                        Boolean status_user = user.Savedatatotb_user(datauser);
                        Boolean status_usermaster = user.Savedatatotb_usermaster(datauser);

                        if (status_address == true && status_address == true && status_usermaster == true) {
                            status = "true";
                        } else {
                            status = "false";
                        }

                        obj.put("status", status);
                        out.print(obj);
                    } catch (Exception e) {
                        e.printStackTrace();
                    }
                }

            } catch (Exception e) {
                e.printStackTrace();
            }
        } finally {
            out.close();
        }
    }

    // <editor-fold defaultstate="collapsed" desc="HttpServlet methods. Click on the + sign on the left to edit the code.">
    /** 
     * Handles the HTTP <code>GET</code> method.
     * @param request servlet request
     * @param response servlet response
     */
    protected void doGet(HttpServletRequest request, HttpServletResponse response)
            throws ServletException, IOException {
        processRequest(request, response);
    }

    /** 
     * Handles the HTTP <code>POST</code> method.
     * @param request servlet request
     * @param response servlet response
     */
    protected void doPost(HttpServletRequest request, HttpServletResponse response)
            throws ServletException, IOException {
        processRequest(request, response);
    }

    /** 
     * Returns a short description of the servlet.
     */
    public String getServletInfo() {
        return "Short description";
    }
    // </editor-fold>
}
