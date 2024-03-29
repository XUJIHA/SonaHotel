<%@ page language="java" contentType="text/html; charset=UTF-8"
	pageEncoding="UTF-8"%>
<%@ taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core"%>

<!DOCTYPE html >
<html lang="zh-Hant ">
<head>
<meta charset="UTF-8">
<meta name="description" content="Sona Template">
<meta name="keywords" content="Sona, unica, creative, html">
<meta name="viewport" content="width=device-width, initial-scale=1.0">
<meta http-equiv="X-UA-Compatible" content="ie=edge">
<title>Sona | 變更密碼</title>

<!-- Google Font -->
<link
	href="https://fonts.googleapis.com/css?family=Lora:400,700&display=swap"
	rel="stylesheet">
<link
	href="https://fonts.googleapis.com/css?family=Cabin:400,500,600,700&display=swap"
	rel="stylesheet">
<!-- 絕對路徑 -->
<%
String path = request.getContextPath();
String basePath = request.getScheme()+"://"+request.getServerName()+":"+request.getServerPort()+path+"/";
%>
<base href="<%=basePath%>">
<!-- 絕對路徑 -->
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

<style type="text/css">

#recaptcha>div {
	margin: 0 auto .5em;
}

.booking-form form .check-date input {
	width: 100%;
	height: 50px;
	border: 1px solid #ebebeb;
	border-radius: 2px;
	font-size: 16px;
	color: #19191a;
	text-transform: none;
	font-weight: 500;
	padding-left: 20px;
}


.booking-form form .check-date label {
	font-size: 18px;
	color: #707079;
	display: block;
	margin-bottom: 10px;
}

.label-span {
  display: inline-block;
  margin-left: 10px;
}

.link-style {
  color: blue;
  text-decoration: underline;
}

.link-style:hover {
  color: red;
}

.input-with-icon {
    position: relative;
  }

.input-with-icon input[type="password"] {
    padding-right: 35px;
  }

