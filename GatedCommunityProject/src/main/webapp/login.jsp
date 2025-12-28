<%@ page language="java" contentType="text/html; charset=UTF-8" pageEncoding="UTF-8"%>
<!DOCTYPE html>
<html>
<head>
    <meta charset="UTF-8">
    <title>Login | Gated Community</title>

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
    width: 400px;
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
    margin-bottom: 16px;
    border-radius: 4px;
    border: 1px solid #ccc;
    font-size: 14px;
}

input:focus {
    outline: none;
    border-color: #283c86;
}

.btn {
    width: 100%;
    padding: 12px;
    background: #283c86;
    color: white;
    border: none;
    border-radius: 4px;
    font-size: 15px;
    font-weight: 600;
    cursor: pointer;
}

.btn:hover {
    background: #1d2b64;
}

.footer {
    text-align: center;
    margin-top: 18px;
    font-size: 13px;
    color: #777;
}

.footer a {
    color: #283c86;
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
    <h1>Login</h1>
    <p>Access your gated community account</p>

    <form action="LoginServlet" method="post">

        <label>Username</label>
        <input type="text" name="username" required>

        <label>Password</label>
        <input type="password" name="password" required>

        <button type="submit" class="btn">Login</button>
    </form>

    <div class="footer">
        New resident? <a href="register.jsp">Register here</a>
    </div>
</div>

</body>
</html>
