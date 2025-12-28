<%@ page language="java" contentType="text/html; charset=UTF-8" pageEncoding="UTF-8"%>
<!DOCTYPE html>
<html>
<head>
    <meta charset="UTF-8">
    <title>Resident Registration</title>

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
    width: 420px;
    padding: 35px;
    border-radius: 8px;
    border: 1px solid #ddd;
}

h1 {
    text-align: center;
    color: #2c3e50;
    margin-bottom: 8px;
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

input {
    width: 100%;
    padding: 10px;
    margin-bottom: 14px;
    border-radius: 4px;
    border: 1px solid #ccc;
    font-size: 14px;
}

input:focus {
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
    margin-top: 10px;
}

.btn:hover {
    background: #1f6fd1;
}

.footer {
    text-align: center;
    margin-top: 18px;
    font-size: 13px;
    color: #777;
}

.footer a {
    color: #2f80ed;
    text-decoration: none;
    font-weight: 600;
}

.footer a:hover {
    text-decoration: underline;
}
       
    </style>
</head>

<body>

<div class="card">
    <h1>Resident Registration</h1>
    <p>Create your gated community account</p>

    <form action="RegisterServlet" method="post">

        <label>Username</label>
        <input type="text" name="username" required>

        <label>Password</label>
        <input type="password" name="password" required>

        <label>Email</label>
        <input type="email" name="email" required>

        <label>Phone</label>
        <input type="text" name="phone" required>

        <label>Room Number</label>
        <input type="text" name="roomNum" required>

        <button type="submit" class="btn">Register</button>
    </form>

    <div class="footer">
        Already registered? <a href="login.jsp">Login here</a>
    </div>
</div>

</body>
</html>
