package model;

import java.util.Date;

public class customer {
    private String fristname;
    private String lastname;
    private String sex;
    private String dateofbird;
    private String address;
    private String phone;
    private String job;
    private String IDcard;
    private String username;
    private String password;
    private int checkuser;

    public customer(){

    }
    public customer(String fristname, String lastname, String sex, String dateofbird, String address, String phone, String job, String IDcard, String username, String password, int checkuser){
        this.fristname = fristname;
        this.lastname = lastname;
        this.sex = sex;
        this.dateofbird = dateofbird;
        this.address = address;
        this.phone = phone;
        this.job = job;
        this.IDcard = IDcard;
        this.username = username;
        this.password = password;
        this.checkuser = checkuser;
    }

    public void setAddress(String address) {
        this.address = address;
    }

    public void setSex(String sex) {
        this.sex = sex;
    }

    public String getAddress() {
        return address;
    }

    public void setPhone(String phone) {
        this.phone = phone;
    }

    public String getSex() {
        return sex;
    }

    public String getDateofbird() {
        return dateofbird;
    }

    public String getPhone() {
        return phone;
    }

    public String getFristname() {
        return fristname;
    }

    public String getLastname() {
        return lastname;
    }

    public void setFristname(String fristname) {
        this.fristname = fristname;
    }

    public void setDateofbird(String dateofbird) {
        this.dateofbird = dateofbird;
    }

    public void setLastname(String lastname) {
        this.lastname = lastname;
    }

    public void setCheckuser(int checkuser) {
        this.checkuser = checkuser;
    }

    public int getCheckuser() {
        return checkuser;
    }

    public void setUsername(String username) {
        this.username = username;
    }

    public void setJob(String job) {
        this.job = job;
    }

    public void setPassword(String password) {
        this.password = password;
    }

    public String getUsername() {
        return username;
    }

    public String getPassword() {
        return password;
    }

    public String getJob() {
        return job;
    }

    public void setIDcard(String IDcard) {
        this.IDcard = IDcard;
    }

    public String getIDcard() {
        return IDcard;
    }
}
