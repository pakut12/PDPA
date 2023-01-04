/*
 * To change this template, choose Tools | Templates
 * and open the template in the editor.
 */
package Servlet;

import Model.AdminDetail;
import Model.UserData;
import Service.AdminService;

import java.io.*;
import java.net.*;

import java.security.NoSuchAlgorithmException;
import java.util.List;
import java.util.logging.Level;
import java.util.logging.Logger;
import javax.servlet.*;
import javax.servlet.http.*;
import org.json.JSONException;
import org.json.JSONObject;

/**
 *
 * @author pakutsing
 */
public class Admin extends HttpServlet {

    /** 
     * Processes requests for both HTTP <code>GET</code> and <code>POST</code> methods.
     * @param request servlet request
     * @param response servlet response
     */
    protected void processRequest(HttpServletRequest request, HttpServletResponse response)
            throws ServletException, IOException, JSONException, NoSuchAlgorithmException {
        response.setContentType("text/html;charset=UTF-8");
        PrintWriter out = response.getWriter();
        try {
            String type = request.getParameter("type").trim();
            JSONObject obj = new JSONObject();
            HttpSession session = request.getSession();
            if (type.equals("login")) {
                String user = request.getParameter("user").trim();
                String pass = request.getParameter("pass").trim();

                AdminService ads = new AdminService();
                if (ads.LoginAdmin(user, pass)) {
                    Model.AdminDetail admindetail = ads.Admindetail(user, pass);
                    obj.put("status", "true");
                    obj.put("link", "main.jsp");
                    session.setAttribute("statuslogin", "true");
                    session.setAttribute("statusname", admindetail.getAdmin_name());
                } else {
                    obj.put("status", "false");
                    obj.put("link", "index.jsp");
                }
                out.print(obj);


            } else if (type.equals("getdatauser")) {
                AdminService ads = new AdminService();
                List<UserData> listdata = ads.AdminGetUser();

                String html = "";
                html += "<table class='table table-bordered table-sm text-nowrap text-center' id='mytable'>";
                html += "<thead>";
                html += "<tr>";
                html += "<th>No</th>";
                html += "<th>ID</th>";
                html += "<th>IDCARD</th>";
                html += "<th>Prefix</th>";
                html += "<th>Firstname</th>";
                html += "<th>Surname</th>";
                html += "<th>Birthday</th>";
                html += "<th>Age</th>";
                html += "<th>Email</th>";
                html += "<th>Village</th>";
                html += "<th>Number</th>";
                html += "<th>Alley</th>";
                html += "<th>Group</th>";
                html += "<th>Road</th>";
                html += "<th>District</th>";
                html += "<th>Amphoe</th>";
                html += "<th>Province</th>";
                html += "<th>Zipcode</th>";
                html += "<th>Homephone</th>";
                html += "<th>Phonenumber</th>";
                html += "</tr>";
                html += "</thead>";
                html += "<tbody>";

                for (int n = 0; n < listdata.size(); n++) {
                    html += "<tr>";
                    html += "<td>" + (n + 1) + "</td>";
                    html += "<td>" + listdata.get(n).getId() + "</td>";
                    html += "<td>" + listdata.get(n).getIdcard() + "</td>";
                    html += "<td>" + listdata.get(n).getPrefix() + "</td>";
                    html += "<td>" + listdata.get(n).getFirstname() + "</td>";
                    html += "<td>" + listdata.get(n).getSurname() + "</td>";
                    html += "<td>" + listdata.get(n).getBirthday() + "</td>";
                    html += "<td>" + listdata.get(n).getAge() + "</td>";
                    html += "<td>" + listdata.get(n).getEmail() + "</td>";
                    html += "<td>" + listdata.get(n).getVillage() + "</td>";
                    html += "<td>" + listdata.get(n).getNumber() + "</td>";
                    html += "<td>" + listdata.get(n).getAlley() + "</td>";
                    html += "<td>" + listdata.get(n).getGroup() + "</td>";
                    html += "<td>" + listdata.get(n).getRoad() + "</td>";
                    html += "<td>" + listdata.get(n).getDistrict() + "</td>";
                    html += "<td>" + listdata.get(n).getAmphoe() + "</td>";
                    html += "<td>" + listdata.get(n).getProvince() + "</td>";
                    html += "<td>" + listdata.get(n).getZipcode() + "</td>";
                    html += "<td>" + listdata.get(n).getHomephone() + "</td>";
                    html += "<td>" + listdata.get(n).getPhonenumber() + "</td>";
                    html += "</tr>";
                }

                html += "</tbody>";
                html += "</table>";

                out.print(html);
            } else if (type.equals("logout")) {
                session.invalidate();
                response.sendRedirect("admin/index.jsp");
            } else if (type.equals("getdataadmin")) {
                AdminService ads = new AdminService();
                List<AdminDetail> listdata = ads.AdminDetailAll();

                String html = "";
                html += "<table class='table table-bordered table-sm text-nowrap text-center w-100' id='mytable'>";
                html += "<thead>";
                html += "<tr>";
                html += "<th>No</th>";
                html += "<th>ID</th>";
                html += "<th>Name</th>";
                html += "</tr>";
                html += "</thead>";
                html += "<tbody>";

                for (int n = 0; n < listdata.size(); n++) {
                    html += "<tr>";
                    html += "<td>" + (n + 1) + "</td>";
                    html += "<td>" + listdata.get(n).getAdmin_id() + "</td>";
                    html += "<td>" + listdata.get(n).getAdmin_name() + "</td>";
                    html += "</tr>";
                }

                html += "</tbody>";
                html += "</table>";

                out.print(html);
            } else if (type.equals("addadmin")) {
                AdminDetail admin = new AdminDetail();
                admin.setAdmin_user(request.getParameter("user"));
                admin.setAdmin_pass(request.getParameter("pass"));
                admin.setAdmin_name(request.getParameter("name"));
                
                AdminService ads = new AdminService();
                Boolean status_add = ads.AddAdmin(admin);
                if (status_add) {
                    obj.put("status", "true");
                } else {
                    obj.put("status", "false");
                }
                out.print(obj);

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
        try {
            try {
                processRequest(request, response);
            } catch (NoSuchAlgorithmException ex) {
                Logger.getLogger(Admin.class.getName()).log(Level.SEVERE, null, ex);
            }
        } catch (JSONException ex) {
            Logger.getLogger(Admin.class.getName()).log(Level.SEVERE, null, ex);
        }
    }

    /** 
     * Handles the HTTP <code>POST</code> method.
     * @param request servlet request
     * @param response servlet response
     */
    protected void doPost(HttpServletRequest request, HttpServletResponse response)
            throws ServletException, IOException {
        try {
            try {
                processRequest(request, response);
            } catch (NoSuchAlgorithmException ex) {
                Logger.getLogger(Admin.class.getName()).log(Level.SEVERE, null, ex);
            }
        } catch (JSONException ex) {
            Logger.getLogger(Admin.class.getName()).log(Level.SEVERE, null, ex);
        }
    }

    /** 
     * Returns a short description of the servlet.
     */
    public String getServletInfo() {
        return "Short description";
    }
    // </editor-fold>
}
