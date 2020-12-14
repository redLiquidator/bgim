<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="EUC-KR"%>
<%@ include file="bootstrap.jsp" %>
<!DOCTYPE html>
<html lang="en">
	<head>
		<meta charset="utf-8">
		<meta content="width=device-width, initial-scale=1, shrink-to-fit=no" name="viewport">
		<meta name="Description" content="HTML5 Bootstrap Admin Template">
		<meta name="author" content="Spruko Technologies Private Limited">
		<meta name="keywords" content="dashboard template,admin template,bootstrap dashboard,financial dashboard,personal finance dashboard,power bi financial dashboard,cfo dashboard,balance sheet dashboard,dashboard financial reporting,bootstrap admin template,admin dashboard html template,admin dashboard bootstrap 4,admin portal template,admin template design,best admin dashboard,best dashboard templates">

		<!-- Favicon -->
		<link rel="icon" href="../resources/img/brand/favicon.ico" type="image/x-icon"/>

		<!-- Title -->
		<title>Nixlot - HTML5 Bootstrap Admin Template</title>

		<!-- Font Awesome -->
		<link href="../resources/plugins/fontawesome-free/css/all.min.css" rel="stylesheet">

		<!-- Bootstrap -->
		<link href="../resources/plugins/bootstrap/css/bootstrap.min.css" rel="stylesheet">

		<!-- Ionicons -->
		<link href="../resources/plugins/ionicons/css/ionicons.min.css" rel="stylesheet">

		<!-- Typicons -->
		<link href="../resources/plugins/typicons.font/typicons.css" rel="stylesheet">

		<!-- Sidebar css -->
		<link href="../resources/plugins/sidebar/sidebar.css" rel="stylesheet">

		<!-- Horizontal-Menu css-->
		<link id="switcher" href="../resources/plugins/horizontal-menu/horizontal-menu.css" rel="stylesheet">

		<!-- Custom Scroll bar-->
		<link href="../resources/plugins/mscrollbar/jquery.mCustomScrollbar.css" rel="stylesheet"/>

		<!-- lightslider css -->
		<link href="../resources/plugins/lightslider/css/lightslider.min.css" rel="stylesheet">

		<!-- Style Css-->
		<link href="../resources/css/dashboard-three.css" rel="stylesheet">
		<link href="../resources/css/dashboard-three-dark.css" rel="stylesheet">

		<!-- Icon Style -->
		<link href="../resources/css/icons.css" rel="stylesheet">

	</head>

	<body class="main-body">
	$(document.body).append(form);

		<!-- Loader -->
		<div id="loading">
			<img src="../resources/img/loader3.svg" class="loader-img" alt="Loader">
		</div>

		<!-- main-header -->
		<div class="main-header hor-header">
			<div class="container">
				<!--logo-->
				<div class="hor-logo">
					<a class="main-logo desktop-logo" href="index.html"><img src="../resources/img/brand/logo-3.png" alt="logo"></a>
					<a class="main-logo mobile-logo" href="index.html"><img src="../resources/img/brand/icon-3.png" alt="logo"></a>
					<a class="main-logo dark-theme-logo" href="index.html"><img src="../resources/img/brand/logo-3-dark.png" alt="logo"></a>
				</div>
				<!--/logo-->
				<a class="animated-arrow hor-toggle horizontal-navtoggle"><span></span></a>
				<div class="main-header-center">
					<input class="form-control" placeholder="Search" type="search">
					<button class="btn"><i class="fe fe-search"></i></button>
				</div>
				<div class="main-header-right ml-auto">
					<div class="dropdown main-header-search mobile-search">
						<a class="new header-link" href="">
							<i class="header-icons" data-eva="search-outline"></i>
						</a>
						<div class="dropdown-menu">
							<div class="p-2 main-form-search">
								<input class="form-control" placeholder="Search here..." type="search">
								<button class="btn"><i class="fe fe-search"></i></button>
							</div>
						</div>
					</div>
					<div>
						<a href="/user/logout" class="header-link">
							<i class="si si-logout header-icons" data-toggle="tooltip" title="si-logout"></i>
						</a>
					</div>
					<div>
						<a href="#" class="header-link">
							<i class="si si-login header-icons" data-toggle="tooltip" title="si-login"></i>
						</a>
					</div>
					<div class="main-chat-msg-name">
						<small>Welcome, </small><small id="loginuser"></small>	
					</div>
				</div>
			</div>
		</div>
		<!--/main-header-->

		<!--Horizontal-main -->
		<div class="sticky">
			<div class="horizontal-main hor-menu clearfix">
				<div class="horizontal-mainwrapper container clearfix">
					<!--Nav-->
					<nav class="horizontalMenu clearfix">
						<ul class="horizontalMenu-list">
							<li aria-haspopup="true"><a href="front" class="sub-icon"><i class="hor-icon" data-eva="monitor-outline"></i>Main</a></li>
							<li aria-haspopup="true"><a href="#" class="sub-icon"><i class="hor-icon" data-eva="cube-outline"></i> Data management <i class="fe fe-chevron-down horizontal-icon"></i></a>
								<ul class="sub-menu">
									<li aria-haspopup="true"><a href="/presyncdomainlist">presync data</a></li>
									<li aria-haspopup="true"><a href="/domainlist/1">domain</a></li>
									<li aria-haspopup="true"><a href="/deptlist/1">department</a></li>
									<li aria-haspopup="true"><a href="/list/1">user</a></li>
								</ul>
							</li>
							<li aria-haspopup="true"><a href="#" class="sub-icon"><i class="hor-icon" data-eva="bar-chart-2-outline"></i> Synchronization <i class="fe fe-chevron-down horizontal-icon"></i></a>
								<ul class="sub-menu">
									<li aria-haspopup="true"><a href="/syncresource">resource</a></li>
									<li aria-haspopup="true"><a href="/synchistory/1">sync history</a></li>
									<li aria-haspopup="true"><a href="/webservice">webservice</a></li>
								</ul>
							</li>
							
							<li aria-haspopup="true"><a href="#" class="sub-icon"><i class="hor-icon" data-eva="file-text-outline"></i>Provision<i class="fe fe-chevron-down horizontal-icon"></i></a>
								<ul class="sub-menu">
									<li aria-haspopup="true"><a href="/provisionresource">resource</a></li>
									<li aria-haspopup="true"><a href="/provisionhistory/1">provision history</a></li>
									<li aria-haspopup="true"><a href="/provisionerror/1">provision error</a></li>
								</ul>
							</li>
							<li aria-haspopup="true"><a href="#" class="sub-icon"><i class="hor-icon" data-eva="book-outline"></i> System Management <i class="fe fe-chevron-down horizontal-icon"></i></a>
								<ul class="sub-menu">
									<li aria-haspopup="true"><a href="/sync_provision_log/1">log files</a></li>
									<li aria-haspopup="true" class="sub-menu-sub"><a href="#">account</a></li>
									<li aria-haspopup="true"><a href="page-invoice.html">database</a></li>
									<li aria-haspopup="true"><a href="blog.html">release info</a></li>
								</ul>
							</li>
							<li aria-haspopup="true"><a href="#" class="sub-icon"><i class="hor-icon" data-eva="briefcase-outline"></i> Request <i class="fe fe-chevron-down horizontal-icon"></i></a>
								<ul class="sub-menu">
									<li aria-haspopup="true"><a href="dashboardlist"> Dashboard </a></li>
								</ul>
							</li>
						</ul>
					</nav>
					<!--Nav-->
				</div>
			</div>
		</div>
		<!--Horizontal-main -->
		<script>
		$(document).ready(function(){
			loginUserName();
		});

		$(document).off(); //모든 이벤트를 해제해고, 다시 이벤트를 동적으로 할당해 준다.
		
		var companycode
		var code
		var userCheck		//사용자존재여부
		var userData
		var tablename

 		$(document).on('click', '.usersync', function(e){ 
 			//해당 사용자의 인사동기화를 실행
 			code = $('input[name=code]').val();
 			companycode = $('input[name=companycode]').val();
 			userData = $('[name=UserSyncForm]').serialize();
 			userData.replace("%2F","");
 			usersync(code);
 			//해당 도메인의 사용자list를 다시한번 불러온다. 
 			userListbyDomain(companycode);
 			}); 
		
		
		function loginUserName(){
			console.log("loginUserName function starts");
			 $.ajax({
		        url : '/loginUserName',
		        type : 'get',
		        async: false,
		        success : function(data){
		        	 $("#loginuser").html(data);
		        }
		    }); 
		}
		
		
 		function changeSerialize( values, k, v ) {
 		    var found = false;
 		    for (i = 0; i < values.length && !found; i++) {
 		        if ( values[i].name == k ) { 
 		            values[i].value = v;
		            found = true;
 		        }}
 		    if (!found) {
 		        values.push(
 		            { name: k,
 		              value: v }   
 		        ); }
 		    return values;
 		}

	
		function userListbyDomain(companycode){
			  
				 $.ajax({
					 url : '/presyncuserlist/'+companycode,
				        type : 'post',
				        async: false,
				        data : {'companycode' : companycode},
				        success : function(data){
		 		          var a =''; 
				            a += '<div class="table-responsive">';
			                a += '<table class="table table-striped mg-b-0 text-md-nowrap">';
			                a += '<thead>';
			                a += '<tr>';
			                a += '<th>user<br>name</th>';
			                a += '<th>code<br>&nbsp;</th>';
			                a += '<th>login_id<br>&nbsp;</th>';
			                a += '<th>company<br>code</th>';
			                a += '<th>empid<br>&nbsp;</th>';
			                a += '<th>email<br>&nbsp;</th>';
			                a += '<th>mobile<br>&nbsp;</th>';
			                a += '<th>hired_dt<br>&nbsp;</th>';
			                a += '<th>synchro<br>nization</th>';
			                a += '</tr>';
			                a += '</thead>';
			                a += '<tbody>';
			                
				            $.each(data, function(key, value){ 
	
	        				    a += '<tr>'; 
        					    a += '<td>'+value.username+'</td>';
       						    a += '<td>'+value.code+'</td>';
    							a += '<td>'+value.login_id+'</td>';
    							a += '<td>'+value.companycode+'</td>';
						        a += '<td>'+value.empid+'</td>';
							    a += '<td>'+value.email+'</td>';
								a += '<td>'+value.mobile+'</td>';
							    a += '<td>'+value.hired_dt.substring(0,10)+'</td>';
							    a += '<td><form name="UserSyncForm">';
							    a += '<input type="hidden" name="tablename" value="org_user"/>';
							    a += '<input type="hidden" name="username" value="'+value.username+'"/>';
							    a += '<input type="hidden" name="pwd" value="1234"/>';
							    a += '<input type="hidden" name="code" value="'+value.code+'"/>';
							    a += '<input type="hidden" name="login_id" value="'+value.login_id+'"/>';
							    a += '<input type="hidden" name="companycode" value="'+value.companycode+'"/>';
							    a += '<input type="hidden" name="deptcode" value="testdept"/>';
							    a += '<input type="hidden" name="empid" value="'+value.empid+'"/>';
							    a += '<input type="hidden" name="email" value="'+value.email+'"/>';
							    a += '<input type="hidden" name="mobile" value="'+value.mobile+'"/>';
							    a += '<input type="hidden" name="hired_dt" value="'+value.hired_dt+'"/>';
							    a += '<input type="hidden" name="provision_or_sync" value="sync"/>';
							    a += '<input type="hidden" name="historytablename" value="sync_history_user"/>';
								a += '<button type="submit" class="btn btn-sm btn-success usersync" name="presyncForm">execute</button></form></td>';
								a += '</tr>';	
				            });
				            a += '</tbody>';
			        		a += '</table>';
			        		a += '</div>';
				            
				            $(".commentList").html(a);
				        }
				    });			    
		 }
		
		function usersync(code){
			//step1: 사용자가  org_user에 없으면 insertSync, 있으면 updateSync			
			tablename="org_user";
			userExistorNot(code);
			alert(userCheck);
			userData = $('[name=UserSyncForm]').serialize();
			console.log(userData);
		    if(userCheck == 1){
		    	alert("updateSync");  //만약 사용자가 있으면 updateSync
		    	userUpdateSync(userData);
		    	alert("updateSync finished");
				    	//step2: 사용자가  프로비저닝 테이블에 없으면 insertProvision, 없으면 updateProvision
				    	$('[name=tablename]').val("mall_user");  //tablename 명 변경
				    	$('[name=historytablename]').val("provision_history_user");  //historytablename 명 변경
				    	$('[name=provision_or_sync]').val("provision");  //쿼리문 분기조정을 위해 provision_or_sync 를 provision 으로 변경
				    	userExistorNot(code);
		    	        //userData의 테이블명을 provision할 테이블명으로 변경후, 해당 테이블에 사용자데이터가 존재하는지 확인한다. 일단 mall_user만 구현
				    	if(userCheck == 1){
					    	alert("updateProvision");  //만약 사용자가 있으면 update
				 			userData = $('[name=UserSyncForm]').serialize();
				 			console.log(userData);
					    	userUpdateProvision(userData);
					    }else if(userCheck == 0){
					    	alert("insertProvision");
				 			userData = $('[name=UserSyncForm]').serialize();
				 			console.log(userData);
					    	userInsertProvision(userData);  //만약 사용자가 없으면 insert
					    }else{
					    	alert("error: userCheck result is not 0 nor 1");
					    }
				    	
		    }else if(userCheck == 0){
		    	alert("insertSync");
		    	userInsertSync(userData);  //만약 사용자가 없으면 insertSync
		    	
				    	//step2: 사용자가  프로비저닝 테이블에 없으면 insertProvision, 없으면 updateProvision
				    	//userData의 테이블명을 provision할 테이블명으로 변경후, 해당 테이블에 사용자데이터가 존재하는지 확인한다. 일단 mall_user만 구현
				    	tablename="mall_user";
				    	userExistorNot(code);
				    	if(userCheck == 1){
					    	alert("updateProvision");  //만약 사용자가 있으면 update
					    	
					    	var userData = $('[name=UserSyncForm]').serializeArray();   //userData의 tablename변경
					    	userData = changeSerialize(userData, 'tablename', 'mall_user');
					    	userUpdateProvision(userData);
					    }else if(userCheck == 0){
					    	alert("insertProvision");
					    	
					    	var userData = $('[name=UserSyncForm]').serializeArray();   //userData의 tablename변경
					    	userData = changeSerialize(userData, 'tablename', 'mall_user');
					    	userInsertProvision(userData);  //만약 사용자가 없으면 insert
					    }else{
					    	alert("error: userCheck result is not 0 nor 1");
					    }
		    	
		    }else{
		    	alert("error: userCheck result is not 0 nor 1");
		    }
			
		}
		
		function userExistorNot(code){
			//사용자정보가 org_user에 없으면 insert, 있으면 update
			console.log("userExistorNot function starts");
			$.ajax({
				 url : '/count',
			        type : 'post',
			        data : {'code' : code, 'tablename' : tablename},
			        success : function(data){
			        	userCheck = data;
			        }
			    });
 
			 return userCheck;
		}
		
		function userUpdateSync(userData){
			console.log(userData);
		    $.ajax({
		        url : '/updateProc',
		        type : 'post',
		        data : userData,
		        success : function(data){
		            if(data == 1) {
		   				 console.log("userUpdateSync success");        
		            }
		        }
		    }); 
		}
		
		function userInsertSync(userData){
			console.log("userInsertSync function starts");
			console.log(userData);
		     $.ajax({
		        url : '/insertProc',
		        type : 'post',
		        data : userData,
		        success : function(data){
		            if(data == 1) {
		   				 console.log("userInsertSync success");        
		            }
		        }
		    }); 
		}
		
		function userInsertProvision(userData){
			console.log("userInsertProvision function starts");
		     $.ajax({
		        url : '/insertProc',
		        type : 'post',
		        data : userData,
		        success : function(data){
		            if(data == 1) {
		   				 console.log("userInsertProvision success");        
		            }
		        }
		    }); 
		}
		
		function userUpdateProvision(userData){
			console.log("userUpdateProvision function starts");
		     $.ajax({
		        url : '/updateProc',
		        type : 'post',
		        data : userData,
		        success : function(data){
		            if(data == 1) {
		   				 console.log("userUpdateProvision success");        
		            }
		        }
		    }); 
		}
			
		
		 
		 
		</script>

		<!--Main Content-->
		<div class="main-content px-0 hor-content">

			<!--Main Content Container-->
			<div class="container">

				<!--Page Header-->
				<div class="page-header">
					<h3 class="page-title">PRESYNC DATA</h3>
					<ol class="breadcrumb mb-0">
						<li class="breadcrumb-item"><a href="#">Data Management</a></li>
						<li class="breadcrumb-item active" aria-current="page">Presync data</li>
					</ol>
				</div>
				<!--Page Header-->

				<!-- Row -->
				<div class="row row-sm">
					<div class="col-lg-5 col-xl-4">
						<div class="card mg-b-20">
							<div class="card-body p-0">
								<div class="main-content-left main-content-left-chat">
									<div class="p-3 pb-0 border-bottom">
										<div class="input-group">			
								<div class="main-chat-msg-name">
										<h6>Domain</h6>
										<small>Last synchronized: 1 minute ago 
										<br> click the code of a domain to see its users</small>
									
								</div>
								  </div>
									</div>
									
									<div class="tab-pane" id="provision">
	
	 						
		<!-- table -->							
		<div class="card-body">
			<!-- <div class="main-content-label mg-b-5">
				Striped Rows
			</div>
			<p class="mg-b-20">Example of redash Striped Rows.</p> -->
			<div class="table-responsive">
		<table class="table table-striped mg-b-0 text-md-nowrap">
			<thead>
			<tr>
				<th>status</th>
				<th>name</th>
				<th>code</th>
				<th>synchronization</th>
			</tr>
			</thead>

			<tbody>
			  <c:forEach var="domainlist" items="${domainlist}">
			 
			<tr> 
				<th scope="row">success</th>
				<td>${domainlist.companyname}</td>
				<td><a href="#" onclick="userListbyDomain('${domainlist.companycode}')">${domainlist.companycode}</a></td>
				<td>
					<form name="presyncForm">
				 		<input type="hidden" name="tablename" value="org_user"/>
				 		<button type="submit" class="btn btn-sm btn-success" name="presyncForm">execute</button>
					</form>
		</td>
			</tr>
			
			 </c:forEach> 
				</tbody>
			
			</table>
			
				</div><!-- bd -->
			</div><!-- bd -->
			<!-- table -->	
		
			
			</div><!-- bd -->
								</div>
							</div>
						</div>
					</div>
					<div class="col-xl-8 col-lg-7">
						<div class="card">
							<div class="main-content-body main-content-body-chat">
								<div class="main-chat-header">
									<div class="main-img-user"><img alt="" src="../resources/img/users/male/15.jpg"></div>
									<div class="main-chat-msg-name">
										<h6>User</h6><small>Last synchronized: 1 minute ago</small>
									</div>
									<nav class="nav">
										
									</nav>
								</div><!-- main-chat-header -->
								<div class="main-chat-body" id="ChatBody">
									
									<!-- table -->							
	 	<div class="card-body">
	 	<div class="container">
        <div class="commentList"></div>
