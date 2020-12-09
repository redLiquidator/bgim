<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="EUC-KR"%>
<%@ include file="bootstrap.jsp" %>
<%@ taglib prefix="fmt" uri="http://java.sun.com/jsp/jstl/fmt"%>




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

		<!-- Select2 css -->
		<link href="../resources/plugins/select2/css/select2.min.css" rel="stylesheet">

		<!-- morris css -->
		<link href="../resources/plugins/morris.js/morris.css" rel="stylesheet">

		<!--Bootstrap-daterangepicker css-->
		<link href="../resources/plugins/bootstrap-daterangepicker/daterangepicker.css" rel="stylesheet" >

		<!-- Default Style -->
		<link href="../resources/css/dashboard-three.css" rel="stylesheet">
		<link href="../resources/css/dashboard-three-dark.css" rel="stylesheet">

		<!-- Icon Style -->
		<link href="../resources/css/icons.css" rel="stylesheet">

		<!-- lightslider Css -->
		<link href="../resources/plugins/lightslider/css/lightslider.min.css" rel="stylesheet">

		<!--crypto Css -->
		<link href="../resources/plugins/cryptofont/css/cryptofont.min.css" rel="stylesheet">

		<!--Flag Css -->
		<link href="../resources/plugins/flag-icon-css/css/flag-icon.min.css" rel="stylesheet">

	</head>

 <%@ include file="comments.jsp" %>
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
								<%-- <h6>${detail.username}</h6>
								<span>${detail.code}</span> --%>
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
									<li aria-haspopup="true"><a href="/presyncdomainlist">presync data</a></li>
									<li aria-haspopup="true"><a href="/domainlist">domain</a></li>
									<li aria-haspopup="true"><a href="/deptlist">department</a></li>
									<li aria-haspopup="true"><a href="/list">user</a></li>
								</ul>
							</li>
							<li aria-haspopup="true"><a href="#" class="sub-icon"><i class="hor-icon" data-eva="bar-chart-2-outline"></i> Synchronization <i class="fe fe-chevron-down horizontal-icon"></i></a>
								<ul class="sub-menu">
									<li aria-haspopup="true"><a href="/syncresource">resource</a></li>
									<li aria-haspopup="true"><a href="/synchistory">sync history</a></li>
									<li aria-haspopup="true"><a href="/webservice">webservice</a></li>
								</ul>
							</li>
							
							<li aria-haspopup="true"><a href="#" class="sub-icon"><i class="hor-icon" data-eva="file-text-outline"></i>Provision<i class="fe fe-chevron-down horizontal-icon"></i></a>
								<ul class="sub-menu">
									<li aria-haspopup="true"><a href="/provisionresource">resource</a></li>
									<li aria-haspopup="true"><a href="/provisionhistory">provision history</a></li>
									<li aria-haspopup="true"><a href="/provisionerror">provision error</a></li>
								</ul>
							</li>
							<li aria-haspopup="true"><a href="#" class="sub-icon"><i class="hor-icon" data-eva="book-outline"></i> System Management <i class="fe fe-chevron-down horizontal-icon"></i></a>
								<ul class="sub-menu">
									<li aria-haspopup="true"><a href="/sync_provision_log">log files</a></li>
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

	<!--Main Content-->
		<div class="main-content px-0 hor-content">

		<!--Main Content Container-->
		<div class="container">

			<!--Page Header-->
			<div class="page-header">
				<h3 class="page-title">DASHBOARD</h3>
				<ol class="breadcrumb mb-0">
					<li class="breadcrumb-item"><a href="#">System Management</a></li>
					<li class="breadcrumb-item active" aria-current="page">dashboard</li>
				</ol>
			</div>
			<!--Page Header-->

			<!-- Row -->
	<div class="row row-sm">
	<div class="col-lg-11">
	<div class="main-content-body main-content-body-profile card mg-b-20">
			<!-- main-profile-body -->
					<div class="row row-sm">
					<div class="col-lg-12">
						<div class="card">
							<div class="card-body">
								<div class="main-content-body main-content-body-invoice">
									<div class="card-invoice">
										<div class="card-body p-0">
											<div class="invoice-header">
												
												<label class="tx-gray-600">reg_date | <fmt:formatDate value="${detail.reg_date}" pattern="yyyy.MM.dd HH:mm:ss"/>
												<br> bno | ${detail.bno}</label>
											</div><!-- invoice-header -->
											<div class="row mg-t-20">
												<div class="col-md">
													
													<div class="billed-to">
														<h6>subject</h6><p>${detail.subject}
														<h6>writer </h6><p>${detail.writer}</p>
														<h6>content</h6><p>${detail.content}</p><br>      
													</div>
												</div>
												<div class="col-md">
												<br>
												<h6>첨부파일 </h6> <a href="/fileDown/${files.bno}">${files.fileOriName}</a><br>
												</div>
												</div>
												
		<div class="btn-icon-list">
		<button class="btn btn-indigo btn-icon" onclick="location.href='/dashboarddelete/${detail.bno}'">삭제</button>
		<button class="btn btn-primary btn-icon" onclick="location.href='/dashboardupdate/${detail.bno}'">수정</button>
		<button class="btn btn-success btn-icon" onclick="location.href='/dashboardlist'">목록</button>
		</div>
 	<br>

	<div class="billed-to">	
	  <h6>comment</h6>
	</div>
	 <div class="container">
        <form name="commentInsertForm">
            <div class="input-group">
               <input type="hidden" name="writer" value="${detail.writer}"/>
               <input type="hidden" name="bno" value="${detail.bno}"/>
               <input type="text" class="form-control" id="content" name="content" placeholder="내용을 입력하세요.">
               <div class="btn-icon-list"><button type="submit" class="btn btn-primary btn-icon" name="commentInsertBtn">등록</button></div>
              </div>
        </form>
	</div>
											<div class="table-responsive mg-t-40">
												<table class="table table-invoice border text-md-nowrap mb-0">
													<thead>
														<tr>
															<th class="wd-5p">cno</th>
															<th class="wd-70p">contents</th>
															<th class="tx-center">writer</th>
															<th class="tx-center">update</th>
															<th class="tx-center">delete</th>
														</tr>
													</thead>
													<tbody class="commentList">
													</tbody>
												</table>
											</div>
										</div>
									</div>
								</div>
							</div>
						</div>
					</div>
					<!-- /Row -->

				</div>
		
		
		
		
		
			<!-- main-profile-body -->
	</div>
	</div>
	</div>
		<!--/ Row -->

	</div>
	</div>
