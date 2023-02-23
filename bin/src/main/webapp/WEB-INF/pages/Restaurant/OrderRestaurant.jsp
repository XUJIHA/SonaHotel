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
									<li><a href="attractions">景點</a>
										<ul class="dropdown">
											<li><a href="attractions">推薦景點</a></li>
											<li><a href="itinerary">套裝行程</a></li>
										</ul>
									</li>
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
.all {
	height: 770px;
	width: 90%;
	margin: auto;
	flex-wrap: wrap;
}

.left {
	width: 60%;
	height: 100%;
}

.image {
	width: 100%;
	height: 70%;
}

.text {
	width: 100%;
	height: 15.25%;
	margin-top: 4.5%;
}

.right {
	width: 40%;
	height: 100%;
	margin-left: 0%;
	margin-right: 0%;
}

.form {
	width: 80%;
	height: 90%;
	margin-left: 10%;
}

table {
	border-collapse: separate;
	border-spacing: 5px;
	margin: 0 auto;
}

td {
	padding: 5px;
	text-align: center;
	vertical-align: middle;
}

input[type="text"], input[type="date"], select {
	padding: 5px;
	font-size: 16px;
	border-radius: 10px;
	border: 2px solid #ccc;
	width: 70%;
	box-sizing: border-box;
	/* 讓元素的寬度包括邊框和內距 */
	margin-bottom: 20px;
	/* 下一個元素與這個元素間的距離 */
}

#submit-btn {
	background-color: #4CAF50;
	width: 100% ;
	color: white;
	padding: 10px 20px;
	text-align: center;
	text-decoration: none;
	display: inline-block;
	font-size: 16px;
	border-radius: 5px;
	cursor: pointer;
}

