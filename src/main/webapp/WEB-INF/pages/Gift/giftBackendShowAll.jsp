<%@ page language="java" contentType="text/html; charset=UTF-8"
	pageEncoding="UTF-8"%>
<%@ taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core"%>
<%@ taglib prefix="fmt" uri="http://java.sun.com/jsp/jstl/fmt"%>
<%@ taglib prefix="fn" uri="http://java.sun.com/jsp/jstl/functions"%>
<!DOCTYPE html>
<html lang="zxx">
<head>

<!-- start: Meta -->
<meta charset="utf-8">
<title>Bootstrap Metro Dashboard by Dennis Ji for ARM demo</title>
<meta name="description" content="Bootstrap Metro Dashboard">
<meta name="author" content="Dennis Ji">
<meta name="keyword"
	content="Metro, Metro UI, Dashboard, Bootstrap, Admin, Template, Theme, Responsive, Fluid, Retina">
<!-- end: Meta -->

<!-- start: Mobile Specific -->
<meta name="viewport" content="width=device-width, initial-scale=1">
<!-- end: Mobile Specific -->

<!-- start: CSS -->
<link id="bootstrap-style" href="/css2/bootstrap.min.css"
	rel="stylesheet">
<link href="/css2/bootstrap-responsive.min.css" rel="stylesheet">
<link id="base-style" href="/css2/style.css" rel="stylesheet">
<link id="base-style-responsive" href="/css2/style-responsive.css"
	rel="stylesheet">
<link
	href='http://fonts.googleapis.com/css?family=Open+Sans:300italic,400italic,600italic,700italic,800italic,400,300,600,700,800&subset=latin,cyrillic-ext,latin-ext'
	rel='stylesheet' type='text/css'>
<style>
/*刪除底下垃圾桶的樣式*/
.fa-trash-can {
	font-size: 1.7em; /* 將圖案放大為原始大小的兩倍 */
	color: #EC7463; /* 更改圖案顏色為紅色 */
}
/*刪除button的樣式*/
button.delete {
	background-color: transparent; /* 設置背景色為透明 */
	border-style: none; /* 取消按鈕邊框 */
}
/*修改按鈕的樣式*/
.fa-pen-to-square{
	font-size: 1.4em; /* 將圖案放大為原始大小的兩倍 */
/* 	color: #91D0D5;  */
	color:#43B5AD;
}
/*圖片的樣式*/
.imgs{
	height: 80px;
	width: 80px;
	border-radius: 30px;
}
</style>
<!-- end: CSS -->
<link rel="shortcut icon" href="img/favicon.ico">
<!-- end: Favicon -->

<script src="https://kit.fontawesome.com/27e0c99202.js"
	crossorigin="anonymous"></script>

<script src="//cdn.jsdelivr.net/npm/sweetalert2@11"></script>
<script
	src="https://cdnjs.cloudflare.com/ajax/libs/jquery/3.3.1/jquery.min.js"></script>
<script
	src="https://cdnjs.cloudflare.com/ajax/libs/sweetalert/2.1.2/sweetalert.min.js"></script>

<script type="text/javascript">

function setFocus()
{
     document.getElementById("sname").focus();
}


$(function(){
    $('.delete').click(function(){
        let id=$(this).attr("value");
        console.log(id)
        Swal.fire({
        	title: '確定要刪除訂單嗎?',
	         icon: 'warning',
	         showCancelButton: true,
	         confirmButtonColor: '#3085d6',
	         cancelButtonColor: '#d33',
	         confirmButtonText: '確認',
	         cancelButtonText: '取消',
        }).then((result) => {
            if (result.isConfirmed) {
                $.ajax({
                  url:'/admin/deletegift.controller',
                  method:"post",
                  dataType:"text",
                  data: {"sid":id},
                })
                    .done(function () {
                        $(location).attr('href', '/admin/maintaingift.controller')
//                         location.reload();
                        console.log("delete")
                     })//done
                     .fail(function(error) {
                         console.log(error)
                     })//fail end
            }//if
          })//then

      });//click end
     
});

   

</script>
</head>

<body>
	<input type="hidden" value="${username}" id="user">
	<script type="text/javascript">
       var username = document.getElementById("user").value;
       console.log(username);
    </script>
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
					<li><i class="icon-home"></i> <a href="index.html">Home</a> <i
						class="icon-angle-right"></i></li>
					<li><a href="/admin/giftpreinsert.controller">新增伴手禮</a></li>
				</ul>

				<div class="row-fluid sortable">
					<div class="box span12" >
						<div class="box-header" data-original-title>
							<h2>
								<i class="halflings-icon white user"></i><span class="break"></span>伴手禮資料維護
							</h2>
						</div>
						<div class="box-content" >

							<table
								class="table table-striped table-bordered bootstrap-datatable datatable"
								width="100%">

								<thead>
									<tr style="font-weight: blod; font-size: 25px;">
										<th style="width: 8%"></th>
										<!-- 											style="table-layout:fixed" -->
										<th style="width: 15%">名稱</th>
										<th style="width: 7%">編號</th>
										<th style="width: 48%">介紹</th>
										<th style="width: 7%">訂價</th>
										<th style="width: 5%">數量</th>
										<th style="width: 5%">修改</th>
										<th style="width: 5%">刪除</th>
									</tr>
								</thead>
								<c:forEach varStatus="stVar" var="bean" items="${beans}">
									<tbody>
										<tr style="font-weight: blod; font-size: 23px;">
											<td rowspan='3' width='80'><img class="imgs"
												
												src="/admin/getsouimage.controller/${bean.sid}"></td>
											<td style="word-break: break-all;font-weight:bold;padding:15px 4px;line-height: 1.5em;">&nbsp;&nbsp;${bean.sname}</td>
											<td class="center" style="word-break: break-all;">${bean.sno}</td>
											<td class="center" style="word-break: break-all;padding:15px 0px;line-height: 1.5em;">${bean.sdes}</td>
											<td class="center">${bean.sprice}</td>
											<td class="center">${bean.snum}</td>
											<td class="center"><a
												href="/admin/giftpreupdate.controller/${bean.sid}"> <i class="fa-solid fa-pen-to-square"></i></a></td>
											<td>
												<button type="submit" class="delete" name="sid" style="border-style:none; "
													value="${bean.sid}">
													<i class="fa-solid fa-trash-can"></i>
												</button>
											</td>
											
											
										</tr>

									</tbody>
								</c:forEach>
							</table>

						</div>
					</div>
					<!--/span-->

				</div>
				<!--/row-->

				
				<!--/row-->


			</div>
			<!--/.fluid-container-->

			<!-- end: Content -->
		</div>
		<!--/#content.span10-->
	</div>
	<!--/fluid-row-->

	
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
	<!-- end: JavaScript-->

</body>
</html>