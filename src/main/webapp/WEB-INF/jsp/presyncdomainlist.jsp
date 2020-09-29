<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="EUC-KR"%>
<%@ include file="bootstrap.jsp" %>
<%@ taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core"%>
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
					<div class="main-header-fullscreen fullscreen-button">
						<a href="#" class="header-link">
							<i class="header-icons" data-eva="expand-outline"></i>
						</a>
					</div>
					<div class="dropdown main-header-notification">
						<a class="new header-link" href="">
							<i class="header-icons" data-eva="bell-outline"></i>
							<span class="pulse bg-danger"></span>
						</a>
						<div class="dropdown-menu">
							<div class="p-3 border-bottom text-center">
								<h6 class="main-notification-title">Notifications</h6>
							</div>
							<div class="main-notification-list">
								<a href="#" class="dropdown-item d-flex">
									<div class="text-primary tx-18 mr-3 ">
										<i class="fe fe-mail"></i>
									</div>
									<div>
										<h6 class="mb-1">Commented on your post.</h6>
										<div class="small text-muted">3 hours ago</div>
									</div>
								</a>
								<a href="#" class="dropdown-item d-flex border-top">
									<div class="text-pink tx-18 mr-3 ">
										<i class="fe fe-user"></i>
									</div>
									<div>
										<h6 class="mb-1">New User Registered</h6>
										<div class="small text-muted">1 day ago</div>
									</div>
								</a>
								<a href="#" class="dropdown-item d-flex  border-top">
									<div class="text-success tx-18 mr-3 ">
										<i class="fe fe-thumbs-up"></i>
									</div>
									<div>
										<h6 class="mb-1">Someone likes our posts</h6>
										<div class="small text-muted">5 mins ago</div>
									</div>
								</a>
								<a href="#" class="dropdown-item d-flex border-top">
									<div class="text-purple tx-18 mr-3 ">
										<i class="fe fe-upload"></i>
									</div>
									<div>
										<h6 class="mb-1">New file has been uploaded</h6>
										<div class="small text-muted">50 sec ago</div>
									</div>
								</a>
								<a href="#" class="dropdown-item d-flex border-top">
									<div class="text-danger tx-18 mr-3 ">
										<i class="fe fe-alert-circle"></i>
									</div>
									<div>
										<h6 class="mb-1">System alert</h6>
										<div class="small text-muted">2 days ago</div>
									</div>
								</a>
								<a href="#" class="dropdown-item d-flex border-top">
									<div class="text-warning tx-18 mr-3 ">
										<i class="fe fe-server"></i>
									</div>
									<div>
										<h6 class="mb-1">Server Rebooted</h6>
										<div class="small text-muted">45 mins ago</div>
									</div>
								</a>
							</div>
							<div class="dropdown-footer">
								<a href="">View All Notifications</a>
							</div>
						</div>
					</div>
					<div class="dropdown main-profile-menu">
						<a class="main-img-user" href="">
							<img alt="" src="../resources/img/users/male/15.jpg">
						</a>
						<div class="dropdown-menu">
							<div class="main-header-profile">
								<h6>User Info</h6>
								<span>Administrator</span>
							</div>
							<a class="dropdown-item" href="#"><i class="si si-user"></i> Profile</a>
							<a class="dropdown-item" href="#"><i class="si si-envelope-open"></i> Inbox</a>
							<a class="dropdown-item" href="#"><i class="si si-calendar"></i> Activity</a>
							<a class="dropdown-item" href="#"><i class="si si-bubbles"></i> Chat</a>
							<a class="dropdown-item" href="#"><i class="si si-settings"></i> Settings</a>
							<a class="dropdown-item" href="#"><i class="si si-power"></i> Logo Out</a>
						</div>
					</div>
					<div class="main-header-sidebar-notification">
						<a href="#" class="header-link" data-toggle="sidebar-right" data-target=".sidebar-right">
							<i class="header-icons" data-eva="options-2-outline"></i>
						</a>
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
									<li aria-haspopup="true"><a href="presyncdomainlist">presync data</a></li>
									<li aria-haspopup="true"><a href="domainlist">domain</a></li>
									<li aria-haspopup="true"><a href="department">department</a></li>
									<li aria-haspopup="true"><a href="list">user</a></li>
								</ul>
							</li>
							<li aria-haspopup="true"><a href="#" class="sub-icon"><i class="hor-icon" data-eva="bar-chart-2-outline"></i> Synchronization <i class="fe fe-chevron-down horizontal-icon"></i></a>
								<ul class="sub-menu">
									<li aria-haspopup="true"><a href="chart-morris.html">resource</a></li>
									<li aria-haspopup="true"><a href="chart-flot.html">sync history</a></li>
									<li aria-haspopup="true"><a href="chart-chartjs.html">webservice</a></li>
									<li aria-haspopup="true"><a href="chart-sparkline.html">log</a></li>
								</ul>
							</li>
							
							<li aria-haspopup="true"><a href="#" class="sub-icon"><i class="hor-icon" data-eva="file-text-outline"></i>Provision<i class="fe fe-chevron-down horizontal-icon"></i></a>
								<ul class="sub-menu">
									<li aria-haspopup="true"><a href="form-elements.html">resource</a></li>
									<li aria-haspopup="true"><a href="form-advanced.html">provision history</a></li>
									<li aria-haspopup="true"><a href="form-layouts.html">provision error</a></li>
									<li aria-haspopup="true"><a href="form-validation.html">log</a></li>
								</ul>
							</li>
							<li aria-haspopup="true"><a href="#" class="sub-icon"><i class="hor-icon" data-eva="book-outline"></i> System Management <i class="fe fe-chevron-down horizontal-icon"></i></a>
								<ul class="sub-menu">
									<li aria-haspopup="true" class="sub-menu-sub"><a href="#">account</a>
										<ul class="sub-menu">
											<li aria-haspopup="true"><a href="page-profile.html"> Profile </a></li>
											<li aria-haspopup="true"><a href="page-editprofile.html">Edit Profile</a></li>
										</ul>
									</li>
									<li aria-haspopup="true" class="sub-menu-sub"><a href="#">batch scheduler</a>
										<ul class="sub-menu">
											<li aria-haspopup="true"><a href="app-mail.html">Mailbox</a></li>
											<li aria-haspopup="true"><a href="app-mail-read.html">Mail Read</a></li>
											<li aria-haspopup="true"><a href="app-mail-information.html">Account Information</a></li>
											<li aria-haspopup="true"><a href="app-mail-settings.html">Mail Settings</a></li>
										</ul>
									</li>
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
		//$(document).on('click', '.table-responsive td', function(e){  이렇게 div 안의 td만 지정할수도 있음
		$(document).on('click', '.companycode', function(e){ 
		//선택한 도메인의 사용자list를 불러온다. 
		var companycode = $(this).text();
		userListbyDomain(companycode);		
		});
		
		
		 function userListbyDomain(companycode){
			alert(companycode);	
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
								a += '<td>'+value.synchronization+'</td>';
								a += '</tr>';	
				            });
				            a += '</tbody>';
			        		a += '</table>';
			        		a += '</div>';
				            
				            $(".commentList").html(a);
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
										<br> click the name of a domain to see its users</small>
									
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
				<td class="companycode">${domainlist.companycode}</td>
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
										<a class="nav-link" href=""><i class="icon ion-md-more"></i></a>
										<a class="nav-link" data-toggle="tooltip" href="" title="Call"><i class="icon ion-ios-call"></i></a>
										<a class="nav-link" data-toggle="tooltip" href="" title="Archive"><i class="icon ion-ios-filing"></i></a>
										<a class="nav-link" data-toggle="tooltip" href="" title="Trash"><i class="icon ion-md-trash"></i></a>
										<a class="nav-link" data-toggle="tooltip" href="" title="View Info"><i class="icon ion-md-information-circle"></i></a>
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
										<label class="ckbox"><input checked="" type="checkbox"><span>Do something more</span></label>
										<span class="ml-auto">
											<i class="si si-pencil text-primary mr-2" data-toggle="tooltip" title="" data-placement="top" data-original-title="Edit"></i>
											<i class="si si-trash text-danger mr-2" data-toggle="tooltip" title="" data-placement="top" data-original-title="Delete"></i>
										</span>
									</div>
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
										<label class="ckbox"><input checked=""  type="checkbox"><span>Payment reminders</span></label>
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