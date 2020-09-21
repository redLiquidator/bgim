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
<script>
//companycode selectbox 의  값에 해당하는  deptcode를 deptcode select box로 불러오기
$(document).ready(function() {
	    var companycode = null;
	$('#companycode').change(function() {
		companycode = $(this).val()
        deptDetail();       
	});
	
	//deptcode 목록 
	function deptDetail(){
		console.log(companycode);
	    $.ajax({
	        url : '/deptdetail',
	        type : 'get',
	        data : {'companycode':companycode},
	        success : function(data){
	            var a =''; 
	            $.each(data, function(key, value){ 
	                a += '<div class="commentArea" style="border-bottom:1px solid darkgray; margin-bottom: 15px;">';
	                a += '<div class="commentInfo'+value.cno+'">'+'댓글번호 : '+value.cno+' / 작성자 : '+value.writer;
	                a += '<a onclick="commentUpdate('+value.cno+',\''+value.content+'\');"> 수정 </a>';
	                a += '<a onclick="commentDelete('+value.cno+');"> 삭제 </a> </div>';
	                a += '<div class="commentContent'+value.cno+'"> <p> 내용 : '+value.content +'</p>';
	                a += '</div></div>';
	            });
	            
	            $(".commentList").html(a);
	        }
	    });
	}
});
</script>

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
        <label for="username">이름</label>
        <input type="text" class="text" id="username" name="username">
      </div>
      <div class="form-group">
        <label for="username">사번(empid)</label>
        <input type="text" class="text" id="empid" name="empid">
      </div>
      <div class="form-group">  
       <label for="companycode">회사코드</label>
		<select id="companycode">
		    <option value="">select</option>
		      <c:forEach var="list" items="${domainlist}">
		    <option value="${list.companycode}">${list.companycode}</option>
		      </c:forEach>
		</select>

 	 </div>
        <div class="form-group">  
       <label for="deptcode">부서코드</label>
		<select name="deptcode">
		    <option value="">select</option>
		  <!--  회사코드를 선택하면, 부서코드를 가져온다.  -->
		    <c:forEach var="list" items="${deptlist}">
		    <option value="${list.deptcode}">${list.deptcode}</option>
		    </c:forEach>
		</select>
 	 </div>
      <button type="submit" class="btn btn-primary">작성</button>
    </form>
</div>
</body>

 
</html>