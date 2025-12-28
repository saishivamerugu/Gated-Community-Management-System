<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>

<%
    // Session protection
    HttpSession sessionObj = request.getSession(false);
    if (sessionObj == null || sessionObj.getAttribute("userId") == null) {
        response.sendRedirect("login.jsp");
        return;
    }
%>

<!DOCTYPE html>
<html>
<head>
    <meta charset="UTF-8">
    <title>User Dashboard | Gated Community</title>

    <style>
        * {
    margin: 0;
    padding: 0;
    box-sizing: border-box;
    font-family: "Segoe UI", Tahoma, sans-serif;
}

body {
    min-height: 100vh;
    background: #eef1f6;
    display: flex;
    justify-content: center;
    align-items: center;
}

.dashboard {
    background: #ffffff;
    width: 800px;
    padding: 40px;
    border-radius: 8px;
    border: 1px solid #ddd;
}

h1 {
    text-align: center;
    color: #2c3e50;
    margin-bottom: 10px;
}

p {
    text-align: center;
    color: #666;
    margin-bottom: 35px;
    font-size: 14px;
}

.menu {
    display: grid;
    grid-template-columns: repeat(2, 1fr);
    gap: 20px;
}

.card {
    background: #f7f9fc;
    padding: 28px;
    border-radius: 6px;
    text-align: center;
    border: 1px solid #ddd;
}

.card h3 {
    color: #2f80ed;
    margin-bottom: 8px;
    font-size: 16px;
}

.card p {
    font-size: 13px;
    color: #555;
}

.logout {
    margin-top: 30px;
    text-align: center;
}

.logout a {
    color: white;
    background: #e74c3c;
    padding: 10px 24px;
    border-radius: 4px;
    text-decoration: none;
    font-weight: 600;
    font-size: 14px;
}

.logout a:hover {
    background: #c0392b;
}

@media (max-width: 768px) {
    .dashboard {
        width: 95%;
        padding: 30px;
    }

    .menu {
        grid-template-columns: 1fr;
    }
}

    </style>
</head>

<body>

<div class="dashboard">
    <h1>Welcome, Resident</h1>
    <p>Manage your complaints and account</p>

    <div class="menu">

        <!-- Raise Complaint -->
        <a href="raiseComplaint.jsp" style="text-decoration:none">
            <div class="card">
                <h3>Raise Complaint</h3>
                <p>Submit a new complaint</p>
            </div>
        </a>

        <!-- My Complaints (FIXED 🔥) -->
        <a href="MyComplaintsServlet" style="text-decoration:none">
            <div class="card">
                <h3>My Complaints</h3>
                <p>View all your complaints</p>
            </div>
        </a>

        <!-- Solved Complaints (future servlet) -->
        <a href="SolvedComplaintsServlet" style="text-decoration:none">
            <div class="card">
                <h3>Solved Complaints</h3>
                <p>View resolved issues</p>
            </div>
        </a>

        <!-- Profile -->
        <a href="ProfileServlet" style="text-decoration:none">
            <div class="card">
                <h3>My Profile</h3>
                <p>View your account details</p>
            </div>
        </a>

    </div>

    <div class="logout">
        <a href="LogoutServlet">Logout</a>
    </div>
</div>

</body>
</html>
