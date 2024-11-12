package com.entity;

public class Appointment {
    // INSTANCE VARIABLE
    private int id;
    private int userId;
    private String fullName;
    private String gender;
    private String age;
    private String appoinDate;
    private String email;
    private String phNo;
    private String diseases;
    private int doctorId;
    private String address;
    private String status;

    // DEFAULT CONSTRUCTOR
    public Appointment() {
        super();
        //TODO Auto-generated constructor stub
    }

    // PARAMETERIZED CONSTRUCTOR
    public Appointment(int userId, String fullName, String gender, String age, String appoinDate, String email, String phNo, String diseases, int doctorId, String address, String status) {
        this.userId = userId;
        this.fullName = fullName;
        this.gender = gender;
        this.age = age;
        this.appoinDate = appoinDate;
        this.email = email;
        this.phNo = phNo;
        this.diseases = diseases;
        this.doctorId = doctorId;
        this.address = address;
        this.status = status;
    }

    // GETTER METHOD
    public int getId() {
        return id;
    }

    // SETTER METHOD
    public void setId(int id) {
        this.id = id;
    }
    // GETTER METHOD
    public int getUserId() {
        return userId;
    }
    // SETTER METHOD
    public void setUserId(int userId) {
        this.userId = userId;
    }
    // GETTER METHOD
    public String getFullName() {
        return fullName;
    }
    // SETTER METHOD
    public void setFullName(String fullName) {
        this.fullName = fullName;
    }
    // GETTER METHOD
    public String getGender() {
        return gender;
    }
    // SETTER METHOD
    public void setGender(String gender) {
        this.gender = gender;
    }
    // GETTER METHOD
    public String getAge() {
        return age;
    }
    // SETTER METHOD
    public void setAge(String age) {
        this.age = age;
    }
    // GETTER METHOD
    public String getAppoinDate() {
        return appoinDate;
    }
    // SETTER METHOD
    public void setAppoinDate(String appoinDate) {
        this.appoinDate = appoinDate;
    }
    // GETTER METHOD
    public String getEmail() {
        return email;
    }
    // SETTER METHOD
    public void setEmail(String email) {
        this.email = email;
    }
    // GETTER METHOD
    public String getPhNo() {
        return phNo;
    }
    // SETTER METHOD
    public void setPhNo(String phNo) {
        this.phNo = phNo;
    }
    // GETTER METHOD
    public String getDiseases() {
        return diseases;
    }
    // SETTER METHOD
    public void setDiseases(String diseases) {
        this.diseases = diseases;
    }
    // GETTER METHOD
    public int getDoctorId() {
        return doctorId;
    }
    // SETTER METHOD
    public void setDoctorId(int doctorId) {
        this.doctorId = doctorId;
    }
    // GETTER METHOD
    public String getAddress() {
        return address;
    }
    // SETTER METHOD
    public void setAddress(String address) {
        this.address = address;
    }
    // GETTER METHOD
    public String getStatus() {
        return status;
    }
    // SETTER METHOD
    public void setStatus(String status) {
        this.status = status;
    }
}