</div>
		
			</div><!-- bd -->
			<!-- table -->
							
								</div>
								
							</div>
						</div>
					</div>
				</div>
				<!-- /Row -->

			</div>
		</div>
		<!--Main Content-->

		<!--footer-->
		<div class="main-footer mg-t-auto">
			<div class="container-fluid">
				<span>Copyright &copy; 2020 <a href="#">Nixlot</a>. Designed by <a href="https://www.spruko.com/">Spruko</a> All rights reserved.</span>
			</div>
		</div>
		<!--/footer-->

		<!--Sidebar-right-->
		<div class="sidebar sidebar-right sidebar-animate">
			<div class="panel panel-primary rounded-0">
				<div class="">
					<div class="panel">
						<div class=" tab-menu-heading">
							<div class="tabs-menu1 ">
								<!-- Tabs -->
								<ul class="nav panel-tabs main-nav-line">
									<li><a href="#side-1" class="nav-link active" data-toggle="tab">Chat</a></li>
									<li><a href="#side-2" class="nav-link" data-toggle="tab">Friends</a></li>
									<li><a href="#side-3" class="nav-link" data-toggle="tab">Todo</a></li>
								</ul>
							</div>
						</div>
						<div class="tabs-menu-body main-content-body-right bg-white p-0">
							<div class="tab-content">
								<div class="tab-pane active" id="side-1">
									<div class="p-3">
										<label class="main-content-label tx-base mg-b-25">Today</label>
										<div class="main-media-list-activity">
											<div class="media">
												<div class="media-icon bg-primary">
													CH
												</div>
												<div class="media-body">
													<h6>New Websites is Created</h6>
													<span><i class="mdi mdi-clock text-muted mr-1"></i> 2m ago</span>
												</div>
											</div>
											<div class="media">
												<div class="media-icon bg-secondary">
													A
												</div>
												<div class="media-body">
													<h6>Prepare For the Next Project</h6>
													<span><i class="mdi mdi-clock text-muted mr-1"></i> 45m ago</span>
												</div>
											</div>
											<div class="media">
												<div class="media-icon bg-success">
													JK
												</div>
												<div class="media-body">
													<h6>Decide the live Discussion Time</h6>
													<span><i class="mdi mdi-clock text-muted mr-1"></i> 1hr ago</span>
												</div>
											</div>
										</div>
										<label class="main-content-label tx-base mg-b-25 mt-5">Yesterday</label>
										<div class="main-media-list-activity">
											<div class="media">
												<div class="media-icon bg-info">
													M
												</div>
												<div class="media-body">
													<h6>Prepare for Presentation</h6>
													<span><i class="mdi mdi-clock text-muted mr-1"></i>Yesterday 1:45pm</span>
												</div>
											</div>
											<div class="media">
												<div class="media-icon bg-danger">
													L
												</div>
												<div class="media-body">
													<h6>New Project Started..</h6>
													<span><i class="mdi mdi-clock text-muted mr-1"></i> Yesterday 11:30am</span>
												</div>
											</div>
											<div class="media">
												<div class="media-icon bg-warning">
													U
												</div>
												<div class="media-body">
													<h6>Weekend trip...</h6>
													<span><i class="mdi mdi-clock text-muted mr-1"></i> Yesterday 5:20am</span>
												</div>
											</div>
											<div class="media">
												<div class="media-icon bg-pink">
													P
												</div>
												<div class="media-body">
													<h6>Weekend trip...</h6>
													<span><i class="mdi mdi-clock text-muted mr-1"></i> Yesterday 4:10am</span>
												</div>
											</div>
											<div class="media">
												<div class="media-icon bg-secondary">
													A
												</div>
												<div class="media-body">
													<h6>Weekend trip...</h6>
													<span><i class="mdi mdi-clock text-muted mr-1"></i> Yesterday 2:20am</span>
												</div>
											</div>
										</div>
									</div>
								</div>
								<div class="tab-pane" id="side-2">
									<div class="p-3 d-flex  align-items-center border-bottom">
										<div class="mr-2">
											<div class="main-img-user"><img alt="avatar" src="../resources/img/users/female/2.jpg" class="mCS_img_loaded"></div>
										</div>
										<div class="">
											<div class="font-weight-semibold">Sally	Fraser</div>
											<small class="text-muted">App Developer</small>
										</div>
										<div class="ml-auto">
											<a href="#" class="btn btn-sm btn-light"><i class="fe fe-message-square"></i></a>
										</div>
									</div>
									<div class="p-3 d-flex  align-items-center border-bottom">
										<div class="mr-2">
											<div class="main-img-user"><img alt="avatar" src="../resources/img/users/male/2.jpg" class="mCS_img_loaded"></div>
										</div>
										<div class="">
											<div class="font-weight-semibold">Neil Baker</div>
											<small class="text-muted">Web Designer</small>
										</div>
										<div class="ml-auto">
											<a href="#" class="btn btn-sm btn-light"><i class="fe fe-message-square"></i></a>
										</div>
									</div>
									<div class="p-3 d-flex  align-items-center border-bottom">
										<div class="mr-2">
											<div class="main-img-user"><img alt="avatar" src="../resources/img/users/female/3.jpg" class="mCS_img_loaded"></div>
										</div>
										<div class="">
											<div class="font-weight-semibold">Amelia Parsons</div>
											<small class="text-muted">Administrator</small>
										</div>
										<div class="ml-auto">
											<a href="#" class="btn btn-sm btn-light"><i class="fe fe-message-square"></i></a>
										</div>
									</div>
									<div class="p-3 d-flex  align-items-center border-bottom">
										<div class="mr-2">
											<div class="main-img-user"><img alt="avatar" src="../resources/img/users/male/4.jpg" class="mCS_img_loaded"></div>
										</div>
										<div class="">
											<div class="font-weight-semibold">Joseph Anderson</div>
											<small class="text-muted">Web Developer</small>
										</div>
										<div class="ml-auto">
											<a href="#" class="btn btn-sm btn-light"><i class="fe fe-message-square"></i></a>
										</div>
									</div>
									<div class="p-3 d-flex  align-items-center border-bottom">
										<div class="mr-2">
											<div class="main-img-user"><img alt="avatar" src="../resources/img/users/female/5.jpg" class="mCS_img_loaded"></div>
										</div>
										<div class="">
											<div class="font-weight-semibold">Grace	Payne</div>
											<small class="text-muted">App Designer</small>
										</div>
										<div class="ml-auto">
											<a href="#" class="btn btn-sm btn-light"><i class="fe fe-message-square"></i></a>
										</div>
									</div>
									<div class="p-3 d-flex  align-items-center border-bottom">
										<div class="mr-2">
											<div class="main-img-user"><img alt="avatar" src="../resources/img/users/male/6.jpg" class="mCS_img_loaded"></div>
										</div>
										<div class="">
											<div class="font-weight-semibold">Paul Glover</div>
											<small class="text-muted">Team Leader</small>
										</div>
										<div class="ml-auto">
											<a href="#" class="btn btn-sm btn-light"><i class="fe fe-message-square"></i></a>
										</div>
									</div>
									<div class="p-3 d-flex  align-items-center border-bottom">
										<div class="mr-2">
											<div class="main-img-user"><img alt="avatar" src="../resources/img/users/female/7.jpg" class="mCS_img_loaded"></div>
										</div>
										<div class="">
											<div class="font-weight-semibold">Sophie Russell</div>
											<small class="text-muted">Manager</small>
										</div>
										<div class="ml-auto">
											<a href="#" class="btn btn-sm btn-light"><i class="fe fe-message-square"></i></a>
										</div>
									</div>
									<div class="p-3 d-flex  align-items-center border-bottom">
										<div class="mr-2">
											<div class="main-img-user"><img alt="avatar" src="../resources/img/users/male/8.jpg" class="mCS_img_loaded"></div>
										</div>
										<div class="">
											<div class="font-weight-semibold">Jack Ince</div>
											<small class="text-muted">Tester</small>
										</div>
										<div class="ml-auto">
											<a href="#" class="btn btn-sm btn-light"><i class="fe fe-message-square"></i></a>
										</div>
									</div>
								</div>
								<div class="tab-pane" id="side-3">
									
									<div class="d-flex p-3 border-bottom">
										<label class="ckbox"><input type="checkbox"><span>Find an idea</span></label>
										<span class="ml-auto">
											<i class="si si-pencil text-primary mr-2" data-toggle="tooltip" title="" data-placement="top" data-original-title="Edit"></i>
											<i class="si si-trash text-danger mr-2" data-toggle="tooltip" title="" data-placement="top" data-original-title="Delete"></i>
										</span>
									</div>
									<div class="d-flex p-3 border-bottom">
										<label class="ckbox"><input type="checkbox"><span>Do something else</span></label>
										<span class="ml-auto">
											<i class="si si-pencil text-primary mr-2" data-toggle="tooltip" title="" data-placement="top" data-original-title="Edit"></i>
											<i class="si si-trash text-danger mr-2" data-toggle="tooltip" title="" data-placement="top" data-original-title="Delete"></i>
										</span>
									</div>
									<div class="d-flex p-3 border-bottom">
										<label class="ckbox"><input type="checkbox"><span>Updated more files</span></label>
										<span class="ml-auto">
											<i class="si si-pencil text-primary mr-2" data-toggle="tooltip" title="" data-placement="top" data-original-title="Edit"></i>
											<i class="si si-trash text-danger mr-2" data-toggle="tooltip" title="" data-placement="top" data-original-title="Delete"></i>
										</span>
									</div>
									<div class="d-flex p-3 border-bottom">
										<label class="ckbox"><input type="checkbox"><span>System Updated</span></label>
										<span class="ml-auto">
											<i class="si si-pencil text-primary mr-2" data-toggle="tooltip" title="" data-placement="top" data-original-title="Edit"></i>
											<i class="si si-trash text-danger mr-2" data-toggle="tooltip" title="" data-placement="top" data-original-title="Delete"></i>
										</span>
									</div>
									<div class="d-flex p-3 border-bottom">
										<label class="ckbox"><input  type="checkbox"><span>User Feedback</span></label>
										<span class="ml-auto">
											<i class="si si-pencil text-primary mr-2" data-toggle="tooltip" title="" data-placement="top" data-original-title="Edit"></i>
											<i class="si si-trash text-danger mr-2" data-toggle="tooltip" title="" data-placement="top" data-original-title="Delete"></i>
										</span>
									</div>
									
									<div class="d-flex p-3 border-bottom">
										<label class="ckbox"><input type="checkbox"><span>Finsh Something more</span></label>
										<span class="ml-auto">
											<i class="si si-pencil text-primary mr-2" data-toggle="tooltip" title="" data-placement="top" data-original-title="Edit"></i>
											<i class="si si-trash text-danger mr-2" data-toggle="tooltip" title="" data-placement="top" data-original-title="Delete"></i>
										</span>
									</div>
									<div class="d-flex p-3 border-bottom">
										<label class="ckbox"><input type="checkbox"><span>Hangout with friends</span></label>
										<span class="ml-auto">
											<i class="si si-pencil text-primary mr-2" data-toggle="tooltip" title="" data-placement="top" data-original-title="Edit"></i>
											<i class="si si-trash text-danger mr-2" data-toggle="tooltip" title="" data-placement="top" data-original-title="Delete"></i>
										</span>
									</div>
								</div>
							</div>
						</div>
					</div>
				</div>
			</div>
		</div>
		<!--/Sidebar-right-->

		<!-- JQuery min js -->
		<script src="../resources/plugins/jquery/jquery.min.js"></script>

		<!-- Bootstrap Bundle js -->
		<script src="../resources/plugins/bootstrap/js/bootstrap.bundle.min.js"></script>

		<!-- Ionicons js -->
		<script src="../resources/plugins/ionicons/ionicons.js"></script>

		<!-- Eva-Icons js -->
		<script src="../resources/plugins/web-fonts/eva.min.js"></script>

		<!-- Moment js -->
		<script src="../resources/plugins/moment/moment.js"></script>

		<!-- Sidebar js -->
		<script src="../resources/plugins/sidebar/sidebar.js"></script>
		<script src="../resources/plugins/sidebar/sidebar-custom.js"></script>

		<!-- Custom Scroll bar Js-->`
		<script src="../resources/plugins/mscrollbar/jquery.mCustomScrollbar.concat.min.js"></script>

		<!-- Horizontal-Menu JS-->
		<script src="../resources/plugins/horizontal-menu/horizontal-menu.js"></script>

		<!-- perfect-scrollbar js -->
		<script src="../resources/plugins/perfect-scrollbar/perfect-scrollbar.min.js"></script>

		<!-- lightslider js -->
		<script src="../resources/plugins/lightslider/js/lightslider.min.js"></script>

		<!-- Chat js -->
		<script src="../resources/js/chat.js"></script>

		<!-- Custom js -->
		<script src="../resources/js/custom.js"></script>

	</body>
</html>