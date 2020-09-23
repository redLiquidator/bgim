<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
<%@ taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core"%>
<%@ include file="bootstrap.jsp" %>

<!DOCTYPE html>
<html>
<head>
<meta charset="EUC-KR">
<title>userdetail</title>
</head>

<body>
<button class="btn btn-primary" onclick="location.href='/update/${detail.code}'">수정</button>
<button class="btn btn-danger" onclick="location.href='/delete/${detail.code}'">삭제</button>

<div class="container">
 <form action="/insertProc" method="post">
    <table class="table table-hover">        
            <tr>
                <th>username</th>
                <td>${detail.username}</td>
            </tr>
            <tr>
                <th>companycode</th>
                <td>${detail.companycode}</td>
            </tr>
            <tr>
                <th>empid</th>
                <td>${detail.empid}</td>
            </tr>
              <tr>
                <th>code</th>
                <td>${detail.code}</td>
            </tr>
            <tr>
                <th>login_id</th>
                <td>${detail.login_id}</td>
            </tr>
            <tr>
                <th>email</th>
                <td>${detail.email}</td>
            </tr>
              <tr>
                <th>mobile</th>
                <td>${detail.mobile}</td>
            </tr>
            <tr>
                <th>is_valid</th>
                <td>${detail.is_valid}</td>
            </tr>
            <tr>
                <th>create_dt</th>
                <td>${detail.create_dt}</td>
            </tr>
              <tr>
                <th>modify_dt</th>
                <td>${detail.modify_dt}</td>
            </tr>
            <tr>
                <th>status</th>
                <td>${detail.status}</td>
            </tr>
            <tr>
                <th>deptcode</th>
                <td>${detail.deptcode}</td>
            </tr>
              <tr>
                <th>pwd</th>
                <td>${detail.pwd}</td>
            </tr>
            <tr>
                <th>pwd_dt</th>
                <td>${detail.pwd_dt}</td>
            </tr>
            <tr>
                <th>hired_dt</th>
                <td>${detail.hired_dt}</td>
            </tr>   
    </table>   
    </form>
</div>
<button type="submit" class="btn btn-primary">작성</button>
</body>
</html>