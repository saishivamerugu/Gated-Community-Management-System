<%@ page language="java"
    contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"
    import="java.util.List, com.project.model.Complaint" %>

<!DOCTYPE html>
<html>
<head>
<meta charset="UTF-8">
<title>My Complaints</title>

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
    width: 90%;
    max-width: 900px;
    padding: 30px;
    border-radius: 8px;
    border: 1px solid #ddd;
}

h1 {
    text-align: center;
    margin-bottom: 20px;
    color: #2c3e50;
}

table {
    width: 100%;
    border-collapse: collapse;
}

th {
    background: #2f80ed;
    color: white;
    padding: 12px;
    font-size: 14px;
}

td {
    padding: 10px;
    text-align: center;
    font-size: 14px;
    color: #333;
    border-bottom: 1px solid #e0e0e0;
}

tr:nth-child(even) {
    background: #f9fafb;
}

.back {
    margin-top: 20px;
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

    List<Complaint> list =
        (List<Complaint>) request.getAttribute("complaints");
%>

<div class="container">
    <h1>My Complaints</h1>

    <table>
        <tr>
            <th>ID</th>
            <th>Subject</th>
            <th>Category</th>
            <th>Status</th>
        </tr>

        <%
            if (list == null || list.isEmpty()) {
        %>
        <tr>
            <td colspan="4">No complaints found</td>
        </tr>
        <%
            } else {
                for (Complaint c : list) {
        %>
        <tr>
            <td><%= c.getComplaintId() %></td>
            <td><%= c.getSubject() %></td>
            <td><%= c.getCategory() %></td>
            <td><%= c.getStatus() %></td>
        </tr>
        <%
                }
            }
        %>
    </table>

    <div class="back">
        <a href="UserDashboard.jsp">← Back to Dashboard</a>
    </div>
</div>

</body>
</html>
