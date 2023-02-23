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
<title>Sona | 訂單分析</title>
<meta name="description" content="Bootstrap Metro Dashboard">
<meta name="author" content="Dennis Ji">
<meta name="keyword"
	content="Metro, Metro UI, Dashboard, Bootstrap, Admin, Template, Theme, Responsive, Fluid, Retina">
<!-- end: Meta -->

<!-- start: Mobile Specific -->
<meta name="viewport" content="width=device-width, initial-scale=1">
<!-- end: Mobile Specific -->

<!-- start: CSS -->
<link id="bootstrap-style" href="/css2/bootstrap.min.css" rel="stylesheet">
<link href="/css2/bootstrap-responsive.min.css" rel="stylesheet">
<link id="base-style" href="/css2/style32.css" rel="stylesheet">
<link id="base-style-responsive" href="/css2/style-responsive.css" rel="stylesheet">
<link
	href='http://fonts.googleapis.com/css?family=Open+Sans:300italic,400italic,600italic,700italic,800italic,400,300,600,700,800&subset=latin,cyrillic-ext,latin-ext'
	rel='stylesheet' type='text/css'>
<!-- end: CSS -->
<link rel="stylesheet" type="text/css" href="https://cdn.datatables.net/1.10.21/css/jquery.dataTables.css">
<link rel="stylesheet" href="//cdnjs.cloudflare.com/ajax/libs/timepicker/1.3.5/jquery.timepicker.min.css">
<script src="/js/jquery-3.3.1.min.js"></script>
<script src="https://cdn.datatables.net/1.11.3/js/jquery.dataTables.min.js"></script>
<!-- The HTML5 shim, for IE6-8 support of HTML5 elements -->
<!--[if lt IE 9]>
	  	<script src="http://html5shim.googlecode.com/svn/trunk/html5.js"></script>
		<link id="ie-style" href="css/ie.css" rel="stylesheet">
	<![endif]-->

<!--[if IE 9]>
		<link id="ie9style" href="css/ie9.css" rel="stylesheet">
	<![endif]-->

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
			<div id="sidebar-left" class="span2">
				<div class="nav-collapse sidebar-nav">
					<ul class="nav nav-tabs nav-stacked main-menu">
						<li><a href="/admin/backgroundIndex.controller"><i
								class="icon-bar-chart"></i><span class="hidden-tablet"> 首頁</span></a></li>
						<li><a href="/admin/searchAllMember.controller"><i class="fa-solid fa-user-gear"></i><span class="hidden-tablet"> 會員 </span></a></li>
						<li><a href="/admin/showallroom.admin.controller"><i class="fa-solid fa-bed"></i><span class="hidden-tablet"> 房型管理</span></a></li>
						 <li><a class="dropmenu"><i class="icon-shopping-cart"></i><span class="hidden-tablet"> 訂單系統</span></a>
                            <ul>
                                <li><a class="submenu" href="/admin/searchorder.controller"><i class="fa-solid fa-database"></i> <span class="hidden-tablet">&nbsp;訂單管理</span></a></li>
                                <li><a class="submenu" href="/admin/orderchart.controller"><i class="fa-solid fa-chart-line"></i> <span class="hidden-tablet">&nbsp;訂單分析</span></a></li>
                            </ul>
                        </li>
						<li><a class="dropmenu" href="#"> <i class="icon-gift"></i><span class="hidden-tablet">伴手禮系統</span></a>
			                 <ul>
				              	<li><a class="submenu" href="/admin/maintaingift.controller"><i class="fa-solid fa-database"></i> <span class="hidden-tablet">&nbsp;伴手禮管理</span></a></li>
						        <li><a class="submenu" href="/admin/giftorder.controller"><i class="fa-solid fa-database"></i> <span class="hidden-tablet">&nbsp;訂單管理</span></a></li>
						     </ul>
						</li>
						<li><a class="dropmenu" href="#"> <i class="icon-flag"></i><span class="hidden-tablet">景點系統</span></a>
                            <ul>
                                <li><a class="submenu" href="searchattractions"><i class="icon-file-alt"></i><span class="hidden-tablet">景點管理</span></a></li>
                                <li><a class="submenu" href="searchitinerary"><i class="icon-file-alt"></i><span class="hidden-tablet">行程管理</span></a></li>
                                <li><a class="submenu" href="attractionschart"><i class="icon-file-alt"></i><span class="hidden-tablet">景點分析</span></a></li>
                            </ul>
                        </li> 
						<li><a class="dropmenu" href="#"><i
								class="fa-solid fa-utensils"></i><span> 餐飲</span></a>
							<ul>
								<li><a class="submenu" href="<c:url value='/admin/BackUserController'/>"><i class="icon-file-alt"></i><span class="hidden-tablet">餐飲</span></a></li>
								<li><a class="submenu" href="<c:url value='/admin/BackUserArrangepage'/>"><i class="icon-file-alt"></i><span class="hidden-tablet">訂單</span></a></li>
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
					<li><i class="icon-home"></i> <a
						href="/admin/backgroundIndex.controller">首頁</a> <i
						class="icon-angle-right"></i></li>
					<li><a href="#">訂單系統</a> <i
						class="icon-angle-right"></i></li>
					<li><a href="/admin/orderchart.controller">訂單分析</a></li>
				</ul>
				
				<div class="row-fluid">
					<div id="num" class="span3 statbox purple" onTablet="span6" onDesktop="span3">						
					</div>
					<div id="totalAmount" class="span3 statbox green" onTablet="span6" onDesktop="span3">
					</div>
					

					</div>	
					
				</div>
				
				<div class="row-fluid sortable">
