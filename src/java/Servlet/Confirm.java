/*
 * To change this template, choose Tools | Templates
 * and open the template in the editor.
 */
package Servlet;

import Utility.ConnectionSap;
import Utility.ConnectionSap.*;
import com.sap.mw.jco.IFunctionTemplate;
import com.sap.mw.jco.JCO;
import java.io.*;
import java.net.*;

import javax.servlet.*;
import javax.servlet.http.*;

/**
 *
 * @author pakutsing
 */
public class Confirm extends HttpServlet {

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
            request.setCharacterEncoding("utf8");
            String CheckPDPA = request.getParameter("CheckPDPA");
            String url = "";
           
            if (CheckPDPA.equals("true")) {
                url = "/registeruser.jsp";
                request.setAttribute("status_confirm", "true");
            } else {
                url = "/index.jsp";
                request.setAttribute("status_confirm", "false");
            }
            getServletContext().getRequestDispatcher(url).forward(request, response);

           /* ConnectionSap consap = new ConnectionSap();
            JCO.Client client = consap.createClientDEV();
            System.out.println(client);
            JCO.Repository repository = new JCO.Repository("Myrep", client);
            IFunctionTemplate ftemplate = repository.getFunctionTemplate("ZBAPI_BI_QI_DISPLAY");
            System.out.println(ftemplate);
            client.disconnect();
            out.print(ftemplate);*/

        } catch (Exception e) {
            e.printStackTrace();
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
