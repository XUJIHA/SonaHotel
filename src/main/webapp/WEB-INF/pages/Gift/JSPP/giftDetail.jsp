<%@page import="tw.hotel.gift.model.*"%>
<%@ page language="java" contentType="text/html; charset=UTF-8"
	pageEncoding="UTF-8"%>
<!DOCTYPE html PUBLIC "-//W3C//DTD HTML 4.01 Transitional//EN" 
               "http://www.w3.org/TR/html4/loose.dtd">
<%@ taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core"%>
<%@ taglib prefix="fmt" uri="http://java.sun.com/jsp/jstl/fmt"%>
<%@ taglib prefix="fn" uri="http://java.sun.com/jsp/jstl/functions"%>

<html lang="zxx">

<head>
<meta charset="UTF-8">
<meta name="description" content="Sona Template">
<meta name="keywords" content="Sona, unica, creative, html">
<meta name="viewport" content="width=device-width, initial-scale=1.0">
<meta http-equiv="X-UA-Compatible" content="ie=edge">
<title>Sona | Template</title>
<style type="text/css">

.bt-option{
	font-size:35px;
}
.return{
 	font-size:35px !important;
	font-weight:blod;
}
</style>
<!-- Google Font -->
<link
	href="https://fonts.googleapis.com/css?family=Lora:400,700&display=swap"
	rel="stylesheet">
<link
	href="https://fonts.googleapis.com/css?family=Cabin:400,500,600,700&display=swap"
	rel="stylesheet">
<script src="https://kit.fontawesome.com/27e0c99202.js"
	crossorigin="anonymous"></script>
<script type="text/javascript">

function setFocus()
{
     document.getElementById("sid").focus();
}
</script>
<!-- 絕對路徑 -->
<%
String path = request.getContextPath();
String basePath = request.getScheme() + "://" + request.getServerName() + ":" + request.getServerPort() + path + "/";
%>
<base href="<%=basePath%>">
<!-- Css Styles -->
<link rel="stylesheet" href="css/bootstrap.min.css" type="text/css">
<link rel="stylesheet" href="css/font-awesome.min.css" type="text/css">
<link rel="stylesheet" href="css/elegant-icons.css" type="text/css">
<link rel="stylesheet" href="css/flaticon.css" type="text/css">
<link rel="stylesheet" href="css/owl.carousel.min.css" type="text/css">
<link rel="stylesheet" href="css/nice-select.css" type="text/css">
<link rel="stylesheet" href="css/jquery-ui.min.css" type="text/css">
<link rel="stylesheet" href="css/magnific-popup.css" type="text/css">
<link rel="stylesheet" href="css/slicknav.min.css" type="text/css">
<link rel="stylesheet" href="css/style.css" type="text/css">
<script src="//cdn.jsdelivr.net/npm/sweetalert2@11"></script>
</head>

<body>
	<input type="hidden" value="${username}" id="user"/>
    <script type="text/javascript">
       var username = document.getElementById("user").value;
       console.log(username);
    </script>
	<c:choose>
		<c:when test="${not empty param.sid }">
			<c:set var="sname" value='${bean.sname}' />
			<c:set var="sno" value='${bean.sno}' />
			<c:set var="sprice" value='${bean.sprice}' />
			<c:set var="sdes" value='${bean.sdes}' />
			<c:set var="snum" value='${bean.snum}' />
		</c:when>
		<c:otherwise>
			<!-- 
     <c:out value="第二次"/>
      -->
			<c:set var="sname" value='${bean.sname}' />
			<c:set var="sno" value='${bean.sno}' />
			<c:set var="sprice" value='${bean.sprice}' />
			<c:set var="sdes" value='${bean.sdes}' />
			<c:set var="snum" value='${bean.snum}' />
		</c:otherwise>
	</c:choose>
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
				<li><a href="/users/mymembercenter.controller">會員中心</a></li>
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
									class="fa-solid fa-right-from-bracket" style="font-size:18px" id="delete"
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
									<li><a href="/users/mymembercenter.controller">會員中心</a></li>
									<li><a href="/showallroom.controller">房型</a></li>
									<li><a href="/users//giftdisplay.controller">伴手禮</a>
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
									class="fa-solid fa-cart-shopping" style="color: black"></i></a></span>
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

	<!-- Breadcrumb Section Begin -->
	<div class="breadcrumb-section">
		<div class="container">
			<div class="row">
				<div class="col-lg-12">
					<div class="breadcrumb-text">
						
						<div class="bt-option">

							

							
							<a href="users/giftdisplay.controller"style="font-weight:blod;font-size:25px;"><i class="fa-solid fa-gift"></i>&nbsp;顯示所有伴手禮</a> 

						</div>
					</div>
				</div>
			</div>
		</div>
	</div>
