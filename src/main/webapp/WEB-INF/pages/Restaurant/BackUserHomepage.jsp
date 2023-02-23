<%@ page language="java" import="java.util.*"
	contentType="text/html; charset=utf8"%>
<%@ taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core"%>
<!DOCTYPE html>
<html lang="zh-Hant ">
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
	<link id="bootstrap-style" href="/static/css2/bootstrap.min.css" rel="stylesheet">
	<link href="/static/css2/bootstrap-responsive.min.css" rel="stylesheet">
	<link id="base-style" href="/static/css2/style.css" rel="stylesheet">
	<link id="base-style-responsive" href="/static/css2/style-responsive.css" rel="stylesheet">
	<link href='http://fonts.googleapis.com/css?family=Open+Sans:300italic,400italic,600italic,700italic,800italic,400,300,600,700,800&subset=latin,cyrillic-ext,latin-ext' rel='stylesheet' type='text/css2'>
	<!-- end: CSS -->
	

	<!-- The HTML5 shim, for IE6-8 support of HTML5 elements -->
	<!--[if lt IE 9]>
	  	<script src="http://html5shim.googlecode.com/svn/trunk/html5.js"></script>
		<link id="ie-style" href="css2/ie.css" rel="stylesheet">
	<![endif]-->
	
	<!--[if IE 9]>
		<link id="ie9style" href="css2/ie9.css" rel="stylesheet">
	<![endif]-->
		
	<!-- start: Favicon -->
	<link rel="shortcut icon" href="/static/img2/favicon.ico">
	<!-- end: Favicon -->
	
<style>
	.deletemember {
    display: inline-block;
    padding: 2px 4px;
    margin-bottom: 0;
    font-size: 14px;
    font-weight: 500;
    line-height: 20px;
    text-align: center;
    white-space: nowrap;
    vertical-align: middle;
    cursor: pointer;
    -webkit-border-radius: 0px !important;
    border-radius: 0px !important;
    background-color: #CCDDFF;
}

.searchmember{
    display: inline-block;
    padding: 2px 2.5px;
    margin-bottom: 0;
    font-size: 14px;
    font-weight: 500;
    line-height: 20px;
    text-align: center;
    white-space: nowrap;
    vertical-align: middle;
    cursor: pointer;
    -webkit-border-radius: 0px !important;
    border-radius: 0px !important;
    background-color: #FFC8B4;
}

