<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
<%@ taglib uri="http://java.sun.com/jsp/jstl/core" prefix="c"%>
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
		<link id="ie-style" href="css2/ie.css" rel="stylesheet">
	<![endif]-->
	
	<!--[if IE 9]>
		<link id="ie9style" href="css2/ie9.css" rel="stylesheet">
	<![endif]-->
		
	<!-- start: Favicon -->
	<link rel="shortcut icon" href="/img2/favicon.ico">
	<!-- end: Favicon -->

	<style type="text/css">
/* 		.dataTables_filter { */
			
/* 			float: right; */
			
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
				<a class="brand" href="index.jsp"><span>JANUX</span></a>
								
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
								<i class="halflings-icon white user"></i> Dennis Ji
								<span class="caret"></span>
							</a>
							<ul class="dropdown-menu">
								<li class="dropdown-menu-title">
 									<span>Account Settings</span>
								</li>
								<li><a href="#"><i class="halflings-icon user"></i> Profile</a></li>
								<li><a href="login.jsp"><i class="halflings-icon off"></i> Logout</a></li>
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
			<div id="sidebar-left" class="span2">
				<div class="nav-collapse sidebar-nav">
					<ul class="nav nav-tabs nav-stacked main-menu">
						<li><a href="index.jsp"><i class="icon-bar-chart"></i><span class="hidden-tablet"> Dashboard</span></a></li>	
						<li><a href="messages.jsp"><i class="icon-envelope"></i><span class="hidden-tablet"> Messages</span></a></li>
						<li><a href="tasks.jsp"><i class="icon-tasks"></i><span class="hidden-tablet"> Tasks</span></a></li>
						<li><a href="ui.jsp"><i class="icon-eye-open"></i><span class="hidden-tablet"> UI Features</span></a></li>
						<li><a href="widgets.jsp"><i class="icon-dashboard"></i><span class="hidden-tablet"> Widgets</span></a></li>
						<li>
							<a class="dropmenu" href="#"><i class="icon-folder-close-alt"></i><span class="hidden-tablet"> Dropdown</span><span class="label label-important"> 3 </span></a>
							<ul>
								<li><a class="submenu" href="submenu.jsp"><i class="icon-file-alt"></i><span class="hidden-tablet"> Sub Menu 1</span></a></li>
								<li><a class="submenu" href="submenu2.jsp"><i class="icon-file-alt"></i><span class="hidden-tablet"> Sub Menu 2</span></a></li>
								<li><a class="submenu" href="submenu3.jsp"><i class="icon-file-alt"></i><span class="hidden-tablet"> Sub Menu 3</span></a></li>
							</ul>	
						</li>
						<li><a href="form.jsp"><i class="icon-edit"></i><span class="hidden-tablet"> Forms</span></a></li>
						<li><a href="chart.jsp"><i class="icon-list-alt"></i><span class="hidden-tablet"> Charts</span></a></li>
						<li><a href="typography.jsp"><i class="icon-font"></i><span class="hidden-tablet"> Typography</span></a></li>
						<li><a href="gallery.jsp"><i class="icon-picture"></i><span class="hidden-tablet"> Gallery</span></a></li>
						<li><a href="table.jsp"><i class="icon-align-justify"></i><span class="hidden-tablet"> Tables</span></a></li>
						<li><a href="calendar.jsp"><i class="icon-calendar"></i><span class="hidden-tablet"> Calendar</span></a></li>
						<li><a href="file-manager.jsp"><i class="icon-folder-open"></i><span class="hidden-tablet"> File Manager</span></a></li>
						<li><a href="icon.jsp"><i class="icon-star"></i><span class="hidden-tablet"> Icons</span></a></li>
						<li><a href="login.jsp"><i class="icon-lock"></i><span class="hidden-tablet"> Login Page</span></a></li>
						<li><a href="/admin/showallroom.admin.controller"><i class="halflings-icon th-list"></i><span class="hidden-tablet"> 房型管理</span></a></li>
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
					<a href="index.jsp">Home</a> 
					<i class="icon-angle-right"></i>
				</li>
				<li><a href="#">Tables</a></li>
			</ul>

			<div class="row-fluid sortable">		
				<div class="box span12">
					<div class="box-header" data-original-title>
						<h2><i class="halflings-icon white user"></i><span class="break"></span>Members</h2>
						<div class="box-icon">
							<a href="#" class="btn-setting"><i class="halflings-icon white wrench"></i></a>
							<a href="#" class="btn-minimize"><i class="halflings-icon white chevron-up"></i></a>
							<a href="#" class="btn-close"><i class="halflings-icon white remove"></i></a>
						</div>
					</div>
					
					<div style="display:inline-flex; padding: 15px; padding-bottom: 1px">
					<form action="/insertroommain.controller" method="GET">
						<button id="insertbtn" class="btn btn-small btn-primary"><i class="halflings-icon plus-sign"></i><b>新增房型</b></button>
					</form>&nbsp;&nbsp;&nbsp;&nbsp;
					<div id="deleteDiv" style="display: none;">
						<button id="deleteButton" class="btn btn-small btn-danger"><i class="halflings-icon minus-sign"></i><b>批量刪除</b></button>
					</div>
					</div>
					
					<div class="box-content">
						<table id="roomTable" class="table table-striped table-bordered bootstrap-datatable datatable dataTable" style="width: 100%; table-layout: auto">
						  <thead>
							  <tr>
								  <th style="text-align: center">
								  	<input type="checkbox" id="selectAll" value="">全選
								  </th>
								  <th style="text-align: center">序號</th>
								  <th style="text-align: center">圖片</th>
								  <th style="text-align: center">房型編號</th>
								  <th style="text-align: center">房間名稱</th>
								  <th style="text-align: center">容納人數</th>
								  <th style="text-align: center">床數</th>
								  <th style="text-align: center">房間坪數</th>
								  <th style="text-align: center">每晚價格</th>
								  <th style="text-align: center">使用狀態</th>
								  <th style="text-align: center">編輯</th>
							  </tr>
						  </thead>   
						  <tbody>
						  <c:forEach var="bean" items="${beans}" varStatus="status">
							<tr>
								<!-- 			label class 		-->
								<!-- "label"					gray -->
								<!-- "label label-success"		green -->
								<!-- "label label-warning"		yellow -->
								<!-- "label label-important"	red -->
								<td style="vertical-align: middle; text-align: center;">
									<input type="checkbox" class="checker2" name="" value="${bean.roomId}">
								</td>
								<td style="vertical-align: middle; text-align: center;">${status.count}</td>
								<td style="vertical-align: middle; text-align: center;">
									<img src="showroomimg.controller?roomId=${bean.roomId}" width="110px" alt="">
								</td>
								<td style="vertical-align: middle; text-align: center;">${bean.roomId}</td>
								<td style="vertical-align: middle; text-align: center;">${bean.name}</td>
								<td style="vertical-align: middle; text-align: center;">${bean.capacity} 人</td>
								<td style="vertical-align: middle; text-align: center;">${bean.bed} 張床</td>
								<td style="vertical-align: middle; text-align: center;">${bean.size} 坪</td>
								<td style="vertical-align: middle; text-align: center;">${bean.price} 元</td>
								<td style="vertical-align: middle; text-align: center;">
									<c:choose>
										<c:when test="${bean.status == 0}">
											<span class="label label-important">使用中</span>
										</c:when>
										<c:when test="${bean.status == 1}">
											<span class="label label-success">空房</span>
										</c:when>
									</c:choose>
								</td>
								<td style="vertical-align: middle; text-align: center;">
									<div style="display: inline-flex;">
											<a class="btn btn-info" href="#">
												<i class="halflings-icon white edit"></i>  
											</a>
											<form action="/showupdateroom.controller" method="post">
												<input type="hidden" name="roomId" value="${bean.roomId}">
											</form>&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;
											<a id="deleteItem" class="btn btn-danger" href="#">
												<i class="halflings-icon white trash"></i> 
											</a>
												<input type="hidden" name="roomId" value="${bean.roomId}">
