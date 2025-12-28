package com.project.servlet;

import java.io.IOException;
import java.util.List;

import jakarta.servlet.ServletException;
import jakarta.servlet.annotation.WebServlet;
import jakarta.servlet.http.*;

import com.project.dao.ComplaintDao;
import com.project.model.Complaint;

@WebServlet("/AdminDashboardServlet")
public class AdminDashboardServlet extends HttpServlet {

    protected void doGet(HttpServletRequest req, HttpServletResponse res)
            throws IOException, ServletException {

        HttpSession session = req.getSession(false);

        if (session == null || !"ADMIN".equals(session.getAttribute("role"))) {
            res.sendRedirect("login.jsp");
            return;
        }

        ComplaintDao dao = new ComplaintDao();
        List<Complaint> complaints = dao.getAllComplaints();

        req.setAttribute("complaints", complaints);
        req.getRequestDispatcher("AdminDashboard.jsp").forward(req, res);
    }
}
