package com.entity;

import java.time.LocalDate; // Use LocalDate for the appointment date in Java 8+

public class Appointment {
    private int id;
    private int userId;
    private String fullName;
    private String gender;
    private int age;  // Change to int
    private LocalDate appoint_date;  // Change to LocalDate for date
    private String email;
    private String phNo;
    private String diseases;
    private int doctorId; // Keep doctorId as int
    private String address;
    private String status;

    public Appointment() {
        super();
    }

    public Appointment(int userId, String fullName, String gender, int age, LocalDate appoinDate, String email, String phNo, String diseases, int doctorId, String address, String status) {
        this.userId = userId;
        this.fullName = fullName;
        this.gender = gender;
        this.age = age;
        this.appoint_date = appoinDate;
        this.email = email;
        this.phNo = phNo;
        this.diseases = diseases;
        this.doctorId = doctorId;
        this.address = address;
        this.status = status;
    }

    public int getId() {
        return id;
    }

    public void setId(int id) {
        this.id = id;
    }

    public int getUserId() {
        return userId;
    }

    public void setUserId(int userId) {
        this.userId = userId;
    }

    public String getFullName() {
        return fullName;
    }

    public void setFullName(String fullName) {
        this.fullName = fullName;
    }

    public String getGender() {
        return gender;
    }

    public void setGender(String gender) {
        this.gender = gender;
    }

    public int getAge() {  // Updated to int
        return age;
    }

    public void setAge(int age) {  // Updated to int
        this.age = age;
    }

    public LocalDate getAppoinDate() {  // Updated to LocalDate
        return appoint_date;
    }

    public void setAppoinDate(LocalDate appoinDate) {  // Updated to LocalDate
        this.appoint_date = appoinDate;
    }

    public String getEmail() {
        return email;
    }

    public void setEmail(String email) {
        this.email = email;
    }

    public String getPhNo() {
        return phNo;
    }

    public void setPhNo(String phNo) {
        this.phNo = phNo;
    }

    public String getDiseases() {
        return diseases;
    }

    public void setDiseases(String diseases) {
        this.diseases = diseases;
    }

    public int getDoctorId() {  // Kept as int
        return doctorId;
    }

    public void setDoctorId(int doctorId) {  // Kept as int
        this.doctorId = doctorId;
    }

    public String getAddress() {
        return address;
    }

    public void setAddress(String address) {
        this.address = address;
    }

    public String getStatus() {
        return status;
    }

    public void setStatus(String status) {
        this.status = status;
    }
}
