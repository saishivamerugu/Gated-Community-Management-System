package com.project.servlet;

import java.io.IOException;

import jakarta.servlet.annotation.WebServlet;
import jakarta.servlet.http.*;

import com.project.dao.ComplaintDao;
import com.project.model.Complaint;

@WebServlet("/RaiseComplaintServlet")
public class RaiseComplaintServlet extends HttpServlet {

    protected void doPost(HttpServletRequest req, HttpServletResponse res)
            throws IOException {

        HttpSession session = req.getSession(false);

        if (session == null || session.getAttribute("userId") == null) {
            res.sendRedirect(req.getContextPath() + "/login.jsp");
            return;
        }

        int userId = (int) session.getAttribute("userId");

        Complaint c = new Complaint();
        c.setUserId(userId);
        c.setSubject(req.getParameter("subject"));
        c.setCategory(req.getParameter("category"));
        c.setDescription(req.getParameter("description"));
        c.setStatus("OPEN");

        new ComplaintDao().saveComplaint(c);

        res.sendRedirect(req.getContextPath() + "/UserDashboard.jsp");
    }
}
