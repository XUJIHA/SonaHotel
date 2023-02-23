<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
<%@ taglib uri="http://java.sun.com/jsp/jstl/core" prefix="c"%>
<%@ taglib prefix="fmt" uri="http://java.sun.com/jsp/jstl/fmt" %>
<!DOCTYPE html>
<html lang="en">
<head>
	
	<!-- start: Meta -->
	<meta charset="utf-8">
	<title>Bootstrap Metro Dashboard by Dennis Ji for ARM demo</title>
	<meta name="description" content="Bootstrap Metro Dashboard">
	<meta name="author" content="Dennis Ji">
	<meta name="keyword" content="Metro, Metro UI, Dashboard, Bootstrap, Admin, Template, Theme, Responsive, Fluid, Retina">
	<!-- end: Meta -->
	
	<!-- start: Mobile Specific -->
	<meta name="viewport" content="width=device-width, initial-scale=1">
	<!-- end: Mobile Specific -->
	
	<!-- start: CSS -->
	<link id="bootstrap-style" href="/css2/bootstrap.min.css" rel="stylesheet">
	<link href="/css2/bootstrap-responsive.min.css" rel="stylesheet">
	<link id="base-style" href="/css2/style.css" rel="stylesheet">
	<link id="base-style-responsive" href="/css2/style-responsive.css" rel="stylesheet">
	<link href='http://fonts.googleapis.com/css?family=Open+Sans:300italic,400italic,600italic,700italic,800italic,400,300,600,700,800&subset=latin,cyrillic-ext,latin-ext' rel='stylesheet' type='text/css'>
	<!-- end: CSS -->
	

	<!-- The HTML5 shim, for IE6-8 support of HTML5 elements -->
	<!--[if lt IE 9]>
	  	<script src="http://html5shim.googlecode.com/svn/trunk/html5.js"></script>
		<link id="ie-style" href="/css2/ie.css" rel="stylesheet">
	<![endif]-->
	
	<!--[if IE 9]>
		<link id="ie9style" href="/css2/ie9.css" rel="stylesheet">
	<![endif]-->
		
	<!-- start: Favicon -->
	<link rel="shortcut icon" href="/img2/favicon.ico">
	<!-- end: Favicon -->
	
	<link href="https://cdn.datatables.net/1.13.2/css/jquery.dataTables.min.css" rel="stylesheet">
	
	<style type="text/css">
	
		#couponTable tr:hover{

			background-color: #DFE7F2;
			color: #000000;
		}
		
		#selector1.className{
   			display:none;
		}
		
/* 		#container{ */
/* 			width: 600px; */
/* 		} */
	</style>
		
</head>

