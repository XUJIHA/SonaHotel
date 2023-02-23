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
</head>

<body>
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
		<div class="search-icon search-switch">
			<i class="icon_search"></i>
		</div>
		<div class="header-configure-area">
			<div class="language-option">
				<img src="img/flag.jpg" alt=""> <span>EN <i
					class="fa fa-angle-down"></i></span>
				<div class="flag-dropdown">
					<ul>
						<li><a href="#">Zi</a></li>
						<li><a href="#">Fr</a></li>
					</ul>
				</div>
			</div>
			<a href="<c:url value='search.controller'/>" class="bk-btn">Customer
				Data</a>
		</div>
		<nav class="mainmenu mobile-menu">
		<ul>
			<li><a href="origin.controller">Home</a></li>
			<li><a href="showallroom.controller">Rooms</a></li>
			<li><a href="searchorder.controller">Orders</a></li>
			<li><a href="<c:url value='/giftDisplay.controller'/>">Gifts</a></li>
			<li><a href="searchattractions">Attractions</a>
				<ul class="dropdown">
					<li><a href="addattractions">add Attractions</a></li>
				</ul></li>
			<li><a href="<c:url value='Homepage.controller'/>">Restaurant</a></li>
		</ul>
		</nav>
		<span class="color"><a href="searchorder.controller"><i
				class="fa-solid fa-cart-shopping" style="color: black"></i></a></span>
		<div class="nav-right search-switch">
			<i class="icon_search"></i>
		</div>
		<div id="mobile-menu-wrap"></div>
		<div class="top-social">
			<a href="#"><i class="fa fa-facebook"></i></a> <a href="#"><i
				class="fa fa-twitter"></i></a> <a href="#"><i
				class="fa-brands fa-line"></i></a> <a href="#"><i
				class="fa fa-instagram"></i></a> <a href="#"><i
				class="fa fa-youtube-play"></i></a>

		</div>
		<ul class="top-widget">
			<li><i class="fa fa-phone"></i> (12) 345 67890</li>
			<li><i class="fa fa-envelope"></i> info.colorlib@gmail.com</li>
		</ul>
	</div>
	<!-- Offcanvas Menu Section End -->

	<!-- Header Section Begin -->
	<header class="header-section header-normal">
	<div class="top-nav">
		<div class="container">
			<div class="row">
				<div class="col-lg-6">
					<ul class="tn-left">
						<li><i class="fa fa-phone"></i> (12) 345 67890</li>
						<li><i class="fa fa-envelope"></i> info.colorlib@gmail.com</li>
					</ul>
				</div>
				<div class="col-lg-6">
					<div class="tn-right">
						<div class="top-social">
							<a href="#"><i class="fa fa-facebook"></i></a> <a href="#"><i
								class="fa fa-twitter"></i></a> <a href="#"><i
								class="fa-brands fa-line"></i></a> <a href="#"><i
								class="fa fa-instagram"></i></a> <a href="#"><i
								class="fa fa-youtube-play"></i></a>
						</div>
						<a href="<c:url value='searchmember.controller' />" class="bk-btn">Customer
							Data</a>
						<div class="language-option">
							<img src="img/flag.jpg" alt=""> <span>EN <i
								class="fa fa-angle-down"></i></span>
							<div class="flag-dropdown">
								<ul>
									<li><a href="#">Zi</a></li>
									<li><a href="#">Fr</a></li>
								</ul>
							</div>
						</div>
						<div class="language-option">
							<a href="logout.controller"><i
								class="fa-solid fa-right-from-bracket"></i></a>
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
						<a href="origin.controller"> <img src="./img/logo.png" alt=""></a>
					</div>
				</div>
				<div class="col-lg-10">
					<div class="nav-menu">
						<nav class="mainmenu">
						<ul>
							<li><a href="origin.controller">Home</a></li>
							<li><a href="showallroom.controller">Rooms</a></li>
							<li><a href="<c:url value='/giftdisplay.controller'/>">Gifts</a></li>
							<li><a href="searchattractions">Attractions</a>
								<ul class="dropdown">
									<li><a href="addattractions">add Attractions</a></li>
								</ul></li>
							<li><a href="<c:url value='Homepage.controller'/>">Restaurant</a></li>
						</ul>
						</nav>
						<span class="color"><a href="searchorder.controller"><i
								class="fa-solid fa-cart-shopping" style="color: black"></i></a></span>
						<div class="nav-right search-switch">
							<i class="icon_search"></i>
						</div>
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
						<h2>Shopping Car</h2>
						<div class="bt-option">
							<a href="./home.html">Home</a> <span>Gifts</span>
						</div>
					</div>
				</div>
			</div>
		</div>
	</div>
	<!-- Breadcrumb Section End -->