.input-with-icon i {
  position: absolute;
  right: 30px;
  top: calc(50% + 15px);
  transform: translateY(-50%);
  cursor: pointer;
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
		<div class="search-icon  search-switch">
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
			<a href="#" class="bk-btn">Login Now</a>
		</div>
		<nav class="mainmenu mobile-menu">
			<ul>
				<li><a href="/login/page">首頁</a></li>
				<li><a href="/showallroom.controller">房型</a></li>
				<li><a href="giftdisplay.controller">伴手禮</a>
					<ul class="dropdown">
						<li><a href="/users/showgorder.controller">伴手禮訂單</a></li>
					</ul></li>
				<li><a href="attractions">景點</a>
					<ul class="dropdown">
						<li><a href="attractions">推薦景點</a></li>
						<li><a href="itinerary">套裝行程</a></li>
					</ul></li>
				<li><a href="/Homepage.controller">餐飲</a></li>
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
							<a href="#" class="bk-btn">Login Now</a>
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
							<a href="/admin/backgroundIndex.controller"> <img src="img/logo.png" alt="">
							</a>
						</div>
					</div>
					<div class="col-lg-10">
						<div class="nav-menu">
							<nav class="mainmenu">
								<ul>
									<li><a href="/login/page">首頁</a></li>
									<li><a href="/showallroom.controller">房型</a></li>
									<li><a href="giftdisplay.controller">伴手禮</a>
										<ul class="dropdown">
											<li><a href="/users/showgorder.controller">伴手禮訂單</a></li>
										</ul></li>
									<li><a href="attractions">景點</a>
										<ul class="dropdown">
											<li><a href="attractions">推薦景點</a></li>
											<li><a href="itinerary">套裝行程</a></li>
										</ul></li>
									<li><a href="<c:url value='/Homepage.controller'/>">餐飲</a></li>
								</ul>
							</nav>
							<span class="color"><a href="/login/page"><i class="fa-solid fa-cart-shopping" style="color: black;font-size:20px"></i></a></span>
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

	<!-- Hero Section Begin -->
	<section class="hero-section">
		<div class="container">
			<div class="row">
				<div class="col-lg-6">
					<div class="hero-text">
						<h1>Sona A Luxury Hotel</h1>
						<p>Here are the best hotel booking sites, including
							recommendations for international travel and for finding
							low-priced hotel rooms.</p>
						<a href="#" class="primary-btn">Discover Now</a>
					</div>
				</div>
				<div class="col-xl-4 col-lg-5 offset-xl-2 offset-lg-1">
                    <div class="booking-form">
                        <h3>變更密碼</h3>
			<form method="post" action="/updatePassword.controller" id="form">
				<input type="hidden" name="userid" value="${userid}">
				<div class="check-date">
					<label for="date-in">會員帳號(E-mail):</label> 
					<input type="text" name="useremail" id="useremail" value="${email}" readonly/>
				</div>
				<div class="check-date">
					<label for="date-out">驗證碼：</label>
					 <input type="text" name="randomcode" id="randomcode" placeholder="系統發送新密碼，共6碼" required/>
					 <span class="label-span"><a href="/sendeforgetmail.controller?email=${email}" class="link-style">重寄發送驗證信</a></span>
				</div>
				<div class="check-date input-with-icon">
					<label for="room">新密碼：</label>
					<input type="password" name="newuserpassword" id="newuserpassword"  required/>
					<i class="fa-solid fa-eye-slash" id="togglePasswordVisibility" onclick="togglePasswordVisibility()"></i>
				</div>
				<div class="check-date">
					<label for="room">再次確認您的新密碼：</label>
					<input type="password" name="newconfirmuserpassword" id="newconfirmuserpassword" required/>
				</div>
				<div class="check-date">
					<div
					    class="g-recaptcha"
					    data-sitekey="6LcmnWokAAAAAPvwm_3gUTVvXJmm604WHaU1_v6J"
					    data-theme="light" data-size="normal"
					    data-callback="verify"
					    data-expired-callback="expired"
					    data-error-callback="error">
					</div>
				</div>
				<button id="confirm">確認</button>
			</form>
			<form method="POST" action="/login/page">
				<button type="submit" id="cancel">取消</button><br/>
			</form>
			<div style="text-align: center; color:red" >${inputError}</div>
		</div>
 </div>
			</div>
		</div>
		<div class="hero-slider owl-carousel">
			<div class="hs-item set-bg" data-setbg="img/hero/hero-1.jpg"></div>
			<div class="hs-item set-bg" data-setbg="img/hero/hero-2.jpg"></div>
			<div class="hs-item set-bg" data-setbg="img/hero/hero-3.jpg"></div>
		</div>
	</section>
	<!-- Hero Section End -->

	<!-- About Us Section Begin -->
	<section class="aboutus-section spad">
		<div class="container">
			<div class="row">
				<div class="col-lg-6">
					<div class="about-text">
						<div class="section-title">
							<span>About Us</span>
							<h2>
								Intercontinental LA <br />Westlake Hotel
							</h2>
						</div>
						<p class="f-para">Sona.com is a leading online accommodation
							site. We’re passionate about travel. Every day, we inspire and
							reach millions of travelers across 90 local websites in 41
							languages.</p>
						<p class="s-para">So when it comes to booking the perfect
							hotel, vacation rental, resort, apartment, guest house, or tree
							house, we’ve got you covered.</p>
						<a href="#" class="primary-btn about-btn">Read More</a>
					</div>
				</div>
				<div class="col-lg-6">
					<div class="about-pic">
						<div class="row">
							<div class="col-sm-6">
								<img src="img/about/about-1.jpg" alt="">
							</div>
							<div class="col-sm-6">
								<img src="img/about/about-2.jpg" alt="">
							</div>
						</div>
					</div>
				</div>
			</div>
		</div>
	</section>
	<!-- About Us Section End -->

	<!-- Services Section End -->
	<section class="services-section spad">
		<div class="container">
			<div class="row">
				<div class="col-lg-12">
					<div class="section-title">
						<span>What We Do</span>
						<h2>Discover Our Services</h2>
					</div>
				</div>
			</div>
			<div class="row">
				<div class="col-lg-4 col-sm-6">
					<div class="service-item">
						<i class="flaticon-036-parking"></i>
						<h4>Travel Plan</h4>
						<p>Lorem ipsum dolor sit amet, consectetur adipisicing elit,
							sed do eiusmod tempor incididunt ut labore et dolore magna.</p>
					</div>
				</div>
				<div class="col-lg-4 col-sm-6">
					<div class="service-item">
						<i class="flaticon-033-dinner"></i>
						<h4>Catering Service</h4>
						<p>Lorem ipsum dolor sit amet, consectetur adipisicing elit,
							sed do eiusmod tempor incididunt ut labore et dolore magna.</p>
					</div>
				</div>
				<div class="col-lg-4 col-sm-6">
					<div class="service-item">
						<i class="flaticon-026-bed"></i>
						<h4>Babysitting</h4>
						<p>Lorem ipsum dolor sit amet, consectetur adipisicing elit,
							sed do eiusmod tempor incididunt ut labore et dolore magna.</p>
					</div>
				</div>
				<div class="col-lg-4 col-sm-6">
					<div class="service-item">
						<i class="flaticon-024-towel"></i>
						<h4>Laundry</h4>
						<p>Lorem ipsum dolor sit amet, consectetur adipisicing elit,
							sed do eiusmod tempor incididunt ut labore et dolore magna.</p>
					</div>
				</div>
				<div class="col-lg-4 col-sm-6">
					<div class="service-item">
						<i class="flaticon-044-clock-1"></i>
						<h4>Hire Driver</h4>
						<p>Lorem ipsum dolor sit amet, consectetur adipisicing elit,
							sed do eiusmod tempor incididunt ut labore et dolore magna.</p>
					</div>
				</div>
				<div class="col-lg-4 col-sm-6">
					<div class="service-item">
						<i class="flaticon-012-cocktail"></i>
						<h4>Bar & Drink</h4>
						<p>Lorem ipsum dolor sit amet, consectetur adipisicing elit,
							sed do eiusmod tempor incididunt ut labore et dolore magna.</p>
					</div>
				</div>
			</div>
		</div>
	</section>
	<!-- Services Section End -->

	<!-- Home Room Section Begin -->
	<section class="hp-room-section">
		<div class="container-fluid">
			<div class="hp-room-items">
				<div class="row">
					<div class="col-lg-3 col-md-6">
						<div class="hp-room-item set-bg" data-setbg="img/room/room-b1.jpg">
							<div class="hr-text">
								<h3>Double Room</h3>
								<h2>
									199$<span>/Pernight</span>
								</h2>
								<table>
									<tbody>
										<tr>
											<td class="r-o">Size:</td>
											<td>30 ft</td>
										</tr>
										<tr>
											<td class="r-o">Capacity:</td>
											<td>Max persion 5</td>
										</tr>
										<tr>
											<td class="r-o">Bed:</td>
											<td>King Beds</td>
										</tr>
										<tr>
											<td class="r-o">Services:</td>
											<td>Wifi, Television, Bathroom,...</td>
										</tr>
									</tbody>
								</table>
								<a href="#" class="primary-btn">More Details</a>
							</div>
						</div>
					</div>
					<div class="col-lg-3 col-md-6">
						<div class="hp-room-item set-bg" data-setbg="img/room/room-b2.jpg">
							<div class="hr-text">
								<h3>Premium King Room</h3>
								<h2>
									159$<span>/Pernight</span>
								</h2>
								<table>
									<tbody>
										<tr>
											<td class="r-o">Size:</td>
											<td>30 ft</td>
										</tr>
										<tr>
											<td class="r-o">Capacity:</td>
											<td>Max persion 5</td>
										</tr>
										<tr>
											<td class="r-o">Bed:</td>
											<td>King Beds</td>
										</tr>
										<tr>
											<td class="r-o">Services:</td>
											<td>Wifi, Television, Bathroom,...</td>
										</tr>
									</tbody>
								</table>
								<a href="#" class="primary-btn">More Details</a>
							</div>
						</div>
					</div>
					<div class="col-lg-3 col-md-6">
						<div class="hp-room-item set-bg" data-setbg="img/room/room-b3.jpg">
							<div class="hr-text">
								<h3>Deluxe Room</h3>
								<h2>
									198$<span>/Pernight</span>
								</h2>
								<table>
									<tbody>
										<tr>
											<td class="r-o">Size:</td>
											<td>30 ft</td>
										</tr>
										<tr>
											<td class="r-o">Capacity:</td>
											<td>Max persion 5</td>
										</tr>
										<tr>
											<td class="r-o">Bed:</td>
											<td>King Beds</td>
										</tr>
										<tr>
											<td class="r-o">Services:</td>
											<td>Wifi, Television, Bathroom,...</td>
										</tr>
									</tbody>
								</table>
								<a href="#" class="primary-btn">More Details</a>
							</div>
						</div>
					</div>
					<div class="col-lg-3 col-md-6">
						<div class="hp-room-item set-bg" data-setbg="img/room/room-b4.jpg">
							<div class="hr-text">
								<h3>Family Room</h3>
								<h2>
									299$<span>/Pernight</span>
								</h2>
								<table>
									<tbody>
										<tr>
											<td class="r-o">Size:</td>
											<td>30 ft</td>
										</tr>
										<tr>
											<td class="r-o">Capacity:</td>
											<td>Max persion 5</td>
										</tr>
										<tr>
											<td class="r-o">Bed:</td>
											<td>King Beds</td>
										</tr>
										<tr>
											<td class="r-o">Services:</td>
											<td>Wifi, Television, Bathroom,...</td>
										</tr>
									</tbody>
								</table>
								<a href="#" class="primary-btn">More Details</a>
							</div>
						</div>
					</div>
				</div>
			</div>
		</div>
	</section>
	<!-- Home Room Section End -->

	<!-- Testimonial Section Begin -->
	<section class="testimonial-section spad">
		<div class="container">
			<div class="row">
				<div class="col-lg-12">
					<div class="section-title">
						<span>Testimonials</span>
						<h2>What Customers Say?</h2>
					</div>
				</div>
			</div>
			<div class="row">
				<div class="col-lg-8 offset-lg-2">
					<div class="testimonial-slider owl-carousel">
						<div class="ts-item">
							<p>After a construction project took longer than expected, my
								husband, my daughter and I needed a place to stay for a few
								nights. As a Chicago resident, we know a lot about our city,
								neighborhood and the types of housing options available and
								absolutely love our vacation at Sona Hotel.</p>
							<div class="ti-author">
								<div class="rating">
									<i class="icon_star"></i> <i class="icon_star"></i> <i
										class="icon_star"></i> <i class="icon_star"></i> <i
										class="icon_star-half_alt"></i>
								</div>
								<h5>- Alexander Vasquez</h5>
							</div>
							<img src="img/testimonial-logo.png" alt="">
						</div>
						<div class="ts-item">
							<p>After a construction project took longer than expected, my
								husband, my daughter and I needed a place to stay for a few
								nights. As a Chicago resident, we know a lot about our city,
								neighborhood and the types of housing options available and
								absolutely love our vacation at Sona Hotel.</p>
							<div class="ti-author">
								<div class="rating">
									<i class="icon_star"></i> <i class="icon_star"></i> <i
										class="icon_star"></i> <i class="icon_star"></i> <i
										class="icon_star-half_alt"></i>
								</div>
								<h5>- Alexander Vasquez</h5>
							</div>
							<img src="img/testimonial-logo.png" alt="">
						</div>
					</div>
				</div>
			</div>
		</div>
	</section>
	<!-- Testimonial Section End -->

	<!-- Blog Section Begin -->
	<section class="blog-section spad">
		<div class="container">
			<div class="row">
				<div class="col-lg-12">
					<div class="section-title">
						<span>Hotel News</span>
						<h2>Our Blog & Event</h2>
					</div>
				</div>
			</div>
			<div class="row">
				<div class="col-lg-4">
					<div class="blog-item set-bg" data-setbg="img/blog/blog-1.jpg">
						<div class="bi-text">
							<span class="b-tag">Travel Trip</span>
							<h4>
								<a href="#">Tremblant In Canada</a>
							</h4>
							<div class="b-time">
								<i class="icon_clock_alt"></i> 15th April, 2019
							</div>
						</div>
					</div>
				</div>
				<div class="col-lg-4">
					<div class="blog-item set-bg" data-setbg="img/blog/blog-2.jpg">
						<div class="bi-text">
							<span class="b-tag">Camping</span>
							<h4>
								<a href="#">Choosing A Static Caravan</a>
							</h4>
							<div class="b-time">
								<i class="icon_clock_alt"></i> 15th April, 2019
							</div>
						</div>
					</div>
				</div>
				<div class="col-lg-4">
					<div class="blog-item set-bg" data-setbg="img/blog/blog-3.jpg">
						<div class="bi-text">
							<span class="b-tag">Event</span>
							<h4>
								<a href="#">Copper Canyon</a>
							</h4>
							<div class="b-time">
								<i class="icon_clock_alt"></i> 21th April, 2019
							</div>
						</div>
					</div>
				</div>
				<div class="col-lg-8">
					<div class="blog-item small-size set-bg"
						data-setbg="img/blog/blog-wide.jpg">
						<div class="bi-text">
							<span class="b-tag">Event</span>
							<h4>
								<a href="#">Trip To Iqaluit In Nunavut A Canadian Arctic
									City</a>
							</h4>
							<div class="b-time">
								<i class="icon_clock_alt"></i> 08th April, 2019
							</div>
						</div>
					</div>
				</div>
				<div class="col-lg-4">
					<div class="blog-item small-size set-bg"
						data-setbg="img/blog/blog-10.jpg">
						<div class="bi-text">
							<span class="b-tag">Travel</span>
							<h4>
								<a href="#">Traveling To Barcelona</a>
							</h4>
							<div class="b-time">
								<i class="icon_clock_alt"></i> 12th April, 2019
							</div>
						</div>
					</div>
				</div>
			</div>
		</div>
	</section>
	<!-- Blog Section End -->

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
	<script src="https://kit.fontawesome.com/27e0c99202.js"></script>
	<script src="//cdn.jsdelivr.net/npm/sweetalert2@11"></script>
	<script src="https://www.google.com/recaptcha/api.js"></script>
	
	
	<input type="hidden" value="${randomcode}" id="server">
	
 	<script>
	function togglePasswordVisibility() {
		  var passwordInput = document.getElementById("userpassword");
		  var passwordToggle = document.getElementById("togglePasswordVisibility");
		  if (passwordInput.type === "password") {
		    passwordInput.type = "text";
		    passwordToggle.classList.remove("fa-eye-slash");
		    passwordToggle.classList.add("fa-eye");
		  } else {
		    passwordInput.type = "password";
		    passwordToggle.classList.remove("fa-eye");
		    passwordToggle.classList.add("fa-eye-slash");
		  }
		}
	</script>

	<script type="text/javascript">
		
		//使用監聽事件條件達成才送出表單
		var confirmButton = document.getElementById("confirm");
		confirmButton.addEventListener("click", function(event) {
			event.preventDefault();
			var response = grecaptcha.getResponse();
			verify(response);
			togglePasswordVisibility
		});
		
		function verify(response) {
			if (response.length > 0) {
				var userCode = document.getElementById("randomcode").value;
				var serverCode = document.getElementById("server").value;
				var password = document.getElementById("newuserpassword").value;
				var passwordFormat = /^(?=.*[a-z])(?=.*[A-Z])(?=.*\d)[a-zA-Z\d]{8,}$/;

				if (userCode === serverCode) {
					if (password.match(passwordFormat)) {
						console.log("Password format is correct.");
						document.getElementById("form").submit();
					} else {
						Swal.fire({
							icon : 'error',
							title : '錯誤',
							text : '密碼格式不正確，請確認密碼包含英文大小寫及數字，且長度大於 8 字元!'
						})
					}
				} else {
					Swal.fire({
						icon : 'error',
						title : '錯誤',
						text : '驗證碼錯誤，請重新輸入!'
					})
				}
			} else {
				Swal.fire({
					icon : 'error',
					title : '錯誤',
					text : '請先通過機器人驗證，才能提交表單!'
				});
			}
		}

	</script>
 	
</body>

</html>







