<%@ page language="java" contentType="text/html; charset=EUC-KR"
    pageEncoding="EUC-KR"%>
<!DOCTYPE html>
<html lang="en">
	<head>
		<meta charset="utf-8">
		<meta content="width=device-width, initial-scale=1, shrink-to-fit=no" name="viewport">
		<meta name="Description" content="HTML5 Bootstrap Admin Template">
		<meta name="author" content="Spruko Technologies Private Limited">
		<meta name="keywords" content="dashboard template,admin template,bootstrap dashboard,financial dashboard,personal finance dashboard,power bi financial dashboard,cfo dashboard,balance sheet dashboard,dashboard financial reporting,bootstrap admin template,admin dashboard html template,admin dashboard bootstrap 4,admin portal template,admin template design,best admin dashboard,best dashboard templates">

		<!-- Favicon -->
		<link rel="icon" href="resources/img/brand/favicon.ico" type="image/x-icon"/>
 	 
		<!-- Title -->
		<title>bgIM - identity management system</title>

		<!-- Font Awesome -->
		<link href="resources/plugins/fontawesome-free/css/all.min.css" rel="stylesheet">

		<!-- Bootstrap -->
		<link href="resources/plugins/bootstrap/css/bootstrap.min.css" rel="stylesheet">

		<!-- Ionicons -->
		<link href="resources/plugins/ionicons/css/ionicons.min.css" rel="stylesheet">

		<!-- Typicons -->
		<link href="resources/plugins/typicons.font/typicons.css" rel="stylesheet">

		<!-- Sidebar css -->
		<link href="resources/plugins/sidebar/sidebar.css" rel="stylesheet">

		<!-- Horizontal-Menu css-->
		<link id="switcher" href="resources/plugins/horizontal-menu/horizontal-menu.css" rel="stylesheet">

		<!-- Custom Scroll bar-->
		<link href="resources/plugins/mscrollbar/jquery.mCustomScrollbar.css" rel="stylesheet"/>

		<!-- Select2 css -->
		<link href="resources/plugins/select2/css/select2.min.css" rel="stylesheet">

		<!-- morris css -->
		<link href="resources/plugins/morris.js/morris.css" rel="stylesheet">

		<!--Bootstrap-daterangepicker css-->
		<link href="resources/plugins/bootstrap-daterangepicker/daterangepicker.css" rel="stylesheet" >

		<!-- Default Style -->
		<link href="resources/css/dashboard-three.css" rel="stylesheet">
		<link href="resources/css/dashboard-three-dark.css" rel="stylesheet">

		<!-- Icon Style -->
		<link href="resources/css/icons.css" rel="stylesheet">

		<!-- lightslider Css -->
		<link href="resources/plugins/lightslider/css/lightslider.min.css" rel="stylesheet">

		<!--crypto Css -->
		<link href="resources/plugins/cryptofont/css/cryptofont.min.css" rel="stylesheet">

		<!--Flag Css -->
		<link href="resources/plugins/flag-icon-css/css/flag-icon.min.css" rel="stylesheet">

	</head>

	<body class="main-body">

		<!-- Loader -->
		<div id="loading">
			<img src="resources/img/loader3.svg" class="loader-img" alt="Loader">
		</div>

		<!-- main-header -->
		<div class="main-header hor-header">
			<div class="container">
				<!--logo-->
				<div class="hor-logo">
					
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
							<img alt="" src="resources/img/users/male/15.jpg">
						</a>
						<div class="dropdown-menu">
							<div class="main-header-profile">
								<h6>Peter Hill</h6>
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

		<!--Horizontal-main 다른 jsp화면에 이 부분을 변경해주면 메뉴바가 변경된다 -->
		
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
									<li aria-haspopup="true"><a href="/detail">user</a></li>
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
									<li aria-haspopup="true"><a href="/provisionhistory">provision history</a></li>
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

		<!--Main Content-->
		<div class="main-content px-0 hor-content">

			<!--Main Content Container-->
			<div class="container">

				<!--Main Content Header-->
				<div class="page-header">
					<h4 class="page-title">Welcome to bgIM</h4>
					<ol class="breadcrumb">
						<li class="breadcrumb-item"><a href="#">Dashboard</a></li>
						<li class="breadcrumb-item active" aria-current="page">Financial Dashboard</li>
					</ol>
				</div>
				<!--Main Content Header-->

				<!--Row-->
				<div class="row row-sm">
					<div class="col-sm-6 col-xl-3">
						<div class="card mg-b-20">
							<div class="card-header pb-0">
								<h6 class="card-title mg-b-1">Budget Overview</h6>
								<p class="mg-b-0 tx-12 tx-gray-500">Sed ut perspiciatis unde omnis iste natus error sit voluptatem <a href="">Learn more</a></p>
							</div>
							<div class="card--donut">
								<div class="card-body pb-3">
									<div class="main-donut-chart chart1">
										<div class="slice one"></div>
										<div class="slice two"></div>
										<div class="chart-center">
											<span></span>
										</div>
									</div>
								</div>
							</div>
							<div class="pb-3 pl-4 pr-4">
								<ul class="list-items pl-0 mb-0">
									<li class="mb-2">
										<span class="list-label ">Budget</span>
										<span class="list-items-percentage float-right font-weight-bold tx-18">3500,00</span>
									</li>
									<li class="">
										<span class="list-label ">Balance</span>
										<span class="list-items-percentage float-right font-weight-bold tx-18">-12,896</span>
									</li>
								</ul>
							</div>
						</div>
					</div>
					<div class="col-sm-6 col-xl-3">
						<div class="card mg-b-20">
							<div class="card-header pb-0">
								<h6 class="card-title mg-b-1">Expense Budget</h6>
								<p class="mg-b-0 tx-12 tx-gray-500">MSed ut perspiciatis unde omnis iste natus error sit voluptatem <a href="">Learn more</a></p>
							</div>
							<div class="card--donut">
								<div class="card-body pb-3">
									<div class="main-donut-chart chart2">
										<div class="slice one"></div>
										<div class="slice two"></div>
										<div class="chart-center">
											<span></span>
										</div>
									</div>
								</div>
							</div>
							<div class="pb-3 pl-4 pr-4">
								<ul class="list-items pl-0 mb-0">
									<li class="mb-2">
										<span class="list-label ">Budget</span>
										<span class="list-items-percentage float-right font-weight-bold tx-18">4500,00</span>
									</li>
									<li class="">
										<span class="list-label ">Balance</span>
										<span class="list-items-percentage float-right font-weight-bold tx-18">-34,645</span>
									</li>
								</ul>
							</div>
						</div>
					</div>
					<div class="col-xl-6">
						<div class="card mg-b-20">
							<div class="card-header">
								<h6 class="card-title mg-b-1">Revenue Vs  Expense</h6>
								<p class="mg-b-0 tx-12 tx-gray-500">MSed ut perspiciatis unde omnis iste natus error sit voluptatem <a href="">Learn more</a></p>
							</div>
							<div class="card-body">
								<div class="chartjs-wrapper ht-220">
									<canvas id="chartBar6"></canvas>
								</div>
							</div>
						</div>
					</div>
				</div>
				<!--/Row-->

				<!--Row-->
				<div class="row">
					<div class="col-lg-12">
						<div class="card  mg-b-20">
							<div class="row">
								<div class="col-sm-4">
									<div class="card-body">
										<div>
											<h6 class="card-title mg-b-7">Quick Ratio</h6>
											<p class="mg-t-10">Measures your Current Assets + Accounts Receivable / Current Liabilities <a href="">Learn more</a></p>
											<h5 class="tx-30">1.6:9</h5>
											<div class="progress ht-5">
												<div aria-valuemax="100" aria-valuemin="0" aria-valuenow="90" class="progress-bar bg-primary wd-90p" role="progressbar"></div>
											</div><span class="tx-12 tx-gray-500">Quick Ratio Target: 1.0 or higher</span>
										</div>
									</div>
								</div>
								<div class="col-sm-4 border-left">
									<div class="card-body">
										<div>
											<h6 class="card-title mg-b-7">Current Ratio</h6>
											<p class="mg-t-10">Measures your Current Assets / Current Liabilities. <a href="">Learn more</a></p>
											<h5 class="tx-30">4:2.8</h5>
											<div class="progress ht-5">
												<div aria-valuemax="100" aria-valuemin="0" aria-valuenow="60" class="progress-bar bg-pink wd-60p" role="progressbar"></div>
											</div><span class="tx-12 tx-gray-500">Quick Ratio Target: 2.0 or higher</span>

										</div>
									</div>
								</div>
								<div class="col-sm-4 border-left">
									<div class="card-body">
										<div>
											<h6 class="card-title mg-b-7">Debt-Equity Ratio</h6>
											<p class="mg-t-10">Measures Total Liabilities / Shareholder's Equity. <a href="">Learn more</a></p>
											<h5 class="tx-30">3:5:2</h5>
											<div class="progress ht-5">
												<div aria-valuemax="100" aria-valuemin="0" aria-valuenow="60" class="progress-bar bg-secondary wd-60p" role="progressbar"></div>
											</div><span class="tx-12 tx-gray-500">Debt-Equity Ratio Target: 0.80 or less</span>
										</div>
									</div>
								</div>
							</div>
						</div>
					</div>
				</div>
				<!--/Row-->

				<!--Row-->
				<div class="row row-sm">
					<div class="col-xl-3 col-sm-6">
						<div class="card mg-b-20 overflow-hidden">
							<div class="card-body">
								<div>
									<h6 class="mb-1 font-weight-semibold">Total Income</h6>
									<h2><span>$</span>83,320</h2>
								</div>
								<span class="tx-12"><span class="tx-success tx-bold">18.2%</span> higher vs previous month</span>
							</div>
							<div class="chart-wrapper">
								<div class="flot-chart" id="flotChart1"></div>
							</div>
						</div>
					</div>
					<div class="col-xl-3 col-sm-6">
						<div class="card mg-b-20 overflow-hidden">
							<div class="card-body">
								<div>
									<h6 class="mb-1 font-weight-semibold">Total Expenses</h6>
									<h2><span>$</span>32,370</h2>
								</div>
								<span class="tx-12"><span class="tx-danger tx-bold">0.7%</span> higher vs previous month</span>
							</div>
						</div>
					</div>
					<div class="col-xl-3 col-sm-6">
						<div class="card mg-b-20 overflow-hidden">
							<div class="card-body">
								<div>
									<h6 class="mb-1 font-weight-semibold">Total Revenue</h6>
									<h2><span>$</span>9,112</h2>
								</div>
								<span class="tx-12"><span class="tx-success tx-bold">0.7%</span> higher vs previous month</span>
							</div>
						</div>
					</div>
					<div class="col-xl-3 col-sm-6">
						<div class="card mg-b-20 overflow-hidden">
							<div class="card-body">
								<div>
									<h6 class="mb-1 font-weight-semibold">Net Profit</h6>
									<h2>56.9%</h2>
								</div>
								<span class="tx-12"><span class="tx-success tx-bold">0.7%</span> higher vs previous month</span>
							</div>
						</div>
					</div>
				</div>
				<!--/Row-->

				<!--Row-->
				<div class="row row-sm">
					<div class="col-xl-4 col-lg-5">
						<div class="card mg-b-20 mg-lg-b-0">
							<div class="card-body">
								<h6 class="card-title mb-0">Customer Balance Summary</h6>
							</div>
							<div class="card-body p-0">
								<div class="table-responsive">
									<table class="table mg-b-0">
										<tbody>
											<tr>
												<td>
													<div class="d-flex">
														<img alt="avatar" src="resources/img/users/male/1.jpg" class="mCS_img_loaded main-img-user ">
														<div class="ml-2">
															<h6 class="mg-b-0 tx-inverse">Socrates Itumay</h6>
															<small class="tx-11 tx-gray-500">Due Date: 14-12-2019</small>
														</div>
													</div>
												</td>
												<td>
													<h6 class="mg-b-0 tx-inverse">$78,907</h6>
													<small class="tx-11 tx-gray-500">Amount Due</small>
												</td>
											</tr>
											<tr>
												<td>
													<div class="d-flex">
														<img alt="avatar" src="resources/img/users/female/2.jpg" class="mCS_img_loaded main-img-user ">
														<div class="ml-2">
															<h6 class="mg-b-0 tx-inverse">Reynante Labares</h6>
															<small class="tx-11 tx-gray-500">Due Date: 24-12-2019</small>
														</div>
													</div>
												</td>
												<td>
													<h6 class="mg-b-0 tx-inverse">$81,897</h6>
													<small class="tx-11 tx-gray-500">Amount Due</small>
												</td>
											</tr>
											<tr>
												<td>
													<div class="d-flex">
														<img alt="avatar" src="resources/img/users/male/3.jpg" class="mCS_img_loaded main-img-user ">
														<div class="ml-2">
															<h6 class="mg-b-0 tx-inverse">Owen Bongcaras</h6>
															<small class="tx-11 tx-gray-500">Due Date: 28-12-2019</small>
														</div>
													</div>
												</td>
												<td>
													<h6 class="mg-b-0 tx-inverse">$78,906</h6>
													<small class="tx-11 tx-gray-500">Amount Due</small>
												</td>
											</tr>
											<tr>
												<td>
													<div class="d-flex">
														<img alt="avatar" src="resources/img/users/female/4.jpg" class="mCS_img_loaded main-img-user ">
														<div class="ml-2">
															<h6 class="mg-b-0 tx-inverse">Mariane Galeon</h6>
															<small class="tx-11 tx-gray-500">Due Date: 17-12-2019</small>
														</div>
													</div>
												</td>
												<td>
													<h6 class="mg-b-0 tx-inverse">$25,960</h6>
													<small class="tx-11 tx-gray-500">Amount Due</small>
												</td>
											</tr>
											<tr>
												<td>
													<div class="d-flex">
														<img alt="avatar" src="resources/img/users/male/5.jpg" class="mCS_img_loaded main-img-user ">
														<div class="ml-2">
															<h6 class="mg-b-0 tx-inverse">Joyce Chua</h6>
															<small class="tx-11 tx-gray-500">Due Date: 10-12-2019</small>
														</div>
													</div>
												</td>
												<td>
													<h6 class="mg-b-0 tx-inverse">$67,987</h6>
													<small class="tx-11 tx-gray-500">Amount Due</small>
												</td>
											</tr>
											<tr>
												<td>
													<div class="d-flex">
														<img alt="avatar" src="resources/img/users/female/6.jpg" class="mCS_img_loaded main-img-user ">
														<div class="ml-2">
															<h6 class="mg-b-0 tx-inverse">David jon</h6>
															<small class="tx-11 tx-gray-500">Due Date: 10-12-2019</small>
														</div>
													</div>
												</td>
												<td>
													<h6 class="mg-b-0 tx-inverse">$16,897</h6>
													<small class="tx-11 tx-gray-500">Amount Due</small>
												</td>
											</tr>
										</tbody>
									</table>
								</div>
							</div>
						</div>
					</div>
					<div class="col-xl-8 col-lg-7">
						<div class="card">
							<div class="card-body">
								<h6 class="card-title mb-4">Sales by Products</h6>
								<div class="table-responsive">
									<table class="table table-bordered mg-b-0 text-md-nowrap">
										<thead>
											<tr>
												<th>ID</th>
												<th>Product</th>
												<th>Amount</th>
												<th>%Sold</th>
											</tr>
										</thead>
										<tbody>
											<tr>
												<td>081</td>
												<td>Trimming</td>
												<td>$450</td>
												<td><i class="mdi mdi-trending-up text-success mr-1 tx-11"></i> 38.45%</td>
											</tr>
											<tr>
												<td>101</td>
												<td>Rocks</td>
												<td>$390</td>
												<td><i class="mdi mdi-trending-down text-danger mr-1"></i> 10.17%</td>
											</tr>
											<tr>
												<td>083</td>
												<td>Maintenance & Repair</td>
												<td>$4,987</td>
												<td><i class="mdi mdi-trending-up text-success mr-1"></i> 52.17%</td>
											</tr>
											<tr>
												<td>145</td>
												<td>Pest Control</td>
												<td>$690</td>
												<td><i class="mdi mdi-trending-up text-success mr-1"></i> 36.17%</td>
											</tr>
											<tr>
												<td>290</td>
												<td>Installation</td>
												<td>$125</td>
												<td><i class="mdi mdi-trending-down text-danger mr-1"></i> 42.35%</td>
											</tr>
											<tr>
												<td>309</td>
												<td>Gardening</td>
												<td>$698</td>
												<td><i class="mdi mdi-trending-up text-success mr-1"></i> 25.01%</td>
											</tr>
											<tr>
												<td>570</td>
												<td>Services</td>
												<td>$1,789</td>
												<td><i class="mdi mdi-trending-down text-danger mr-1"></i> 12.98%</td>
											</tr>
										</tbody>
									</table>
								</div>
							</div>
						</div>
					</div>
				</div>
				<!--content-->
			</div><!--Main Content Container-->
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
											<div class="main-img-user"><img alt="avatar" src="resources/img/users/female/2.jpg" class="mCS_img_loaded"></div>
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
											<div class="main-img-user"><img alt="avatar" src="resources/img/users/male/2.jpg" class="mCS_img_loaded"></div>
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
											<div class="main-img-user"><img alt="avatar" src="resources/img/users/female/3.jpg" class="mCS_img_loaded"></div>
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
											<div class="main-img-user"><img alt="avatar" src="resources/img/users/male/4.jpg" class="mCS_img_loaded"></div>
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
											<div class="main-img-user"><img alt="avatar" src="resources/img/users/female/5.jpg" class="mCS_img_loaded"></div>
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
											<div class="main-img-user"><img alt="avatar" src="resources/img/users/male/6.jpg" class="mCS_img_loaded"></div>
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
											<div class="main-img-user"><img alt="avatar" src="resources/img/users/female/7.jpg" class="mCS_img_loaded"></div>
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
											<div class="main-img-user"><img alt="avatar" src="resources/img/users/male/8.jpg" class="mCS_img_loaded"></div>
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
		<script src="resources/plugins/jquery/jquery.min.js"></script>

		<!-- Datepicker js -->
		<script src="resources/plugins/jquery-ui/ui/widgets/datepicker.js"></script>

		<!-- Bootstrap Bundle js -->
		<script src="resources/plugins/bootstrap/js/bootstrap.bundle.min.js"></script>

		<!-- Ionicons js -->
		<script src="resources/plugins/ionicons/ionicons.js"></script>

		<!-- Eva-Icons js -->
		<script src="resources/plugins/web-fonts/eva.min.js"></script>

		<!--Chart bundle min js -->
		<script src="resources/plugins/chart.js/Chart.bundle.min.js"></script>

		<!-- Flot js -->
		<script src="resources/plugins/jquery.flot/jquery.flot.js"></script>
		<script src="resources/plugins/jquery.flot/jquery.flot.pie.js"></script>
		<script src="resources/plugins/jquery.flot/jquery.flot.resize.js"></script>

		<script src="resources/plugins/chart.js/Chart.bundle.min.js"></script>
		<script src="resources/plugins/peity/jquery.peity.min.js"></script>

		<!-- JQuery sparkline js -->
		<script src="resources/plugins/jquery-sparkline/jquery.sparkline.min.js"></script>

		<!-- Sampledata js -->
		<script src="resources/js/chart.flot.sampledata.js"></script>

		<!-- Moment js -->
		<script src="resources/plugins/moment/moment.js"></script>

		<!-- select2.min js -->
		<script src="resources/plugins/select2/js/select2.min.js"></script>
		<script src="resources/js/select2.js"></script>

		<!--Bootstrap-daterangepicker js-->
		<script src="resources/plugins/bootstrap-daterangepicker/daterangepicker.js"></script>

		<!-- Sidebar js -->
		<script src="resources/plugins/sidebar/sidebar.js"></script>
		<script src="resources/plugins/sidebar/sidebar-custom.js"></script>

		<!-- Custom Scroll bar Js-->
		<script src="resources/plugins/mscrollbar/jquery.mCustomScrollbar.concat.min.js"></script>

		<!-- Vector map js -->
		<script src="resources/plugins/jqvmap/jquery.vmap.min.js"></script>
		<script src="resources/plugins/jqvmap/maps/jquery.vmap.world.js"></script>

		<!-- Vector map Sampledata js -->
		<script src="resources/js/jquery.vmap.sampledata.js"></script>

		<!-- Horizontal-Menu JS-->
		<script src="resources/plugins/horizontal-menu/horizontal-menu.js"></script>

		<!-- Perfect-scrollbar js -->
		<script src="resources/plugins/perfect-scrollbar/perfect-scrollbar.min.js"></script>

		<script src="resources/plugins/ionicons/ionicons.js"></script>

		<script src="resources/plugins/lightslider/js/lightslider.min.js"></script>

		<!-- Custom js -->
		<script src="resources/js/custom.js"></script>
		<script src="resources/js/chart.flot.sampledata.js"></script>
		<script src="resources/js/dashboard.sampledata.js"></script>

		<!-- Morris js -->
		<script src="resources/plugins/raphael/raphael.min.js"></script>
		<script src="resources/plugins/morris.js/morris.min.js"></script>

		<!-- Vector map Sampledata js -->
		<script src="resources/js/jquery.vmap.sampledata.js"></script>

		<!-- index js -->
		<script src="resources/js/index3.js"></script>

	</body>
</html>