<%@ taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core" %>
<%@ page contentType="text/html;charset=UTF-8" language="java" %>
<html>
<head>
    <title>Product List</title>
</head>
<body>
<h1>Products</h1>
<p>
    <a href="/products?action=create">Create new customer</a>
</p>
<table border="1">
    <tr>
        <td>Id</td>
        <td>Name</td>
        <td>Price</td>
        <td>Description</td>
        <td>Manufacturer</td>
        <td>Edit</td>
        <td>Delete</td>
    </tr>
    <c:forEach items='${requestScope["products"]}' var="item" >
        <tr>
            <td>${item.getId()}</td>
            <td><a href="/products?action=view&id=${item.getId()}">${item.getName()}</a></td>
            <td>${item.getPrice()}</td>
            <td>${item.getDescription()}</td>
            <td>${item.getManufacturer()}</td>
            <td><a href="/products?action=edit&id=${item.getId()}">edit</a></td>
            <td><a href="/products?action=delete&id=${item.getId()}">delete</a></td>
        </tr>
    </c:forEach>
</table>
</body>
</html>
