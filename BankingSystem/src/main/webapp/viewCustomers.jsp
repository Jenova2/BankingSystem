<%@ page import="java.sql.*" %>
<!DOCTYPE html>
<html>
<head>
    <title>Customer Dashboard</title>
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

        a {
            display: inline-block;
            text-decoration: none;
            color: white;
            background-color: #007bff;
            padding: 10px 20px;
            border-radius: 5px;
            margin: 10px;
            transition: background-color 0.3s ease, transform 0.3s ease;
            font-weight: bold;
            text-transform: uppercase;
        }

        a:hover {
            background-color: #0056b3;
            transform: scale(1.05);
        }

        a:active {
            transform: scale(1);
        }

        @keyframes textGlow {
            from {text-shadow: 0 0 5px rgba(0, 0, 0, 0.2);}
            to {text-shadow: 0 0 15px rgba(0, 0, 0, 0.4);}
        }
    </style>
</head>
<body>
    <h2><i class="fas fa-user"></i> Welcome, Customer</h2>
    <%
        String accountNo = (String) session.getAttribute("account_no");
        Class.forName("com.mysql.jdbc.Driver");
        Connection con = DriverManager.getConnection("jdbc:mysql://localhost:3306/BankingSystem", "root", "jenova1234");
        PreparedStatement ps = con.prepareStatement("SELECT * FROM Customer WHERE account_no=?");
        ps.setString(1, accountNo);
        ResultSet rs = ps.executeQuery();
        if (rs.next()) {
            out.print("<p>Account No: " + rs.getString("account_no") + "</p>");
            out.print("<p>Balance: " + rs.getDouble("initial_balance") + "</p>");
        }
        con.close();
    %>
    <a href="viewTransactions.jsp">View Transactions</a>
    <a href="deposit.jsp">Deposit</a>
    <a href="withdraw.jsp">Withdraw</a>
    <a href="closeAccount.jsp">Close Account</a>
    <a href="logout.jsp">Logout</a>
</body>
</html>
