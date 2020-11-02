<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
    <%@ taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core"%>
<%@ taglib prefix="fmt" uri="http://java.sun.com/jsp/jstl/fmt"%>
<%@ taglib prefix="layoutTag" tagdir="/WEB-INF/tags"%>
<%@ include file="bootstrap.jsp" %>



<div class="container">
<div class="col-xs-12" style="margin:15px auto;">
        <label style="font-size:20px;"><span class="glyphicon glyphicon-list-alt">+</span>게시글 상세</label>
    </div>
    
    <div class="col-xs-12">
 <form action="/dashboardinsertProc" method="post">
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
                <th>첨부파일</th>
                <td><a href="/fileDown/${files.bno}">${files.fileOriName}</a></td>
            </tr>
            <tr>
                <th>reg_date</th>
                <td><fmt:formatDate value="${detail.reg_date}" pattern="yyyy.MM.dd HH:mm:ss"/></td>
            </tr>
    </table>   
    </form>
</div>
<div class="btn-group btn-group-sm" role="group" style="float:right;">
          <button type="button" class="btn btn-default" onclick="location.href='/dashboarddelete/${detail.bno}'">삭제</button>
          <button type="button" class="btn btn-default" onclick="location.href='/dashboardupdate/${detail.bno}'">수정</button>
          <button type="button" class="btn btn-default" onclick="location.href='/dashboardlist'"> 목록 </button>
</div>
</div>  

 <div class="container">
        <label for="content">comment</label>
        <form name="commentInsertForm">
            <div class="input-group">
               <input type="hidden" name="bno" value="${detail.bno}"/>
               <input type="text" class="form-control" id="content" name="content" placeholder="내용을 입력하세요.">
               <span class="input-group-btn">
                    <button class="btn btn-default" type="button" name="commentInsertBtn">등록</button>
               </span>
              </div>
        </form>
</div>

<div class="container">
        <div class="commentList"></div>
</div>

<%@ include file="comments.jsp" %>

