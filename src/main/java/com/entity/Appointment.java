package com.entity;

public class Appointment {
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

    public Appointment() {
        super();
    }

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
}
