package com.admin.servlet;

import com.dao.DoctorDao;
import com.db.DBConnect;

import javax.servlet.ServletException;
import javax.servlet.annotation.WebServlet;
import javax.servlet.http.HttpServlet;
import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpServletResponse;
import javax.servlet.http.HttpSession;
import java.io.IOException;


@WebServlet("/deleteDoctor")
public class DeleteDoctor extends HttpServlet {
    @Override
    protected void doGet(HttpServletRequest req, HttpServletResponse resp) throws ServletException, IOException {

        int id = Integer.parseInt(req.getParameter("id"));

        DoctorDao dao = new DoctorDao(DBConnect.getConn());
        HttpSession session=req.getSession();

        if(dao.deleteDoctor(id)) {
            session.setAttribute("succMsg", "Doctor Delete Successfully");
            resp.sendRedirect("admin/view_doctor.jsp");


        }else {
            session.setAttribute("errorMsg", "something wrong");
            resp.sendRedirect("admin/view_doctor.jsp");


        }
    }
}
