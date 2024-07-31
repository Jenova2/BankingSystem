<%@ page language="java" contentType="text/html; charset=UTF-8" pageEncoding="UTF-8"%>
<!DOCTYPE html>
<html>
<head>
    <meta charset="UTF-8">
    <title>Customer Password Reset</title>
    <link rel="stylesheet" href="https://cdnjs.cloudflare.com/ajax/libs/font-awesome/6.4.0/css/all.min.css">
    </head>
<body>
    <div class="container">
        <h2><i class="fa fa-lock"></i>Customer Password Reset</h2>
        <form action="NewCustomerLogin" method="post">
            <label for="acc_no"><i class="fa fa-id-card"></i>Account No:</label>
            <input type="text" id="acc_no" name="acc_no">
            <label for="newPassword"><i class="fa fa-key"></i>Enter New Password:</label>
            <input type="text" id="newPassword" name="newPassword">
            <input type="submit" value="Reset Password">
        </form>
    </div>
</body>
</html>