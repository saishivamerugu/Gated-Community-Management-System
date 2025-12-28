package com.project.servlet;

import java.io.IOException;

import jakarta.servlet.annotation.WebServlet;
import jakarta.servlet.http.*;

import com.project.dao.ResidentDao;
import com.project.model.Resident;

@WebServlet("/RegisterServlet")
public class RegisterServlet extends HttpServlet {

    protected void doPost(HttpServletRequest req, HttpServletResponse res)
            throws IOException {

        Resident resident = new Resident();
        resident.setUsername(req.getParameter("username"));
        resident.setPassword(req.getParameter("password"));
        resident.setEmail(req.getParameter("email"));
        resident.setPhone(req.getParameter("phone"));
        resident.setRoomNum(req.getParameter("roomNum"));
        resident.setRole("RESIDENT");

        new ResidentDao().saveResident(resident);

        res.sendRedirect(req.getContextPath() + "/login.jsp");
    }
}
