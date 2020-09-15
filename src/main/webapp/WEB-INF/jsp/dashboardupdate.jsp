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
    <form action="/dashboardupdateProc" method="post">
      <div class="form-group">
        <label for="subject">제목</label>
        <input type="text" class="form-control" id="subject" name="subject" value="${detail.subject}">
      </div>
      <div class="form-group">
        <label for="content">내용</label>
        <textarea class="form-control" id="content" name="content" rows="3">${detail.content}</textarea>
      </div>
      <input type="hidden" name="bno" value="${bno}"/>
      <button type="submit" class="btn btn-primary">수정</button>
    </form>
</div>
</body>
</html>