package com.dao;

import java.sql.Connection;
import java.sql.PreparedStatement;



import com.entity.Specialist;

public class SpecialistDao {

    private Connection conn;

    public SpecialistDao(Connection conn) {
        super();
        this.conn = conn;
    }

    public boolean addSpecialist(String spec) {

        boolean f = false;
        try {
            String sql = "insert into specialist(spec_name) values(?)";
            PreparedStatement ps = conn.prepareStatement(sql);
            ps.setString(1, spec);
            int i = ps.executeUpdate();

            if (i == 1) {
                f = true;
            }

        } catch (Exception e) {

            e.printStackTrace();
        }

        return f;
    }
}