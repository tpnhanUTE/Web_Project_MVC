<%--
  Created by IntelliJ IDEA.
  User: tpnha
  Date: 12/4/2022
  Time: 2:20 PM
  To change this template use File | Settings | File Templates.
--%>
<%@ page contentType="text/html;charset=UTF-8" language="java" %>
<%@ taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core" %>
<html>
<head>
    <link rel="stylesheet" href="https://cdn.jsdelivr.net/npm/bootstrap@4.0.0/dist/css/bootstrap.min.css" integrity="sha384-Gn5384xqQ1aoWXA+058RXPxPg6fy4IWvTNh0E263XmFcJlSAwiGgFAW/dAiS6JXm" crossorigin="anonymous">
    <title>OTP</title>
</head>
<body>
<form action="OTP" method="post" style="width:500px; height:500px; margin:auto; align-items: center; display: flex; justify-content: space-between;">
    <p>${error}</p>
    <div style="margin:100px ;display:flex">
        <input type="text" name="otp" class="form-control" placeholder="OTP" aria-label="Username" aria-describedby="basic-addon1" required>

        <button type="submit"  style="background-color: orange; color: white; border: 0ch;">CONFIRM</button>
    </div>
</form>
</body>
</html>
