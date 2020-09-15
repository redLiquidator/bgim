<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
<%@ taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core"%>
<%@ include file="bootstrap.jsp" %>

<!DOCTYPE html>
<html>
<head>
<meta charset="EUC-KR">
<title>list</title>
</head>
<body>
<br>
<div class="container">
    <table class="table table-hover">
           <c:forEach var="list" items="${list}">
            <tr>
                <th>username</th>
                <td>${list.username}</td>
            </tr>
            <tr>
                <th>companycode</th>
                <td>${list.companycode}</td>
            </tr>
            <tr>
                <th>empid</th>
                <td>${list.empid}</td>
            </tr>
              <tr>
                <th>code</th>
                <td>${list.code}</td>
            </tr>
            <tr>
                <th>login_id</th>
                <td>${list.login_id}</td>
            </tr>
            <tr>
                <th>email</th>
                <td>${list.email}</td>
            </tr>
              <tr>
                <th>mobile</th>
                <td>${list.mobile}</td>
            </tr>
            <tr>
                <th>is_valid</th>
                <td>${list.is_valid}</td>
            </tr>
            <tr>
                <th>create_dt</th>
                <td>${list.create_dt}</td>
            </tr>
              <tr>
                <th>modify_dt</th>
                <td>${list.modify_dt}</td>
            </tr>
            <tr>
                <th>status</th>
                <td>${list.status}</td>
            </tr>
            <tr>
                <th>deptcode</th>
                <td>${list.deptcode}</td>
            </tr>
              <tr>
                <th>pwd</th>
                <td>${list.pwd}</td>
            </tr>
            <tr>
                <th>pwd_dt</th>
                <td>${list.pwd_dt}</td>
            </tr>
            <tr>
                <th>hired_dt</th>
                <td>${list.hired_dt}</td>
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