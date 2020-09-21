<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
<%@ taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core"%>
<%@ include file="bootstrap.jsp" %>

<!DOCTYPE html>
<html>
<head>
<meta charset="EUC-KR">
<title>domainlist</title>
</head>
<body>
<br>
<div class="container">
    <table class="table table-hover">
           <c:forEach var="list" items="${domainlist}">
            <tr>
                <th>username</th>
                <td>${list.companycode}</td>
            </tr>
            <tr>
                <th>companyname</th>
                <td>${list.companyname}</td>
            </tr>
            <tr>
                <th>reg_date</th>
                <td>${list.reg_date}</td>
            </tr> 
            <tr>
                <th></th>
                <td></td>
            </tr>         
          </c:forEach>
          
    </table>
</div>
</body>
</html>