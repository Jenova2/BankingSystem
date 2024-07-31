<!DOCTYPE html>
<html>
<head>
    <title>Customer Login</title>
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

        form {
            background-color: #ffffff;
            border-radius: 15px;
            box-shadow: 0 8px 16px rgba(0,0,0,0.1);
            display: inline-block;
            padding: 30px;
            margin-top: 30px;
            text-align: left;
            width: 400px;
        }

        label {
            display: block;
            margin-bottom: 10px;
            font-weight: bold;
            color: #333;
        }

        input[type="text"],
        input[type="password"] {
            width: calc(100% - 22px);
            padding: 10px;
            margin-bottom: 15px;
            border: 1px solid #ccc;
            border-radius: 5px;
            font-size: 1em;
            background-color: #e9f5ff;
            transition: border-color 0.3s ease;
        }

        input[type="text"]:focus,
        input[type="password"]:focus {
            border-color: #007bff;
            outline: none;
        }

        input[type="submit"] {
            display: inline-flex;
            align-items: center;
            text-decoration: none;
            color: #fff;
            background-color: #28a745;
            padding: 10px 20px;
            border-radius: 5px;
            margin-top: 10px;
            cursor: pointer;
            border: none;
            position: relative;
            overflow: hidden;
            transition: background-color 0.3s ease, transform 0.3s ease, box-shadow 0.3s ease;
            box-shadow: 0 5px 15px rgba(40, 167, 69, 0.3);
            font-weight: bold;
            text-transform: uppercase;
            letter-spacing: 1px;
        }

        input[type="submit"]::before {
            content: '';
            position: absolute;
            top: 0;
            left: 0;
            width: 100%;
            height: 100%;
            background: rgba(255, 255, 255, 0.15);
            border-radius: inherit;
            transition: opacity 0.3s ease, transform 0.3s ease;
            opacity: 0;
            transform: translateX(-50%) skewX(-15deg);
        }

        input[type="submit"]:hover::before {
            opacity: 1;
            transform: translateX(150%) skewX(-15deg);
        }

        input[type="submit"]:hover {
            background-color: #218838;
            transform: translateY(-5px) scale(1.05);
            box-shadow: 0 8px 18px rgba(33, 136, 56, 0.4);
        }

        input[type="submit"]:active {
            transform: translateY(2px);
            box-shadow: 0 4px 8px rgba(33, 136, 56, 0.3);
        }

        @keyframes textGlow {
            from {text-shadow: 0 0 5px rgba(0, 0, 0, 0.2);}
            to {text-shadow: 0 0 15px rgba(0, 0, 0, 0.4);}
        }
    </style>
</head>
<body>
    <h2><i class="fas fa-user-lock"></i> Customer Login</h2>
    <form action="CustomerLoginServlet" method="post">
        <label for="account_no">Account No:</label>
        <input type="text" id="account_no" name="account_no"><br><br>
        <label for="password">Password:</label>
        <input type="password" id="password" name="password"><br><br>
        <input type="submit" value="Login">
    </form>
</body>
</html>
