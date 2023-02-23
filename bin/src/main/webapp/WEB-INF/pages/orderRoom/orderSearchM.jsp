<%@ page language="java" contentType="text/html; charset=UTF-8"
	pageEncoding="UTF-8"%>
<%@ taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core"%>
<%@ taglib prefix="fmt" uri="http://java.sun.com/jsp/jstl/fmt"%>
<%@ taglib prefix="fn" uri="http://java.sun.com/jsp/jstl/functions"%>
<!DOCTYPE html>
<html lang="zh-Hant">
<head>

<!-- start: Meta -->
<meta charset="utf-8">
<title>Sona | 訂單管理</title>
<meta name="description" content="Bootstrap Metro Dashboard">
<meta name="author" content="Dennis Ji">
<meta name="keyword"
	content="Metro, Metro UI, Dashboard, Bootstrap, Admin, Template, Theme, Responsive, Fluid, Retina">
<!-- end: Meta -->

<!-- start: Mobile Specific -->
<meta name="viewport" content="width=device-width, initial-scale=1">
<!-- end: Mobile Specific -->
<link id="bootstrap-style" href="/css2/bootstrap.min.css" rel="stylesheet">
<link href="/css2/bootstrap-responsive.min.css" rel="stylesheet">
<link id="base-style" href="/css2/style32.css" rel="stylesheet">
<link id="base-style-responsive" href="/css2/style-responsive.css" rel="stylesheet">
<link href='http://fonts.googleapis.com/css?family=Open+Sans:300italic,400italic,600italic,700italic,800italic,400,300,600,700,800&subset=latin,cyrillic-ext,latin-ext' rel='stylesheet' type='text/css'>
<link rel="stylesheet" type="text/css" href="https://cdn.datatables.net/1.10.21/css/jquery.dataTables.css">
<!-- end: CSS -->

