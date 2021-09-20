
<%@ taglib uri="http://java.sun.com/jsp/jstl/core" prefix="c" %>
<%@ taglib uri="http://java.sun.com/jsp/jstl/fmt" prefix="fmt" %>
<%--<%@ page language="java" contentType="text/html; charset=UTF-8" pageEncoding="UTF-8"%>--%>

<html>
<%@page contentType="text/html" pageEncoding="UTF-8"%>
  <head>
    <title>$Title$</title>
    <meta http-equiv="Content-Type" content="text/html; charset=utf-8"/>
    <link href="https://cdn.jsdelivr.net/npm/bootstrap@5.1.1/dist/css/bootstrap.min.css" rel="stylesheet" integrity="sha384-F3w7mX95PdgyTmZZMECAngseQB83DfGTowi0iMjiWaeVhAn4FJkqJByhZMI3AhiU" crossorigin="anonymous">
  </head>
  <body>
  <h1>Danh sách khách hàng</h1>
  <table class="table">
    <thead>
    <tr>

      <th scope="col">Tên</th>
      <th scope="col">Ngày sinh</th>
      <th scope="col">Địa chỉ</th>
      <th scope="col">Ảnh</th>
    </tr>
    </thead>
    <%--    <c:out value="${list}"></c:out>--%>
    <jsp:useBean id="list" scope="request" type="java.util.List"/>
    <c:forEach items="${list}" var="cus">
      <tbody>
      <tr>
        <td>${cus.name}</td>
        <td>${cus.birthday}</td>
        <td>${cus.address}</td>
<%--        <td><fmt:formatNumber value="${cus.salary}" type="currency" currencySymbol="VND"></fmt:formatNumber></td>--%>
        <td><img src="" alt=""></td>
      </tr>
      </tbody>
    </c:forEach>
  </table>
  </body>
</html>
