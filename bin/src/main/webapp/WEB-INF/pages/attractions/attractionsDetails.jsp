<%@ page language="java" import="java.util.*"
	contentType="text/html; charset=utf8"%>
<%@ taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core"%>
<!DOCTYPE html>
<html lang="zh-Hant">

<head>
	<meta charset="UTF-8">
	<meta name="description" content="Sona Template">
	<meta name="keywords" content="Sona, unica, creative, html">
	<meta name="viewport" content="width=device-width, initial-scale=1.0">
	<meta http-equiv="X-UA-Compatible" content="ie=edge">
	<title>sona</title>

<!-- Google Font -->
    <link href="https://fonts.googleapis.com/css?family=Lora:400,700&display=swap" rel="stylesheet">
    <link href="https://fonts.googleapis.com/css?family=Cabin:400,500,600,700&display=swap" rel="stylesheet">

    <!-- Css Styles -->
	<link rel="stylesheet" href="css/bootstrap.min.css" type="text/css">
	<link rel="stylesheet" href="https://cdn.datatables.net/1.11.3/css/jquery.dataTables.min.css">
	<link rel="stylesheet" href="css/font-awesome.min.css" type="text/css">
	<link rel="stylesheet" href="css/elegant-icons.css" type="text/css">
	<link rel="stylesheet" href="css/flaticon.css" type="text/css">
	<link rel="stylesheet" href="css/owl.carousel.min.css" type="text/css">
	<link rel="stylesheet" href="css/nice-select.css" type="text/css">
	<link rel="stylesheet" href="css/jquery-ui.min.css" type="text/css">
	<link rel="stylesheet" href="css/magnific-popup.css" type="text/css">
	<link rel="stylesheet" href="css/slicknav.min.css" type="text/css">
	<link rel="stylesheet" href="css/style.css" type="text/css">
	<link rel="stylesheet" href="css/font-awesome.min.css" type="text/css">
	<link rel="stylesheet" href="/css/styleA.css" type="text/css">
	<link rel="stylesheet" href="//cdnjs.cloudflare.com/ajax/libs/timepicker/1.3.5/jquery.timepicker.min.css">
	<script src="js/jquery-3.3.1.min.js"></script>
	<script async defer src="https://maps.googleapis.com/maps/api/js?key=&callback=initMap"></script>
</head>
<body>

<div id="div1">
	<!-- Page Preloder -->
<!-- 	<div id="preloder"> -->
<!-- 		<div class="loader"></div> -->
<!-- 	</div> -->

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
				<li class="active"><a href="attractions">景點</a>
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
									<li><a href="/users/giftdisplay.controller">伴手禮</a>
									    <ul class="dropdown">
								            <li><a href="/users/showgorder.controller">伴手禮訂單</a></li>
									    </ul>
									</li>
									<li class="active"><a href="attractions">景點</a>
										<ul class="dropdown">
											<li><a href="attractions">推薦景點</a></li>
											<li><a href="itinerary">套裝行程</a></li>
										</ul>
									</li>
									<li><a href="<c:url value='/SearchRestaurant.controller'/>">餐飲</a></li>
								</ul>
							</nav>
							<a href="/users/searchorder.controller"><i
								class="fa-solid fa-cart-shopping" style="color: #000;font-size:20px;"></i></a>
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
	
<!-- About Us Section Begin -->
    <section class="aboutus-section spad">
        <div class="container">
            <div class="row">
                <div class="col-lg-2">
                    <div class="about-pic">
                        <div class="row">
                            <div >
<!--                                 <img src="img/about/about-1.jpg" alt=""> -->
								<div>
<!-- 									<form method="POST"> -->
										    <div class="mx-auto a-search"  style="display: flex;">
											    <input type="text" name="search"  id="search" placeholder="Search here..." size="20" autofocus autocomplete="off">
											    <button id="searchbtn" type="button"><i class="fa-solid fa-magnifying-glass"></i></button>
										    </div>
<!-- 									</form> -->
									<p id="psearch"><i class='fa-solid fa-location-dot'></i>區域搜尋</p>
									<hr>
									<select id="select_op" onchange="getArea()">
							            <option value="" selected="selected">請選擇</option>
							            <option value="全區瀏覽">全區瀏覽</option>
							            <option value="士林">士林區</option>
							            <option value="大同">大同區</option>
							            <option value="中正">中正區</option>
							            <option value="北投">北投區</option>
							            <option value="信義">信義區</option>
							            <option value="文山">文山區</option>
							            <option value="內湖">內湖區</option>
							            <option value="石門">石門區</option>
							            <option value="瑞芳">瑞芳區</option>
							            <option value="貢寮">貢寮區</option>
							        </select>
							        
							    </div>
                            </div>
                        </div>
                    </div>
                </div>
                <div class="col-lg-10" id="details-img-text">
                	<div id="detailes-img"></div>
                    <div id="detailes-text"></div>
                    <div id="detailes-info"></div>
                </div>

            </div>
        </div>
    </section>
    <!-- About Us Section End -->
	
	
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
	</div>
	<script type="text/javascript">
	    var map;
	    function initMap() {
	      map = new google.maps.Map(document.getElementById('map'), {
	        center: {lat: 25.04, lng: 121.512},
	        zoom: 18
	      });
	    }
    </script>
	<!-- Js Plugins -->
	
	<script src="js/bootstrap.min.js"></script>
	<script src="js/jquery.magnific-popup.min.js"></script>
	<script src="js/jquery.nice-select.min.js"></script>
	<script src="js/jquery-ui.min.js"></script>
	<script src="js/jquery.slicknav.js"></script>
	<script src="js/owl.carousel.min.js"></script>
	<script src="js/main.js"></script>
	<script src="https://code.essoduke.org/js/twzipcode/twzipcode.js"></script>
	<script src="//cdn.jsdelivr.net/npm/sweetalert2@11"></script>
	<script src="//cdnjs.cloudflare.com/ajax/libs/timepicker/1.3.5/jquery.timepicker.min.js"></script>
	<!-- Google Map API -->
	<script src="https://maps.googleapis.com/maps/api/js?key=AIzaSyBeMPpGN97FxAWlYcsIBeZ3o-lt6dH2Xj4"></script>
<!-- 	<script async defer src="https://maps.googleapis.com/maps/api/js?key=AIzaSyBa4Ch99EoYQnqH0y9SX3UVw9x2qiqDtF4&callback=initMap"></script> -->
	<script src="https://cdn.datatables.net/1.11.3/js/jquery.dataTables.min.js"></script>
	<script src="js/attractions.js"></script>
	<script src="https://kit.fontawesome.com/27e0c99202.js" crossorigin="anonymous"></script>
	
</body>

</html>