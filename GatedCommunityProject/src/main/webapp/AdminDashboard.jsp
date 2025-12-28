<%@ page language="java"
    contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"
    import="java.util.List, com.project.model.Complaint" %>

<!DOCTYPE html>
<html>
<head>
<meta charset="UTF-8">
<title>Admin Dashboard</title>

<style>
		* {
    margin: 0;
    padding: 0;
    box-sizing: border-box;
    font-family: "Segoe UI", Arial, sans-serif;
}

body {
    min-height: 100vh;
    background: #f4f6f9;
    display: flex;
    justify-content: center;
    align-items: center;
}

.container {
    background: #ffffff;
    width: 95%;
    max-width: 1000px;
    padding: 30px;
    border-radius: 8px;
    border: 1px solid #ddd;
}

h1 {
    text-align: center;
    margin-bottom: 25px;
    color: #2c3e50;
}

table {
    width: 100%;
    border-collapse: collapse;
    margin-bottom: 20px;
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

select {
    padding: 6px 8px;
    border-radius: 4px;
    border: 1px solid #ccc;
    font-size: 13px;
}

button {
    padding: 6px 12px;
    margin-left: 6px;
    border: none;
    border-radius: 4px;
    background: #27ae60;
    color: white;
    font-size: 13px;
    cursor: pointer;
}

button:hover {
    background: #219150;
}

.logout {
    text-align: center;
    margin-top: 20px;
}

.logout a {
    text-decoration: none;
    background: #e74c3c;
    color: white;
    padding: 10px 22px;
    border-radius: 4px;
    font-size: 14px;
}

.logout a:hover {
    background: #c0392b;
}
		
</style>
</head>

<body>

<%
    if (session == null || !"ADMIN".equals(session.getAttribute("role"))) {
        response.sendRedirect("login.jsp");
        return;
    }

    List<Complaint> list =
        (List<Complaint>) request.getAttribute("complaints");
%>

<div class="container">
    <h1>Admin Dashboard</h1>

    <table>
        <tr>
            <th>ID</th>
            <th>User ID</th>
            <th>Subject</th>
            <th>Category</th>
            <th>Status</th>
            <th>Update</th>
        </tr>

        <%
            if (list == null || list.isEmpty()) {
        %>
        <tr>
            <td colspan="6">No complaints found</td>
        </tr>
        <%
            } else {
                for (Complaint c : list) {
        %>
        <tr>
            <td><%= c.getComplaintId() %></td>
            <td><%= c.getUserId() %></td>
            <td><%= c.getSubject() %></td>
            <td><%= c.getCategory() %></td>
            <td><%= c.getStatus() %></td>
            <td>
                <form action="UpdateComplaintStatusServlet" method="post">
                    <input type="hidden" name="complaintId"
                           value="<%= c.getComplaintId() %>">
                    <select name="status">
                        <option>OPEN</option>
                        <option>PENDING</option>
                        <option>COMPLETED</option>
                    </select>
                    <button type="submit">Update</button>
                </form>
            </td>
        </tr>
        <%
                }
            }
        %>
    </table>

    <div class="logout">
        <a href="LogoutServlet">Logout</a>
    </div>
</div>

</body>
</html>
