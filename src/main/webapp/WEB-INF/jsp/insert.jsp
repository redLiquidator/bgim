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
	    var deptcode = null;
	$('#companycode').change(function() {
		companycode = $(this).val()
        deptDetail(companycode);       
	});
	
	//deptcode 목록 
	function deptDetail(companycode){
		console.log(companycode);
	    $.ajax({
	        url : '/deptdetail',
	        type : 'post',
	        data : {'companycode':companycode},  //post방식으로  controller에 @RequestParam을 이용해 전달할 파라미터
	        success : function(data){
	        	var a =''; 
	        	 a += '<label for="deptcode">부서코드</label>';
	        	 a += '<select name="deptcode">';
	        	 a += '<option value="">select</option>';
	        	  
	        	 $.each(data, function(key, value){ 
	        		 deptcode += value.deptcode;
	        		 console.log(deptcode);
	        		 //deptcodelist 에 option항목을 생성한다. 
	        
		         a += ' <option value="'+value.deptcode+'">'+value.deptcode+'</option>';
	             });
	        	 a += '</select>';
	        	 $(".deptcodelist").html(a);
	             
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
        <div class="deptcodelist">
       <label for="deptcode">부서코드</label>
		  <!--  회사코드를 선택하면, 부서코드를 가져온다.  -->
		 
		   

		 
		 </div>
 	 </div>
      <button type="submit" class="btn btn-primary">작성</button>
    </form>
</div>
</body>

 
</html>