<body>
		<!-- start: Header -->
	<div class="navbar">
		<div class="navbar-inner">
			<div class="container-fluid">
				<a class="btn btn-navbar" data-toggle="collapse" data-target=".top-nav.nav-collapse,.sidebar-nav.nav-collapse">
					<span class="icon-bar"></span>
					<span class="icon-bar"></span>
					<span class="icon-bar"></span>
				</a>
				<a class="brand" href="/login/welcome"><span>SONA</span></a>
								
				<!-- start: Header Menu -->
				<div class="nav-no-collapse header-nav">
					<ul class="nav pull-right">
						<li class="dropdown hidden-phone">
							<a class="btn dropdown-toggle" data-toggle="dropdown" href="#">
								<i class="icon-bell"></i>
								<span class="badge red">
								7 </span>
							</a>
							<ul class="dropdown-menu notifications">
								<li class="dropdown-menu-title">
 									<span>You have 11 notifications</span>
									<a href="#refresh"><i class="icon-repeat"></i></a>
								</li>	
                            	<li>
                                    <a href="#">
										<span class="icon blue"><i class="icon-user"></i></span>
										<span class="message">New user registration</span>
										<span class="time">1 min</span> 
                                    </a>
                                </li>
								<li>
                                    <a href="#">
										<span class="icon green"><i class="icon-comment-alt"></i></span>
										<span class="message">New comment</span>
										<span class="time">7 min</span> 
                                    </a>
                                </li>
								<li>
                                    <a href="#">
										<span class="icon green"><i class="icon-comment-alt"></i></span>
										<span class="message">New comment</span>
										<span class="time">8 min</span> 
                                    </a>
                                </li>
								<li>
                                    <a href="#">
										<span class="icon green"><i class="icon-comment-alt"></i></span>
										<span class="message">New comment</span>
										<span class="time">16 min</span> 
                                    </a>
                                </li>
								<li>
                                    <a href="#">
										<span class="icon blue"><i class="icon-user"></i></span>
										<span class="message">New user registration</span>
										<span class="time">36 min</span> 
                                    </a>
                                </li>
								<li>
                                    <a href="#">
										<span class="icon yellow"><i class="icon-shopping-cart"></i></span>
										<span class="message">2 items sold</span>
										<span class="time">1 hour</span> 
                                    </a>
                                </li>
								<li class="warning">
                                    <a href="#">
										<span class="icon red"><i class="icon-user"></i></span>
										<span class="message">User deleted account</span>
										<span class="time">2 hour</span> 
                                    </a>
                                </li>
								<li class="warning">
                                    <a href="#">
										<span class="icon red"><i class="icon-shopping-cart"></i></span>
										<span class="message">New comment</span>
										<span class="time">6 hour</span> 
                                    </a>
                                </li>
								<li>
                                    <a href="#">
										<span class="icon green"><i class="icon-comment-alt"></i></span>
										<span class="message">New comment</span>
										<span class="time">yesterday</span> 
                                    </a>
                                </li>
								<li>
                                    <a href="#">
										<span class="icon blue"><i class="icon-user"></i></span>
										<span class="message">New user registration</span>
										<span class="time">yesterday</span> 
                                    </a>
                                </li>
                                <li class="dropdown-menu-sub-footer">
                            		<a>View all notifications</a>
								</li>	
							</ul>
						</li>
						<!-- start: Notifications Dropdown -->
						<li class="dropdown hidden-phone">
							<a class="btn dropdown-toggle" data-toggle="dropdown" href="#">
								<i class="icon-calendar"></i>
								<span class="badge red">
								5 </span>
							</a>
							<ul class="dropdown-menu tasks">
								<li class="dropdown-menu-title">
 									<span>You have 17 tasks in progress</span>
									<a href="#refresh"><i class="icon-repeat"></i></a>
								</li>
								<li>
                                    <a href="#">
										<span class="header">
											<span class="title">iOS Development</span>
											<span class="percent"></span>
										</span>
                                        <div class="taskProgress progressSlim red">80</div> 
                                    </a>
                                </li>
                                <li>
                                    <a href="#">
										<span class="header">
											<span class="title">Android Development</span>
											<span class="percent"></span>
										</span>
                                        <div class="taskProgress progressSlim green">47</div> 
                                    </a>
                                </li>
                                <li>
                                    <a href="#">
										<span class="header">
											<span class="title">ARM Development</span>
											<span class="percent"></span>
										</span>
                                        <div class="taskProgress progressSlim yellow">32</div> 
                                    </a>
                                </li>
								<li>
                                    <a href="#">
										<span class="header">
											<span class="title">ARM Development</span>
											<span class="percent"></span>
										</span>
                                        <div class="taskProgress progressSlim greenLight">63</div> 
                                    </a>
                                </li>
                                <li>
                                    <a href="#">
										<span class="header">
											<span class="title">ARM Development</span>
											<span class="percent"></span>
										</span>
                                        <div class="taskProgress progressSlim orange">80</div> 
                                    </a>
                                </li>
								<li>
                            		<a class="dropdown-menu-sub-footer">View all tasks</a>
								</li>	
							</ul>
						</li>
						<!-- end: Notifications Dropdown -->
						<!-- start: Message Dropdown -->
						<li class="dropdown hidden-phone">
							<a class="btn dropdown-toggle" data-toggle="dropdown" href="#">
								<i class="icon-envelope"></i>
								<span class="badge red">
								4 </span>
							</a>
							<ul class="dropdown-menu messages">
								<li class="dropdown-menu-title">
 									<span>You have 9 messages</span>
									<a href="#refresh"><i class="icon-repeat"></i></a>
								</li>	
                            	<li>
                                    <a href="#">
										<span class="avatar"><img src="/img2/avatar.jpg" alt="Avatar"></span>
										<span class="header">
											<span class="from">
										    	Dennis Ji
										     </span>
											<span class="time">
										    	6 min
										    </span>
										</span>
                                        <span class="message">
                                            Lorem ipsum dolor sit amet consectetur adipiscing elit, et al commore
                                        </span>  
                                    </a>
                                </li>
                                <li>
                                    <a href="#">
										<span class="avatar"><img src="/img2/avatar.jpg" alt="Avatar"></span>
										<span class="header">
											<span class="from">
										    	Dennis Ji
										     </span>
											<span class="time">
										    	56 min
										    </span>
										</span>
                                        <span class="message">
                                            Lorem ipsum dolor sit amet consectetur adipiscing elit, et al commore
                                        </span>  
                                    </a>
                                </li>
                                <li>
                                    <a href="#">
										<span class="avatar"><img src="/img2/avatar.jpg" alt="Avatar"></span>
										<span class="header">
											<span class="from">
										    	Dennis Ji
										     </span>
											<span class="time">
										    	3 hours
										    </span>
										</span>
                                        <span class="message">
                                            Lorem ipsum dolor sit amet consectetur adipiscing elit, et al commore
                                        </span>  
                                    </a>
                                </li>
								<li>
                                    <a href="#">
										<span class="avatar"><img src="/img2/avatar.jpg" alt="Avatar"></span>
										<span class="header">
											<span class="from">
										    	Dennis Ji
										     </span>
											<span class="time">
										    	yesterday
										    </span>
										</span>
                                        <span class="message">
                                            Lorem ipsum dolor sit amet consectetur adipiscing elit, et al commore
                                        </span>  
                                    </a>
                                </li>
                                <li>
                                    <a href="#">
										<span class="avatar"><img src="/img2/avatar.jpg" alt="Avatar"></span>
										<span class="header">
											<span class="from">
										    	Dennis Ji
										     </span>
											<span class="time">
										    	Jul 25, 2012
										    </span>
										</span>
                                        <span class="message">
                                            Lorem ipsum dolor sit amet consectetur adipiscing elit, et al commore
                                        </span>  
                                    </a>
                                </li>
								<li>
                            		<a class="dropdown-menu-sub-footer">View all messages</a>
								</li>	
							</ul>
						</li>
						
						<!-- start: User Dropdown -->
                        <li class="dropdown">
                            <a class="btn dropdown-toggle" data-toggle="dropdown" href="#">
                                <i class="halflings-icon white user"></i> Admin
                                <span class="caret"></span>
                            </a>
                            <ul class="dropdown-menu">
                                <li class="dropdown-menu-title">
                                     <span>Account Settings</span>
                                </li>
                                <li><a href="/logout"><i class="halflings-icon off"></i> Logout</a></li>
                            </ul>
                        </li>
                        <!-- end: User Dropdown -->
					</ul>
				</div>
				<!-- end: Header Menu -->
				
			</div>
		</div>
	</div>
	<!-- start: Header -->
	<div class="container-fluid-full">
		<div class="row-fluid">

			<!-- start: Main Menu -->
			<div id="sidebar-left" class="span2" style="font-size:20px">
				<div class="nav-collapse sidebar-nav">
					<ul class="nav nav-tabs nav-stacked main-menu">
						<li><a href="/admin/backgroundIndex.controller"><span style="font-size:20px"class="hidden-tablet"><i style="margin-left:1px;margin-right:10px"class="icon-bar-chart"></i>後台首頁</span></a></li>
						<li><a href="/admin/searchAllMember.controller"><span style="font-size:20px" class="hidden-tablet"><i style="margin-right:6px"class="fa-solid fa-user-gear"></i> 會員管理</span></a></li>
						<li><a href="/admin/showallroom.admin.controller"><span style="font-size:20px" class="hidden-tablet"> <i style="margin-left:1px;margin-right:10px"class="fa-solid fa-bed"></i>房型管理</span></a></li>
                        <li><a class="dropmenu" href="#"><span style="font-size:20px" class="hidden-tablet"><i style="margin-left:3px;margin-right:14px"class="fa-solid fa-barcode"></i>折價券</span></a>
                            <ul>
                                <li><a class="submenu" href="/admin/showallcoupons.controller"><span style="font-size:20px" class="hidden-tablet"><i style="margin-left:1px;margin-right:10px"class="icon-file-alt"></i>票券管理</span></a></li>
                                <li><a class="submenu" href="showallcouponusers.controller"><span style="font-size:20px" class="hidden-tablet"><i style="margin-left:1px;margin-right:10px"class="icon-file-alt"></i>批量寄送</span></a></li>
                            </ul>
                        </li>
						<li><a class="dropmenu"><span style="font-size:20px" class="hidden-tablet"><i style="margin-right:12px" class="icon-shopping-cart"></i>訂單系統</span></a>
                            <ul>
                                <li><a class="submenu" href="/admin/searchorder.controller"><span  style="font-size:20px"class="hidden-tablet"><i style="margin-left:4px;margin-right:15px"class="fa-solid fa-database"></i>訂單管理</span></a></li>
                                <li><a class="submenu" href="/admin/orderchart.controller"><span style="font-size:20px" class="hidden-tablet"><i style="margin-left:4px;margin-right:13px"class="fa-solid fa-chart-line"></i>訂單分析</span></a></li>
                            </ul>
                        </li>
						<li><a class="dropmenu"><span style="font-size:20px" class="hidden-tablet"><i style="margin-right:12px"class="icon-gift"></i>伴手禮系統</span></a>
			                 <ul>
				              	<li><a class="submenu" href="/admin/maintaingift.controller"><span style="font-size:20px" class="hidden-tablet"><i style="margin-left:4px;margin-right:15px"class="fa-solid fa-database"></i>伴手禮管理</span></a></li>
						        <li><a class="submenu" href="/admin/giftorder.controller"><span style="font-size:20px" class="hidden-tablet"><i style="margin-left:4px;margin-right:15px"class="fa-solid fa-database"></i>訂單管理</span></a></li>
						     </ul>
						</li>
						<li><a class="dropmenu"><span style="font-size:20px"class="hidden-tablet"><i style="margin-right:12px" class="icon-flag"></i>景點系統</span></a>
                            <ul>
                                <li><a class="submenu" href="searchattractions"><span style="font-size:20px" class="hidden-tablet"><i style="margin-left:1px;margin-right:10px" class="icon-file-alt"></i>景點管理</span></a></li>
                                <li><a class="submenu" href="searchitinerary"><span style="font-size:20px" class="hidden-tablet"><i style="margin-left:1px;margin-right:10px" class="icon-file-alt"></i>行程管理</span></a></li>
                                <li><a class="submenu" href="attractionschart"><span style="font-size:20px" class="hidden-tablet"><i style="margin-left:1px;margin-right:10px" class="icon-file-alt"></i>景點分析</span></a></li>
                            </ul>
                        </li> 
						<li><a class="dropmenu"><span style="font-size:20px" class="hidden-tablet"><i style="margin-left:3px;margin-right:16px "class="fa-solid fa-utensils"></i>餐飲系統</span></a>
							<ul>
								<li><a class="submenu" href="<c:url value='/admin/BackUserController'/>"><span style="font-size:20px" class="hidden-tablet"><i style="margin-left:1px;margin-right:11px "class="icon-file-alt"></i>餐飲管理</span></a></li>
								<li><a class="submenu" href="<c:url value='/admin/BackUserArrangepage'/>"><span style="font-size:20px" class="hidden-tablet"><i style="margin-left:1px;margin-right:11px "class="icon-file-alt"></i>訂單管理</span></a></li>
							</ul>
						</li>
					</ul>
				</div>
			</div>
			<!-- end: Main Menu -->
			
			<noscript>
				<div class="alert alert-block span10">
					<h4 class="alert-heading">Warning!</h4>
					<p>You need to have <a href="http://en.wikipedia.org/wiki/JavaScript" target="_blank">JavaScript</a> enabled to use this site.</p>
				</div>
			</noscript>
			
			<!-- start: Content -->
			<div id="content" class="span10">
			
			
			<ul class="breadcrumb">
				<li>
					<i class="icon-home"></i>
					<a href="index.html">Home</a> 
					<i class="icon-angle-right"></i>
				</li>
				<li><a href="#">Tables</a></li>
			</ul>
			
					
				<div class="box span12" style="margin: auto;">
					<div class="box-header" data-original-title>
						<h2><i class="halflings-icon white user"></i><span class="break"></span>批量寄送</h2>
						<div class="box-icon">
							<a href="#" class="btn-setting"><i class="halflings-icon white wrench"></i></a>
							<a href="#" class="btn-minimize"><i class="halflings-icon white chevron-up"></i></a>
							<a href="#" class="btn-close"><i class="halflings-icon white remove"></i></a>
						</div>
					</div>
					
					<div style="display:flex; padding-top: 20px">
					<div style="display:row; width:30%; margin-left: 50px; padding-bottom: 1px">
						<div style="display: inline-flex; padding: 7px; padding-top: 0">
								<label style="line-height: 27px">票券類型:</label>&nbsp;
								<select id="selector1" name="selectType" style="width: 220px">
									<option value="" selected>請選擇</option>
									<option value="金額">金額</option>
									<option value="百分比">百分比</option>
								</select>
						</div>
						<div style="display: inline-flex; padding: 7px">
								<label style="line-height: 27px">票券價值:</label>&nbsp;
								<select id="selector2" name="selectValue" style="width: 220px" disabled>
									<option value="">請選擇票券類型</option>
								</select>
						</div>
						<div style="display: inline-flex; padding: 7px">
								<label style="line-height: 27px">票券名稱:</label>&nbsp;
								<input id="couponName" name="couponName" type="text" style="width: 207px">&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;
						</div>
						<div style="display: inline-flex; padding: 7px">
								<label style="line-height: 27px">有效日期:</label>&nbsp;
								<input id="expiryDate" name="expiryDate" type="date">
						</div>
						<div style="display: inline-flex; padding: 7px">
								<label style="line-height: 27px">主題樣式:</label>&nbsp;
								<select id="selector3" name="selectValue" style="width: 220px">
									<option value="empty" selected>自訂主題</option>
									<option value="normal">一般主題</option>
									<option value="birthday">生日主題</option>
								</select>
						</div>
					</div><br>
					
					<div style="width:70%;">
							<div style="display: inline-flex; padding-bottom: 10px">
									<label style="line-height: 27px">信件主旨: </label>&nbsp;&nbsp;
									<input id="subject" name="subject" type="text" style="width: 491px">&nbsp;&nbsp;&nbsp;&nbsp;
									<button id="sendbtn" class="btn btn-small btn-primary" style="height: 30px"><i class="halflings-icon plus-sign"></i><b>批量發送</b></button>&nbsp;&nbsp;
									<button id="sendallbtn" class="btn btn-small btn-primary" style="height: 30px"><i class="halflings-icon plus-sign"></i><b>全部發送</b></button>
							</div>
						<div id="container">
							<textarea id="editor1" name="editor1" style="width: 300px"></textarea>
						</div>
					</div>
						<div style="padding-top: 200px; padding-right: 60px; float: left;">
							<button id="oneClick1" style="width: 80px">自訂輸入</button>&nbsp;&nbsp;&nbsp;
							<button id="oneClick2" style="width: 80px">生日輸入</button>
						</div>
								</div>
								
			
			<div class="box-content">
						<table id="couponTable" style="width: 100%; table-layout: auto">
						  <thead>
							  <tr>
								  <th style="text-align: center">
								  	<input type="checkbox" id="selectAll" value="">全選
								  </th>
								  <th style="text-align: center">會員編號</th>
								  <th style="text-align: center">會員名稱</th>
								  <th style="text-align: center">會員生日</th>
								  <th style="text-align: center">E-mail</th>
								  <th style="text-align: center">成為會員天數</th>
								  <th style="text-align: center">訂房消費總額</th>
								  <th style="text-align: center">禮品消費總額</th>
								  <th style="text-align: center">總消費金額</th>
