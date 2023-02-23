<%@ page language="java" import="java.util.*"
	contentType="text/html; charset=utf8"%>
<%@ taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core"%>
<!DOCTYPE html>
<html lang="zh-Hant ">

<head>
<meta charset="UTF-8">
<meta name="description" content="Sona Template">
<meta name="keywords" content="Sona, unica, creative, html">
<meta name="viewport" content="width=device-width, initial-scale=1.0">
<meta http-equiv="X-UA-Compatible" content="ie=edge">
<title>Sona</title>

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
<link rel="stylesheet" href="css/font-awesome.min.css" type="text/css">
<link rel="stylesheet" href="css/elegant-icons.css" type="text/css">
<link rel="stylesheet" href="css/flaticon.css" type="text/css">
<link rel="stylesheet" href="css/owl.carousel.min.css" type="text/css">
<link rel="stylesheet" href="css/nice-select.css" type="text/css">
<link rel="stylesheet" href="css/jquery-ui.min.css" type="text/css">
<link rel="stylesheet" href="css/magnific-popup.css" type="text/css">
<link rel="stylesheet" href="css/slicknav.min.css" type="text/css">
<link rel="stylesheet" href="css/style.css" type="text/css">


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
	<script src="https://cdn.jsdelivr.net/npm/jquery-twzipcode@1.7.14/jquery.twzipcode.min.js"></script>

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
			<a href="/users/searchmember.controller'" class="bk-btn">${useremail}</a>
		</div>
		<nav class="mainmenu mobile-menu">
			<ul>
				<li><a href="/users/origin.controller">Home</a></li>
				<li><a href="showallroom.controller">Rooms</a></li>
				<li><a href="<c:url value='/giftdisplay.controller'/>">Gifts</a></li>
				<li><a href="searchattractions">Attractions</a>
					<ul class="dropdown">
						<li><a href="addattractions">add Attractions</a></li>
					</ul>
				</li>
				<li><a href="<c:url value='Homepage.controller'/>">Restaurant</a></li>
				<li><a href="searchorder.controller">Orders</a></li>
			</ul>
		</nav>
		<div id="mobile-menu-wrap"></div>
		<div class="top-social">
			<a href="#"><i class="fa fa-facebook"></i></a> 
            <a href="#"><i class="fa fa-twitter"></i></a>
            <a href="#"><i class="fa-brands fa-line"></i></a>
            <a href="#"><i class="fa fa-instagram"></i></a>
            <a href="#"><i class="fa fa-youtube-play"></i></a>
		</div>
		<ul class="top-widget">
			<li><i class="fa fa-phone"></i> (12) 345 67890</li>
			<li><i class="fa fa-envelope"></i> info.colorlib@gmail.com</li>
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
							<li><i class="fa fa-phone"></i> (12) 345 67890</li>
							<li><i class="fa fa-envelope"></i> info.colorlib@gmail.com</li>
						</ul>
					</div>
					<div class="col-lg-6">
						<div class="tn-right">
							<div class="top-social">
								<a href="#"><i class="fa fa-facebook"></i></a> 
                                <a href="#"><i class="fa fa-twitter"></i></a>
                                <a href="#"><i class="fa-brands fa-line"></i></a>
                                <a href="#"><i class="fa fa-instagram"></i></a>
                                <a href="#"><i class="fa fa-youtube-play"></i></a>
							</div>
							<a href="/users/searchmember.controller" class="bk-btn">${useremail}</a>
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
									<span class="color"><a href="/users/logout.controller"><i class="fa-solid fa-right-from-bracket"  style="color: black"></i></a></span>
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
									<li><a href="/users/origin.controller">Home</a></li>
									<li><a href="showallroom.controller">Rooms</a></li>
									<li><a href="<c:url value='/giftdisplay.controller'/>">Gifts</a></li>
									<li><a href="searchattractions">Attractions</a>
										<ul class="dropdown">
											<li><a href="addattractions">add Attractions</a></li>
										</ul>
									</li>
									<li><a href="<c:url value='Homepage.controller'/>">Restaurant</a></li>
								</ul>
							</nav>
							<span class="color"><a href="searchorder.controller"><i class="fa-solid fa-cart-shopping" style="color: black"></i></a></span>
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
	
	<div class="col-xl-4 col-lg-5 offset-xl-2 offset-lg-1">
                    <div class="booking-form">
                        <h3>修改會員資料</h3>
			<form method="post" action="/users/updatemember.controller">
				<c:forEach var="hotelBean" items="${classList}">
				<input type="hidden" name="userid" value="${hotelBean.userid}">
				<div class="select-option">
					<label for="date-in">姓名:</label> 
					<input type="text" name="username" id="username" value="${hotelBean.username}" required/>
				</div>
				<div class="select-option">
					<label for="date-out">密碼：</label>
					 <input type="password" name="userpassword" id="userpassword" value="${hotelBean.userpassword}" size=30 placeholder="需輸入至少8碼英文大小寫和數字" pattern="(?=.*[a-z])(?=.*[A-Z])(?=.*\d)[a-zA-Z\d]{8,}" required/>
				</div>
				<div class="select-option">
					<label for="room">身分證字號：</label>
					<input type="text" name="useridentity" id="useridentity"
						value="${hotelBean.useridentity}" required/>
				</div>
				<div class="select-option">
					<label for="room">E-mail：</label>
					<input type="email" name="useremail" id="useremail"
						value="${hotelBean.useremail}" required/>
				</div>
				<div class="select-option">
					<label for="room">電話號碼：</label> 
					<input type="tel" name="userphone" id="userphone"
						value="${hotelBean.userphone}" required/>
				</div>
				<div class="select-option">
					<label for="room">性別：</label> 
					<input type="radio" name="usergender" value="男">男 <input type="radio" name="usergender" value="女" checked>女
				</div>
				<div class="select-option">
					<label for="room">國家：</label>
					<input type="tel" name="usercountry" id="usercountry"
						value="${hotelBean.usercountry}" required/>
				</div>
				<div class="select-option">
					詳細地址: <input type="text" name="useraddress" value="${hotelBean.useraddress}" required/>
				</div>
				<div class="select-option">
					<label for="room">生日：</label>
					<input type="date" name="userbirthday" id="userbirthday"
						value="${hotelBean.userbirthday}" required/>
				</div>
				<div class="select-option">
					<label for="room">註冊日期：</label>
					<input type="date" name="userregistration" id="userregistration"
						value="${hotelBean.userregistration}" readonly/>
				</div>

				<input type="submit" class="btn btn-outline-secondary" name="userid" value="儲存"/>
			</c:forEach>
			</form>
			
			<form method="GET" action="/users/searchmember.controller">
				<input style="margin-right: 40px" type="submit" value="取消"
					class="btn btn-outline-secondary">
			</form>
		</div>
 </div>

	<br>

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
								<a href="#"><i class="fa fa-facebook"></i></a> 
                                <a href="#"><i class="fa fa-twitter"></i></a>
                                <a href="#"><i class="fa-brands fa-line"></i></a>
                                <a href="#"><i class="fa fa-instagram"></i></a>
                                <a href="#"><i class="fa fa-youtube-play"></i></a>
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

	<script>
    $('#county').twzipcode({
        countyName: 'county',
        districtName: 'district',
        zipcodeName: 'zipcode'
    });
	</script>

	<script>
// 	$(function(){
//         $('.update').click(function(){
//         	Swal.fire({
//       		  position: 'center',
//       		  icon: 'success',
//       		  title: 'Your work has been saved',
//       		  showConfirmButton: false,
//       		  timer: 15000
//       		})
//             let id=$(this).attr("value");
//             Swal.fire({
//               title: 'Are you sure?',
//               text: "You won't be able to revert this!",
//               icon: 'warning',
//               showCancelButton: true,
//               confirmButtonColor: '#3085d6',
//               cancelButtonColor: '#d33',
//               confirmButtonText: 'Yes, update it!'
//             }).then((result) => {
//                 if (result.isConfirmed) {
//                     $.ajax({
//                       url:'updatemember.controller',
//                       method:"post",
//                       dataType:"text",
//                       data: {"userid":id},
//                     })
//                     	.done(function () {
//                         	location.reload();
//                         	console.log("update")
//              			})//done
//              			.fail(function(error) {
//              			    console.log(error)
//              			})//fail end
//                 }//if
//               })//then

//           })//click end
// 	});
	

	//function end
	
</script>

</body>

</html>