<%-- 											<input type="hidden" name="roomId" value="${bean.roomId}"> --%>
									</div>
								</td>
							</tr>
							</c:forEach>
						  </tbody>
					  </table>         
					  
					</div>
				</div><!--/span-->
			
			</div><!--/row-->


	</div><!--/.fluid-container-->
	
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
			<span style="text-align:left;float:left">&copy; 2013 <a href="downloads/janux-free-responsive-admin-dashboard-template/" alt="Bootstrap_Metro_Dashboard">JANUX Responsive Dashboard</a></span>
			
		</p>

	</footer>
	
	<!-- start: JavaScript-->
<!-- <script src="js/jquery-3.3.1.min.js"></script> -->
		<script src="/js2/jquery-1.9.1.min.js"></script>
	<script src="/js2/jquery-migrate-1.0.0.min.js"></script>
		<script src="/js2/jquery-ui-1.10.0.custom.min.js"></script>
	
		<script src="/js2/jquery.ui.touch-punch.js"></script>
	
		<script src="/js2/modernizr.js"></script>
	
		<script src="/js2/bootstrap.min.js"></script>
<!-- 		<script src="js/bootstrap.min.js"></script> -->
		<script src="/js2/jquery.cookie.js"></script>
	
		<script src='js2/fullcalendar.min.js'></script>
	
		<script src='js2/jquery.dataTables.min.js'></script>

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
		  $('#selectAll').click(function() {
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
                      url:'/deleteroom.controller',
                      method:"post",
                      dataType:"text",
                      data: {"roomId":id},
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
        $('#deleteButton').on('click',function(e){
        	e.preventDefault();
        	var checker2Values = [];

        	$('.checker2').each(function(){
        		if ($(this).parent().attr('class') == 'checked'){
	        	  checker2Values.push($(this).val());
        		}
        	});
            console.log(checker2Values);
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
                      url:'/deleterooms.controller',
                      method:"post",
                      contentType: "application/json; charset=utf-8",
                      data: JSON.stringify(checker2Values)
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
    
    
	</script>

	
</body>
</html>