<!-- 								  <th style="text-align: center">編輯</th> -->
							  </tr>
						  </thead>   
						  <tbody>
						  <c:forEach var="user" items="${users}" varStatus="status">
							<tr>
								<!-- 			label class 		-->
								<!-- "label"					gray -->
								<!-- "label label-success"		green -->
								<!-- "label label-warning"		yellow -->
								<!-- "label label-important"	red -->
								<td style="vertical-align: middle; text-align: center;">
									<input type="checkbox" class="checker2" name="" value="${user.userEmail}">
								</td>
								<td style="vertical-align: middle; text-align: center;">${user.userId}</td>
								<td style="vertical-align: middle; text-align: center;">${user.userName}</td>
								<td style="vertical-align: middle; text-align: center;"><fmt:formatDate pattern="yyyy-MM-dd" value="${user.userBirthday}"/></td>
								<td style="vertical-align: middle; text-align: center;">${user.userEmail}</td>
								<td style="vertical-align: middle; text-align: center;">${user.daysFromRegist}</td>
								<td style="vertical-align: middle; text-align: center;">${user.userRoomOrderTotal} 元</td>
								<td style="vertical-align: middle; text-align: center;">${user.userGiftOrderTotal} 元</td>
								<td style="vertical-align: middle; text-align: center;">${user.totalSpend} 元</td>
