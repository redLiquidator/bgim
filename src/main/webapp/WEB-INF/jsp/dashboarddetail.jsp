<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
<%@ include file="bootstrap.jsp" %>
<!DOCTYPE html PUBLIC "-//W3C//DTD HTML 4.01 Transitional//EN" "http://www.w3.org/TR/html4/loose.dtd">
<html>
<head>
<meta http-equiv="Content-Type" content="text/html; charset=UTF-8">
<title>dashboardDetail</title>
</head>
<body>
<button class="btn btn-primary" onclick="location.href='/dashboardupdate/${detail.bno}'">수정</button>
<button class="btn btn-danger" onclick="location.href='/dashboarddelete/${detail.bno}'">삭제</button>

<div class="container">
 <form action="/dashboardinsert" method="post">
    <table class="table table-hover">        
            <tr>
                <th>bno</th>
                <td>${detail.bno}</td>
            </tr>
            <tr>
                <th>subject</th>
                <td>${detail.subject}</td>
            </tr>
            <tr>
                <th>writer</th>
                <td>${detail.writer}</td>
            </tr>
              <tr>
                <th>content</th>
                <td>${detail.content}</td>
            </tr>
            <tr>
                <th>reg_date</th>
                <td>${detail.reg_date}</td>
            </tr>
    </table>   
    </form>
</div>
<button type="submit" class="btn btn-primary">작성</button>
</body>
</html>