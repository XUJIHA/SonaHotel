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
<title>Sona | Template</title>

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
			<a href="/users/origin.controller" class="bk-btn">${useremail}</a>
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
                                        </ul></li>
                                    <li><a href="<c:url value='/SearchRestaurant.controller'/>">餐飲</a></li>
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
	<header class="header-section header-normal">
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
						<div class="tn-right">
							<div class="top-social">
								<a href="#"><i class="fa fa-facebook"></i></a> <a href="#"><i
									class="fa fa-twitter"></i></a> <a href="#"><i
									class="fa-brands fa-line"></i></a> <a href="#"><i
									class="fa fa-instagram"></i></a> <a href="#"><i
									class="fa fa-youtube-play"></i></a>
							</div>
							<a href="/users/origin.controller" class="bk-btn">${useremail}</a>
							<div class="language-option">
                                <span class="color"><i class="fa-solid fa-right-from-bracket" id="delete" style="color: black"><script type="text/javascript"  src="/js/logout.js"></script></i></span>
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
                            <a href="/admin/backgroundIndex.controller"> <img src="./img/logo.png" alt=""></a>
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
                                        </ul></li>
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

	<!-- Breadcrumb Section Begin -->
	<div class="breadcrumb-section">
		<div class="container">
			<div class="row">
				<div class="col-lg-12">
					<div class="breadcrumb-text">
						<div class="bt-option">
							<a href="showallroom.controller" style="color: darkgray"><b>顯示全部房型</b></a>
							<span>Rooms</span>
						</div>
					</div>
				</div>
			</div>
		</div>
	</div>
	<!-- Breadcrumb Section End -->

	<!-- Room Details Section Begin -->
	<section class="room-details-section spad">
		<div class="container">
			<div class="row">
				<div class="col-lg-8">
					<div class="room-details-item">
						<img src="showroomimg.controller?roomId=${bean.roomId}"
							width="860" height="500" alt="">
						<div class="rd-text">
							<div class="rd-title">
								<h3>${bean.name}</h3>
								<div class="rdt-right">
									<div class="rating">
										<i class="icon_star"></i> <i class="icon_star"></i> <i
											class="icon_star"></i> <i class="icon_star"></i> <i
											class="icon_star-half_alt"></i>
									</div>
										<input id="roomId" type="hidden" name="roomId" value="${bean.roomId}">
								</div>
							</div>
							<h2>
								$${bean.price}<span>/每晚</span>
							</h2>
							<table>
								<tbody>
									<tr>
										<td class="r-o">空間:</td>
										<td>${bean.size}坪</td>
									</tr>
									<tr>
										<td class="r-o">人數:</td>
										<td>最多 ${bean.capacity} 人</td>
									</tr>
									<tr>
										<td class="r-o">床數:</td>
										<td>${bean.bed}張床</td>
									</tr>
									<tr>
										<td class="r-o">設施:</td>
										<td>${bean.equipment}</td>
									</tr>
								</tbody>
							</table>
							<p class="f-para">描述: ${bean.description}</p>

						</div>
					</div>
					<!--                     <div class="rd-reviews"> -->
					<!--                         <h4>Reviews</h4> -->
					<!--                         <div class="review-item"> -->
					<!--                             <div class="ri-pic"> -->
					<!--                                 <img src="img/room/avatar/avatar-1.jpg" alt=""> -->
					<!--                             </div> -->
					<!--                             <div class="ri-text"> -->
					<!--                                 <span>27 Aug 2019</span> -->
					<!--                                 <div class="rating"> -->
					<!--                                     <i class="icon_star"></i> -->
					<!--                                     <i class="icon_star"></i> -->
					<!--                                     <i class="icon_star"></i> -->
					<!--                                     <i class="icon_star"></i> -->
					<!--                                     <i class="icon_star-half_alt"></i> -->
					<!--                                 </div> -->
					<!--                                 <h5>Brandon Kelley</h5> -->
					<!--                                 <p>Neque porro qui squam est, qui dolorem ipsum quia dolor sit amet, consectetur, -->
					<!--                                     adipisci velit, sed quia non numquam eius modi tempora. incidunt ut labore et dolore -->
					<!--                                     magnam.</p> -->
					<!--                             </div> -->
					<!--                         </div> -->
					<!--                         <div class="review-item"> -->
					<!--                             <div class="ri-pic"> -->
					<!--                                 <img src="img/room/avatar/avatar-2.jpg" alt=""> -->
					<!--                             </div> -->
					<!--                             <div class="ri-text"> -->
					<!--                                 <span>27 Aug 2019</span> -->
					<!--                                 <div class="rating"> -->
					<!--                                     <i class="icon_star"></i> -->
					<!--                                     <i class="icon_star"></i> -->
					<!--                                     <i class="icon_star"></i> -->
					<!--                                     <i class="icon_star"></i> -->
					<!--                                     <i class="icon_star-half_alt"></i> -->
					<!--                                 </div> -->
					<!--                                 <h5>Brandon Kelley</h5> -->
					<!--                                 <p>Neque porro qui squam est, qui dolorem ipsum quia dolor sit amet, consectetur, -->
					<!--                                     adipisci velit, sed quia non numquam eius modi tempora. incidunt ut labore et dolore -->
					<!--                                     magnam.</p> -->
					<!--                             </div> -->
					<!--                         </div> -->
					<!--                     </div> -->
					<!--                     <div class="review-add"> -->
					<!--                         <h4>Add Review</h4> -->
					<!--                         <form action="#" class="ra-form"> -->
					<!--                             <div class="row"> -->
					<!--                                 <div class="col-lg-6"> -->
					<!--                                     <input type="text" placeholder="Name*"> -->
					<!--                                 </div> -->
					<!--                                 <div class="col-lg-6"> -->
					<!--                                     <input type="text" placeholder="Email*"> -->
					<!--                                 </div> -->
					<!--                                 <div class="col-lg-12"> -->
					<!--                                     <div> -->
					<!--                                         <h5>You Rating:</h5> -->
					<!--                                         <div class="rating"> -->
					<!--                                             <i class="icon_star"></i> -->
					<!--                                             <i class="icon_star"></i> -->
					<!--                                             <i class="icon_star"></i> -->
					<!--                                             <i class="icon_star"></i> -->
					<!--                                             <i class="icon_star-half_alt"></i> -->
					<!--                                         </div> -->
					<!--                                     </div> -->
					<!--                                     <textarea placeholder="Your Review"></textarea> -->
					<!--                                     <button type="submit">Submit Now</button> -->
					<!--                                 </div> -->
					<!--                             </div> -->
					<!--                         </form> -->
					<!--                     </div> -->
				</div>
				<div class="col-lg-4">
					<div class="room-booking">
						<h3>訂房查詢</h3>
						<form id="checkDateForm" action="users/checkroom.controller" method="post">
							<div class="check-date">
								<label for="date-in">Check In:</label> <input type="text"
									class="date-input" id="date-in" name="checkin"> <i
									class="icon_calendar"></i>
							</div>
							<div class="check-date">
								<label for="date-out">Check Out:</label> <input type="text"
									class="date-input" id="date-out" name="checkout"> <i
									class="icon_calendar"></i>
							</div>
							<div class="select-option">
								<label for="guest">人數:</label> <select id="guest">
									<option value="">${bean.capacity}人</option>
								</select>
							</div>
							<div class="select-option">
								<label for="room">房數</label> <select id="room">
									<option value="">1 間房</option>
								</select>
							</div>
							<input type="hidden" name="roomId" value="${bean.roomId}">
							<button id="checkButton" type="button">查詢 & 下訂</button>
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
	<script src="//cdn.jsdelivr.net/npm/sweetalert2@11"></script>
	<script type="text/javascript">
	$('#checkButton').click(function(e){
		e.preventDefault();
		var formData = $('#checkDateForm').serialize();
            $.ajax({
          			type: 'post',
          			url: '/checkdate.controller',
          			data: formData
          	}).done(function (results) {
          				let length = results.length;
          				switch(length) {
          				 case 14:
          					Swal.fire({
	          					title: '未選擇日期!!',
	              	            text: results,
	              	            icon: 'question',
	              	            showCancelButton: false,
	              	            confirmButtonColor: '#3085d6',
	              	            cancelButtonColor: '#d33',
	              	            confirmButtonText: '確定'
          					})
          				  break;
          				 case 15:
          					Swal.fire({
	          					title: '可以訂房!! 現在就下訂 ?',
	              	            text: results,
	              	            icon: 'success',
	              	            showCancelButton: true,
	              	            confirmButtonColor: '#3085d6',
	              	            cancelButtonColor: '#d33',
	              	            confirmButtonText: '確定',
	              	            cancelButtonText: '再看看'
          					}).then((result) => {
          						if(result.isConfirmed){
	          						var roomId = $('#roomId').val();
	          						console.log(roomId + "=====================");
	          						$.ajax({
	          							method: 'post',
	          							url: '/users/checkroom.controller',
	          							dataType: 'text',
	          							data: {'roomId': roomId},
	          							success: function(){
	          								$('#checkDateForm').submit();

	          							}
	          						});
          						}
          					});
          				  break;
          				 default:
          					Swal.fire({
	          					title: '查詢結果',
	              	            text: results,
	              	            icon: 'error',
	              	            showCancelButton: false,
	              	            confirmButtonColor: '#3085d6',
	              	            cancelButtonColor: '#d33',
	              	            confirmButtonText: '確定'
          					})
          				}                           
            })
	});
	
	</script>
	
<!-- 	登出username -->

	<input type="hidden" value="${username}" id="user">
    <script type="text/javascript">
       var username = document.getElementById("user").value;
       console.log(username);
    </script>
    
</body>

</html>