<!-- start: Favicon -->
<link rel="shortcut icon" href="img2/favicon.ico">
<!-- end: Favicon -->

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
					<p>
						You need to have <a href="http://en.wikipedia.org/wiki/JavaScript"
							target="_blank">JavaScript</a> enabled to use this site.
					</p>
				</div>
			</noscript>

			<!-- start: Content -->
			<div id="content" class="span10">


				<ul class="breadcrumb">
					<li style="font-size:20px"><i class="icon-home"></i> <a
						href="/admin/backgroundIndex.controller">首頁</a> <i
						class="icon-angle-right"></i></li>
					<li style="font-size:20px"><a href="#">訂單系統</a> <i
						class="icon-angle-right"></i></li>
					<li style="font-size:20px"><a href="/admin/searchorder.controller">訂單管理</a></li>
				</ul>
				
				<div class="row-fluid sortable">
					<div class="box span12">
						<div class="box-header" data-original-title>
							<h2>
								<i class="fa-solid fa-magnifying-glass"></i><span class="break"></span>查詢訂單
							</h2>
							<div class="box-icon">
								<a href="#" class="btn-setting"><i
									class="halflings-icon white wrench"></i></a> <a href="#"
									class="btn-minimize"><i
									class="halflings-icon white chevron-up"></i></a> <a href="#"
									class="btn-close"><i class="halflings-icon white remove"></i></a>
							</div>
						</div>
						<div class="box-content">
								
							<a href="/admin/generatecsv.controller" id="csv" style="margin:5px" class="btn btn-large btn-success">CSV</a>
							<a href="/admin/generatejson.controller" id="json" id="json" style="margin:5px;" class="btn btn-large btn-info2">JSON</a>
							<button id="pdf" style="margin:5px" class="btn btn-large btn-danger">PDF</button>
						<hr>
							<table id="ordertable"
								class="table table-striped bootstrap-datatable datatable"
								style="text-align: center">
								<thead>
									<tr>
										<th style="text-align: center">訂單編號</th>
										<th style="text-align: center">訂單日期</th>
										<th style="text-align: center">訂購姓名</th>
										<th style="text-align: center">訂購房型</th>
										<th style="text-align: center">入住日期</th>
										<th style="text-align: center">退房日期</th>
										<th style="text-align: center">金額</th>
										<th style="text-align: center">狀態</th>
										<th class="no-print"style="text-align: center">修改</th>
									</tr>
								</thead>
								<tbody id="order">
									<c:forEach var="orderbean" items="${orderbean}">
										<tr>
											<td class="center" style="text-align: center;vertical-align:middle;">${orderbean.orderid}</td>
											<td class="center" style="text-align: center;vertical-align:middle;">${orderbean.orderdate}</td>
											<td class="center" style="text-align: center;vertical-align:middle;">${orderbean.username}</td>
											<td class="center" style="text-align: center;vertical-align:middle;">${orderbean.roomname}</td>
											<td class="center" style="text-align: center;vertical-align:middle;">${orderbean.checkindate}</td>
											<td class="center" style="text-align: center;vertical-align:middle;">${orderbean.checkoutdate}</td>
											<td class="center" style="text-align: center;vertical-align:middle;">${orderbean.price}</td>
											<td class="center" style="text-align: center;vertical-align:middle;"><span
												class="label label-success">${orderbean.canceltag}</span></td>
											<td class="no-print" style="text-align: center;vertical-align:middle;"><form
													action="/admin/searchdetails.controller" method="POST">
													<button class="search" style="border: 0; background-color: transparent"
														type="submit" name="orderid" value="${orderbean.orderid}">
														<i class="fa-regular fa-pen-to-square" style="color: blue;font-size:24px;"></i>
													</button>
												</form></td>
										</tr>
									</c:forEach>
								</tbody>
							</table>
				
						</div>
					</div>
					<!--/span-->

				</div>
				<!--/row-->


				<!--/row-->
	

				<!--/row-->
			</div>
			<!--/.fluid-container-->

			<!-- end: Content -->
		</div>
		<!--/#content.span10-->
	</div>
	<!--/fluid-row-->



	
	<footer>

		<p>
			<span style="text-align: left; float: left">&copy; 2023 &nbsp;<a
				href="/admin/backgroundIndex.controller"
				alt="Bootstrap_Metro_Dashboard">Sona Hotel</a></span>

		</p>

	</footer>
	
	
	<!-- start: JavaScript-->
	<script src="https://code.jquery.com/jquery-3.5.1.js"></script>

	<script src="/js2/jquery-migrate-1.0.0.min.js"></script>	

	<script src="/js2/jquery-ui-1.10.0.custom.min.js"></script>

	<script src="/js2/jquery.ui.touch-punch.js"></script>

	<script src="/js2/modernizr.js"></script>

	<script src="/js2/bootstrap.min.js"></script>

	<script src="/js2/jquery.cookie.js"></script>

	<script src='/js2/fullcalendar.min.js'></script>
	
	<script src="//cdn.jsdelivr.net/npm/sweetalert2@11"></script>

	<script src="https://cdn.datatables.net/1.11.3/js/jquery.dataTables.min.js"></script>
	
	<script src="https://kit.fontawesome.com/27e0c99202.js" crossorigin="anonymous"></script>

	<script src="https://cdnjs.cloudflare.com/ajax/libs/jspdf/1.5.3/jspdf.min.js"></script>
	
	<script src="https://cdnjs.cloudflare.com/ajax/libs/jspdf-autotable/3.5.9/jspdf.plugin.autotable.js"></script>

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

	<script src="/js2/jquery.knob.modified.js"></script>

	<script src="/js2/jquery.sparkline.min.js"></script>

	<script src="/js2/counter.js"></script>

	<script>
	 window.onload = function() {
	 var table =  $('#ordertable').DataTable(); 
	 const rows = document.querySelectorAll("#ordertable tbody tr");
	  rows.forEach((row) => {
	    const status = row.querySelector("td.center span.label");

	    if (status) {
	    	  if (status.textContent === "已取消") {
	    	    status.classList.remove("label-success");
	    	    status.classList.add("label-important");
	    	  } 
	    	  if (status.textContent === "待審核") {
	    	    status.classList.remove("label-success");
	    	    status.classList.add("label-warning");
	    	  }
	    	}
	  });
	  table.on('draw', function() {
	      const rows = document.querySelectorAll("#ordertable tbody tr");
	      rows.forEach((row) => {
	         const status = row.querySelector("td.center span.label");

	         if (status.textContent === "已取消") {
	            status.classList.remove("label-success");
	            status.classList.add("label-important");
	         } 
	         if (status.textContent === "待審核") {
	            status.classList.remove("label-success");
	            status.classList.add("label-warning");
	         } 
	      });
	   });
	  
	}	
	 $('.dropmenu').click(function(e){

			e.preventDefault();

			$(this).parent().find('ul').slideToggle();
		
		});
	</script>
	
	<script>
	$(document).on('click', '#json', function(){
		Swal.fire({
			  position: 'center',
            title: 'JSON輸出完成!',
            icon: 'success',
            confirmButtonText: '確定'
          	  
		 })
	});
	
    $(document).on('click', '#csv', function(){
    	Swal.fire({
			  position: 'center',
            title: 'CSV輸出完成!',
            icon: 'success',
            confirmButtonText: '確定'
          	  
		 })
	});

	document.getElementById("pdf").addEventListener("click", function() {
		console.log('generatepdf')
		$.ajax({
			url:'/admin/generatepdf.controller',
			method:"post",
			dataType:"text",	
			success:(function(data){   
				var doc = new jsPDF('l', 'pt');
				doc.addFileToVFS('msyh.ttf', data);
				doc.addFont('msyh.ttf', 'msyh', 'normal');
				doc.setFont('msyh');
				doc.setFontSize(28);
				doc.text('訂單總覽', 375, 40);
					var elems1 =document.querySelectorAll(".no-print");
					elems1.forEach(function (elem) {
						elem.style.display = "none";
					});
				var element = document.getElementById("ordertable");
				doc.autoTable({
					html: element,
					startY: 60,
					styles: {
						font: 'msyh',
						fontStyle: 'normal',
						fontSize:14,
					}
				});
				doc.save("order's data.pdf");
				
				var elems1 =document.querySelectorAll(".no-print");
					elems1.forEach(function (elem) {
						elem.style.display = "block";
			})	                 
				
			Swal.fire({
					  position: 'center',
		              title: 'PDF輸出完成!',
		              icon: 'success',
		              confirmButtonText: '確定'
		            	  
				 })	
			})
		})
		
	});
	</script>
	<input type="hidden" value="${username}" id="user">
	<script type="text/javascript">
       var username = document.getElementById("user").value;
       console.log(username);
    </script>
	<!-- <script src="/js2/custom.js"></script>  -->
	<!-- end: JavaScript-->

</body>
</html>