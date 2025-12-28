<%@ page language="java" contentType="text/html; charset=UTF-8" pageEncoding="UTF-8"%>
<!DOCTYPE html>
<html>
<head>
    <meta charset="UTF-8">
    <title>Gated Community Management System</title>

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
    width: 100%;
    max-width: 1100px;
    min-height: 600px;
    border-radius: 10px;
    overflow: hidden;
    display: flex;
    border: 1px solid #ddd;
}

.left {
    flex: 1;
    background: #283c86;
    color: #ffffff;
    padding: 60px;
    display: flex;
    flex-direction: column;
    justify-content: center;
}

.left h1 {
    font-size: 34px;
    margin-bottom: 18px;
}

.left p {
    font-size: 16px;
    line-height: 1.6;
}

.left ul {
    margin-top: 30px;
    list-style: none;
}

.left ul li {
    margin-bottom: 12px;
    font-size: 15px;
}

.left ul li::before {
    content: "✔";
    margin-right: 10px;
    color: #f1c40f;
}

.right {
    flex: 1;
    padding: 60px;
    background: #f7f9fc;
    display: flex;
    flex-direction: column;
    justify-content: center;
}

.right h2 {
    font-size: 28px;
    color: #2c3e50;
    margin-bottom: 10px;
}

.right p {
    font-size: 15px;
    color: #555;
    margin-bottom: 35px;
}

.btn-group {
    display: flex;
    gap: 20px;
}

.btn {
    flex: 1;
    padding: 14px 0;
    border-radius: 6px;
    text-decoration: none;
    font-size: 15px;
    font-weight: 600;
    text-align: center;
}

.btn-login {
    background: #283c86;
    color: #ffffff;
}

.btn-login:hover {
    background: #1f2f6e;
}

.btn-register {
    background: #ffffff;
    color: #283c86;
    border: 2px solid #283c86;
}

.btn-register:hover {
    background: #283c86;
    color: #ffffff;
}

.footer {
    margin-top: 40px;
    font-size: 13px;
    color: #777;
}

@media (max-width: 900px) {
    .container {
        flex-direction: column;
    }

    .left, .right {
        padding: 40px;
        text-align: center;
    }

    .btn-group {
        flex-direction: column;
    }
}

    </style>
</head>

<body>

<div class="container">

    <div class="left">
        <h1>Gated Community Management System</h1>
        <p>
            A centralized platform to manage residents, security access,
            and community records efficiently and securely.
        </p>

        <ul>
            <li>Resident & Admin secure login</li>
            <li>New resident registration</li>
            <li>Centralized community records</li>
            <li>Safe & controlled access</li>
        </ul>
    </div>

    <div class="right">
        <h2>Welcome</h2>
        <p>
            Please login if you are an existing user or register
            to access the gated community system.
        </p>

        <div class="btn-group">
            <a href="login.jsp" class="btn btn-login">Login</a>
            <a href="register.jsp" class="btn btn-register">Register</a>
        </div>

        <div class="footer">
            © 2025 Gated Community Management System | JSP & Servlets
        </div>
    </div>

</div>

</body>
</html>
