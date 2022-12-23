/*
 * To change this template, choose Tools | Templates
 * and open the template in the editor.
 */
package Utility;

/**
 *
 * @author pakutsing
 */
import com.sap.mw.jco.IRepository;
import com.sap.mw.jco.JCO;

public class ConnectionSap {

    public static JCO.Client createClientDEV() throws JCO.Exception {
        JCO.Client client = JCO.createClient("500", // SAP client
                "ZCPIC", // userid
                "PGCPIC12", // password
                "EN", // language
                "10.0.62.8",// host name
                "00");

        return client;

    }
}
