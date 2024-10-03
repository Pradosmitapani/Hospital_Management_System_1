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