<%@ page language="java" contentType="text/html; charset=UTF-8"
	pageEncoding="UTF-8"%>
<%@ taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core"%>
<%@ taglib prefix="fmt" uri="http://java.sun.com/jsp/jstl/fmt"%>
<%@ taglib prefix="fn" uri="http://java.sun.com/jsp/jstl/functions"%>
<!DOCTYPE html>
<html lang="zxx">

<head>
<meta charset="UTF-8">
<meta name="description" content="Sona Template">
<meta name="keywords" content="Sona, unica, creative, html">
<meta name="viewport" content="width=device-width, initial-scale=1.0">
<meta http-equiv="X-UA-Compatible" content="ie=edge">
<title>Sona | 訂單明細</title>

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
			<a href="<c:url value='/users/searchmember.controller' />"
				class="bk-btn">${useremail}</a>
		</div>
		<nav class="mainmenu">
			<ul>
				<li><a href="/users/origin.controller">首頁</a></li>
				<li><a href="/users/origin.controller">會員中心</a>
					<ul class="dropdown">
						<li><a href="/users/searchmember.controller">修改會員資料</a></li>
						<li><a href="#">我的房間訂單</a></li>
						<li><a href="/users/SearchArrangename.controller">餐廳訂位資訊</a></li>
						<li><a href="/users/showgorder.controller">伴手禮訂單</a></li>
					</ul></li>
				<li><a href="/showallroom.controller">房型</a></li>
				<li><a href="/users/giftdisplay.controller">伴手禮</a>
					<ul class="dropdown">
						<li><a href="/users/showgorder.controller">伴手禮訂單</a></li>
					</ul></li>

				<li><a href="attractions">景點</a>
					<ul class="dropdown">
						<li><a href="attractions">推薦景點</a></li>
						<li><a href="itinerary">套裝行程</a></li>
					</ul></li>
				<li><a href="<c:url value='Homepage.controller'/>">餐飲</a></li>
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
								<a href="#"><i class="fa fa-facebook"></i></a> <a href="#"><i
									class="fa fa-twitter"></i></a> <a href="#"><i
									class="fa-brands fa-line"></i></a> <a href="#"><i
									class="fa fa-instagram"></i></a> <a href="#"><i
									class="fa fa-youtube-play"></i></a>
							</div>
							<a href="<c:url value='/users/searchmember.controller' />"
								class="bk-btn">${useremail}</a>
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
									<li><a href="/users/origin.controller">會員中心</a>
										<ul class="dropdown">
											<li><a href="/users/searchmember.controller">修改會員資料</a></li>
											<li><a href="#">我的房間訂單</a></li>
											<li><a href="/users/SearchArrangename.controller">餐廳訂位資訊</a></li>
											<li><a href="/users/showgorder.controller">伴手禮訂單</a></li>
										</ul></li>
									<li><a href="/showallroom.admin.controller">房型</a></li>
									<li><a href="/users/giftdisplay.controller">伴手禮</a>
										<ul class="dropdown">
											<li><a href="/users/showgorder.controller">伴手禮訂單</a></li>
										</ul></li>
									<li class="active"><a href="attractions">景點</a>
										<ul class="dropdown">
											<li><a href="attractions">推薦景點</a></li>
											<li><a href="itinerary">套裝行程</a></li>
										</ul></li>
									<li><a
										href="<c:url value='/SearchRestaurant.controller'/>">餐飲</a></li>
								</ul>
							</nav>
							<span class="color"><a
								href="/users/searchorder.controller"><i
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
	<!-- Header End -->


	<!-- 我的內容 -->

	<!-- 
	<ul class="box">
		<c:forEach var="resturant" items="${resturant}">
			<li class="image-item"><img
				src="ShowController?roomId=${resturant.restaurantid}" alt=""
				width="300" height="250"></li>
				 <li>圖片</li>
		</c:forEach>
	</ul>
 -->

	<style>
.box {
	display: flex;
	flex-wrap: wrap; /* 换行显示 */
	justify-content: center; /* 中心对齐 */
	margin: 0 25%; /* 为左右边缘留出间距 */
}

.image-item {
	display: block;
	margin: 20px auto; /* 图片上下居中，左右留空 */
	width: 50%; /* 图片宽度100% */
}

.bdtext {
	float: right; /* 文字在右邊 */
	width: 430px;
	padding: 20px 20px 0px 0px;
	border: 2px solid gray;
}

.form {
	padding: 16px;
	font-family: Arial;
}

input[type=text], input[type=password] {
	width: 100%;
	padding: 12px 20px;
	margin: 8px 0;
	display: inline-block;
	border: 1px solid #ccc;
	box-sizing: border-box;
}

button {
	background-color: #4CAF50;
	color: white;
	padding: 14px 20px;
	margin: 8px 0;
	border: none;
	cursor: pointer;
	width: 100%;
}

button:hover {
	opacity: 0.8;
}

.cancelbtn {
	width: auto;
	padding: 10px 18px;
	background-color: #f44336;
}

