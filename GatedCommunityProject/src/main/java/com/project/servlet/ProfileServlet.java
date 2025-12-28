package com.project.servlet;

import java.io.IOException;

import jakarta.servlet.ServletException;
import jakarta.servlet.annotation.WebServlet;
import jakarta.servlet.http.*;

import com.project.dao.ResidentDao;
import com.project.model.Resident;

@WebServlet("/ProfileServlet")
public class ProfileServlet extends HttpServlet {

    protected void doGet(HttpServletRequest req, HttpServletResponse res)
            throws IOException, ServletException {

        HttpSession session = req.getSession(false);

        if (session == null || session.getAttribute("userId") == null) {
            res.sendRedirect("login.jsp");
            return;
        }

        int userId = (int) session.getAttribute("userId");

        ResidentDao dao = new ResidentDao();
        Resident resident = dao.getResidentById(userId);

        req.setAttribute("resident", resident);
        req.getRequestDispatcher("profile.jsp").forward(req, res);
    }
}
