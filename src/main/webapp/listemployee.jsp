<%@ page import="entity.EmployeeEntity" %>
<%@ page import="java.util.List" %><%--
  Created by IntelliJ IDEA.
  User: Admin
  Date: 6/6/2023
  Time: 7:12 PM
  To change this template use File | Settings | File Templates.
--%>
<%@ page contentType="text/html;charset=UTF-8" language="java" %>

<html>
<head>
    <title>Title</title>
</head>
<body>
<table class="table">
    <thead>
    <tr>
        <th>Name</th>
        <th>Birthday</th>
        <th>Address</th>
        <th>Position</th>
        <th>Department</th>
    </tr>
    </thead>
    <tbody>
    <%
        List<EmployeeEntity> list =  (List<EmployeeEntity>) request.getAttribute("list");
        for(EmployeeEntity u : list){
    %>
    <tr>
        <th><%=u.getName()%></th>
        <th><%=u.getBirthday()%></th>
        <th><%=u.getAddress()%></th>
        <th><%=u.getPosition()%></th>
        <th><%=u.getDepartment()%></th>
    </tr>
    <%
        }
    %>
    </tbody>
</table>
</body>
</html>