.textarea {
	word-wrap: break-word;
	word-break: break-all;
}
</style>
	<script>
	  if(${success}==1){
			alert("新增成功")
			window.location.href = "/users/mymembercenter.controller";
		}

		</script>
	<c:forEach var="resturant" items="${resturant}">
		<div style="text-align: center;">
			<!-- ALL元素 -->
			<div class="all" style="display: flex;">
				<!--左邊元素-->
				<div class="left">
					<!--圖片開始-->
					<img style="border:6px solid #dfa974;" src="ShowController?roomId=${resturant.restaurantid}"
						class="image">

					<!--圖片結束-->
					<!--文字-->
					<div class="text" style="border: 3px solid #dfa974;">
						<div style="margin-top:10px" class="textarea">${resturant.restauranttype}</div>

					</div>
					<!--文字結束-->
				</div>




				
				<div class="right">
					<!-- 表單從這裡開始 -->
					<form id="orderForm" class="form" style="border: 3px solid #dfa974;"
						action="/users/AddArrange.controller" method="post">
						<table>
						<h3><div style="margin:10px">目前價格<label id="price"></label></div></h3>
						<tr>
							<input type="hidden" onkeyup="value=value.replace(/[^\d]/g,'') "
								name="restaurantid" min="1" value="${resturant.restaurantid}">
							<input type="hidden" name="restaurantname" id="ResName"
								value="${resturant.restaurantname}">
							<input type="hidden" name="userid" value="${userid}">
							<input type="hidden" id="resPrice" name=restaurantprice
								value="${resturant.restaurantprice}">
							<input type="hidden" id="Id" value="${restaurant.restaurantid}" />
							<input type="hidden" value="${username}" id="user">
							</tr>
							<tr>
								<td>姓名 <input type="text" value="${username}" readonly
									name="arrangename"> <br> <span style="color: red"><b>${nullError2}</b></span>
								</td>
							</tr>
							<tr>
								<td>電話 <input type="text" value="${userphone}" readonly
									name="arrangephone"> <br> <span style="color: red"><b>${nullError3}</b></span>
								</td>
							</tr>
							<tr>
								<td>訂位日期 <input type="date" name="arrangeday"> <br>
									<span style="color: red"><b>${nullError5}${dateError2}</b></span>
								</td>
							</tr>
							<tr>
								<td><label>訂位時段 <span style="color: red"><b>${nullError6}</b></span>
								</label> <br> <input type="radio" name="eattime" id="breakfast"
									value="早上(8點-10點)"> <label for="breakfast">早上(8點-10點)</label>
									<br> <input type="radio" name="eattime" id="lunch"
									value="中下午(12點-4點)" checked> <label for="lunch">中下午(12點-4點)</label>
									<br> <input type="radio" name="eattime" id="dinner"
									value="晚餐(6點-10點)"> <label for="dinner">晚餐(6點-10點)</label>
								</td>
							</tr>

							<tr>
								<td id="104"><select id="selectOption" name="arrangepeople">

										<option value="" selected>請選擇包廂</option>
										<option value="3">3人包廂</option>
										<option value="6">6人包廂</option>
										<option value="10">10人包廂</option>

								</select>
									<div id="message" style="vertical-align: middle;">
										選擇包廂數會顯示有無空位</div> <span><i id=icon1
										class="fa-sharp fa-solid fa-circle-check"
										style="display: none;"></i> <i id=icon2
										class="fa-sharp fa-solid fa-circle-xmark"
										style="display: none;"></i></span> <span style="color: red"><b>${nullError4}</b></span>
								</td>
							</tr>
							<tr>
								<td>
								<span>
								折扣卷<span style="color: red">(選填)</span> <input id="couponCode" type="text" 
									name="coupon">  
									<input style="background-color:#dfa974;color:#FFF;border:none;padding:10px;margin-right:10px;" id="submitCoupon" type="button" value="使用折扣碼" >
								</span>
								</td>
									
							</tr>
								
							<tr>

								<td colspan="2" align="center">

									<button type="submit" id="submit-btn" style="border:none;background-color:#dfa974;margin:3px">提交</button>
								</td>

							</tr>
							
						</table>
									
					</form>
				</div>
			</div>
			<!-- ALL元素結束 -->

		</div>
		<!-- 全螢幕結束 -->



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
	
	
	<script type="text/javascript">
       var username = document.getElementById("user").value;
       console.log(username);
  
	

	let currentMessage = "";
	
	 
	
	
	$(document).ready(function() {
	  $('#selectOption, input[name="eattime"], input[name="arrangeday"]').change(function() {
	    var selectedOption = $("#selectOption").val();
	    var ResName = $("#ResName").val();
	    var radioValue = $('input[name=eattime]:checked').val();
	    var dateValue = $('input[name=arrangeday]').val();
	    var submitButton = $('input[type="submit"]');
	    var resPrice =$("#resPrice").val();
	    
	    var price =selectedOption*resPrice
	    $("#originPrice").val(price);
	    $('#price').text(price);
	    if (selectedOption === "3") {
	    	$.ajax({
	  	      url: "/orderstate3",
	  	      type: "POST",
	  	      data: {selectedOption: selectedOption, radioValue: radioValue, dateValue: dateValue,ResName:ResName},
	  	      success: function(response) {
	  	    	  if(response=="1"){
	  	    		$("#lightbulb").css("background-color", "red");
	  	    	 		let currentMessage = "已無包廂";
	  	    	 	// 設定1號icon為隱藏
	  	    	 	    $("#icon1").hide();
	  	    	 	    // 設定2號icon為可見
	  	    	 	    $("#icon2").show();
	  	    	 	    //禁止下單
	  	    	 	    document.getElementById("submit-btn").disabled = true;
	  	    	 	 document.getElementById("message").innerHTML = currentMessage;
	  	    	 	document.getElementById("message").style.color = "red";
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
	  	    		document.getElementById("message").style.color = "green";
	  	    	  }
	  	    	  
	  	        console.log(response);
	  	      }
	  	    });
	    	} else if (selectedOption === "6") {
	    		$.ajax({
	  	  	      url: "/orderstate6",
	  	  	      type: "POST",
	  	  	      data: {selectedOption: selectedOption, radioValue: radioValue, dateValue: dateValue,ResName:ResName},
	  	  	      success: function(response) {
	  	  	    	 
	  	  	    	  if(response=="2"){
	  	  	    		 $("#lightbulb").css("background-color", "red");
	  	  	    	 		let currentMessage = "已無包廂";
	  	  	    	 // 設定1號icon為隱藏
	  	  	    	    $("#icon1").hide();
	  	  	    	    // 設定2號icon為可見
	  	  	    	    $("#icon2").show();
	  	  	    	//禁止下單
	  	    	 	    document.getElementById("submit-btn").disabled = true;
	  	  	    	 	 document.getElementById("message").innerHTML = currentMessage;
	  	  	    	 document.getElementById("message").style.color = "red";
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
	  	  	    		document.getElementById("message").style.color = "green";
	  	  	    	  }
	  	  	    	
	  	  	    	 
	  	  	    	  
	  	  	        console.log(response);
	  	  	      }
	  	  	    });
	    	} else if (selectedOption === "10") {
	    		$.ajax({
	  	  	      url: "/orderstate10",
	  	  	      type: "POST",
	  	  	      data: {selectedOption: selectedOption, radioValue: radioValue, dateValue: dateValue,ResName:ResName},
	  	  	      success: function(response) {
	  	  	    	
	  	  	    	
	  	  	    	  if(response=="3"){
	  	  	    		$("#lightbulb").css("background-color", "red");
  	  	    	 		let currentMessage = "已無包廂";
  	  	    	 // 設定1號icon為隱藏
  	  	    	    $("#icon1").hide();
  	  	    	    // 設定2號icon為可見
  	  	    	    $("#icon2").show();
  	  	    	//禁止下單
  	    	 	    document.getElementById("submit-btn").disabled = true;
  	  	    	 	 document.getElementById("message").innerHTML = currentMessage;
  	  	    	 document.getElementById("message").style.color = "red";
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
	  	  	    	document.getElementById("message").style.color = "green";
	  	  	    	  }
	  	  	    	  
	  	  	        console.log(response);
	  	  	      }
	  	  	    });
	    	}
	    
	  });
// 	  =====================================CheckCouponCode==================================================
	  $('#submitCoupon').click(function(e){
		  e.preventDefault();
		  let couponCode = $('#couponCode').val();
		  
		  Swal.fire({
		      title: '使用折扣碼後將無法取消!!',
		      icon: 'warning',
		      showCancelButton: true,
		      confirmButtonText: '確定',
		      cancelButtonText: '取消'
		    }).then((result) => {
		        if (result.isConfirmed) {
		            controller1();
		          }
		        });
		  
		  
		  function controller1() {  if(couponCode.length != 0){
			  $.ajax({
					 type: 'post',
					 url: '/users/checkrescoupon.controller',
					 data:{'couponCode': couponCode},
					 success: function(response){
						 if(response == 'ok'){
							let total = $('#originPrice').val();
							 $.ajax({
								 type: 'post',
								 url: '/users/checkrescouponvalue.controller',
								 data:{
									 'couponCode': couponCode,
									 'total': total
								 	},
								 success: function(response){
									  $('#price').html(response);
									  document.getElementById("couponCode").readOnly = true;
									
									  document.getElementById("submitCoupon").disabled = true;
									  
								 }
							 });
						 } else {
							 Swal.fire({
		                          title: response,
		                          icon: 'error',
		                          confirmButtonColor: '#3085d6',
		                          confirmButtonText: '確定'
		                        });
						 }
					 }
				  });
			  } else {
				  Swal.fire({
	                  title: '未輸入折扣碼',
	                  icon: 'error',
	                  confirmButtonColor: '#3085d6',
	                  confirmButtonText: '確定'
	                });
			  }}
		
		  
	  });
	 //=================================================================================
	  
	  
	  
	});
	</script>
	<input id="originPrice" type="hidden" value="">
</body>
</html>