<%--    <form action="<c:url value='/giftCartInsert.controller/${sid}'/>" method="post"> --%>
		<section class="ftco-section" style="margin: 30px">
		<div class="container">
			<div class="row">
				<div class="col-md-12">
					<div class="table-wrap">
						<table class="table table-striped table-hover" id="accordion"
							style="text-align: center;">
							<thead>
								<tr>
									<th>#</th>
									<th>伴手禮名稱</th>
									<th>價錢</th>
									<th>數量</th>
									<th>總金額</th>
									<th>修改</th>
									<th>刪除</th>
								</tr>
							</thead>
							<tbody>

								<c:forEach varStatus="stVar" var="bean" items="${beans}">
									<tr data-toggle="collapse" data-target="#collapseOne"
										aria-expanded="true" aria-controls="collapseOne">
										<th scope="row">${bean.scarid}</th>
										<td>${bean.sname}</td>
										<td>${bean.sprice}</td>
										 <td>
							                  <div class="cart-num__box">
<!-- 							                    <input type="button" class="sub" value="-"> -->
							                    <input type="text" class="val" value="${bean.scarnum}" maxlength="2">
<!-- 							                    <input type="button" class="add" value="+"> -->
							                  </div>
							             </td>

<%-- 										<Input id="newQty${vs.index}" style="width:28px;text-align:right" name="newQty" type="text" value="<fmt:formatNumber value="${anEntry.value.quantity}" />" name="qty" onkeypress="return isNumberKey(event)"  /> --%>
<%-- 										<td>${bean.scarnum}</td> --%>
										<td>${bean.totalamount}</td>
										
										<td><form action="/giftupdate.controller/${bean.scarid}" >
												<button style="border: 0; background-color: transparent"
													type="submit" name="scarid" value="${bean.scarid}">
													<i class="fa-regular fa-pen-to-square" style="color: gold"></i>
												</button>
											</form></td>
										<td><form action="/giftCartDelete.controller">
												<button style="border: 0; background-color: transparent"
													type="submit" name="scarid" value="${bean.scarid}">
													<i class="fa-solid fa-trash-can"></i>
<!-- 													<i class="fa-solid fa-xmark" style="color: red"></i> -->
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
<!-- 	</form> -->
	
	
	</div>

	</div>
	</div>
	</section>
	<!-- Room Details Section End -->

	<!-- Footer Section Begin -->
	<footer class="footer-section">
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
							We inspire and reach millions of travelers<br /> across 90 local
							websites
						</p>
						<div class="fa-social">
							<a href="#"><i class="fa fa-facebook"></i></a> <a href="#"><i
								class="fa fa-twitter"></i></a> <a href="#"><i
								class="fa fa-tripadvisor"></i></a> <a href="#"><i
								class="fa fa-instagram"></i></a> <a href="#"><i
								class="fa fa-youtube-play"></i></a>
						</div>
					</div>
				</div>
				<div class="col-lg-3 offset-lg-1">
					<div class="ft-contact">
						<h6>Contact Us</h6>
						<ul>
							<li>(12) 345 67890</li>
							<li>info.colorlib@gmail.com</li>
							<li>856 Cordia Extension Apt. 356, Lake, United State</li>
						</ul>
					</div>
				</div>
				<div class="col-lg-3 offset-lg-1">
					<div class="ft-newslatter">
						<h6>New latest</h6>
						<p>Get the latest updates and offers.</p>
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
						<li><a href="#">Contact</a></li>
						<li><a href="#">Terms of use</a></li>
						<li><a href="#">Privacy</a></li>
						<li><a href="#">Environmental Policy</a></li>
					</ul>
				</div>
				<div class="col-lg-5">
					<div class="co-text">
						<p>
							<!-- Link back to Colorlib can't be removed. Template is licensed under CC BY 3.0. -->
							Copyright &copy;
							<script>
								document.write(new Date().getFullYear());
							</script>
							All rights reserved | This template is made with <i
								class="fa fa-heart" aria-hidden="true"></i> by <a
								href="https://colorlib.com" target="_blank">Colorlib</a>
							<!-- Link back to Colorlib can't be removed. Template is licensed under CC BY 3.0. -->
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