<!-- 					<div class="box span6"> -->
<!-- 						<div class="box-header"> -->
<!-- 							<h2><i class="fa-solid fa-bars-progress"></i><span class="break"></span>近三個月訂單數量曲線圖</h2> -->
<!-- 							<div class="box-icon"> -->
<!-- 								<a href="#" class="btn-setting"><i class="halflings-icon white wrench"></i></a> -->
<!-- 								<a href="#" class="btn-minimize"><i class="halflings-icon white chevron-up"></i></a> -->
<!-- 								<a href="#" class="btn-close"><i class="halflings-icon white remove"></i></a> -->
<!-- 							</div> -->
<!-- 						</div> -->
<!-- 						<div class="box-content"> -->
<%-- 					 <canvas id="myChart" width="400" height="200"></canvas> --%>
<!-- 						</div> -->
<!-- 					</div> -->
				
<!-- 					<div class="box span6" > -->
<!-- 						<div class="box-header" data-original-title> -->
<!-- 							<h2><i class="fa-solid fa-sack-dollar"></i><span class="break"></span>近三個月訂單金額圓餅圖</h2> -->
<!-- 							<div class="box-icon"> -->
<!-- 								<a href="#" class="btn-setting"><i class="halflings-icon white wrench"></i></a> -->
<!-- 								<a href="#" class="btn-minimize"><i class="halflings-icon white chevron-up"></i></a> -->
<!-- 								<a href="#" class="btn-close"><i class="halflings-icon white remove"></i></a> -->
<!-- 							</div> -->
<!-- 						</div> -->
<!-- 						<div class="box-content"> -->
<%-- 							 <canvas id="myChart2" width="400" height="200"></canvas> --%>
<!-- 						</div> -->
<!-- 					</div> -->
					
					
				</div><!--/row-->
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
		
	<script src="//cdn.jsdelivr.net/npm/sweetalert2@11"></script>
	<script src="https://cdn.jsdelivr.net/npm/chart.js@2.9.3/dist/Chart.min.js"></script>
	<script src="https://kit.fontawesome.com/27e0c99202.js" crossorigin="anonymous"></script>
	<script src="/js2/jquery-migrate-1.0.0.min.js"></script>

	<script src="/js2/jquery-ui-1.10.0.custom.min.js"></script>

	<script src="/js2/jquery.ui.touch-punch.js"></script>

	<script src="/js2/modernizr.js"></script>

	<script src="/js2/bootstrap.min.js"></script>

	<script src="/js2/jquery.cookie.js"></script>

	<script src='/js2/fullcalendar.min.js'></script>

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
	
	<script>
	 $('.dropmenu').click(function(e){

			e.preventDefault();

			$(this).parent().find('ul').slideToggle();
		
		});
	</script>
	<script>
	$(function(){
		const today = new Date();
		const currentMonth = today.getMonth();
		const previousMonth = (currentMonth - 1 + 12) % 12;
		const ppreviousMonth = (currentMonth - 2 + 12) % 12;
		const months = ['Jan', 'Feb', 'Mar', 'Apr', 'May', 'Jun', 'Jul', 'Aug', 'Sep', 'Oct', 'Nov', 'Dec'];
		const desiredMonths = [months[ppreviousMonth],months[previousMonth], months[currentMonth]];

		var order = [0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0];
		var ordermoney = [0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0];
		$.ajax({
			url:'/admin/orderdata.controller',
			method:'get',
			dataType:'json',
			success:function(data){

				for (var i = 0; i < data.length; i++) {
					
					  var memberid = data[i].userid;
					  var totalamount = data[i].price;
					  var a = data[i].orderdate.split('-');
					  var b = a[1];
					  var c = parseInt(b); // 月份
					  if (c >= 0 && c <= 11) {
					    order[c - 1]++;
					    ordermoney[c - 1] += totalamount;
// 					    if (ordermember[c - 1].indexOf(memberid.toString()) === -1) {
// 					    	ordermember[c - 1] += memberid.toString() + ",";
// 					    }
					    	orderroom[c - 1] += roomname.toString() + ",";
					  }
					}
// 				for (var j = 0; j < ordermember.length; j++) {
// 				    ordermember[j] = ordermember[j].slice(0, -1);
// 				    orderroom[j] = orderroom[j].slice(0, -1);
// 				}
				
			    var desiredOrders = [order[ppreviousMonth], order[previousMonth], order[currentMonth]];
				var ordernum=order[ppreviousMonth]+order[previousMonth]+order[currentMonth];
				
				var desiredOrderstotalamount = [ordermoney[ppreviousMonth], ordermoney[previousMonth], ordermoney[currentMonth]];
				var ordertotalamount=ordermoney[ppreviousMonth]+ordermoney[previousMonth]+ordermoney[currentMonth];
				
// 				var desiredMembers=[ordermember[ppreviousMonth],ordermember[previousMonth],ordermember[currentMonth]];
// 				var membertotalamount=ordermember[ppreviousMonth]+ordermember[previousMonth]+ordermember[currentMonth]

				const membercounts = [];

// 				 for (let i = 0; i < desiredMembers.length; i++) {
// 				  // 以逗號為分隔符分割字串成為列表
// 				  let subArray = desiredMembers[i].split(",");
// 				  // 使用過濾器去除列表中的0元素
// 				  subArray = subArray.filter(x => x !== '');
// 				  // 計算非零元素的數量，並加入到計數列表中
// 				  membercounts.push(subArray.length);
// 				} 
				
// 				var result = desiredMembers.map(function(member) {
// 					  return Array.from(new Set(member.split(',').filter(function(el) {
// 						    return el.length > 0;
// 						  }))).map(function(str) {
// 						    return parseInt(str);
// 						  });
// 						}).flat(); 
// 				var membertotalamount = [...new Set(result)];
				
				var desiredRooms=orderroom[ppreviousMonth]+','+orderroom[previousMonth]+','+orderroom[currentMonth];
				const roomArray = desiredRooms.split(",");
				const filteredArray = roomArray.filter(name => name.trim() !== '');
				
				console.log(filteredArray)
				// 使用 reduce 方法計算每種房型出現的次數
				const roomCounts = filteredArray.reduce((acc, name) => {
				  // 確認目前累加器中是否已經有該房型的計數值，若無則設為 0
				  if (!acc[name]) {
				    acc[name] = 0;
				  }
				  // 將該房型的計數值加 1
				  acc[name]++;
				  return acc;
				}, {});

				
				const maxRoom = Object.entries(roomCounts).reduce((acc, [key, value]) => {
					  return value > acc.count ? { name: key, count: value } : acc;
					}, { name: "", count: 0 }).name;

				const roomNames = Object.keys(roomCounts);
				const roomValues = Object.values(roomCounts);
				
				var roomName = roomNames.filter(el => el);
				var roomValue = roomNames.filter(el => el);
				var ctx = document.getElementById('myChart').getContext('2d');
	        	var myChart = new Chart(ctx, {
		            type: 'line',
		            data: {
		                labels: desiredMonths,
		                datasets: [{
		                    label: '訂單數量',
		                    data: desiredOrders,
		                    fill: false,
		                    borderColor: '#8674A6',
		                }]
		            }
		        })
	        	
        	var num=$('#num')
	        num.append('<div class="number"><i class="fa-solid fa-bars-progress"></i></div><div class="title">訂單總計</div><div class="footer">'+ordernum+'</div></div>')

	        
	        var ctx2 = document.getElementById('myChart2').getContext('2d');
			var myChart2 = new Chart(ctx2, {
			    type: 'doughnut',
			    data: {
			        labels: desiredMonths,
			        datasets: [{
			            label: '訂單金額',
			            data: desiredOrderstotalamount,
			            backgroundColor: ['#00FF00', '#008080', '#32CD32'],
			            fill: false,
			            borderColor: '#43B5AD',
			        }]
			    },options: {
			        legend: {
			            position: 'right'
			        }
			    }
			})
			
			var totalamount=$('#totalamount')
	        totalamount.append('<div class="number"><i class="fa-solid fa-sack-dollar"></i></div><div class="title">金額總計</div><div class="footer">'+totalAmount+'</div></div>')
			
	        
		
			}
			
		})
		 
			
		
	})
	</script>
	<!-- end: JavaScript-->

</body>
</html>
 