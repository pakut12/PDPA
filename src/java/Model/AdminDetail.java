/*
 * To change this template, choose Tools | Templates
 * and open the template in the editor.
 */
package Model;

/**
 *
 * @author pakutsing
 */
public class AdminDetail {

    private String admin_id;
    private String admin_user;
    private String admin_pass;
    private String admin_name;

    public AdminDetail(String admin_name, String admin_id, String admin_user, String admin_pass) {
        this.admin_id = admin_id;
        this.admin_user = admin_user;
        this.admin_pass = admin_pass;
        this.admin_name = admin_name;
    }

    public AdminDetail() {
        super();
    }

    public String getAdmin_name() {
        return admin_name;
    }

    public void setAdmin_name(String admin_name) {
        this.admin_name = admin_name;
    }

    public String getAdmin_id() {
        return admin_id;
    }

    public void setAdmin_id(String admin_id) {
        this.admin_id = admin_id;
    }

    public String getAdmin_pass() {
        return admin_pass;
    }

    public void setAdmin_pass(String admin_pass) {
        this.admin_pass = admin_pass;
    }

    public String getAdmin_user() {
        return admin_user;
    }

    public void setAdmin_user(String admin_user) {
        this.admin_user = admin_user;
    }
}
