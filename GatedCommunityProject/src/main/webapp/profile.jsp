<%@ page language="java"
    contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"
    import="com.project.model.Resident" %>

<!DOCTYPE html>
<html>
<head>
<meta charset="UTF-8">
<title>My Profile</title>

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

.container {
    background: #ffffff;
    width: 420px;
    padding: 35px;
    border-radius: 8px;
    border: 1px solid #ddd;
}

h1 {
    text-align: center;
    margin-bottom: 20px;
    color: #2c3e50;
}

.profile-row {
    margin-bottom: 14px;
}

.profile-row label {
    font-size: 14px;
    font-weight: 600;
    color: #2f80ed;
}

.profile-row span {
    display: block;
    margin-top: 4px;
    font-size: 14px;
    color: #555;
}

.back {
    margin-top: 22px;
    text-align: center;
}

.back a {
    text-decoration: none;
    color: #2f80ed;
    font-weight: 600;
}

.back a:hover {
    text-decoration: underline;
}

</style>
</head>

<body>

<%
    if (session == null || session.getAttribute("userId") == null) {
        response.sendRedirect("login.jsp");
        return;
    }

    Resident r = (Resident) request.getAttribute("resident");
%>

<div class="container">
    <h1>My Profile</h1>

    <div class="profile-row">
        <label>Username</label>
        <span><%= r.getUsername() %></span>
    </div>

    <div class="profile-row">
        <label>Email</label>
        <span><%= r.getEmail() %></span>
    </div>

    <div class="profile-row">
        <label>Phone</label>
        <span><%= r.getPhone() %></span>
    </div>

    <div class="profile-row">
        <label>Room Number</label>
        <span><%= r.getRoomNum() %></span>
    </div>

    <div class="profile-row">
        <label>Role</label>
        <span><%= r.getRole() %></span>
    </div>

    <div class="back">
        <a href="UserDashboard.jsp">← Back to Dashboard</a>
    </div>
</div>

</body>
</html>
