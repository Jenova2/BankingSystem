<%@ page import="java.sql.*" %>
<!DOCTYPE html>
<html>
<head>
    <title>Admin Dashboard</title>
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
        .btn-wrapper {
            display: flex;
            flex-direction: column;
            align-items: center;
            gap: 15px; /* Space between buttons */
        }
        .btn-wrapper a {
            display: flex;
            align-items: center;
            justify-content: center;
            text-decoration: none;
            color: white;
            background: linear-gradient(135deg, #007bff, #00d2ff);
            padding: 15px;
            border-radius: 10px;
            cursor: pointer;
            transition: background 0.3s ease, transform 0.3s ease, box-shadow 0.3s ease;
            border: none;
            box-shadow: 0 4px 8px rgba(0,0,0,0.2);
            font-size: 1.2em;
            width: 100%;
            max-width: 300px;
        }
        .btn-wrapper a:hover {
            background: linear-gradient(135deg, #0056b3, #0091ea);
            box-shadow: 0 8px 16px rgba(0,0,0,0.3);
            transform: translateY(-4px);
        }
        .btn-wrapper a:active {
            background: linear-gradient(135deg, #003d7a, #007bff);
            transform: translateY(2px);
        }
        .btn-wrapper i {
            margin-right: 10px;
        }
    </style>
</head>
<body>
    <h2><i class="fas fa-tachometer-alt"></i> Welcome, <%= session.getAttribute("username") %></h2>
    <div class="btn-wrapper">
        <a href="registerCustomer.jsp" style="background: linear-gradient(135deg, #28a745, #a5d6a7);"><i class="fas fa-user-plus"></i> Register Customer</a>
        <a href="listCustomer.jsp" style="background: linear-gradient(135deg, #FFA62F, #ffd54f);"><i class="fas fa-list"></i> List Customers</a>
        <a href="logout.jsp" style="background: linear-gradient(135deg, #dc3545, #ff6f6f);"><i class="fas fa-sign-out-alt"></i> Logout</a>
    </div>
</body>
</html>
