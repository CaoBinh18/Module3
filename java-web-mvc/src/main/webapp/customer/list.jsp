<%--
  Created by IntelliJ IDEA.
  User: ASUS
  Date: 20/09/2021
  Time: 10:10
  To change this template use File | Settings | File Templates.
--%>
<%@ taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core" %>
<%@ page contentType="text/html;charset=UTF-8" language="java" %>
<html>
<head>
    <title>Customer List</title>
</head>
<body>
<h1>Customers</h1>
<p>
    <a href="/customers?action=create">Create new customer</a>
</p>
<table border="1">
    <tr>
        <td>Id</td>
        <td>Name</td>
        <td>Email</td>
        <td>Address</td>
        <td>Edit</td>
        <td>Delete</td>
    </tr>
    <c:forEach items='${requestScope["customers"]}' var="item" >
        <tr>
            <td>${item.getId()}</td>
            <td><a href="/customers?action=view&id=${item.getId()}">${item.getName()}</a></td>
            <td>${item.getEmail()}</td>
            <td>${item.getAddress()}</td>
            <td><a href="/customers?action=edit&id=${item.getId()}">edit</a></td>
            <td><a href="/customers?action=delete&id=${item.getId()}">delete</a></td>
        </tr>
    </c:forEach>
</table>
</body>
</html>
