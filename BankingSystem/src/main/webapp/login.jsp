<%@ page language="java" contentType="text/html; charset=UTF-8" pageEncoding="UTF-8"%>
<!DOCTYPE html>
<html>
<head>
    <title>Admin Login</title>
    <link rel="stylesheet" href="https://cdnjs.cloudflare.com/ajax/libs/font-awesome/6.0.0-beta3/css/all.min.css">
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
        h2 i {
            margin-right: 10px;
        }
        form {
            background: #fff;
            border-radius: 20px;
            box-shadow: 0 8px 16px rgba(0,0,0,0.2);
            display: inline-block;
            padding: 30px;
            margin-top: 40px;
            text-align: left;
            width: 100%;
            max-width: 400px;
            transform: scale(1);
            transition: transform 0.3s ease;
        }
        form:hover {
            transform: scale(1.05);
        }
        label {
            display: block;
            margin-bottom: 10px;
            font-weight: bold;
            color: #333;
        }
        input[type="text"],
        input[type="password"] {
            width: calc(100% - 22px); /* Adjust for padding */
            padding: 12px;
            margin-bottom: 20px;
            border: 1px solid #ccc;
            border-radius: 10px;
            box-shadow: inset 0 1px 3px rgba(0,0,0,0.1);
            transition: box-shadow 0.3s ease;
        }
        input[type="text"]:focus,
        input[type="password"]:focus {
            box-shadow: 0 0 5px rgba(0, 123, 255, 0.5);
            border-color: #007bff;
            outline: none;
        }
        input[type="submit"] {
            display: block;
            width: 100%;
            text-decoration: none;
            color: white;
            background: linear-gradient(135deg, #28a745, #6cc24a);
            padding: 15px;
            border-radius: 10px;
            margin-top: 10px;
            cursor: pointer;
            transition: background 0.3s ease, transform 0.3s ease, box-shadow 0.3s ease;
            border: none;
            box-shadow: 0 4px 8px rgba(0,0,0,0.2);
            font-size: 1.2em;
        }
        input[type="submit"]:hover {
            background: linear-gradient(135deg, #218838, #4caf50);
            box-shadow: 0 8px 16px rgba(0,0,0,0.3);
            transform: translateY(-2px);
        }
        input[type="submit"]:active {
            background: linear-gradient(135deg, #1e7e34, #388e3c);
            transform: translateY(2px);
        }
        .form-group {
            margin-bottom: 20px;
        }
        .icon-btn {
            display: flex;
            align-items: center;
            justify-content: center;
        }
        .icon-btn i {
            margin-right: 10px;
        }
    </style>
</head>
<body>
    <h2><i class="fas fa-user-shield"></i> Admin Login</h2>
    <form action="AdminLoginServlet" method="post">
        <div class="form-group">
            <label for="username"><i class="fas fa-user"></i> Username:</label>
            <input type="text" id="username" name="username" style="background-color: #e9f5ff;">
        </div>
        <div class="form-group">
            <label for="password"><i class="fas fa-lock"></i> Password:</label>
            <input type="password" id="password" name="password" style="background-color: #e9f5ff;">
        </div>
        <input type="submit" value="Login" style="background-color: #28a745;">
    </form>
</body>
</html>
