<%@ page language="java" contentType="text/html; charset=UTF-8"
	pageEncoding="UTF-8"%>
<%-- <%@ taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core"%>
<%@ taglib prefix="fmt" uri="http://java.sun.com/jsp/jstl/fmt"%>
<%@ taglib prefix="fn" uri="http://java.sun.com/jsp/jstl/functions"%> --%>
<!DOCTYPE html>
<html lang="zxx">

<head>
<meta charset="UTF-8">
<meta name="description" content="Sona Template">
<meta name="keywords" content="Sona, unica, creative, html">
<meta name="viewport" content="width=device-width, initial-scale=1.0">
<meta http-equiv="X-UA-Compatible" content="ie=edge">
<title>Sona | 新增訂單</title>

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
				<li><a style="color:#dfa974" href="/users/searchorder.controller">訂單</a></li>
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
								</ul>
							</nav>
							<a href="/users/searchorder.controller"><i
								class="fa-solid fa-cart-shopping" style="color: #dfa974;font-size:20px"></i></a>
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
						<h1 style="font-weight: bold;">訂單管理</h1>
						<br>
						<div class="bt-option" style="font-size: 110%">
							<h4>
								<a style="font-size: 110%; font-weight: bold;"
									href="/users/searchorder.controller">訂單管理&nbsp;&nbsp;</a><span
									style="font-size: 110%; color: #dfa974; font-weight: 450;">&nbsp;新增訂單</span>
							</h4>
						</div>
					</div>
				</div>
			</div>
		</div>
	</div>
	
	<section class="blog-details-section">
		<div class="container">
			<div class="row">
				<div class="col-lg-10 offset-lg-1">
					<div class="blog-details-text">

						<div class="leave-comment">
							
									<div class="col-lg-12">
									<h2>房型資訊</h2>
										<hr style="border-top: 2px dashed #dfa974;">
										<br>
									</div>
							<form style="font-size:20px"id="insert" action="users/checkorder.controller"
							
								method="POST" class="comment-form">
								<div class="row">
									<input type="hidden" name="roomId" id="roomid"
										value="${roombean.roomId}"> 
									<input type="hidden"
										name="userid" id="userid" value="${user.userid}"> 
									<input
										type="hidden" name="today" id="today" value="${today}">
									<div class="col-lg-12">
									<div class="blog-details-text" style="text-align: center">
										<img style="text-align: center"
											src="showroomimg.controller?roomId=${roombean.roomId}"
											width="860" height="500" alt="">
									</div >
									</div>
									<div class="col-lg-12">
										<br>
									</div>
									<div class="col-lg-6" >
										房型:<input style="font-size:20px" readonly type="text" name="roomname" id="roomname"
											value="${roombean.name}">
									</div>
									<div class="col-lg-6">
										金額/晚:<input style="font-size:20px" readonly type="text" name="price" id="price"
											value="${roombean.price}">
									</div>
									<div class="col-lg-6">
										空間:<input style="font-size:20px"readonly type="text" value="${roombean.size}坪">
									</div>
									<div class="col-lg-6">
										人數:<input style="font-size:20px"readonly type="text" value="${roombean.capacity}人">
									</div>
									<div class="col-lg-6">
										床數:<input style="font-size:20px"readonly type="text" value="${roombean.bed}">
									</div>
									<div class="col-lg-6">
										設施:<input style="font-size:20px"readonly type="text" value="${roombean.equipment}">
									</div>
									<div class="col-lg-12">
										<br>
									<h2>訂購資訊</h2>
									</div>
									<div class="col-lg-12">
										<hr style="border-top: 2px dashed #dfa974;">
										<br>
									</div>
									<div class="col-lg-6">
										入住日期:<input style="font-size:20px"readonly type="date" id="checkindate"
											name="checkindate" value="${checkindate}">
									</div>
									<div class="col-lg-6">
										退房日期:<input style="font-size:20px"readonly type="date" id="checkoutdate"
											name="checkoutdate" value="${checkoutdate}">
									</div>
									<div class="col-lg-6">
										姓名:<input style="font-size:20px"type="text" id="username" name="username"
											value="${user.username}">
									</div>
									<div class="col-lg-6">
										身分證:<input style="font-size:20px"type="text" id="useridcard" name="useridcard"
											value="${user.useridentity}">
									</div>
									<div class="col-lg-6">
										信箱:<input style="font-size:20px"type="text" id="useremail" name="useremail"
											value="${user.useremail}">
									</div>
									<div class="col-lg-6">
										電話:<input style="font-size:20px"type="text" id="userphone" name="userphone"
											value="${user.userphone}">
									</div>
									<!-- <div class="col-lg-6">
										折扣碼: -->
									<input type="hidden" id="coupon" name="coupon" value="">
									<!-- </div> -->
									<div class="col-lg-12">
										備註事項:
										<textarea style="font-size:20px"id="notes" name="notes"
											placeholder="ex: 統一編號、同住房客資料"></textarea>
									</div>
									<div class="col-lg-12 text-center">
										<button style="font-size:20px"type="button" class="site-btn" id="order">確認資訊</button>
										&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;
										<button style="background-color:gray;font-size:20px" type="button" class="site-btn" id="back">修改日期</button>
									</div>
									<br> <br>
								</div>
							</form>
							<br> <br>
						</div>
					</div>
				</div>
			</div>
		</div>
	</section>
	<!-- Blog Details Section End -->

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
	<script src="//cdn.jsdelivr.net/npm/sweetalert2@11"></script>
	<script src="https://kit.fontawesome.com/27e0c99202.js" crossorigin="anonymous"></script>
	<script>
		$(function() {
			$('#back').click(function() {
				$('form').attr('action', '/showroomdetails.controller');
				$('#insert').submit();
			})
			$('#order').click(function() {
				let roomname = $("#roomname").val();
				let price = $("#price").val();
				let checkindate = $("#checkindate").val();
				let checkoutdate = $("#checkoutdate").val();
				let username = $("#username").val();
				let useridcard = $("#useridcard").val();
				let useremail = $("#useremail").val();
				let userphone = $("#userphone").val();
				let notes = $("#notes").val();
				let today = $("#today").val();
				var order = new Date(today);
				var checkin = new Date(checkindate);

				if ($('#checkindate').val() === "") {
					Swal.fire({
						title : '入住日期為必填資料',
						icon : 'warning',
						confirmButtonColor : '',
						confirmButtonText : '確定',
					})
					return;
				}
				if ($('#checkoutdate').val() === "") {
					Swal.fire({
						title : '退房日期為必填資料',
						icon : 'warning',
						confirmButtonColor : '',
						confirmButtonText : '確定',
					})
					return;
				}
				if (checkin.getTime() < order.getTime()) {
					Swal.fire({
						title : '入住日期不可小於' + today,
						icon : 'warning',
						confirmButtonColor : '',
						confirmButtonText : '確定',
					})
					return;
				}
				if (checkindate >= checkoutdate) {
					Swal.fire({
						title : '退房日期必須大於入住日期!',
						icon : 'warning',
						confirmButtonColor : '',
						confirmButtonText : '確定',
					})
					return;
				}
				if ($('#username').val() === "") {
					Swal.fire({
						title : '姓名為必填資料',
						icon : 'warning',
						confirmButtonColor : '',
						confirmButtonText : '確定',
					})
					return;
				}
				if ($('#useridcard').val() === "") {
					Swal.fire({
						title : '身分證為必填資料',
						icon : 'warning',
						confirmButtonColor : '',
						confirmButtonText : '確定',
					})
					return;
				}
				if ($('#useremail').val() === "") {
					Swal.fire({
						title : '信箱為必填資料',
						icon : 'warning',
						confirmButtonColor : '',
						confirmButtonText : '確定',
					})
					return;
				}
				if ($('#userphone').val() === "") {
					Swal.fire({
						title : '電話為必填資料',
						icon : 'warning',
						confirmButtonColor : '',
						confirmButtonText : '確定',
					})
					return;
				}
// 				$('#insert').submit();
					Swal.fire({
					  title: '是否使用折扣碼？',
					  showDenyButton: true,
					  confirmButtonText: '使用折扣碼',
					  denyButtonText: '下次吧！'
					}).then((result) => {
					  if (result.isConfirmed) {
					    Swal.fire({
					      title: "請輸入折扣碼",
					      showCancelButton: true,
					      confirmButtonText: "確定",
					      cancelButtonText: "取消",
					      input: "text",
					    }).then(function(result){
					    	$("#coupon").val(result.value);
					    	console.log(coupon)
					    	if(result.value){
								    $.ajax({
										method: 'post',
										url: '/users/checkcouponcode.controller',
										data: { "couponCode": result.value },
										success: function (response) {
											if (response == "ok") {
											 	$('#insert').submit();
											} else {
												Swal.fire(response, '', 'error')
								// 				$('#showMsgDiv').text(response);
											}
										}//success
									});//ajax
					    	}
					    
					    });//then
					    }//if confirmed
					    else if (result.isDenied) {
						  	$('#insert').submit();
						  }
					})//then

								})//click end
							});
							//function end				

	</script>
	<input type="hidden" value="${username}" id="user">
	<script type="text/javascript">
		var username = document.getElementById("user").value;
		console.log(username);
	</script>
</body>

</html>