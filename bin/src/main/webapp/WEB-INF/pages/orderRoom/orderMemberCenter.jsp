<%@ page language="java" contentType="text/html; charset=UTF-8"
	pageEncoding="UTF-8"%>
<%@ taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core"%>
<%@ taglib prefix="fmt" uri="http://java.sun.com/jsp/jstl/fmt"%>
<%@ taglib prefix="fn" uri="http://java.sun.com/jsp/jstl/functions"%>
<!DOCTYPE html>
<html lang="zxx">

<head>
<meta charset="UTF-8">
<meta name="description" content="Sona Template">
<meta name="keywords" content="Sona, unica, creative, html">
<meta name="viewport" content="width=device-width, initial-scale=1.0">
<meta http-equiv="X-UA-Compatible" content="ie=edge">
<title>Sona | 查詢訂單</title>

<!-- Google Font -->
<link
	href="https://fonts.googleapis.com/css?family=Lora:400,700&display=swap"
	rel="stylesheet">
<link
	href="https://fonts.googleapis.com/css?family=Cabin:400,500,600,700&display=swap"
	rel="stylesheet">

<!-- Css Styles -->
<!-- 絕對路徑 -->
<%
String path = request.getContextPath();
String basePath = request.getScheme() + "://" + request.getServerName() + ":" + request.getServerPort() + path + "/";
%>
<base href="<%=basePath%>">
<!-- 絕對路徑 -->
<link rel="stylesheet" href="css/bootstrap.min.css" type="text/css">
<link rel="stylesheet" href="css/dataTables.bootstrap5.min.css"
	type="text/css">
