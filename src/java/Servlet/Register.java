/*
 * To change this template, choose Tools | Templates
 * and open the template in the editor.
 */
package Servlet;

import Service.UserService;
import java.io.*;
import java.net.*;

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
        PrintWriter out = response.getWriter();
        try {
            try {
                String type = request.getParameter("type").trim();
                if (type.equals("register")) {
                    try {
                        String status = "";
                        JSONObject obj = new JSONObject();
                        String[] arrtxt = request.getParameterValues("dataform[]");
                        UserService user = new UserService();

                        String idcard = arrtxt[0].replaceAll("-", "").replaceAll("_", "").trim();
                        String prefix = arrtxt[1].trim();
                        String firstname = arrtxt[2].trim();
                        String surname = arrtxt[3].trim();
                        String birthday = arrtxt[4].trim();
                        String age = arrtxt[5].trim();
                        String email = arrtxt[6].trim();
                        String village = arrtxt[7].trim();
                        String number = arrtxt[8].trim();
                        String group = arrtxt[9].trim();
                        String alley = arrtxt[10].trim();
                        String road = arrtxt[11].trim();
                        String district = arrtxt[12].trim();
                        String amphoe = arrtxt[13].trim();
                        String province = arrtxt[14].trim();
                        String zipcode = arrtxt[15].trim();
                        String homephone = arrtxt[16].replaceAll("-", "").replaceAll("_", "").trim();
                        String phonenumber = arrtxt[17].replaceAll("-", "").replaceAll("_", "").trim();
                        
                        if (homephone.equals("on")) {
                            homephone = "-";
                        }
                        
                        
                        if (idcard.length() < 13) {
                            status = "error_idcard";
                        } else if (homephone.length() < 10) {
                            status = "error_homephone";
                        } else if (phonenumber.length() < 10) {
                            status = "error_phonenumber";
                        } else {
                            status = "true";
                        }


                        /*
                        
                        out.print(prefix + "<br>");
                        out.print(firstname + "<br>");
                        out.print(surname + "<br>");
                        out.print(birthday + "<br>");
                        out.print(age + "<br>");
                        out.print(email + "<br>");
                        out.print(village + "<br>");
                        out.print(number + "<br>");
                        out.print(group + "<br>");
                        out.print(alley + "<br>");
                        out.print(road + "<br>");
                        out.print(district + "<br>");
                        out.print(amphoe + "<br>");
                        out.print(province + "<br>");
                        out.print(zipcode + "<br>");
                        out.print(homephone + "<br>");
                        out.print(phonenumber + "<br>");
                         */


                        obj.put("status", status);
                        out.print(obj);

                    } catch (Exception e) {

                        String status = "error_null";
                        JSONObject obj = new JSONObject();
                        obj.put("status", status);

                        out.print(obj);
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
