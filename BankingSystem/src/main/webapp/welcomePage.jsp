<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
<!DOCTYPE html>
<html>
<head>
<meta charset="UTF-8">
<title>WELCOME </title>
<style>
    body {
        font-family: 'Segoe UI', Tahoma, Geneva, Verdana, sans-serif;
        background: linear-gradient(135deg, #f0f8ff, #e0f7fa);
        text-align: center;
        padding: 50px;
        margin: 0;
    }
    h2 {
        color: #333;
        font-size: 3em;
        margin-bottom: 20px;
        text-shadow: 2px 2px 4px rgba(0,0,0,0.2);
    }
    div {
        background: #fff;
        border-radius: 20px;
        box-shadow: 0 8px 16px rgba(0,0,0,0.2);
        display: inline-block;
        padding: 30px;
        margin-top: 40px;
        transform: scale(1);
        transition: transform 0.3s ease;
    }
    div:hover {
        transform: scale(1.05);
    }
    a {
        display: inline-block;
        text-decoration: none;
        color: #fff;
        background: linear-gradient(135deg, #007bff, #00d2ff);
        padding: 15px 25px;
        border-radius: 10px;
        margin: 10px 0;
        font-size: 1.2em;
        font-weight: bold;
        transition: background 0.3s ease, box-shadow 0.3s ease;
        box-shadow: 0 4px 8px rgba(0,0,0,0.2);
    }
    a:hover {
        background: linear-gradient(135deg, #0056b3, #0091ea);
        box-shadow: 0 8px 16px rgba(0,0,0,0.3);
        transform: translateY(-2px);
    }
    a:active {
        transform: translateY(2px);
    }
</style>
</head>
<body>
<h2>Welcome to BankingSystem</h2>
<div>
    <a href="login.jsp" target="_blank" style="background: linear-gradient(135deg, #28a745, #a5d6a7);">Admin Page</a><br>
    <a href="customerLogin.jsp" target="_blank" style="background: linear-gradient(135deg, #dc3545, #ff8a80);">Customer Page</a>
</div>
</body>
</html>
