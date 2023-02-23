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
String basePath10 = request.getScheme() + "://" + request.getServerName() + ":" + request.getServerPort() + path
  + "/js/jquery-3.3.1.min.js";
String basePath11 = request.getScheme() + "://" + request.getServerName() + ":" + request.getServerPort() + path
+ "/js/bootstrap.min.js";
String basePath12 = request.getScheme() + "://" + request.getServerName() + ":" + request.getServerPort() + path
+ "/js/jquery.magnific-popup.min.js";
// String basePath13 = request.getScheme() + "://" + request.getServerName() + ":" + request.getServerPort() + path
// + "/js/jquery.nice-select.min.js";
String basePath14 = request.getScheme() + "://" + request.getServerName() + ":" + request.getServerPort() + path
+ "/js/jquery-ui.min.js";
String basePath15 = request.getScheme() + "://" + request.getServerName() + ":" + request.getServerPort() + path
+ "/js/jquery.slicknav.js";
String basePath16 = request.getScheme() + "://" + request.getServerName() + ":" + request.getServerPort() + path
+ "/js/owl.carousel.min.js";
String basePath17 = request.getScheme() + "://" + request.getServerName() + ":" + request.getServerPort() + path
+ "/js/main.js";
%>
<!-- Js Plugins -->
<script src="<%=basePath10%>"></script>
<script src="<%=basePath11%>"></script>
<script src="<%=basePath12%>"></script>
<%-- <script src="<%=basePath13%>"></script> --%>
<script src="<%=basePath14%>"></script>
<script src="<%=basePath15%>"></script>
<script src="<%=basePath16%>"></script>
<script src="<%=basePath17%>"></script>
<script src="https://kit.fontawesome.com/27e0c99202.js" crossorigin="anonymous"></script>
<script src="js/jquery-3.3.1.min.js"></script>
<script src="https://cdn.jsdelivr.net/npm/jquery-twzipcode@1.7.14/jquery.twzipcode.min.js"></script>
<!-- Css Styles -->
<!-- 絕對路徑 -->
<% 
String basePath = request.getScheme() + "://" + request.getServerName() + ":" + request.getServerPort() + path
  + "/css/bootstrap.min.css";
String basePath1= request.getScheme() + "://" + request.getServerName() + ":" + request.getServerPort() + path
+ "/css/font-awesome.min.css";
String basePath2= request.getScheme() + "://" + request.getServerName() + ":" + request.getServerPort() + path
+ "/css/elegant-icons.css";
String basePath3= request.getScheme() + "://" + request.getServerName() + ":" + request.getServerPort() + path
+ "/css/flaticon.css";
String basePath4= request.getScheme() + "://" + request.getServerName() + ":" + request.getServerPort() + path
+ "/css/owl.carousel.min.css";
String basePath5= request.getScheme() + "://" + request.getServerName() + ":" + request.getServerPort() + path
+ "/css/nice-select.css";
String basePath6= request.getScheme() + "://" + request.getServerName() + ":" + request.getServerPort() + path
+ "/css/jquery-ui.min.css";
String basePath7= request.getScheme() + "://" + request.getServerName() + ":" + request.getServerPort() + path
+ "/css/magnific-popup.css";
String basePath8= request.getScheme() + "://" + request.getServerName() + ":" + request.getServerPort() + path
+ "/css/slicknav.min.css";
String basePath9= request.getScheme() + "://" + request.getServerName() + ":" + request.getServerPort() + path
+ "/css/style.css";
%>


