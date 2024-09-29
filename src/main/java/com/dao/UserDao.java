package com.dao;

import com.entity.User;

import java.sql.Connection;
import java.sql.PreparedStatement;
import java.sql.ResultSet;

public class UserDao {
    private Connection conn;

//    Generate constructor
    public UserDao(Connection conn) {
        this.conn = conn;
    }

    public boolean register (User u){
       boolean f = false; //Something wrong on server

        try{
            String sql = "insert into user_dtls(full_name,email,password) values(?,?,?)";

            // Set the value in database
            PreparedStatement ps = conn.prepareStatement(sql);
            ps.setString(1, u.getFullName());
            ps.setString(2, u.getEmail());
            ps.setString(3, u.getPassword());

            int i=ps.executeUpdate();

            // If data successfully inserted then return true
            if(i==1){
                f = true;
            }

        }catch (Exception e) {
            e.printStackTrace();
        }
        return f; // If data successfully not inserted then return false
    }

    public User login (String em, String psw){
        User u = null;

        try{
            String sql = "select * from user_dtls where email=? and password=?";
            PreparedStatement ps=conn.prepareStatement(sql);
            ps.setString(1, em);
            ps.setString(2, psw);

            ResultSet rs=ps.executeQuery();

            while(rs.next()){
                u = new User();
                u.setId(rs.getInt(1));
                u.setFullName(rs.getString(2));
                u.setEmail(rs.getString(3));
                u.setPassword(rs.getString(4));
            }
        }catch (Exception e) {
            e.printStackTrace();
        }
        return u;
    }
}
