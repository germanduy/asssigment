<%--
  Created by IntelliJ IDEA.
  User: Admin
  Date: 6/6/2023
  Time: 7:09 PM
  To change this template use File | Settings | File Templates.
--%>
<%@ page contentType="text/html;charset=UTF-8" language="java" %>
<html>
<head>
    <title>Title</title>
</head>
<body>
<form action="employeeServlet" method="post" >
    Name: <input type="text" name="name">
    Birthday: <input type="text" name="birthday">
    Address: <input type="text" name="address">
    Position: <input type="text" name="position">
    Department: <input type="text" name="department">
    <input type="submit" value="submit">
</form>
</body>
</html>
