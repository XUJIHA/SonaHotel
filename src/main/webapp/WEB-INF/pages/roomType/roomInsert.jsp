<%@ page language="java" contentType="text/html; charset=UTF-8"
	pageEncoding="UTF-8"%>
<%@ taglib uri="http://java.sun.com/jsp/jstl/core" prefix="c"%>
<!DOCTYPE html>
<html lang="zxx">

<head>
<meta charset="UTF-8">
<meta name="description" content="Sona Template">
<meta name="keywords" content="Sona, unica, creative, html">
<meta name="viewport" content="width=device-width, initial-scale=1.0">
<meta http-equiv="X-UA-Compatible" content="ie=edge">
<title>房型簡介</title>

<!-- Google Font -->
<link
	href="https://fonts.googleapis.com/css?family=Lora:400,700&display=swap"
	rel="stylesheet">
<link
	href="https://fonts.googleapis.com/css?family=Cabin:400,500,600,700&display=swap"
	rel="stylesheet">

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
<!-- Favicon Styles -->
<link rel="shortcut icon" type="image/x-icon" href="static/favicon.ico">

<script src="https://kit.fontawesome.com/27e0c99202.js"
	crossorigin="anonymous"></script>
<style>
.t1 {
	width: 350px;
	float: left;
	text-align: right;
}
</style>
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
			<a href="<c:url value='searchmember.controller' />" class="bk-btn">Customer
				Data</a>
		</div>
		<nav class="mainmenu mobile-menu">
			<ul>
				<li><a href="origin.controller">Home</a></li>
				<li><a href="showallroom.controller">Rooms</a></li>
				<li><a href="<c:url value='/giftdisplay.controller'/>">Gifts</a></li>
				<li><a href="searchattractions">Attractions</a>
					<ul class="dropdown">
						<li><a href="addattractions">add Attractions</a></li>
					</ul></li>
				<li><a href="<c:url value='Homepage.controller'/>">Restaurant</a></li>
				<li><a href="searchorder.controller">Orders</a></li>
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
								<a href="<c:url value='searchmember.controller' />"
									class="bk-btn">Customer Data</a>
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
									<span class="color"><a href="logout.controller"> <i
											class="fa-solid fa-right-from-bracket" style="color: black"></i></a></span>
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
								<a href="origin.controller"> <img src="./img/logo.png"
									alt=""></a> </a>
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
		<div class="breadcrumb-section" style="padding-bottom: 20px;">
			<div class="container">
				<div class="row">
					<div class="col-lg-12">
						<div class="breadcrumb-text">
							<h2>房型介紹</h2>
							<div class="bt-option">
								<a href="showallroom.controller">顯示全部房型</a> <a
									href="showallroom.admin.controller">管理房型</a>
								<hr>
								<c:choose>
									<c:when test="${row == 0}">
										<script>
											alert('\n\n　　　　　　　　　　　　　新增失敗!!');
										</script>
									</c:when>
									<c:when test="${row == 1}">
										<script>
											alert('\n\n　　　　　　　　　　　　　新增成功!!');
										</script>
									</c:when>
									<c:otherwise>
									</c:otherwise>
								</c:choose>
							</div>
						</div>
					</div>
				</div>
			</div>
		</div>
		<!-- Breadcrumb Section End -->

		<!-- Rooms Section Begin -->
		<section class="rooms-section spad">
			<div class="container" id="target">
				<form action="insertroom.controller" method="post"
					enctype="multipart/form-data">
					<!-- 			<form action="javascript:" method="post" enctype="multipart/form-data"> -->
					<p>
						<label class="t1" for=""><i style="color: red">*&nbsp;</i>客房編號:
						</label> <input type="text" id="roomId1" name="roomId"><span
							style="color: red"><i>
								&nbsp;&nbsp;${errors.idNull}${errors.pkError}</i></span>
					</p>
					<p>
						<label class="t1" for="">客房名稱: </label> <input type="text"
							id="name1" name="name">
					</p>
					<p>
						<label class="t1" for="">客房狀態: </label>&nbsp;&nbsp;&nbsp;&nbsp;
						<input type="radio" class="status1" name="status" value="1" checked>空房 
							&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;
							<input type="radio" class="status1" name="status" value="0">使用中
					</p>
					<p>
						<label class="t1" for=""><i style="color: red">*&nbsp;</i>容納人數:
						</label> <input type="text" id="capacity1" name="capacity"><span
							style="color: red"><i>
								&nbsp;&nbsp;${errors.capacityNull}${errors.capacityFormatError}</i></span>
					</p>
					<p>
						<label class="t1" for="">床數: </label> <input type="text" id="bed1"
							name="bed"><span style="color: red"><i>
								&nbsp;&nbsp;${errors.bedFormatError}</i></span>
					</p>
					<p>
						<label class="t1" for="">坪數: </label> <input type="text"
							id="size1" name="size"><span style="color: red"><i>
								&nbsp;&nbsp;${errors.sizeFormatError}</i></span>
					</p>
					<p>
						<label class="t1" for="">價格: </label> <input type="text"
							id="price1" name="price"><span style="color: red"><i>
								&nbsp;&nbsp;${errors.priceFormatError}</i></span>
					</p>
					<p>
						<label class="t1" for="">設施: </label>&nbsp;&nbsp;
						<input id="cbEquipment1"
							type="checkbox" name="cbEquipment1" value="電視">&nbsp;電視 <input
							id="cbEquipment2" type="checkbox" name="cbEquipment2" value="沙發">&nbsp;沙發
						<input id="cbEquipment3" type="checkbox" name="cbEquipment3"
							value="陽台">&nbsp;陽台 <input id="cbEquipment4"
							type="checkbox" name="cbEquipment4" value="三溫暖">&nbsp;三溫暖
						<input id="cbEquipment5" type="checkbox" name="cbEquipment5"
							value="按摩椅">&nbsp;按摩椅 <input id="cbEquipment6"
							type="checkbox" name="cbEquipment6" value="吸菸房">&nbsp;吸菸房
						<input id="cbEquipment7" type="checkbox" name="cbEquipment7"
							value="攜帶寵物">&nbsp;攜帶寵物 <input id="cbEquipment8"
							type="checkbox" name="cbEquipment8" value="按摩浴缸">&nbsp;按摩浴缸

					
					<p>
						<label class="t1" for="">描述:</label>&nbsp;
						<textarea id="description1" name="description"
							style="width: 300px; height: 80px"></textarea>
					</p>
					<p>
						<label class="t1" for="">圖片:</label>&nbsp;<input type="file"
							name="img" id="selectedImg" multiple />
					</p>
					<p style="margin: 0 350px">
						<img src="" id="preImg" width="70%" alt="">
					</p>
					<br>
					<p>
						<label class="t1" for=""></label> <input id="insertSubmit"
							type="submit" value="提交">
					</p>
				</form>
			</div>
		</section>
		<!-- Rooms Section End -->

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
									We inspire and reach millions of travelers<br /> across 90
									local websites
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
										document
												.write(new Date().getFullYear());
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
		<!--  <script src="https://code.jquery.com/jquery-3.6.1.min.js"></script> -->
		<script src="js/bootstrap.min.js"></script>
		<script src="js/jquery.magnific-popup.min.js"></script>
		<script src="js/jquery.nice-select.min.js"></script>
		<script src="js/jquery-ui.min.js"></script>
		<script src="js/jquery.slicknav.js"></script>
		<script src="js/owl.carousel.min.js"></script>
		<script src="js/main.js"></script>
		<script src="https://kit.fontawesome.com/27e0c99202.js"
			crossorigin="anonymous"></script>
		<!-- 	<script src="https://unpkg.com/sweetalert/dist/sweetalert.min.js"></script> -->
		<script src="//cdn.jsdelivr.net/npm/sweetalert2@11"></script>
		<script>
			$("#selectedImg").change(function() {
				readURL(this);
			});

			function readURL(input) {
				if (input.files && input.files[0]) {
					var reader = new FileReader();
					reader.onload = function(e) {
						$("#preImg").attr('src', e.target.result);
					}
					reader.readAsDataURL(input.files[0]);
				}
			}
		</script>
</body>

</html>