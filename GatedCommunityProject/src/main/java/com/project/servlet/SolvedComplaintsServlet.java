package com.project.servlet;

import java.io.IOException;
import java.util.List;

import jakarta.servlet.ServletException;
import jakarta.servlet.annotation.WebServlet;
import jakarta.servlet.http.*;

import com.project.dao.ComplaintDao;
import com.project.model.Complaint;

@WebServlet("/SolvedComplaintsServlet")
public class SolvedComplaintsServlet extends HttpServlet {

    protected void doGet(HttpServletRequest req, HttpServletResponse res)
            throws IOException, ServletException {

        HttpSession session = req.getSession(false);

        if (session == null || session.getAttribute("userId") == null) {
            res.sendRedirect("login.jsp");
            return;
        }

        int userId = (int) session.getAttribute("userId");

        ComplaintDao dao = new ComplaintDao();
        List<Complaint> solvedComplaints =
                dao.getSolvedComplaintsByUserId(userId);

        req.setAttribute("complaints", solvedComplaints);
        req.getRequestDispatcher("solvedComplaints.jsp").forward(req, res);
    }
}