<link rel="stylesheet" href="<%=basePath%>" type="text/css">
<link rel="stylesheet" href="<%=basePath1%>" type="text/css">
<link rel="stylesheet" href="<%=basePath2%>" type="text/css">
<link rel="stylesheet" href="<%=basePath3%>" type="text/css">
<link rel="stylesheet" href="<%=basePath4%>" type="text/css">
<link rel="stylesheet" href="<%=basePath5%>" type="text/css">
<link rel="stylesheet" href="<%=basePath6%>" type="text/css">
<link rel="stylesheet" href="<%=basePath7%>" type="text/css">
<link rel="stylesheet" href="<%=basePath8%>" type="text/css">
<link rel="stylesheet" href="<%=basePath9%>" type="text/css">
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
			
			<a href="/users/searchmember.controller" class="bk-btn">${useremail}</a>
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
							<a href="<c:url value='/users/searchmember.controller' />" class="bk-btn">${useremail}</a>
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
                        <h3>新增會員資料</h3>
			<form action='<c:url value="/users/insertmember2.controller" />'
			enctype='multipart/form-data' method='post'>
				<div class="select-option">
					<label for="date-in">姓名:</label> <input type="text" name="username"
						id="username" required />
				</div>
				<div class="select-option">
					<label for="date-out">密碼：</label> <input type="password"
						name="userpassword" id="userpassword" size=30
						placeholder="需輸入至少8碼英文大小寫和數字"
						pattern="(?=.*[a-z])(?=.*[A-Z])(?=.*\d)[a-zA-Z\d]{8,}" required />
				</div>
				<div class="select-option">
					<label for="guest">再次確認您的密碼：</label> <input type="password"
						name="confirmpassword" id="confirmpassword" size=30
						placeholder="再次確認密碼"
						pattern="(?=.*[a-z])(?=.*[A-Z])(?=.*\d)[a-zA-Z\d]{8,}" required />${errorMsgMap.LoginError}
				</div>
				<div class="select-option">
					<label for="room">身分證字號：</label> <input type="text"
						name="useridentity" id="useridentity" maxlength="10" required />
				</div>
				<div class="select-option">
					<label for="room">E-mail：</label> <input type="email"
						name="useremail" id="useremail" size=30 required />
				</div>
				<div class="select-option">
					<label for="room">電話號碼：</label> <input type="tel" name="userphone"
						id="userphone" maxlength="10" required />
				</div>
				<div class="select-option">
					<label for="room">性別：</label> <input type="radio" name="usergender"
						value="男">男 <input type="radio" name="usergender"
						value="女" checked>女
				</div>
				<div class="select-option">
					<label for="room">國家：</label> <input type="text" name="usercountry"
						id="usercountry" required />
				</div>
				<div class="select-option">
					<!--選擇縣市-->
					<div id="county" style="width: 200px; height: 40px; border: 3px;">地址：</div>
					<br /> <br /> <br /> <input type="text" name="address"
						id="address" placeholder="詳細地址" required />
				</div>
				<div class="select-option">
					<label for="room">生日：</label> <input type="date"
						name="userbirthday" id="userbirthday" onclick="checkAge()"
						required />
				</div>
				<div class="select-option">
					<label for="room">註冊日期：</label> <input type="date"
						name="userregistration" id="userregistration"
						value="<%=new java.text.SimpleDateFormat("yyyy-MM-dd").format(new java.util.Date())%>"
						readonly />
				</div>

				<input type="button" value='一鍵輸入' id="inputform"
					class="btn btn-outline-primary"><br> <br> <input
					style="margin-right: 40px" id="registeraccount" type="submit"
					value="確定" class="btn btn-outline-secondary">
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
		$("#county").twzipcode({
			zipcodeIntoDistrict : true, // 郵遞區號自動顯示在地區
			countySel: '桃園市', // 城市預設值
	        districtSel: '中壢區', // 地區預設值
			css : [ "city form-control", "town form-control" ], // 自訂 "城市"、"地區" class 名稱 
			countyName : "county", // 自訂城市 select 標籤的 name 值
			districtName : "district" // 自訂地區 select 標籤的 name 值
		});
	
	 $('#inputform').on('click',function(){
	            $('#username').attr('value','呂沛芸')
	            $('#userpassword').attr('value','Aa123456')
	            $('#confirmpassword').attr('value','Aa123456')
	            $('#useridentity').attr('value','A123456789')
	            $('#useremail').attr('value','sandylu8923@gmail.com')
	            $('#userphone').attr('value','0908581886')
	            $('#usergender').attr('value','女')
	            $('#usercountry').attr('value','台灣')
	            $('#county').attr('value','新北市')
	            $('#address').attr('value','新生路2段421號')
	            $('#userbirthday').attr('value','2000-02-03')
	     })
	     
	  </script>

	<!-- 判斷是否已滿18歲 -->
 	<script> 
     function checkAge(){
         var birthday = new Date(document.getElementById("userbirthday").value);
         var ageDifMs = Date.now() - birthday.getTime();
         var ageDate = new Date(ageDifMs);
         var age = Math.abs(ageDate.getUTCFullYear() - 1970);
         if(age < 18){
             alert("You must be at least 18 years old");
             document.getElementById("birthday").value = "";
         }
     }
 	</script> 


	<!-- Js Plugins -->
	<script src="js/bootstrap.min.js"></script>
	<script src="js/jquery.magnific-popup.min.js"></script>
	<script src="js/jquery-ui.min.js"></script>
	<script src="js/jquery.slicknav.js"></script>
	<script src="js/owl.carousel.min.js"></script>
	<script src="js/main.js"></script>
	
</body>

</html>
