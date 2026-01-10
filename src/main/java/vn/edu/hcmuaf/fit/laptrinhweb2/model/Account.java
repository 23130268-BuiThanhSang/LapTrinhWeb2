package vn.edu.hcmuaf.fit.laptrinhweb2.model;

import java.util.Date;

public class Account {
    private int id;
    private String username;
    private String accountName;
    private String password;
    private int accountStatus;
    private String phoneNumber;
    private String accountEmail;
    private String role;
    private Date lastLogin;

    public Account() {
    }

    public Account(int id, String username, String accountName, String password, int accountStatus,
                   String phoneNumber, String accountEmail, String role, Date lastLogin) {
        this.id = id;
        this.username = username;
        this.accountName = accountName;
        this.password = password;
        this.accountStatus = accountStatus;
        this.phoneNumber = phoneNumber;
        this.accountEmail = accountEmail;
        this.role = role;
        this.lastLogin = lastLogin;
    }

    // ===== Getter & Setter =====
    public int getId() {
        return id;
    }

    public void setId(int id) {
        this.id = id;
    }

    public String getUsername() {
        return username;
    }

    public void setUsername(String username) {
        this.username = username;
    }

    public String getAccountName() {
        return accountName;
    }

    public void setAccountName(String accountName) {
        this.accountName = accountName;
    }

    public String getPassword() {
        return password;
    }

    public void setPassword(String password) {
        this.password = password;
    }

    public int getAccountStatus() {
        return accountStatus;
    }

    public void setAccountStatus(int accountStatus) {
        this.accountStatus = accountStatus;
    }

    public String getPhoneNumber() {
        return phoneNumber;
    }

    public void setPhoneNumber(String phoneNumber) {
        this.phoneNumber = phoneNumber;
    }

    public String getAccountEmail() {
        return accountEmail;
    }

    public void setAccountEmail(String accountEmail) {
        this.accountEmail = accountEmail;
    }

    public String getRole() {
        return role;
    }

    public void setRole(String role) {
        this.role = role;
    }

    public Date getLastLogin() {
        return lastLogin;
    }

    public void setLastLogin(Date lastLogin) {
        this.lastLogin = lastLogin;
    }
}