.imgcontainer {
	text-align: center;
	margin: 24px 0 12px 0;
}

img.avatar {
	width: 40%;
	border-radius: 50%;
}

.container {
	padding: 16px;
}

span.psw {
	float: right;
	padding-top: 16px;
}
</style>
	<script>
	  if(${success}==1){
			alert("新增成功")
		}

		</script>

	<c:forEach var="resturant" items="${resturant}">
		<input type="hidden" id="Id" value="${restaurant.restaurantid}" />
		<div class="imgcontainer">
			<img src="ShowController?roomId=${resturant.restaurantid}"
				style="margin-left: 200px; height: 555px; float: left;" alt="">
		</div>
		<div style="float: left; margin-left: 50px;">
			<div class="bdtext">

				<!-- 表單從這裡開始 -->

				<form class="form" action="/users/AddArrange.controller"
					method="post">
					<div class="container">
						<table align="left">


							<tr>
								<td align="center">訂位人名子<input type="text"
									value="${username}" readonly name="arrangename"> <span
									style="color: red"><b>${nullError2}</b></span></td>
							</tr>
							<tr>
								<td align="center">電話 <input type="text"
									value="${userphone}" readonly name="arrangephone"><span
									style="color: red"><b>${nullError3}</b></span></td>
							</tr>
							<tr>
								<td align="center">訂位日期<input type="date" name="arrangeday">
									<span style="color: red"><b>${nullError5}${dateError2}</b></span></td>
							</tr>
							<tr>
								<td align="center"><label>訂位時段 <span
										style="color: red"><b>${nullError6}</b></span>
								</label> <br> <input type="radio" name="eattime" id="breakfast"
									value="早上(8點-10點)"> <label>早上(8點-10點)</label> <br>
									<input type="radio" name="eattime" id="lunch"
									value="中下午(12點-4點)" checked> <label>中下午(12點-4點)</label>
									<br> <input type="radio" name="eattime" id="dinner"
									value="晚餐(6點-10點)	"> <label>晚餐(6點-10點)</label></td>
							</tr>

							<tr>
								<td>
									<div>
										<i id=icon1 class="fa-sharp fa-solid fa-circle-check"
											style="display: none;"></i>
									</div>
									<div>
										<i id=icon2 class="fa-sharp fa-solid fa-circle-xmark"
											style="display: none;"></i>
									</div>

									<h5 id="message">選擇包廂數會顯示有無空位喔!</h5> <select id="selectOption"
									name="arrangepeople">

										<option value="" selected>請選擇包廂</option>
										<option value="3">3人包廂</option>
										<option value="6">6人包廂</option>
										<option value="10">10人包廂</option>

								</select> <span style="color: red"><b>${nullError4}</b></span>
								</td>
							</tr>
							<tr>
								<td><input type="hidden"
									onkeyup="value=value.replace(/[^\d]/g,'') " name="restaurantid"
									min="1" value="${resturant.restaurantid}"></td>
								<td><span style="color: red"><b>${nullError7}
											${nullError10}</b></span></td>
							</tr>
							<tr>

								<!-- 輸入想傳送過去的參數 -->

								<td><input type="hidden" name="restaurantname"
									value="${resturant.restaurantname}"></td>
								<td><input type="hidden" name="userid" value="${userid}"></td>
								<td><input type="hidden" name=restaurantprice
									value="${resturant.restaurantprice}"></td>
							</tr>
							<tr>

								<td colspan="2" align="center">
									<p>
									<p>
									<p>
										<button type="submit" id="submit-btn">提交</button>
								</td>

							</tr>
						</table>
					</div>

				</form>

			</div>
		</div>
		<table style="clear: both; margin-left: 500px;">
			<tbody>
				<tr>
					<td class="r-o"></td>
					<td>${resturant.restauranttype}</td>
				</tr>


			</tbody>
		</table>
		<script>
	var restaurantId =${resturant.restaurantid};
	</script>
	</c:forEach>









	<!--  
	<table border="1" align="center">

		<tr>
			<th>餐廳id</th>
			<th>餐廳名子</th>
			<th>餐廳簡介</th>
			<th>餐廳類型</th>
			<th>價錢</th>
			<th>餐廳地址</th>
			<th>餐廳電話</th>
			<th>座位數</th>
		</tr>
		<c:forEach var="resturant" items="${resturant}">
			<tbody>
				<tr>
					<td>${resturant.restaurantid}</td>
					<td>${resturant.restaurantname}</td>
					<td>${resturant.restaurantdes}</td>
					<td>${resturant.restauranttype}</td>
					<td>${resturant.restaurantprice}</td>
					<td>${resturant.restaurantaddress}</td>
					<td>${resturant.restaurantphone}</td>
					<td>${resturant.restaurantseat}</td>
					<td style="float: right;"><img
						src="ShowController?roomId=${resturant.restaurantid}"
						height="150px" width="150px" alt=""></td>
				</tr>
			</tbody>

		</c:forEach>

	</table>
	-->
	<br />
	<br />

	<br>





	<br>
	<br>
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
	<input type="hidden" value="${username}" id="user">
	<script type="text/javascript">
       var username = document.getElementById("user").value;
       console.log(username);
    </script>
	<script>
	

	let currentMessage = "";

	
	
	$(document).ready(function() {
	  $('#selectOption, input[name="eattime"], input[name="arrangeday"]').change(function() {
	    var selectedOption = $("#selectOption").val();
	    var radioValue = $('input[name=eattime]:checked').val();
	    var dateValue = $('input[name=arrangeday]').val();
	    var submitButton = $('input[type="submit"]');
	    if (selectedOption === "3") {
	    	$.ajax({
	  	      url: "/orderstate3",
	  	      type: "POST",
	  	      data: {selectedOption: selectedOption, radioValue: radioValue, dateValue: dateValue},
	  	      success: function(response) {
	  	    	  if(response=="1"){
	  	    		$("#lightbulb").css("background-color", "red");
	  	    	 		let currentMessage = "已無包廂，禁止下單";
	  	    	 	// 設定1號icon為隱藏
	  	    	 	    $("#icon1").hide();
	  	    	 	    // 設定2號icon為可見
	  	    	 	    $("#icon2").show();
	  	    	 	    //禁止下單
	  	    	 	    document.getElementById("submit-btn").disabled = true;
	  	    	 	 document.getElementById("message").innerHTML = currentMessage;
	  		  		}
	  	    	  else{
	  	    		$("#lightbulb").css("background-color", "green");
	  	    		let currentMessage = "尚有空包廂";
	  	    		$("#icon1").show();
	  	    	    // 設定2號icon為隱藏
	  	    	    $("#icon2").hide();
	  	    	//可以下單
	  	  	        document.getElementById("submit-btn").disabled = false;
	  	    		 document.getElementById("message").innerHTML = currentMessage;
	  	    	  }
	  	    	  
	  	        console.log(response);
	  	      }
	  	    });
	    	} else if (selectedOption === "6") {
	    		$.ajax({
	  	  	      url: "/orderstate6",
	  	  	      type: "POST",
	  	  	      data: {selectedOption: selectedOption, radioValue: radioValue, dateValue: dateValue},
	  	  	      success: function(response) {
	  	  	    	 
	  	  	    	  if(response=="2"){
	  	  	    		 $("#lightbulb").css("background-color", "red");
	  	  	    	 		let currentMessage = "已無包廂，禁止下單";
	  	  	    	 // 設定1號icon為隱藏
	  	  	    	    $("#icon1").hide();
	  	  	    	    // 設定2號icon為可見
	  	  	    	    $("#icon2").show();
	  	  	    	//禁止下單
	  	    	 	    document.getElementById("submit-btn").disabled = true;
	  	  	    	 	 document.getElementById("message").innerHTML = currentMessage;
	  	  		  		}
	  	  	    	  else{
	  	  	    		 $("#lightbulb").css("background-color", "green");
	  	  	    			let currentMessage = "尚有空包廂";
	  	  	    		$("#icon1").show();
	  	  	        // 設定2號icon為隱藏
	  	  	        $("#icon2").hide();
	  	  	  //可以下單
	  	  	        document.getElementById("submit-btn").disabled = false;
	  	  	    		 document.getElementById("message").innerHTML = currentMessage;
	  	  	    	  }
	  	  	    	
	  	  	    	 
	  	  	    	  
	  	  	        console.log(response);
	  	  	      }
	  	  	    });
	    	} else if (selectedOption === "10") {
	    		$.ajax({
	  	  	      url: "/orderstate10",
	  	  	      type: "POST",
	  	  	      data: {selectedOption: selectedOption, radioValue: radioValue, dateValue: dateValue},
	  	  	      success: function(response) {
	  	  	    	
	  	  	    	
	  	  	    	  if(response=="3"){
	  	  	    		$("#lightbulb").css("background-color", "red");
  	  	    	 		let currentMessage = "已無包廂，禁止下單";
  	  	    	 // 設定1號icon為隱藏
  	  	    	    $("#icon1").hide();
  	  	    	    // 設定2號icon為可見
  	  	    	    $("#icon2").show();
  	  	    	//禁止下單
  	    	 	    document.getElementById("submit-btn").disabled = true;
  	  	    	 	 document.getElementById("message").innerHTML = currentMessage;
	  	  	  		}
	  	  	    	  else{
	  	  	    		$("#lightbulb").css("background-color", "green");
	  	  	    		 let  currentMessage = "尚有空包廂";
	  	  	    	$("#icon1").show();
	  	  	        // 設定2號icon為隱藏
	  	  	        $("#icon2").hide();
	  	  	        //可以下單
	  	  	        document.getElementById("submit-btn").disabled = false;
	  	  	    	 document.getElementById("message").innerHTML = currentMessage;
	  	  	    	  }
	  	  	    	  
	  	  	        console.log(response);
	  	  	      }
	  	  	    });
	    	}
	    
	  });
	});
	</script>
</body>
</html>