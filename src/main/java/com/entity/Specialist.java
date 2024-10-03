package com.entity;
public class Specialist {
    private int id;
    private String specialistName;



    public Specialist() {
        super();
        // TODO Auto-generated constructor stub
    }
    public Specialist(int id, String specalistName) {
        super();
        this.id = id;
        this.specialistName = specialistName;
    }
    public int getId() {
        return id;
    }
    public void setId(int id) {
        this.id = id;
    }
    public String getSpecalistName() {
        return specialistName;
    }
    public void setSpecalistName(String specialistName) {
        this.specialistName = specialistName;
    }


}