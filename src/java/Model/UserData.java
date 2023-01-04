/*
 * To change this template, choose Tools | Templates
 * and open the template in the editor.
 */
package Model;

/**
 *
 * @author pakutsing
 */
public class UserData {

    private String id;
    private String idcard;
    private String prefix;
    private String firstname;
    private String surname;
    private String birthday;
    private String age;
    private String email;
    private String village;
    private String number;
    private String group;
    private String alley;
    private String road;
    private String district;
    private String amphoe;
    private String province;
    private String zipcode;
    private String homephone;
    private String phonenumber;

    public UserData(String id, String idcard, String prefix, String firstname, String surname, String birthday, String age, String email, String village, String number, String group, String alley, String road, String district, String amphoe, String province, String zipcode, String homephone, String phonenumber) {
        this.id = id;
        this.idcard = idcard;
        this.prefix = prefix;
        this.firstname = firstname;
        this.surname = surname;
        this.birthday = birthday;
        this.age = age;
        this.email = email;
        this.village = village;
        this.number = number;
        this.group = group;
        this.alley = alley;
        this.road = road;
        this.district = district;
        this.amphoe = amphoe;
        this.province = province;
        this.zipcode = zipcode;
        this.homephone = homephone;
        this.phonenumber = phonenumber;
    }

    public UserData() {
        super();
    }

    public String getId() {
        return id;
    }

    public void setId(String id) {
        this.id = id;
    }

    public String getAge() {
        return age;
    }

    public void setAge(String age) {
        this.age = age;
    }

    public String getAlley() {
        return alley;
    }

    public void setAlley(String alley) {
        this.alley = alley;
    }

    public String getAmphoe() {
        return amphoe;
    }

    public void setAmphoe(String amphoe) {
        this.amphoe = amphoe;
    }

    public String getBirthday() {
        return birthday;
    }

    public void setBirthday(String birthday) {
        this.birthday = birthday;
    }

    public String getDistrict() {
        return district;
    }

    public void setDistrict(String district) {
        this.district = district;
    }

    public String getEmail() {
        return email;
    }

    public void setEmail(String email) {
        this.email = email;
    }

    public String getFirstname() {
        return firstname;
    }

    public void setFirstname(String firstname) {
        this.firstname = firstname;
    }

    public String getGroup() {
        return group;
    }

    public void setGroup(String group) {
        this.group = group;
    }

    public String getHomephone() {
        return homephone;
    }

    public void setHomephone(String homephone) {
        this.homephone = homephone;
    }

    public String getIdcard() {
        return idcard;
    }

    public void setIdcard(String idcard) {
        this.idcard = idcard;
    }

    public String getNumber() {
        return number;
    }

    public void setNumber(String number) {
        this.number = number;
    }

    public String getPhonenumber() {
        return phonenumber;
    }

    public void setPhonenumber(String phonenumber) {
        this.phonenumber = phonenumber;
    }

    public String getPrefix() {
        return prefix;
    }

    public void setPrefix(String prefix) {
        this.prefix = prefix;
    }

    public String getProvince() {
        return province;
    }

    public void setProvince(String province) {
        this.province = province;
    }

    public String getRoad() {
        return road;
    }

    public void setRoad(String road) {
        this.road = road;
    }

    public String getSurname() {
        return surname;
    }

    public void setSurname(String surname) {
        this.surname = surname;
    }

    public String getVillage() {
        return village;
    }

    public void setVillage(String village) {
        this.village = village;
    }

    public String getZipcode() {
        return zipcode;
    }

    public void setZipcode(String zipcode) {
        this.zipcode = zipcode;
    }
}
