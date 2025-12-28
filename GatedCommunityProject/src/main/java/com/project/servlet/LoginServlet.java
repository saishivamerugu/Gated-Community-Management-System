package com.project.servlet;

import java.io.IOException;

import jakarta.servlet.annotation.WebServlet;
import jakarta.servlet.http.*;

import com.project.dao.ResidentDao;
import com.project.model.Resident;

@WebServlet("/LoginServlet")
public class LoginServlet extends HttpServlet {

    protected void doPost(HttpServletRequest req, HttpServletResponse res)
            throws IOException {

        String username = req.getParameter("username");
        String password = req.getParameter("password");

        ResidentDao dao = new ResidentDao();
        Resident resident = dao.getValidUser(username, password);

        if (resident != null) {

            HttpSession session = req.getSession();
            session.setAttribute("userId", resident.getResId());
            session.setAttribute("username", resident.getUsername());
            session.setAttribute("role", resident.getRole());

            if ("ADMIN".equalsIgnoreCase(resident.getRole())) {
                res.sendRedirect("AdminDashboardServlet");
            } else {
                res.sendRedirect("UserDashboard.jsp");
            }

        } else {
            res.sendRedirect("login.jsp?error=invalid");
        }
    }
}
