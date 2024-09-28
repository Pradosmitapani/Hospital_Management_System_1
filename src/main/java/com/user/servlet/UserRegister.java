package com.user.servlet;

import com.dao.UserDao;
import com.db.DBConnect;
import com.entity.User;

import javax.servlet.ServletException;
import javax.servlet.annotation.WebServlet;
import javax.servlet.http.HttpServlet;
import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpServletResponse;
import javax.servlet.http.HttpSession;
import java.io.IOException;

@WebServlet("/user_register")
public class UserRegister extends HttpServlet {

    // Do post method call
    @Override
    protected void doPost(HttpServletRequest req, HttpServletResponse resp) throws ServletException, IOException {
        try{
            // 3 Value get in servlet
            String fullName = req.getParameter("fullname");
            String email = req.getParameter("email");
            String password = req.getParameter("password");

            User u = new User(fullName, email, password);

            UserDao dao = new UserDao(DBConnect.getConn());

            HttpSession session = req.getSession();

            boolean f = dao.register(u);

            if(f){
                session.setAttribute("sucMsg", "Register successfully");//Success message show
                resp.sendRedirect("signup.jsp");
            }else{
                session.setAttribute("errorMsg", "Something error on server");//Error message message show
                resp.sendRedirect("signup.jsp");
            }


        } catch (Exception e){
            e.printStackTrace();
        }
    }
}