<!-- 	<div class="breadcrumb-section"> -->
<!-- 		<div class="container"> -->
<!-- 			<div class="row"> -->
<!-- 				<div class="col-lg-12"> -->
<!-- 					<div class="breadcrumb-text"> -->
<!-- 						<div class="bt-option"> -->
<!-- 							<a href="showallroom.controller" style="color: darkgray"><b>顯示全部房型</b></a> -->
<!-- 							<span>Rooms</span> -->
<!-- 						</div> -->
<!-- 					</div> -->
<!-- 				</div> -->
<!-- 			</div> -->
<!-- 		</div> -->
<!-- 	</div> -->
	<!-- Breadcrumb Section End -->
	<form action="/users/giftshoppingCart.controller" method="post">
		<section class="room-details-section spad">
		<div class="container">
			<div class="row">
				<div class="col-lg-8">
					<div class="room-details-item">
						<img
							src="<c:url value='/users/getsouimage.controller/
                     ${bean.sid}' />" />

						<div class="rd-text">
							<div class="rd-title">
								<h3>${sname}</h3>
								<div class="rdt-right">
									<div class="rating">
										<i class="icon_star"></i> <i class="icon_star"></i> <i
											class="icon_star"></i> <i class="icon_star"></i> <i
											class="icon_star-half_alt"></i>
									</div>
									<input name="sid" type="hidden" id="sid" value ="${sid}" />
									<input name="sname" type="hidden" id="sname" value ="${sname}" />
									<input name="snum" type="hidden" id="snum" value ="${snum}" />
									<input name="sprice" type="hidden" id="sprice" value ="${sprice}" />
 									<div class="col-lg-12 text-center">
										<button type="submit" class="site-btn" style=" background-color:#DFA974; color:white;  font-size:19px; line-height:35px;  letter-spacing:2px;border:hidden;">加入購物車</button>
									</div>
								</div>
							</div>
							<h2>${sprice}<span>價錢</span>
							</h2>
							<table>
								<tbody>
									<tr>
										<td class="r-o">數量:</td>
										<td>${snum}</td>
									</tr>
								</tbody>
							</table>
							<p class="f-para">${sdes}</p>

						</div>
					</div>
	</form>
	<div class="rd-reviews">
		<h4>Reviews</h4>
		<div class="review-item">
			<div class="ri-pic">
				<img src="img/room/avatar/avatar-1.jpg" alt="">
			</div>
			<div class="ri-text">
				<span>27 Aug 2019</span>
				<div class="rating">
					<i class="icon_star"></i> <i class="icon_star"></i> <i
						class="icon_star"></i> <i class="icon_star"></i> <i
						class="icon_star-half_alt"></i>
				</div>
				<h5>Brandon Kelley</h5>
				<p>Neque porro qui squam est, qui dolorem ipsum quia dolor sit
					amet, consectetur, adipisci velit, sed quia non numquam eius modi
					tempora. incidunt ut labore et dolore magnam.</p>
			</div>
		</div>
		<div class="review-item">
			<div class="ri-pic">
				<img src="img/room/avatar/avatar-2.jpg" alt="">
			</div>
			<div class="ri-text">
				<span>27 Aug 2019</span>
				<div class="rating">
					<i class="icon_star"></i> <i class="icon_star"></i> <i
						class="icon_star"></i> <i class="icon_star"></i> <i
						class="icon_star-half_alt"></i>
				</div>
				<h5>Brandon Kelley</h5>
				<p>Neque porro qui squam est, qui dolorem ipsum quia dolor sit
					amet, consectetur, adipisci velit, sed quia non numquam eius modi
					tempora. incidunt ut labore et dolore magnam.</p>
			</div>
		</div>
	</div>
	<div class="review-add">
		<h4>Add Review</h4>
		<form action="#" class="ra-form">
			<div class="row">
				<div class="col-lg-6">
					<input type="text" placeholder="Name*">
				</div>
				<div class="col-lg-6">
					<input type="text" placeholder="Email*">
				</div>
				<div class="col-lg-12">
					<div>
						<h5>You Rating:</h5>
						<div class="rating">
							<i class="icon_star"></i> <i class="icon_star"></i> <i
								class="icon_star"></i> <i class="icon_star"></i> <i
								class="icon_star-half_alt"></i>
						</div>
					</div>
					<textarea placeholder="Your Review"></textarea>
					<button type="submit">Submit Now</button>
				</div>
			</div>
		</form>
	</div>
	</div>

	</div>
	</div>
	</section>
	<!-- Room Details Section End -->

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
	<script src="js/jquery-3.3.1.min.js"></script>
	<script src="js/bootstrap.min.js"></script>
	<script src="js/jquery.magnific-popup.min.js"></script>
	<script src="js/jquery.nice-select.min.js"></script>
	<script src="js/jquery-ui.min.js"></script>
	<script src="js/jquery.slicknav.js"></script>
	<script src="js/owl.carousel.min.js"></script>
	<script src="js/main.js"></script>
</body>

</html>