<!-- 								<td style="vertical-align: middle; text-align: center;"> -->
<!-- 									<div style="display: inline-flex;"> -->
<!-- 											<a id="updateItem123" class="btn btn-info" href="#"> -->
<!-- 												<i class="halflings-icon white edit"></i>   -->
<!-- 											</a> -->
<%-- 												<input type="hidden" name="cindex" value="${status.index}"> --%>
<!-- 											&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp; -->
<!-- 											<a id="deleteItem" class="btn btn-danger" href="#"> -->
<!-- 												<i class="halflings-icon white trash"></i>  -->
<!-- 											</a> -->
<%-- 												<input type="hidden" name="couponId" value="${coupon.couponId}"> --%>
<%-- 											<input type="hidden" name="roomId" value="${bean.roomId}"> --%>
<!-- 									</div> -->
<!-- 								</td> -->
							</tr>
							</c:forEach>
						  </tbody>
					  </table>         
					  
					</div>


	</div><!--/.fluid-container-->
	
			<!-- end: Content -->
		</div><!--/#content.span10-->
		</div><!--/fluid-row-->
		</div>
	</div>
	<div class="modal hide fade" id="myModal">
		<div class="modal-header">
			<button type="button" class="close" data-dismiss="modal">×</button>
			<h3>Settings</h3>
		</div>
		<div class="modal-body">
			<p>Here settings can be configured...</p>
		</div>
		<div class="modal-footer">
			<a href="#" class="btn" data-dismiss="modal">Close</a>
			<a href="#" class="btn btn-primary">Save changes</a>
		</div>
	</div>
	<div class="common-modal modal fade" id="common-Modal1" tabindex="-1" role="dialog" aria-hidden="true">
		<div class="modal-content">
			<ul class="list-inline item-details">
				<li><a href="#">Admin templates</a></li>
				<li><a href="http://themescloud.org">Bootstrap themes</a></li>
			</ul>
		</div>
	</div>
	<div class="clearfix"></div>
	
	<footer>

		<p>
			<span style="text-align: left; float: left">&copy; 2023 &nbsp;<a
				href="/admin/backgroundIndex.controller"
				alt="Bootstrap_Metro_Dashboard">Sona Hotel</a></span>

		</p>

	</footer>
	
	<!-- start: JavaScript-->

		<script src="/js2/jquery-1.9.1.min.js"></script>
	<script src="/js2/jquery-migrate-1.0.0.min.js"></script>
	
		<script src="/js2/jquery-ui-1.10.0.custom.min.js"></script>
	
		<script src="/js2/jquery.ui.touch-punch.js"></script>
	
		<script src="/js2/modernizr.js"></script>
	
		<script src="/js2/bootstrap.min.js"></script>
	
		<script src="/js2/jquery.cookie.js"></script>
	
		<script src='/js2/fullcalendar.min.js'></script>
	
		<script src='/js2/jquery.dataTables.min.js'></script>

		<script src="/js2/excanvas.js"></script>
	<script src="/js2/jquery.flot.js"></script>
	<script src="/js2/jquery.flot.pie.js"></script>
	<script src="/js2/jquery.flot.stack.js"></script>
	<script src="/js2/jquery.flot.resize.min.js"></script>
	
		<script src="/js2/jquery.chosen.min.js"></script>
	
		<script src="/js2/jquery.uniform.min.js"></script>
		
		<script src="/js2/jquery.cleditor.min.js"></script>
	
		<script src="/js2/jquery.noty.js"></script>
	
		<script src="/js2/jquery.elfinder.min.js"></script>
	
		<script src="/js2/jquery.raty.min.js"></script>
	
		<script src="/js2/jquery.iphone.toggle.js"></script>
	
		<script src="/js2/jquery.uploadify-3.1.min.js"></script>
	
		<script src="/js2/jquery.gritter.min.js"></script>
	
		<script src="/js2/jquery.imagesloaded.js"></script>
	
		<script src="/js2/jquery.masonry.min.js"></script>
	
		<script src="/js2/jquery.knob.modified.js"></script>
	
		<script src="/js2/jquery.sparkline.min.js"></script>
	
		<script src="/js2/counter.js"></script>
	
		<script src="/js2/retina.js"></script>

		<script src="/js2/custom.js"></script>
		
		<script src="https://cdn.jsdelivr.net/npm/sweetalert2@11"></script>
		
		<script src="https://cdn.ckeditor.com/4.20.1/standard/ckeditor.js"></script>
		
		<script src="https://cdn.datatables.net/1.13.2/js/jquery.dataTables.min.js"></script>
		
