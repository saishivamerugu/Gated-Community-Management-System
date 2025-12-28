package com.project.servlet;

import java.io.IOException;
import java.util.List;

import jakarta.servlet.ServletException;
import jakarta.servlet.annotation.WebServlet;
import jakarta.servlet.http.*;

import com.project.dao.ComplaintDao;
import com.project.model.Complaint;

@WebServlet("/MyComplaintsServlet")
public class MyComplaintsServlet extends HttpServlet {

    protected void doGet(HttpServletRequest req, HttpServletResponse res)
            throws IOException, ServletException {

        HttpSession session = req.getSession();

        int userId = (int) session.getAttribute("userId");
        ComplaintDao dao = new ComplaintDao();
        List<Complaint> complaints = dao.getComplaintsByUserId(userId);

        req.setAttribute("complaints", complaints);
        req.getRequestDispatcher("/myComplaints.jsp").forward(req, res);
    }
}
