<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
<%@ taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core"%>
<%@ include file="bootstrap.jsp" %>

<!DOCTYPE html>
<html>
<head>
<meta charset="EUC-KR">
<title>insert</title>
</head>
<body>
<div class="container">
    <form action="/insertProc" method="post">
      <div class="form-group">
        <label for="code">code</label>
        <input type="text" class="form-control" id="code" name="code" placeholder="도메인.사번 형식으로 입력">
      </div>
      <div class="form-group">
        <label for="login_id">login_id</label>
        <input type="text" class="form-control" id="login_id" name="login_id" placeholder="이메일형식으로 입력">
      </div>
      <div class="form-group">
        <label for=username">이름</label>
        <textarea class="form-control" id="username" name="username" rows="3"></textarea>
      </div>
      <button type="submit" class="btn btn-primary">작성</button>
    </form>
</div>
</body>
</html>