<!-- 		icon -->
		<script src="https://kit.fontawesome.com/27e0c99202.js"></script>
	<!-- end: JavaScript-->
	
		<script type="text/javascript">
		
// 	$('.checker').attr('class').change(function(){
		
// 		console.log($(this).find('input').val());
		
// 	})
// 	$(function(){
// 		if()
// 	})
// 	全選checkbox
	$(function() {
// 		$('#selectAll').click(function() {
			$('body').on('click','#selectAll',function(e){
			  console.log("testcheckbox======================")
			  if($(this).parent().attr('class') == ''){
					$('.checker').find('span').attr('class','');
			  } else {
			  		$('.checker').find('span').attr('class','checked');
			  }
			  
			  if ($("input[type='checkbox']:checked").length > 0) {
			        $("#deleteDiv").show();
			      } else {
			        $("#deleteDiv").hide();
			      }
			  
			  console.log('checkbox value:')
			  $('.checker2').each(function(){
				  console.log($(this).val());
			  })
		  });
		 

		  $('.checker2').click(function() {
			  console.log("=====================");
		    if ($(this).parent().attr('class') != 'checked') {
		      $('#selectAll').parent().attr('class','');
		    }
		    
		    if ($("input[type='checkbox']:checked").length > 0) {
		        $("#deleteDiv").show();
		      } else {
		        $("#deleteDiv").hide();
		      }
		    
		  });
		});
		
		
	</script>
	
	<script type="text/javascript">
	
	$('.btn.btn-info').click(function(e) {
		  e.preventDefault();
		  $(this).siblings('form').submit();
		});
	
	</script>
	<script type="text/javascript">
	
	$('#insertbtn').click(function(e) {
		  e.preventDefault();
		  $(this).parent('form').submit();
		});
	
	</script>
	
	<script type="text/javascript">
	$(function(){
        $('body').on('click','#deleteItem',function(e){
        	e.preventDefault();
            let id = $(this).siblings('input').val();
            console.log(id);
            
            Swal.fire({
              title: '確定要刪除 ?',
              text: "物件將永久被刪除 !",
              icon: 'warning',
              showCancelButton: true,
              cancelButtonText: '取消',
              confirmButtonColor: '#3085d6',
              cancelButtonColor: '#d33',
              confirmButtonText: '確定刪除'
            }).then((result) => {
                if (result.isConfirmed) {
                    $.ajax({
                      url:'/admin/deletecoupon.controller',
                      method:"post",
                      dataType:"text",
                      data: {"couponId":id},
                    })
                        .done(function () {
                            location.reload();
                            console.log("delete")
                         })//done
                         .fail(function(error) {
                             console.log(error)
                         })//fail end
                }//if
              })//then

          })//click end
          
    });
    //function end
    
    $(function(){
        $('#sendbtn').on('click',function(e){
        	e.preventDefault();
        	
        	var checker2Values = [];
			var couponType = $('#selector1').val();
			var couponValue = $('#selector2').val();
			var couponName = $('#couponName').val();
			var expiryDate = $('#expiryDate').val();
			var subject = $('#subject').val();
			var editorData = CKEDITOR.instances["editor1"].getData();
		    var mailTheme = $('#selector3').val();
	        	$('.checker2').each(function(){
	        		if ($(this).parent().attr('class') == 'checked'){
		        	  checker2Values.push($(this).val());
	        		}
	        	});
			console.log('=============================' + subject);
			console.log('=============================' + editorData);
			console.log(checker2Values);
			console.log(couponType);
			console.log(couponValue);
			console.log(couponName);
			console.log(expiryDate);
			console.log(mailTheme);
			
			if(couponType == "" || couponName == "" || expiryDate == ""){
				
				Swal.fire({
		              title: '請設定折價券屬性 !',
		              text: '請設定折價券屬性 !',
		              icon: 'error',
		              confirmButtonColor: '#3085d6',
		              confirmButtonText: '確定'
		            });
				
			} else if(Date.parse(expiryDate) < new Date()) {
				
				Swal.fire({
		              title: '效期不能小於今天 !',
		              text: '請重新設定票券有效日期 !',
		              icon: 'error',
		              confirmButtonColor: '#3085d6',
		              confirmButtonText: '確定'
		            });
				
			} else if(subject == "" || editorData == "") {
				
				Swal.fire({
		              title: '未填寫信件主旨或內容 !',
		              text: '信件主旨和內容不可留空 !',
		              icon: 'error',
		              confirmButtonColor: '#3085d6',
		              confirmButtonText: '確定'
		            });
				
			} else if(checker2Values.length == 0) {
				
				Swal.fire({
		              title: '尚未選擇收件人 !',
		              text: '請選擇至少 1 位收件人 !',
		              icon: 'error',
		              confirmButtonColor: '#3085d6',
		              confirmButtonText: '確定'
		            });
				
			} else {
			
	            console.log(checker2Values);
	            Swal.fire({
	              title: '確定要發送 ?',
	              text: "信件寄出後無法收回 !",
	              icon: 'warning',
	              showCancelButton: true,
	              cancelButtonText: '取消',
	              confirmButtonColor: '#3085d6',
	              cancelButtonColor: '#d33',
	              confirmButtonText: '確定發送'
	            }).then((result) => {
	                if (result.isConfirmed) {
	                    $.ajax({
	                      url:'/admin/sendcoupons.controller',
	                      method:"post",
	                      contentType: "application/json; charset=utf-8",
	                      data: JSON.stringify({
	                    	  'checker2Values': checker2Values,
	                    	  'couponType': couponType,
	                    	  'couponValue': couponValue,
	                    	  'couponName': couponName,
	                    	  'expiryDate': expiryDate,
	                    	  'subject': subject,
	                    	  'editorData': editorData,
	                    	  'mailTheme': mailTheme
	                      })
	                    })
	                        .done(function () {
	                        	Swal.fire({
	  				              title: '信件成功送出 !',
	  				              icon: 'success',
	  				              showCancelButton: false,
	  				              confirmButtonColor: '#3085d6',
	  				              confirmButtonText: '確定'
	  				            }).then((result) => {
	          						if(result.isConfirmed){
			                            location.reload();
	          						}
	          					});
	                         })//done
	                         .fail(function(error) {
	                             console.log(error)
	                         })//fail end
	                }//if
	              })//then
			}
          })//click end
    });
    
    
    $(function(){
        $('#sendallbtn').on('click',function(e){
        	e.preventDefault();
        	
			var couponType = $('#selector1').val();
			var couponValue = $('#selector2').val();
			var couponName = $('#couponName').val();
			var expiryDate = $('#expiryDate').val();
			var subject = $('#subject').val();
			var editorData = CKEDITOR.instances["editor1"].getData();
			var mailTheme = $('#selector3').val();
		    
			console.log('=============================' + subject);
			console.log('=============================' + editorData);
			console.log(couponType);
			console.log(couponValue);
			console.log(couponName);
			console.log(expiryDate);
			
			if(couponType == "" || couponName == "" || expiryDate == ""){
				
				Swal.fire({
		              title: '請設定折價券屬性 !',
		              text: '請設定折價券屬性 !',
		              icon: 'error',
		              confirmButtonColor: '#3085d6',
		              confirmButtonText: '確定'
		            });
				
			} else if(Date.parse(expiryDate) < new Date()) {
				
				Swal.fire({
		              title: '效期不能小於今天 !',
		              text: '請重新設定票券有效日期 !',
		              icon: 'error',
		              confirmButtonColor: '#3085d6',
		              confirmButtonText: '確定'
		            });
				
			} else if(subject == "" || editorData == "") {
				
				Swal.fire({
		              title: '未填寫信件主旨或內容 !',
		              text: '信件主旨和內容不可留空 !',
		              icon: 'error',
		              confirmButtonColor: '#3085d6',
		              confirmButtonText: '確定'
		            });
				
			} else {
			
	            Swal.fire({
	              title: '確定要發送給所有會員 ?',
	              text: "信件寄出後無法收回 !",
	              icon: 'warning',
	              showCancelButton: true,
	              cancelButtonText: '取消',
	              confirmButtonColor: '#3085d6',
	              cancelButtonColor: '#d33',
	              confirmButtonText: '確定發送'
	            }).then((result) => {
	                if (result.isConfirmed) {
	                    $.ajax({
	                      url:'/admin/sendcouponsforall.controller',
	                      method:"post",
	                      contentType: "application/json; charset=utf-8",
	                      data: JSON.stringify({
	                    	  'couponType': couponType,
	                    	  'couponValue': couponValue,
	                    	  'couponName': couponName,
	                    	  'expiryDate': expiryDate,
	                    	  'subject': subject,
	                    	  'editorData': editorData,
	                    	  'mailTheme': mailTheme
	                      })
	                    }).done(function () {
	                        	Swal.fire({
		  				              title: '信件成功送出 !',
		  				              icon: 'success',
		  				              showCancelButton: false,
		  				              confirmButtonColor: '#3085d6',
		  				              confirmButtonText: '確定'
		  				            }).then((result) => {
		          						if(result.isConfirmed){
				                            location.reload();
		          						}
		          					});
	                         })//done
	                         .fail(function(error) {
	                             console.log(error)
	                         })//fail end
	                }//if
	              })//then
			}
          })//click end
    });
