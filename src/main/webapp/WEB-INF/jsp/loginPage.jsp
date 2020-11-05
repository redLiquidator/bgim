<%@ page language="java" contentType="text/html; charset=UTF-8" pageEncoding="UTF-8"%>
<!DOCTYPE html>

<%@ taglib uri="http://java.sun.com/jsp/jstl/core" prefix="c"%>
<%@ taglib prefix="sec" uri="http://www.springframework.org/security/tags"%>
<%@ page import="org.springframework.security.core.context.SecurityContextHolder"%>
<%@ page import="org.springframework.security.core.Authentication"%>
<%@ page import="com.system.bgim.dto.AccountDTO" %>

<%
	String name = "";
	String msg = (String) request.getAttribute("exceptionMsgName");
	
	if (msg == null || msg.equals("")) {
		
		Authentication auth = SecurityContextHolder.getContext().getAuthentication();
		try {
			Object principal = auth.getPrincipal();
			if (principal instanceof AccountDTO)
				System.out.println(" Accout 객체 맞음 !! ");
			else
				System.out.println(" Accout 객체 아님.. " + principal.getClass().toString());
			if (principal != null && principal instanceof AccountDTO) {
				name = ((AccountDTO) principal).getUsername();
				System.out.println(" Account에서 가지고온 이름 ! : " + name);
			}
		} catch (Exception e) {
			e.printStackTrace();
		}
	}
%>



<html>
<head>
<meta charset="UTF-8">
<title>Insert title here</title>

<link rel="stylesheet" href="https://stackpath.bootstrapcdn.com/bootstrap/4.4.1/css/bootstrap.min.css" integrity="sha384-Vkoo8x4CGsO3+Hhxv8T/Q5PaXtkKtu6ug5TOeNV6gBiFeWPGFN9MuhOf23Q9Ifjh" crossorigin="anonymous">

</head>
<body>
	<div class="container">
		<div class="row" style="padding-top: 20%">
			<div class="col-md-4 "></div>
			<div class="col-md-4" style="flex-align: center">
				<div class="card">
					<h5 class="card-header">로그인 </h5>
					<div class="card-body">
						<form action='/loginProcess' method='POST'>
							<div class="form-group">
								<label for="InputId"> 아이디</label><input type="text" class="form-control" id="username" name="username" placeholder="ID">
							</div>
							<div class="form-group">
								<label for="InputPassword1">패스워드</label> <input type="password" class="form-control" id="password" name="password" placeholder="Password">
							</div>
							<div class="checkbox">
								<label> <input type="checkbox"> 아이디 기억하기
								</label>
							</div>
							<sec:authorize access="isAnonymous()">
							<button name="submit" type="submit" class="btn btn-block btn-primary text-light">로그인</button>
							</sec:authorize>
								<%-- <c:if test="${not empty SPRING_SECURITY_LAST_EXCEPTION}"> --%>
								<c:if test="${not empty exceptionMsgName}" ><br>
								<font color="red">
									<p>${exceptionMsgName}
								<%-- ${sessionScope["SPRING_SECURITY_LAST_EXCEPTION"].message} --%>
									</p> 
								</font>
								<%-- </c:if> --%>
							</c:if>
							<input type="hidden" name="${_csrf.parameterName}" value="${_csrf.token}" /> <br>

							<sec:authorize access="isAuthenticated()">
								<div class="form-group" align="center">
									<h5><%=name%> 님, 반갑습니다.<%--<sec:authentication property="principal.username" />님, 겁나 반갑습니다. --%></h5><br>
										<form action="/logout" method="POST">
											<input type="hidden" name="${_csrf.parameterName}" value="${_csrf.token}" />
											<button type="submit" class="btn btn-dark btn-sm">LOGOUT</button>
										</form>
								</div>
							</sec:authorize>
							<input type="hidden" name ="loginRedirect" value="${loginRedirect}" />

						</form>
					</div>
				</div>
			</div>
		</div>
	</div>
</body>
</html>