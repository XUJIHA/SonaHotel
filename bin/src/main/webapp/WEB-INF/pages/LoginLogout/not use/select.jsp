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
			<a href="<c:url value='/users/searchmember.controller' />" class="bk-btn">${useremail}</a>
		</div>
		<nav class="mainmenu mobile-menu">
			<ul>
				<li><a href="/users/origin.controller">Home</a></li>
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
							<br>
						</div>
					</div>
				</div>
			</div>
		</div>
	</header>

	<!-- Header End -->

	<br>
	<div>

		<table bgcolor="#FFF0D4" border="2" align="center">
			<thead>
				<tr>
					<th>使用者id</th>
					<th>姓名</th>
					<th>密碼</th>
					<th>身分證字號</th>
					<th>EMAIL</th>
					<th>電話號碼</th>
					<th>性別</th>
					<th>國家</th>
					<th>地址</th>
					<th>生日</th>
					<th>註冊日期</th>
					<th>修改</th>
					<th>刪除</th>
				</tr>
			</thead>

			<tbody>
				<c:forEach var="hotelBean" items="${classList}">
					<tr>
						<td>${hotelBean.userid}</td>
						<td>${hotelBean.username}</td>
						<td>${hotelBean.userpassword}</td>
						<td>${hotelBean.useridentity}</td>
						<td>${hotelBean.useremail}</td>
						<td>${hotelBean.userphone}</td>
						<td>${hotelBean.usergender}</td>
						<td>${hotelBean.usercountry}</td>
						<td>${hotelBean.useraddress}</td>
						<td>${hotelBean.userbirthday}</td>
						<td>${hotelBean.userregistration}</td>
						<td><form method="GET" action="/users/memberfindById.controller">
								<button class="edit" name="userid" value="${hotelBean.userid}"
									style='border: 0; background-color: transparent'>
									<i class='fa-solid fa-pen-to-square'></i>
								</button>
							</form></td>
						<td>
							<button class="delete" value="${hotelBean.userid}" name="userid" style='border: 0; background-color: transparent'><i class="fa-solid fa-trash-can"></i></button>
						</td>
					</tr>
				</c:forEach>
			</tbody>

		</table>
		<br>
		<div style="text-align: center;">
			<form method="post" action="/users/insertmember1.controller">
				<button class="btn btn-outline-warning">新增</button>
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
		$(function(){
	        $('.delete').click(function(){
	            let id=$(this).attr("value");
	            Swal.fire({
	              title: 'Are you sure?',
	              text: "You won't be able to revert this!",
	              icon: 'warning',
	              showCancelButton: true,
	              confirmButtonColor: '#3085d6',
	              cancelButtonColor: '#d33',
	              confirmButtonText: 'Yes, delete it!'
	            }).then((result) => {
	                if (result.isConfirmed) {
	                    $.ajax({
	                      url:'/users/deletemember.controller',
	                      method:"post",
	                      dataType:"text",
	                      data: {"userid":id},
	                    })
	                    	.done(function () {
	                        	location.reload();
	                        	console.log("delete")
	             			})//done
	             			.fail(function(error) {
	             			    console.log(error)
	             			})//fail end
	                }//if
	              })//then
	
	          })//click end
		});
		//function end
	</script>

</body>

</html>