</script>

<script type="text/javascript">
    $(function(){
    	$('body').on('click','.btn.btn-info',function(e){
        	e.preventDefault();
        	let cindex = $(this).siblings('input').val();
        	console.log(cindex);
            let id = $('#tdid-' + cindex).text();
            console.log(id);
            let status = $('#tdstatus-' + cindex).text();
            console.log(status);
            $.ajax({
	            url:'/admin/updatecouponstatus.controller',
	            method:"post",
	            dataType:"text",
	            data: {
	            	"couponId":id,
	            	"couponStatus":status
	            },
	            success: function(response) {
	            	$('#tdstatus-' + cindex).text(response);
	            }
	        });
	   	});
	 });
</script>                      

	
	<script type="text/javascript">
	
		$(document).ready( function () {
    		$('#couponTable').DataTable({
    			"ordering": false,
    			"language": {
    				"url": "//cdn.datatables.net/plug-ins/1.13.2/i18n/zh-HANT.json"
    			}
     		});
    		var editor1 = CKEDITOR.replace( 'editor1' , {
    			width: 760,
    			height: 110
    		});
    	});
	</script>
	
	<script type="text/javascript">
		$(document).ready(function() {
			  $("#selector1").change(function() {
			    var selectedOption = $(this).val();
			    if (selectedOption === "") {
			      $("#selector2").html("請選擇票券類型").attr("disabled", true);
			    } else if (selectedOption === "金額") {
			      $("#selector2").html("<option value='50'>50 元</option><option value='100'>100 元</option>"
			      					  +"<option value='150'>150 元</option><option value='200'>200 元</option>"
			      					  +"<option value='250'>250 元</option><option value='300'>300 元</option>"
			      					  +"<option value='500'>500 元</option><option value='1000'>1000 元</option>"
			      					  ).attr("disabled", false);
			    } else if (selectedOption === "百分比") {
			      $("#selector2").html("<option value='0.9'>9 折</option><option value='0.8'>8 折</option>"
			      					  +"<option value='0.85'>85 折</option><option value='0.7'>7 折</option>"
			      					  +"<option value='0.75'>75 折</option><option value='0.6'>6 折</option>"
			      					  +"<option value='0.65'>65 折</option><option value='0.5'>5 折</option>"
			      					  ).attr("disabled", false);
			    }
			  });
		});
	</script>
	<script type="text/javascript">
		$(document).ready(function() {
			var today = new Date().toISOString().split('T')[0];
			$('#expiryDate').attr('min', today);
		});
		
	</script>
	<script type="text/javascript">
	$(function(){
		$('#oneClick1').click(function(e){
			e.preventDefault();
			$('#couponName').val('100元折價券');
			$('#subject').val('歡慶三月天');
			CKEDITOR.instances['editor1'].setData('<br>SonaHotel歡迎您~');
			
		});
		$('#oneClick2').click(function(e){
			e.preventDefault();
			$('#couponName').val('8折優惠券');
			$('#subject').val('SonaHotel祝您生日快樂!!');
			CKEDITOR.instances['editor1'].setData('祝您天天愉快 !!<br>' + '壽星你最大~');
			
		});
		
	})
	</script>
	
</body>
</html>