<!--Main Content-->

 
<script>
var bno = '${detail.bno}'; //게시글 번호
 
 $('[name=commentInsertBtn]').click(function(){ //댓글 등록 버튼 클릭시 
	alert("commentInsertBtn clicked");
    var insertData = $('[name=commentInsertForm]').serialize(); //commentInsertForm의 내용을 가져옴
    insertData = decodeURIComponent(insertData); //한글깨짐현상 해결
    commentInsert(insertData); //Insert 함수호출(아래)
});
 


//댓글 목록 
function commentList(){
    $.ajax({
        url : '/comment/list',
        type : 'get',
        data : {'bno':bno},
        success : function(data){
            var a =''; 
            $.each(data, function(key, value){ 
            	a += '<tr>';
            	a += '<td>'+value.cno+'</td>';
            	a += '<td class="tx-12"><div class="commentContent'+value.cno+'">'+value.content+'</div></td>';
            	a += '<td class="tx-center">'+value.writer+'</td>';
            	a += '<td class="tx-center" onclick="commentUpdate('+value.cno+',\''+value.content+'\');"><div class="commentupdateBtn'+value.cno+'">수정</div></td>';
            	a += '<td class="tx-center" onclick="commentDelete('+value.cno+');">삭제</td>';
            	a += '</tr>';
            });
            
            $(".commentList").html(a);
        }
    });
}
 
//댓글추가 
function commentInsert(insertData){
	$.ajax({
		url : '/comment/insert',
		type: 'post',
		data: insertData,
		success: function(data){
			 if(data == 1) commentList(bno); 
		}
	});
}

//댓글 수정 - 댓글 내용 출력을 input 폼으로 변경 
function commentUpdate(cno, content){
	 var a =''; 
	 a += '<input type="text" class="form-control" name="content_'+cno+'" value="'+content+'"/>';
	 $('.commentContent'+cno).html(a);
	 
	 var b='';
	 b += '<span class="input-group-btn"><button class="btn btn-default" type="button" onclick="commentUpdateProc('+cno+');">수정</button> </span>';
	 $('.commentupdateBtn'+cno).html(b);
	 
}
 
//댓글 수정
function commentUpdateProc(cno){
	var updateContent = $('[name=content_'+cno+']').val();
	 $.ajax({
		 url : '/comment/update',
	        type : 'post',
	        data : {'content' : updateContent, 'cno' : cno},
	        success : function(data){
	            if(data == 1) commentList(bno); //댓글 수정후 목록 출력 
	        }
	    });
	 }
	 
//댓글 삭제 
function commentDelete(cno){
	   $.ajax({
		   url : '/comment/delete/'+cno,
		   type : 'post',
		   success : function(data){
			   if(data == 1) commentList(bno); //댓글 삭제후 목록 출력
		   }
	    });
	}

$(document).ready(function(){
    commentList(); //페이지 로딩시 댓글 목록 출력 
});

</script>


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

		<!-- Chart.bundle js -->
		<script src="../resources/plugins/chart.js/Chart.bundle.min.js"></script>

		<!-- Sidebar js -->
		<script src="../resources/plugins/sidebar/sidebar.js"></script>
		<script src="../resources/plugins/sidebar/sidebar-custom.js"></script>

		<!-- Custom Scroll bar Js-->
		<script src="../resources/plugins/mscrollbar/jquery.mCustomScrollbar.concat.min.js"></script>

		<!-- Horizontal-Menu JS-->
		<script src="../resources/plugins/horizontal-menu/horizontal-menu.js"></script>

		<!-- Perfect-scrollbar js -->
		<script src="../resources/plugins/perfect-scrollbar/perfect-scrollbar.min.js"></script>

		<!-- Custom js -->
		<script src="../resources/js/custom.js"></script>

	</body>
</html>