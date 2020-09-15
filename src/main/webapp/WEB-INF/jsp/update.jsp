<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
<%@ taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core"%>
<%@ include file="bootstrap.jsp" %>

<!DOCTYPE html>
<html>
<head>
<meta charset="EUC-KR">
<title>update</title>
</head>
<body>

<h2> 게시글 수정 </h2>
 
<div class="container">
    <form action="/updateProc" method="post">
      <div class="form-group">
        <label for="subject">pwd</label>
        <input type="text" class="form-control" id="pwd" name="pwd" value="${detail.pwd}">
      </div>
      <div class="form-group">
        <label for="content">deptcode</label>
        <textarea class="form-control" id="deptcode" name="deptcode" rows="3">${detail.deptcode}</textarea>
      </div>
      <input type="hidden" name="code" value="${code}"/>
      <button type="submit" class="btn btn-primary">수정</button>
    </form>
</div>
</body>
</html>