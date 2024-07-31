<%@ page language="java" contentType="text/html; charset=UTF-8" pageEncoding="UTF-8"%>
<%@ page import="java.util.*, java.sql.*" %>
<!DOCTYPE html>
<html>
<head>
    <meta charset="UTF-8">
    <title>View Customers</title>
    <!-- Link to Font Awesome CSS for icons -->
    <link rel="stylesheet" href="https://cdnjs.cloudflare.com/ajax/libs/font-awesome/6.5.1/css/all.min.css">
    <style>
        body {
            font-family: 'Segoe UI', Tahoma, Geneva, Verdana, sans-serif;
            background: linear-gradient(135deg, #e0f7fa, #f1f8e9); /* Smooth gradient */
            text-align: center;
            padding: 50px;
            margin: 0;
        }

        h2 {
            color: #333;
            font-size: 2.5em;
            margin-bottom: 30px;
            text-transform: uppercase;
            letter-spacing: 1.5px;
            display: flex;
            align-items: center;
            justify-content: center;
            gap: 10px;
            animation: textGlow 2s ease-in-out infinite alternate;
        }

        h2 i {
            color: #007bff;
        }

        table {
            width: 100%;
            border-collapse: collapse;
            margin: 0 auto;
            background-color: #fff;
            border-radius: 10px;
            overflow: hidden;
            box-shadow: 0 8px 16px rgba(0,0,0,0.1);
        }

        th, td {
            padding: 12px;
            text-align: left;
            border-bottom: 1px solid #ddd;
        }

        th {
            background-color: #007bff;
            color: white;
            font-weight: bold;
            text-transform: uppercase;
        }

        tr:nth-child(even) {
            background-color: #f2f2f2;
        }

        tr:hover {
            background-color: #e0f7fa;
        }

        .back-link {
            display: inline-block;
            text-decoration: none;
            color: #fff;
            background-color: #007bff;
            padding: 10px 20px;
            border-radius: 5px;
            margin-top: 20px;
            cursor: pointer;
            border: none;
            transition: background-color 0.3s ease, transform 0.3s ease, box-shadow 0.3s ease;
            box-shadow: 0 5px 15px rgba(0, 123, 255, 0.3);
            font-weight: bold;
            text-transform: uppercase;
        }

        .back-link:hover {
            background-color: #0056b3;
            transform: translateY(-3px);
            box-shadow: 0 8px 18px rgba(0, 123, 255, 0.4);
        }

        .back-link:active {
            transform: translateY(1px);
            box-shadow: 0 4px 8px rgba(0, 123, 255, 0.3);
        }

        @keyframes textGlow {
            from {text-shadow: 0 0 5px rgba(0, 0, 0, 0.2);}
            to {text-shadow: 0 0 15px rgba(0, 0, 0, 0.4);}
        }
    </style>
</head>
<body>
    <h2><i class="fas fa-users"></i> Customer List</h2>
    <table>
        <tr>
            <th>Customer ID</th>
            <th>Full Name</th>
            <th>Address</th>
            <th>Mobile No</th>
            <th>Email ID</th>
            <th>Account Type</th>
            <th>Initial Balance</th>
            <th>Date of Birth</th>
            <th>Account No</th>
        </tr>
        <%
            try {
                Class.forName("com.mysql.jdbc.Driver");
                Connection con = DriverManager.getConnection("jdbc:mysql://localhost:3306/BankingSystem", "root", "jenova1234");
                Statement stmt = con.createStatement();
                ResultSet rs = stmt.executeQuery("SELECT * FROM Customer");
                
                while (rs.next()) {
        %>
                    <tr>
                        <td><%= rs.getInt("customer_id") %></td>
                        <td><%= rs.getString("full_name") %></td>
                        <td><%= rs.getString("address") %></td>
                        <td><%= rs.getString("mobile_no") %></td>
                        <td><%= rs.getString("email_id") %></td>
                        <td><%= rs.getString("account_type") %></td>
                        <td><%= rs.getDouble("initial_balance") %></td>
                        <td><%= rs.getDate("date_of_birth") %></td>
                        <td><%= rs.getString("account_no") %></td>
                    </tr>
        <%
                }
                con.close();
            } catch (Exception e) {
                e.printStackTrace();
            }
        %>
    </table>
    <a href="adminDashboard.jsp" class="back-link"><i class="fas fa-arrow-left"></i> Back to Dashboard</a>
</body>
</html>
