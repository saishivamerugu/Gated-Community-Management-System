package com.project.servlet;

import java.io.IOException;

import jakarta.servlet.annotation.WebServlet;
import jakarta.servlet.http.*;

import com.project.dao.ComplaintDao;

@WebServlet("/UpdateComplaintStatusServlet")
public class UpdateComplaintStatusServlet extends HttpServlet {

    protected void doPost(HttpServletRequest req, HttpServletResponse res)
            throws IOException {

        HttpSession session = req.getSession(false);

        if (session == null || !"ADMIN".equals(session.getAttribute("role"))) {
            res.sendRedirect("login.jsp");
            return;
        }

        int complaintId = Integer.parseInt(req.getParameter("complaintId"));
        String status = req.getParameter("status");

        ComplaintDao dao = new ComplaintDao();
        dao.updateComplaintStatus(complaintId, status);

        res.sendRedirect("AdminDashboardServlet");
    }
}