<link rel="stylesheet" href="css/font-awesome.min.css" type="text/css">
<link rel="stylesheet" href="css/elegant-icons.css" type="text/css">
<link rel="stylesheet" href="css/flaticon.css" type="text/css">
<link rel="stylesheet" href="css/owl.carousel.min.css" type="text/css">
<link rel="stylesheet" href="css/nice-select.css" type="text/css">
<link rel="stylesheet" href="css/jquery-ui.min.css" type="text/css">
<link rel="stylesheet" href="css/magnific-popup.css" type="text/css">
<link rel="stylesheet" href="css/slicknav.min.css" type="text/css">
<link rel="stylesheet" href="css/style.css" type="text/css">
</head>
<body>

	<!-- Page Preloder -->
	<div id="preloder">
		<div class="loader"></div>
	</div>

	<!-- Offcanvas Menu Section Begin -->
	<div class="offcanvas-menu-overlay"></div>
	<div class="canvas-open">
		<i class="icon_menu"></i>
	</div>
	<div class="offcanvas-menu-wrapper">
		<div class="canvas-close">
			<i class="icon_close"></i>
		</div>
		<div class="search-icon  search-switch">
			<i class="icon_search"></i>
		</div>
		<div class="header-configure-area">
			<a href="<c:url value='/users/searchmember.controller' />"
				class="bk-btn">${useremail}</a>
		</div>
		<nav class="mainmenu mobile-menu">
			<ul>
				<li><a href="/users/origin.controller">首頁</a></li>
				<li><a style="color:#dfa974" href="/users/mymembercenter.controller">會員中心</a></li>
				<li><a href="/showallroom.controller">房型</a></li>
				<li><a href="/users/giftdisplay.controller">伴手禮</a>
				    <ul class="dropdown">
			            <li><a href="/users/showgorder.controller">伴手禮訂單</a></li>
				    </ul>
				</li>
				<li><a href="attractions">景點</a>
					<ul class="dropdown">
						<li><a href="attractions">推薦景點</a></li>
						<li><a href="itinerary">套裝行程</a></li>
					</ul>
				</li>
				<li><a href="<c:url value='/SearchRestaurant.controller'/>">餐飲</a></li>
				<li><a href="/users/searchorder.controller">訂單</a></li>
			</ul>
		</nav>
		<div id="mobile-menu-wrap"></div>
		<div class="top-social">
			<a href="#"><i class="fa fa-facebook"></i></a> <a href="#"><i
				class="fa fa-twitter"></i></a> <a href="#"><i
				class="fa-brands fa-line"></i></a> <a href="#"><i
				class="fa fa-instagram"></i></a> <a href="#"><i
				class="fa fa-youtube-play"></i></a>
		</div>
		<ul class="top-widget">
			<li><i class="fa fa-phone"></i> (886) 908 581886</li>
			<li><i class="fa fa-envelope"></i> sonahotel2023@gmail.com</li>
		</ul>
	</div>
	<!-- Offcanvas Menu Section End -->

	<!-- Header Section Begin -->
	<header class="header-section">
		<div class="top-nav">
			<div class="container">
				<div class="row">
					<div class="col-lg-6">
						<ul class="tn-left">
							<li><i class="fa fa-phone"></i> (886) 908 581886</li>
							<li><i class="fa fa-envelope"></i> sonahotel2023@gmail.com</li>
						</ul>
					</div>
					<div class="col-lg-6">
						<div class="tn-right" >

							<div class="top-social">
								<a href="#"><i class="fa fa-facebook"></i></a> <a href="#"><i
									class="fa fa-twitter"></i></a> <a href="#"><i
									class="fa-brands fa-line"></i></a> <a href="#"><i
									class="fa fa-instagram"></i></a> <a href="#"><i
									class="fa fa-youtube-play"></i></a>
							</div>
							<a href="<c:url value='/users/searchmember.controller' />"
								class="bk-btn">${useremail}</a>
							<div class="language-option">
								<span class="color"><i
									class="fa-solid fa-right-from-bracket" id="delete"
									style="color: black"><script type="text/javascript"
											src="/js/logout.js"></script></i></span>
							</div>
						</div>
					</div>
				</div>
			</div>
		</div>
		<div class="menu-item">
			<div class="container">
				<div class="row">
					<div class="col-lg-2">
						<div class="logo">
							<a href="/admin/backgroundIndex.controller"> <img
								src="./img/logo.png" alt=""></a>
						</div>
					</div>
					<div class="col-lg-10">
						<div class="nav-menu">
							<nav class="mainmenu">
								<ul>
									<li><a href="/users/origin.controller">首頁</a></li>
									<li class="active"><a href="/users/mymembercenter.controller">會員中心</a></li>
									<li><a href="/showallroom.controller">房型</a></li>
									<li><a href="/users/giftdisplay.controller">伴手禮</a>
									    <ul class="dropdown">
								            <li><a href="/users/showgorder.controller">伴手禮訂單</a></li>
									    </ul>
									</li>
									<li><a href="attractions">景點</a>
										<ul class="dropdown">
											<li><a href="attractions">推薦景點</a></li>
											<li><a href="itinerary">套裝行程</a></li>
										</ul>
									</li>
									<li><a href="<c:url value='/SearchRestaurant.controller'/>">餐飲</a></li>
								</ul>
							</nav>
							<span class="color"><a href="/users/searchorder.controller"><i
									class="fa-solid fa-cart-shopping" style="color: black;font-size:20px"></i></a></span>
							<div class="nav-right search-switch">
								<i class="icon_search"></i>
							</div>
							<br>
						</div>
					</div>
				</div>
			</div>
		</div>
	</header>
	<!-- Header End -->
	
 	<!-- About Us Page Section Begin -->
	<div class="breadcrumb-section">
		<div class="container">
			<div class="row">
				<div class="col-lg-12">
					<div class="breadcrumb-text">
						<h1 style="font-weight: bold;">會員中心</h1>
					</div>
				</div>
			</div>
		</div>
	</div>

    <section class="aboutus-page-section spad">
        <div class="container">
            <div class="about-page-text">
                <div class="row">
                    <div class="col-lg-6">
                        <div class="ap-title">
                        <br>
                            <h2>歡迎來到 Sona</h2>
                            <p style="font-size:24px" >位於台北市中心，方便前往市內的旅遊景點。</p>
                			<p style="font-size:24px" >提供您精美的客房、伴手禮、餐廳訂位與行程規劃。</p>          
                 		</div>
                    </div>
                    <div class="col-lg-5 offset-lg-1" >
                        <ul class="ap-services" style="margin:0 20%">
                            <li style="font-size:24px" id="showmember"><i class="fa-solid fa-hashtag"></i>我的會員資訊</li>
                            <li style="font-size:24px" id="showorder"><i class="fa-solid fa-hashtag"></i>房間訂單資訊</li>
                            <li style="font-size:24px" id="showgiftorder"><i class="fa-solid fa-hashtag"></i>伴手禮訂單資訊</li>
                            <li style="font-size:24px" id="showcollect"><i class="fa-solid fa-hashtag"></i>行程收藏資訊</li>
                            <li style="font-size:24px" id="showrestaurant"><i class="fa-solid fa-hashtag"></i>餐廳訂位資訊</li>
                        </ul>
                    </div>
                </div>
            </div>
        </div>
    </section>
    <!-- About Us Page Section End -->
    
   	<section id="member"  class="services-section spad" style="margin: 30px;border-top: 1px solid #e5e5e">
		<div class="container">
			<div class="breadcrumb-text">
				<h2 style="font-weight: bold;">我的會員資訊</h2>
				<br><br>
			</div>
		<div class="col-lg-10 offset-lg-1">
			<div class="blog-details-text">
				<div class="leave-comment">
					<form style="font-size:20px" action='/users/searchmember.controller' class="comment-form" enctype='multipart/form-data' method='POST' onsubmit="return removeField();">
							<input type="hidden" name="userid" value="${user.userid}">
						<div class="row">
							<div class="col-lg-6">
								姓名: <input style="font-size:20px" type="text" name="username" id="username" value="${user.username}" readonly/>

							</div>
							<div class="col-lg-6" >
								E-mail:
							  <div style="display: flex; align-items: center;">
							   <input style="font-size:20px" type="email" name="useremail" id="useremail" value="${user.useremail}" readonly/>
							  </div>
							</div>
							
							<div class="col-lg-6">
								密碼:<input style="font-size:20px" type="password" name="userpassword" id="userpassword" value="${user.userpassword}" size=30 placeholder="需輸入至少8碼英文大小寫和數字" pattern="(?=.*[a-z])(?=.*[A-Z])(?=.*\d)[a-zA-Z\d]{8,}" readonly/>
								
							</div>
							
							<div class="col-lg-6">
								E-mail 是否驗證:<input style="font-size:20px" type="text" name="userstatus" id="userstatus" value="${user.userstatus}" readonly />
							</div>
							
							<div class="col-lg-6">
								生日: <input style="font-size:20px" type="date" name="userbirthday" id="userbirthday" value="${user.userbirthday}" readonly/>
							</div>
							
							<div class="col-lg-6">
								註冊日期:<input style="font-size:20px" type="date" name="userregistration" id="userregistration" value="<%=new java.text.SimpleDateFormat("yyyy-MM-dd").format(new java.util.Date())%>" readonly />
							</div>		
							
							<div class="col-lg-6">
								國家： <input style="font-size:20px" type="tel" name="usercountry" id="usercountry" value="${user.usercountry}" readonly/>
							</div>
							
							<div class="col-lg-6">
								電話號碼: <input style="font-size:20px" type="tel" name="userphone" id="userphone" value="${user.userphone}" readonly/>
							</div>
							
							<div class="col-lg-6">
								身分證字號: <input style="font-size:20px" type="text" name="useridentity" id="useridentity" value="${user.useridentity}" readonly>
							</div>
							
							<div class="col-lg-6">
								護照號碼: <input style="font-size:20px" type="text" name="useridentity" id="passport" value="${user.useridentity}" maxlength="10" readonly />
							</div>

							<div class="col-lg-6">
								地址：<input style="font-size:20px" type="text" name="useraddress" size=30 value="${user.useraddress}" readonly/>
							</div>
							
							<div class="col-lg-6">
								性別:<input style="font-size:20px" type="text" name="usergender" id="usergender" value="${user.usergender}" maxlength="1" readonly /> 
							</div>

							<div class="col-lg-12 text-center">
								<button style="margin: 20px 20px;font-size:20px" id="registeraccount" type="submit">修改</button>&nbsp;&nbsp;
							</div>
							
						</div>
					</form>							
					</div>
					<br> <br>
				</div>
			</div>
		</div>
	</section>
	
	<section id="order"  class="services-section spad" style="margin: 30px;border-top: 1px solid #e5e5e">
		<div class="container">
			<div class="breadcrumb-text">
						<h2 style="font-weight: bold;">房間訂單資訊</h2>
						<br><br>
			</div>
			<div class="row"style="font-size:20px">
				<div class="col-md-12">
					<div class="table-wrap">
						<table style="font-weight: bold;"
							class="table table-striped table-hover" id="table">
							<thead>
								<tr>
									<th style="vertical-align: middle; text-align: center;">訂單日期</th>
									<th style="vertical-align: middle; text-align: center">訂購姓名</th>
									<th style="vertical-align: middle; text-align: center">訂購房型</th>
									<th style="vertical-align: middle; text-align: center">入住日期</th>
									<th style="vertical-align: middle; text-align: center">退房日期</th>
									<th style="vertical-align: middle; text-align: center">金額</th>
									<th style="vertical-align: middle; text-align: center">狀態</th>
									<th style="vertical-align: middle; text-align: center">查詢</th>
								</tr>
							</thead>
							<tbody>

								<c:forEach var="orderbean" items="${orderbean}">
									<tr data-toggle="collapse" data-target="#collapseOne"
										aria-expanded="true" aria-controls="collapseOne">
										<td style="vertical-align: middle; text-align: center">${orderbean.orderdate}</td>
										<td style="vertical-align: middle; text-align: center">${orderbean.username}</td>
										<td style="vertical-align: middle; text-align: center">${orderbean.roomname}</td>
										<td style="vertical-align: middle; text-align: center">${orderbean.checkindate}</td>
										<td style="vertical-align: middle; text-align: center">${orderbean.checkoutdate}</td>
										<td style="vertical-align: middle; text-align: center">${orderbean.price}</td>
										<td style="vertical-align: middle; text-align: center"><span
											class=status>${orderbean.canceltag}</span></td>
										<td style="vertical-align: middle; text-align: center"><form
												action="/users/searchdetailsm.controller" method="POST">
												<button style="border: 0; background-color: transparent"
													type="submit" name="orderid" value="${orderbean.orderid}">
													<i class="fa-solid fa-magnifying-glass"></i>
												</button>
											</form></td>
									</tr>
								</c:forEach>

							</tbody>

						</table>
					</div>
				</div>
			</div>
		</div>
	</section>
	<section id="giftorder"  class="services-section spad" style="margin: 30px;border-top: 1px solid #e5e5e">
		<div class="container">
			<div class="breadcrumb-text">
						<h2 style="font-weight: bold;">伴手禮訂單資訊</h2>
						<br><br>
			</div>
			<div class="row"style="font-size:20px">
				<div class="col-md-12">
					<div class="table-wrap">
						<table style="font-weight: bold;"
							class="table table-striped table-hover" id="table2">
							<thead>
								<tr>
									<th style="vertical-align: middle; text-align: center;">#</th>
									<th style="vertical-align: middle; text-align: center">訂單日期</th>
									<th style="vertical-align: middle; text-align: center">總金額</th>
									<th style="vertical-align: middle; text-align: center">查詢</th>
									<th style="vertical-align: middle; text-align: center">取消訂單</th>
								</tr>
							</thead>
							<tbody>

								<c:forEach var="gorder" items="${gorder}">
									<tr data-toggle="collapse" data-target="#collapseOne"
										aria-expanded="true" aria-controls="collapseOne">
										<td style="vertical-align: middle; text-align: center">${gorder.giftorderid}</td>
										<td style="vertical-align: middle; text-align: center">${gorder.orderdate}</td>
										<td style="vertical-align: middle; text-align: center">${gorder.totalamount}</td>
										<td style="vertical-align: middle; text-align: center">
										<a href="<c:url value='/users/usersorderDetail2.controller/${gorder.giftorderid}'/>">詳細內容</a></td>
										<td  style="vertical-align: middle; text-align: center">
											<button style="border: 0; background-color: transparent"
												class="delete" type="submit" name="giftorderid"
												value="${gorder.giftorderid}">
												<i class="fa-solid fa-trash-can"></i>
											</button>
										</td>
									</tr>
								</c:forEach>

							</tbody>

						</table>
					</div>
				</div>
			</div>
		</div>
	</section>
	<section id="collectlist" class="services-section spad" style="margin: 30px;border-top: 1px solid #e5e5e">
		<div class="container">
			<div class="breadcrumb-text">
							<h2 style="font-weight: bold;">行程收藏資訊</h2>
							<br><br>
			</div>
			<div class="row"style="font-size:20px">
				<div class="col-md-12">
					<div class="table-wrap" >
						<table id="table3" style="font-weight: bold;"
							class="table table-striped table-hover">
							<thead>
								<tr>
									<th style="vertical-align: middle; text-align: center;">活動標題</th>
									<th style="vertical-align: middle; text-align: center">景點</th>
									<th style="vertical-align: middle; text-align: center">類型</th>
									<th style="vertical-align: middle; text-align: center">收藏</th>
								</tr>
							</thead>
							<tbody>
								<c:forEach var="list" items="${list}">
									<tr data-toggle="collapse" data-target="#collapseOne"
										aria-expanded="true" aria-controls="collapseOne">
										<td style="vertical-align: middle; text-align: center">${list.title}</td>
										<td style="vertical-align: middle; text-align: center">${list.attractions}</td>
										<td style="vertical-align: middle; text-align: center">${list.itype}</td>
										<td style="vertical-align: middle; text-align: center"><form id="collectform"
												action="/users/mymembercenter.controller" method="GET">
												<button class="cancelcollect" style="border: 0; background-color: transparent"
													type="button" name="orderid" value="${list.id}">
														<i class='fa-solid fa-heart' ></i>
												</button>
											</form></td>
									</tr>
								</c:forEach>

							</tbody>

						</table>
					</div>
				</div>
			</div>
		</div>
	</section>
	<section id="restaurantorder" class="services-section spad" style="margin: 30px;border-top: 1px solid #e5e5e">
		<div class="container">
			<div class="breadcrumb-text">
							<h2 style="font-weight: bold;">餐廳訂位資訊</h2>
							<br><br>
			</div>
			<div class="row"style="font-size:20px">
				<div class="col-md-12">
					<div class="table-wrap" >
						<table id="table4" style="font-weight: bold;"
							class="table table-striped table-hover">
							<thead>
								<tr>
									<th style="vertical-align: middle; text-align: center">訂位日期</th>
									<th style="vertical-align: middle; text-align: center;">會員姓名</th>
									<th style="vertical-align: middle; text-align: center">預訂店家</th>
									<th style="vertical-align: middle; text-align: center">時段</th>
									<th style="vertical-align: middle; text-align: center">包廂</th>
									<th style="vertical-align: middle; text-align: center">總金額</th>
									<th style="vertical-align: middle; text-align: center">取消</th>
								</tr>
							</thead>
							<tbody>

								<c:forEach var="arrange" items="${arrange}">
									<tr data-toggle="collapse" data-target="#collapseOne"
										aria-expanded="true" aria-controls="collapseOne">
										<td style="vertical-align: middle; text-align: center">${arrange.day}</td>
										<td style="vertical-align: middle; text-align: center">${arrange.arrangename}</td>
										<td style="vertical-align: middle; text-align: center">${arrange.resname}</td>
										<td style="vertical-align: middle; text-align: center">${arrange.eattime}</td>
										<td style="vertical-align: middle; text-align: center">${arrange.people}人</td>
										<td style="vertical-align: middle; text-align: center">${arrange.price}</td>
										
										<td style="vertical-align: middle; text-align: center"><form id="arrangeform"
												action="users/mymembercenter.controller" method="GET">
												<button class="cancelarrange" style="border: 0; background-color: transparent"
													type="button" name="arrangenumber" value="${arrange.arrangenumber}">
													<i class="fa-solid fa-xmark" style="color: red"></i>
												</button>
											</form></td>
									</tr>
								</c:forEach>

							</tbody>


						</table>
					</div>
				</div>
			</div>
		</div>
	</section>
	
		
			
					<div class="blog-details-text">
						<div class="leave-comment">
							<form class="comment-form" >
								<div class="row">
									<div class="col-lg-12 text-center">
										<button style="margin: 20px 20px;font-size:20px" id="showtop" type="button">回到頂端</button>&nbsp;&nbsp;
									</div>
								</div>
							</form>							
							</div>
						</div>
					
	


	<!-- Footer Section Begin -->
	<footer class="footer-section" style="margin-top: 100px;">
		<div class="container">
			<div class="footer-text">
				<div class="row">
					<div class="col-lg-4">
						<div class="ft-about">
							<div class="logo">
								<a href="#"> <img src="img/footer-logo.png" alt="">
								</a>
							</div>
							<p>
								位於台北市中心，方便前往市內的旅遊景點。<br>
								提供您精美客房、伴手禮、餐廳訂位與行程規劃。
							</p>
							<div class="fa-social">
								<a href="#"><i class="fa fa-facebook"></i></a> <a href="#"><i
									class="fa fa-twitter"></i></a> <a href="#"><i
									class="fa-brands fa-line"></i></a> <a href="#"><i
									class="fa fa-instagram"></i></a> <a href="#"><i
									class="fa fa-youtube-play"></i></a>
							</div>
						</div>
					</div>
					<div class="col-lg-3 offset-lg-1">
						<div class="ft-contact">
							<h6>聯絡我們</h6>
							<ul>
								<li>(886) 908 581886</li>
								<li>sonahotel2023@gmail.com</li>
								<li>110台北市信義區忠孝東路五段10號</li>
							</ul>
						</div>
					</div>
					<div class="col-lg-3 offset-lg-1">
						<div class="ft-newslatter">
							<h6>最新消息</h6>
							<p>獲取最新的更新和優惠。</p>
							<form action="#" class="fn-form">
								<input type="text" placeholder="Email">
								<button type="submit">
									<i class="fa fa-send"></i>
								</button>
							</form>
						</div>
					</div>
				</div>
			</div>
		</div>
		<div class="copyright-option">
			<div class="container">
				<div class="row">
					<div class="col-lg-7">
						<ul>
							<li><a href="#">聯繫我們</a></li>
							<li><a href="#">使用條款</a></li>
							<li><a href="#">隱私政策</a></li>
							<li><a href="#">環境政策</a></li>
						</ul>
					</div>
					<div class="col-lg-5">
						<div class="co-text">
							<p>
								
								Copyright &copy;
								<script>
  									document.write(new Date().getFullYear()); 
								</script> 
								All rights reserved by <a
									href="http://localhost:8081/" target="_blank">Sona Hotel</a>
								
							</p>
						</div>
					</div>
				</div>
			</div>
		</div>
	</footer>
	<!-- Footer Section End -->
	
	<!-- Search model Begin -->
	<div class="search-model">
		<div class="h-100 d-flex align-items-center justify-content-center">
			<div class="search-close-switch">
				<i class="icon_close"></i>
			</div>
			<form class="search-model-form">
				<input type="text" id="search-input" placeholder="Search here.....">
			</form>
		</div>
	</div>
	<!-- Search model end -->
	
	<!-- Js Plugins -->
	<script src="/js/jquery-3.3.1.min.js"></script>
	<script src="/js/bootstrap.min.js"></script>
	<script src="/js/jquery.dataTables.min.js"></script>
	<script src="/js/dataTables.bootstrap5.min.js"></script>
	<script src="/js/jquery.magnific-popup.min.js"></script>
	<script src="/js/jquery.nice-select.min.js"></script>
	<script src="/js/jquery-ui.min.js"></script>
	<script src="/js/jquery.slicknav.js"></script>
	<script src="/js/owl.carousel.min.js"></script>
	<script src="/js/main.js"></script>
	<script src="//cdn.jsdelivr.net/npm/sweetalert2@11"></script>
	<script src="https://kit.fontawesome.com/27e0c99202.js" crossorigin="anonymous"></script>
	<script>
	window.onload = function() {
	  var table =  $('#table').DataTable();
	  var table2 =  $('#table2').DataTable();
	  var table3 =  $('#table3').DataTable();
	  var table4 =  $('#table4').DataTable();
	  const rows = document.querySelectorAll("#table tbody tr");
	  rows.forEach((row) => {
	    const status = row.querySelector("td span.status");
		console.log(status.textContent);
		
	  	if (status.textContent === "已付款") {
	      status.style.color = "#43B5AD";
	    }
	    if (status.textContent === "待審核") {
	    	status.style.color = "#DEB948";
		    } 
	    if (status.textContent === "已取消") {
	    	status.style.color = "#E25A59";
		    } 
	    table.on('draw', function() {
		      const rows = document.querySelectorAll("#table tbody tr");
		      rows.forEach((row) => {
		         const status = row.querySelector("td span.status");

		     	if (status.textContent === "已付款") {
		  	      status.style.color = "#43B5AD";
		  	    }
		  	    if (status.textContent === "待審核") {
		  	    	status.style.color = "#DEB948";
		  		    } 
		  	    if (status.textContent === "已取消") {
		  	    	status.style.color = "#E25A59";
		  		    } 
		      });
		   });
	  });
	}	
	</script>
	<script>
	document.getElementById("showmember").addEventListener("click", function() {
		 document.getElementById('member').scrollIntoView();
		}); 
	document.getElementById("showorder").addEventListener("click", function() {
		 document.getElementById('order').scrollIntoView();
		}); 
	document.getElementById("showgiftorder").addEventListener("click", function() {
		 document.getElementById('giftorder').scrollIntoView();
		});
	document.getElementById("showcollect").addEventListener("click", function() {
		 document.getElementById('collectlist').scrollIntoView();
		}); 
	document.getElementById("showrestaurant").addEventListener("click", function() {
		 document.getElementById('restaurantorder').scrollIntoView();
		}); 
	document.getElementById("showtop").addEventListener("click", function() {
		window.scrollTo(0, 0);
		}); 

	$(".cancelcollect").click(function() {
		 let pageid=$(this).attr("value");
			Swal.fire({
	            title: '確定取消此收藏?',
	            icon: 'warning',
	            showCancelButton: true,
	            confirmButtonColor: 'red',
	            cancelButtonColor: 'gray',
	            confirmButtonText: '確定',
	            cancelButtonText:'取消'
	          }).then((result) => {
	              if (result.isConfirmed) {
	                  $.ajax({
	                    url:'/users/cancelcollect',
	                    method:"post",
	                    dataType:"text",
	                    data: {"pageId":pageid},
	                    success: (function(data){                    
	                  	  Swal.fire({
	          				  position: 'center',
	          	              title: '收藏取消完成囉!',
	          	              icon: 'success',
	          	              confirmButtonText: '確定',
	          			 }).then((result) => {
	          	         	if (result.isConfirmed) {
	          	                	$('#collectform').submit(); 
	          	                }
	               	  	   })
	                    })
	                  })
	              }//if
	            })//then
		});
	
		$(".cancelarrange").click(function() {
		 let arrangeid=$(this).attr("value");
		Swal.fire({
            title: '確定取消此訂位?',
            icon: 'warning',
            showCancelButton: true,
            confirmButtonColor: 'red',
            cancelButtonColor: 'gray',
            confirmButtonText: '確定',
            cancelButtonText:'取消'
          }).then((result) => {
              if (result.isConfirmed) {
                  $.ajax({
                    url:'/users/DeleteArrangebyid.controller',
                    method:"post",
                    dataType:"text",
                    data: {"arrangenumber":arrangeid},
                    success: (function(data){                    
                  	  Swal.fire({
          				  position: 'center',
          	              title: '訂位取消完成囉!',
          	              icon: 'success',
          	              confirmButtonText: '確定',
          			 }).then((result) => {
          	         	if (result.isConfirmed) {
          	                	$('#arrangeform').submit(); 
          	                }
               	  	   })
                    })
                  })
              }//if
            })//then
		 
		});
		
		$('.delete').click(function(){
	        let id=$(this).attr("value");
	        console.log(id)
		       Swal.fire({
	            title: '確定取消此訂單?',
	            icon: 'warning',
	            showCancelButton: true,
	            confirmButtonColor: 'red',
	            cancelButtonColor: 'gray',
	            confirmButtonText: '確定',
	            cancelButtonText:'取消'
	          }).then((result) => {
	            if (result.isConfirmed) {
	                $.ajax({
	                  url:'/users/deletegiftOrder.controller',
	                  method:"post",
	                  dataType:"text",
	                  data: {"giftorderid":id},
	                  success: (function(data){                    
	                  	  Swal.fire({
	          				  position: 'center',
	          	              title: '訂單取消完成囉!',
	          	              icon: 'success',
	          	              confirmButtonText: '確定',
	          			 }).then((result) => {
	          	         	if (result.isConfirmed) {
	          	         		$(location).attr('href', 'users/mymembercenter.controller')
	          	                }
	               	  	   })
	                    })
	                  })
	            }//if
	          })//then
	      });//click end
		
	</script>
	<input type="hidden" value="${username}" id="user">
	<script type="text/javascript">
       var username = document.getElementById("user").value;
       console.log(username);
    </script>
</body>



</html>