.updatemember{
    display: inline-block;
    padding: 2px 4px;
    margin-bottom: 0;
    font-size: 14px;
    font-weight: 500;
    line-height: 20px;
    text-align: center;
    white-space: nowrap;
    vertical-align: middle;
    cursor: pointer;
    -webkit-border-radius: 0px !important;
    border-radius: 0px !important;
    background-color: #CCEEFF;
}
</style>		
		
		
</head>
<style>
	.type{
	word-wrap: break-word;
	word-break: break-all;
	}
	</style>
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
                                <li><a class="submenu" href="/admin/showallcoupons.controller"><span style="font-size:20px" class="hidden-tablet"><i style="margin-left:36px;margin-right:13px"class="fa-solid fa-ticket-simple"></i>票券管理</span></a></li>
                                <li><a class="submenu" href="showallcouponusers.controller"><span style="font-size:20px" class="hidden-tablet"><i style="margin-left:36px;margin-right:15px" class="fa-solid fa-paper-plane"></i>批量寄送</span></a></li>
                            </ul>
                        </li>
						<li><a class="dropmenu"><span style="font-size:20px" class="hidden-tablet"><i style="margin-right:12px" class="icon-shopping-cart"></i>訂單系統</span></a>
                            <ul>
                                <li><a class="submenu" href="/admin/searchorder.controller"><span  style="font-size:20px"class="hidden-tablet"><i style="margin-left:38px;margin-right:15px"class="fa-solid fa-database"></i>訂單管理</span></a></li>
                                <li><a class="submenu" href="/admin/orderchart.controller"><span style="font-size:20px" class="hidden-tablet"><i style="margin-left:38px;margin-right:13px"class="fa-solid fa-chart-line"></i>訂單分析</span></a></li>
                            </ul>
                        </li>
						<li><a class="dropmenu"><span style="font-size:20px" class="hidden-tablet"><i style="margin-right:12px"class="icon-gift"></i>伴手禮系統</span></a>
			                 <ul>
				              	<li><a class="submenu" href="/admin/maintaingift.controller"><span style="font-size:20px" class="hidden-tablet"><i style="margin-left:38px;margin-right:15px"class="fa-solid fa-database"></i>伴手禮管理</span></a></li>
						        <li><a class="submenu" href="/admin/giftorder.controller"><span style="font-size:20px" class="hidden-tablet"><i style="margin-left:38px;margin-right:15px"class="fa-solid fa-database"></i>訂單管理</span></a></li>
						     </ul>
						</li>
						<li><a class="dropmenu"><span style="font-size:20px"class="hidden-tablet"><i style="margin-right:12px" class="icon-flag"></i>景點系統</span></a>
                            <ul>
                                <li><a class="submenu" href="searchattractions"><span style="font-size:20px" class="hidden-tablet"><i style="margin-left:35px;margin-right:11px" class="fa-solid fa-map-location-dot"></i>景點管理</span></a></li>
                                <li><a class="submenu" href="searchitinerary"><span style="font-size:20px" ><i style="margin-left:35px;margin-right:9px" class="fa-solid fa-car-side"></i>行程管理</span></a></li>
                                <li><a class="submenu" href="attractionschart"><span style="font-size:20px" class="hidden-tablet"><i style="margin-left:37px;margin-right:11px" class="fa-solid fa-chart-line"></i>景點分析</span></a></li>
                            </ul>
                        </li> 
						<li><a class="dropmenu"><span style="font-size:20px" class="hidden-tablet"><i style="margin-left:3px;margin-right:16px "class="fa-solid fa-utensils"></i>餐飲系統</span></a>
							<ul>
								<li><a class="submenu" href="<c:url value='/admin/BackUserController'/>"><span style="font-size:20px" class="hidden-tablet"><i style="margin-left:34px;margin-right:11px " class="fa-solid fa-shop"></i>餐飲管理</span></a></li>
								<li><a class="submenu" href="<c:url value='/admin/BackUserArrangepage'/>"><span style="font-size:20px" class="hidden-tablet"><i style="margin-left:39px;margin-right:16px " class="fa-solid fa-clipboard-list"></i>訂單管理</span></a></li>
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
					<a href="/admin/backgroundIndex.controller">首頁</a> 
					<i class="icon-angle-right"></i>
				</li>
				<li><a href="#">餐飲</a></li>
			</ul>

			<div class="row-fluid sortable">	
				<div class="box span12">
					<div class="box-header" data-original-title>
						<h2><i class="fa-regular fa-user"></i><span class="break"></span>餐飲</h2>
						<div class="box-icon">
							<a href="#" class="btn-setting"><i class="halflings-icon white wrench"></i></a>
							<a href="#" class="btn-minimize"><i class="halflings-icon white chevron-up"></i></a>
							<a href="#" class="btn-close"><i class="halflings-icon white remove"></i></a>
						</div>
					</div>
					<div class="box-content">
					<div  style="font-size: 2em; margin-right: 1020px; margin-bottom: 1px;">
						<a href="/admin/ResexportCsv"><i class="fa-solid fa-file-csv" style="margin-right: 5px; margin-bottom: 5px;"></i></a>
						
					</div>
					
					
					<table class="table table-striped table-bordered bootstrap-datatable datatable">

								<thead>
									<tr>
										<th>名子</th>
										<th>簡介</th>
										<th>價格</th>
										<th>位置</th>
										<th>電話</th>
										<th>詳細介紹</th>
										<th>圖片</th>
										<th><a class="btn btn-info" href="BackUserRestaurantAdd">新增
												<i class="halflings-icon edit"></i>
										</a></th>
									</tr>
								</thead>
								
					<tbody>
								<c:forEach var="resturant" items="${resturant}" varStatus="vstatus">
										<tr>
											<td style="vertical-align: middle; text-align: center;">${resturant.restaurantname }</td>
											<td style="vertical-align: middle; text-align: center;">${resturant.restaurantdes }</td>
											<td style="vertical-align: middle; text-align: center;">${resturant.restaurantprice }</td>
											<td style="vertical-align: middle; text-align: center;">${resturant.restaurantaddress }</td>
											<td style="vertical-align: middle; text-align: center;">${resturant.restaurantphone }</td>
											<td class="type" style="vertical-align: middle; text-align: center;">${resturant.restauranttype }</td>
											<td style="vertical-align: middle; text-align: center;"><img
												src="/ShowController?roomId=${resturant.restaurantid}"
												width="110px"></td>
											<td class="center">

												<form action="BackUserRestaurantRewrite" method="post">
													<input type="hidden" name="restaurantid"
														value="${resturant.restaurantid}">

													<!-- 你的其他隐藏字段 -->
													<button type="submit" class="btn btn-success">
														修改 <i class="halflings-icon white zoom-in"></i>
													</button>
												</form>

							
						</td>
					</tr>
				</c:forEach>
			</tbody>
					  </table>            
					</div>
				</div><!--/span-->
	</div></div><!--/.fluid-container-->

	
			<!-- end: Content -->
		</div><!--/#content.span10-->
		</div><!--/fluid-row-->
		
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
		<script src="//cdn.jsdelivr.net/npm/sweetalert2@11"></script>
		<script src="/static/js2/jquery-1.9.1.min.js"></script>
	<script src="/static/js2/jquery-migrate-1.0.0.min.js"></script>
	
		<script src="/static/js2/jquery-ui-1.10.0.custom.min.js"></script>
	
		<script src="/static/js2/jquery.ui.touch-punch.js"></script>
	
		<script src="/static/js2/modernizr.js"></script>
	
		<script src="/static/js2/bootstrap.min.js"></script>
	
		<script src="/static/js2/jquery.cookie.js"></script>
	
		<script src='/static/js2/fullcalendar.min.js'></script>
	
		<script src='/static/js2/jquery.dataTables.min.js'></script>

		<script src="/static/js2/excanvas.js"></script>
	<script src="/static/js2/jquery.flot.js"></script>
	<script src="/static/js2/jquery.flot.pie.js"></script>
	<script src="/static/js2/jquery.flot.stack.js"></script>
	<script src="/static/js2/jquery.flot.resize.min.js"></script>
	
		<script src="/static/js2/jquery.chosen.min.js"></script>
	
		<script src="/static/js2/jquery.uniform.min.js"></script>
		
		<script src="/static/js2/jquery.cleditor.min.js"></script>
	
		<script src="/static/js2/jquery.noty.js"></script>
	
		<script src="/static/js2/jquery.elfinder.min.js"></script>
	
		<script src="/static/js2/jquery.raty.min.js"></script>
	
		<script src="/static/js2/jquery.iphone.toggle.js"></script>
	
		<script src="/static/js2/jquery.uploadify-3.1.min.js"></script>
	
		<script src="/static/js2/jquery.gritter.min.js"></script>
	
		<script src="/static/js2/jquery.imagesloaded.js"></script>
	
		<script src="/static/js2/jquery.masonry.min.js"></script>
	
		<script src="/static/js2/jquery.knob.modified.js"></script>
	
		<script src="/static/js2/jquery.sparkline.min.js"></script>
	
		<script src="/static/js2/counter.js"></script>
	
		<script src="/static/js2/retina.js"></script>

		<script src="/static/js2/custom.js"></script>
		
		<script src="//cdn.jsdelivr.net/npm/sweetalert2@11"></script>
		<script src="https://kit.fontawesome.com/27e0c99202.js"></script>
		<script src="js/jquery-3.3.1.min.js"></script>
		<script src="https://cdn.jsdelivr.net/npm/jquery-twzipcode@1.7.14/jquery.twzipcode.min.js"></script>
	
	<input type="hidden" value="${status}" id="status">
	<input type="hidden" value="${username}" id="user">
	<script type="text/javascript">
		var username = document.getElementById("user").value;
		var status = document.getElementById("status").value;
		console.log(status)
	</script>
	
	<!-- end: JavaScript-->
	
	<script>	
		$(function(){
	        $('.deletemember').click(function(){
	            let id=$(this).attr("value");
	            Swal.fire({
	              title: 'Are you sure?',
	              text: "You won't be able to revert this!",
	              icon: 'warning',
	              showCancelButton: true,
	              confirmButtonColor: '#3085d6',
	              cancelButtonColor: '#d33',
	              confirmButtonText: 'Yes, delete it!'
	            }).then((result) => {
	                if (result.isConfirmed) {
	                    $.ajax({
	                      url:'/admin/deleteMember.controller',
	                      method:"post",
	                      dataType:"text",
	                      data: {"userid":id},
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
		});//function end
		
		
		$('body').on('click', '#editbtn123',function(e){
			e.preventDefault();
			let index = $(this).next('input').val();
			let userid = $('#userid-'+index).text();
			let userstatus = $('#userstatus-'+index).val();
			console.log(index);
			console.log(userid);
			console.log(userstatus);
			$.ajax({
				type: 'post',
				url: '/admin/updateMemberStatus.controller',
				data:{
					"userid": userid,
					"userstatus": userstatus
				},
				success:function(response){
					Swal.fire({
			              title: '狀態已更改 !',
			              icon: 'success',
			              showCancelButton: true,
			              confirmButtonColor: '#3085d6',
			              confirmButtonText: '確定'
			            });
				}
			});
			
		});
		
	</script>
	
</body>
</html>
