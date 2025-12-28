<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
<!DOCTYPE html>
<html>
<head>
    <meta charset="UTF-8">
    <title>Raise Complaint | Gated Community</title>

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

.card {
    background: #ffffff;
    width: 460px;
    padding: 35px;
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
    font-size: 14px;
    color: #666;
    margin-bottom: 25px;
}

label {
    font-size: 14px;
    font-weight: 600;
    color: #333;
    display: block;
    margin-bottom: 6px;
}

input, textarea, select {
    width: 100%;
    padding: 10px;
    margin-bottom: 16px;
    border-radius: 4px;
    border: 1px solid #ccc;
    font-size: 14px;
}

textarea {
    resize: none;
    height: 90px;
}

input:focus,
textarea:focus,
select:focus {
    outline: none;
    border-color: #2f80ed;
}

.btn {
    width: 100%;
    padding: 12px;
    background: #2f80ed;
    color: white;
    border: none;
    border-radius: 4px;
    font-size: 15px;
    font-weight: 600;
    cursor: pointer;
}

.btn:hover {
    background: #1f6fd1;
}

.back {
    text-align: center;
    margin-top: 18px;
}

.back a {
    text-decoration: none;
    color: #2f80ed;
    font-weight: 600;
    font-size: 13px;
}

.back a:hover {
    text-decoration: underline;
}

    </style>
</head>

<body>

<div class="card">
    <h1>Raise Complaint</h1>
    <p>Submit your issue to the management</p>

    <form action="RaiseComplaintServlet" method="post">

        <label>Complaint Subject</label>
        <input type="text" name="subject" placeholder="Eg: Water leakage" required>

        <label>Category</label>
        <select name="category" required>
            <option value="">-- Select Category --</option>
            <option value="Electrical">Electrical</option>
            <option value="Plumbing">Plumbing</option>
            <option value="Cleaning">Cleaning</option>
            <option value="Security">Security</option>
            <option value="Other">Other</option>
        </select>

        <label>Description</label>
        <textarea name="description" placeholder="Explain your issue clearly..." required></textarea>

        <button type="submit" class="btn">Submit Complaint</button>
    </form>

    <div class="back">
        <a href="UserDashboard.jsp">← Back to Dashboard</a>
    </div>
</div>

</body>
</html>
