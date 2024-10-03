package com.dao;

import java.sql.Connection;
import java.sql.PreparedStatement;
import java.sql.SQLException;

public class SpecialistDao {
    private Connection conn;

    public SpecialistDao(Connection conn) {
        this.conn = conn;
    }

    public boolean addSpecialist(String spec) {
        boolean f = false;
        try {
            String sql = "insert into specialist(spec_name) values(?)";
            PreparedStatement ps = conn.prepareStatement(sql);
            ps.setString(1, spec);

            int i = ps.executeUpdate();
            if (i ==1) {
                f = true; // Update f to true if insertion is successful
            }
        } catch (SQLException e) {
            e.printStackTrace();
        }

        return f;
    }
}
