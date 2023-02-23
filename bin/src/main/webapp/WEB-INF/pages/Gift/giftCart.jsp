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
<title>Gift</title>

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
<script src="//cdn.jsdelivr.net/npm/sweetalert2@11"></script>
<script
	src="https://cdnjs.cloudflare.com/ajax/libs/jquery/3.3.1/jquery.min.js"></script>
<script
	src="https://cdnjs.cloudflare.com/ajax/libs/sweetalert/2.1.2/sweetalert.min.js"></script>
<script src="https://kit.fontawesome.com/27e0c99202.js"
	crossorigin="anonymous"></script>

<style>
* {
	border-style: none;
	/* 	border: none;  */
}
/*設定為最重要的*/
table, thead, tr, th, tbody, td {
	border: 0 !important;
}

.t1 {
	width: 350px;
	float: left;
	text-align: right;
}

.card {
	font-weight: bold;
	width: 1100px;
	height: 500px;
	/*   display: flex; */
	/*   background-color: rgb(191, 213, 241, 0.2); */
	/*   overflow: hidden; */
	margin-left: 80px;
	/* 	margin-right: 140px; */
	margin-top: -90px;
	margin-bottom: 400px;
	border-style: none;
}

h2, button {
	font-size: 40px;
	font-weight: bold;
}

.table {
	font-size: 23px;
	border-radius: 30px;
	border: none;
	/* 	border-color:#26282a;  */
	/*   margin-left: 240px; */
	ox-sizing: border-box;
	background-color: rgb(223, 169, 116, 0.1);
	/*   background-color: #f9e6ce; */
	/* 	background-color: #DFA974; */
	/* 	color: #26282a; */
	box-shadow: 0 2px 4px 0 rgb(0 0 0/ 45%);
	width: 900px;
	padding: 10px;
	/*   left: 80px; */
	min-height: 300px;
	/* 	z-index: 1; */
	margin-left: 30px;
	/*   padding: 50px; */
	/*   margin-top: -120px; */
	/*   margin-bottom: 50px; */
	border: 1px solid transparent;
	border-top: 1px solid #f1f1f5;
}

.button {
	margin: 0px 40px;
}

tbody {
	padding: 10px;
}

.delete {
	background-color: #DFA974;
	color: white;
	white-space: nowrap;
	font-size: 33px;
	line-height: 32px;
	letter-spacing: 2px;
	border: hidden;
}

.delete {
	margin-right: 10px;
}
/*刪除button的樣式*/
button.update {
	background-color: transparent; /* 設置背景色為透明 */
	border-style: none; /* 取消按鈕邊框 */
}
/*修改按鈕的樣式*/
.fa-pen-to-square {
	font-size: 0.9em; /* 將圖案放大為原始大小的兩倍 */
	/* 	color: #91D0D5;  */
	color: #43B5AD;
}
/*刪除底下垃圾桶的樣式*/
.fa-trash-can {
	font-size: 1em; /* 將圖案放大為原始大小的兩倍 */
	color: #EC7463; /* 更改圖案顏色為紅色 */
}
/*刪除button的樣式*/
button.delete {
	background-color: transparent; /* 設置背景色為透明 */
	border-style: none; /* 取消按鈕邊框 */
}

button.delete, button.update {
	display: inline-block !important;
	margin-right: 10px;
}
/*新增優惠券樣式*/
.insert, .placeAnOrder {
	border-radius: 4px;
	padding: 5px;
	background-color: #DFA974;
	color: white;
	white-space: nowrap;
	font-size: 30px;
	line-height: 32px;
	letter-spacing: 2px;
	border: hidden;
	margin-right: 10px;
	height: 43px;
}

/*繼續選購樣式*/
.pickOutAndBuy {
	border-radius: 4px;
	margin-left: 350px;
	margin-right: 100px;
	background-color: #DFA974;
	color: white;
	white-space: nowrap;
	font-size: 30px;
	line-height: 35px;
	letter-spacing: 5px;
	border: hidden;
	display: flex;
	justify-content: center;
	align-items: center;
}

.button {
	/* 	text-align: center !important; */
	/* 	display: flex; */
	/* 	justify-content: center; */
	/* 	align-items: center; */
	/* 	padding-left: -20px;" */
	
}
</style>



</head>

<body>
	<input type="hidden" value="${username}" id="user" />
	<script type="text/javascript">
       var username = document.getElementById("user").value;
       console.log(username);
    </script>
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

	<!-- Breadcrumb Section Begin -->
	<div class="breadcrumb-section">
		<div class="breadcrumb-text">
			<h2>購物車</h2>
		</div>
	</div>
	<div class="card">
		<br>
		<table class="table  ">
			<thead>
				<tr>
					<th width="250" style="text-align: center; padding-left: -20px;">名字</th>
					<th width="220" style="text-align: center; padding-left: 140px;">單價</th>
					<th width="150" style="text-align: center; padding-left: 140px;">數量</th>
					<!-- 					<br> -->
				</tr>
			</thead>
			<tbody class="orderitem">

				<c:forEach var="list" items="${cartMap}">
					<tr>

						<td align='center' class="ssname"><c:set var="name"
								value="${list.value.sname}" /> <c:forEach var="i" begin="0"
								end="${fn:length(name)/15}">
      								${fn:substring(name, i*15, (i+1)*15)}<br />
							</c:forEach> <input name="sname" type="hidden" value="${list.value.sname}" />
						</td>

						<td align='center'
							style="text-align: center !important; padding-left: 140px;">${list.value.sprice}<input
							name="sprice" type="hidden" value="${list.value.sprice}" />
						</td>

						<td>

							<div class="cart-num__box">
								<!-- 								<input style="margin-left: 140px;" type="number" align='center' -->
								<!-- 									class="val" id="cartnum" min="1" max="50" -->
								<%-- 									value="${list.value.cartnum}" maxlength="1"> --%>
								<input style="margin-left: 140px;" type="number" align='center'
									class="val" id="cartnum" min="1" max="50"
									value="${list.value.cartnum}" maxlength="1"
									data-cartnum="${list.value.cartnum}">
							</div>
						</td>

						<td><input name="sid" type="hidden" id="sid"
							value="${list.value.sid}" /> <!-- 							<input name="cartnum" type="hidden" -->
							<%-- 							id="cartnum" value="${list.value.cartnum}>" /> --%>
							<button type="submit" class="delete" name="sid"
								style="border-style: none;" value="${list.value.sid}">
								<i class="fa-solid fa-trash-can"></i>
							</button> <!-- 							<button type="submit" class="update" name="sid" -->
							<%-- 								style="border-style: none;" value="${list.value.sid}"> --%>
							<!-- 								<i class="fa-solid fa-pen-to-square"></i> --> <!-- 							</button> -->
					</tr>
				</c:forEach>
			</tbody>
			<tbody class="userinfo">

				<tr>
					<td><input name="userid" type="hidden" id="userid"
						value="${goBean.userid}" /> <input name="username" type="hidden"
						id="username" value="${goBean.username}" /> <input
						name="useremail" type="hidden" id="useremail"
						value="${goBean.useremail}" /> <input name="userphone"
						type="hidden" id="userphone" value="${goBean.userphone}" /> <input
						name="useraddress" type="hidden" id="useraddress"
						value="${goBean.useraddress}" /></td>
				</tr>

				<tr height='16' style="white-space: nowrap;">
					<td colspan='5' align='right'>優惠碼：</td>
					<td align='right'><input type="text" align='center'
						id="couponCode" style="width: 120px; maxlength: 5px;"></td>
					<td>
						<button type="submit" id="orderBtn" class="insert" value="">新增</button>
					</td>



				</tr>
				<tr height='16' style="white-space: nowrap;">
					<td colspan='5' align='right'>合計金額：</td>
					<td id="tdtotal" name="totalPrice">${total}</td>
					<!-- 					<td align='right'><input name="total" type="hidden" id="total" -->
					<%-- 						value="${total}" /></td> --%>

				</tr>
				<tr class="button">

					<td>
						<button type="submit" class="pickOutAndBuy">
							<a href="<c:url value='/giftdisplay.controller' />"
								style="padding: 4px;"><i class="fa-solid fa-cookie-bite"></i>繼續選購</a>
						</button>
					</td>

					<td>
						<button type="button" class="placeAnOrder" id="insert"
							value="${list.value.sid}">下單</button>
					</td>

				</tr>


			</tbody>
		</table>
	</div>
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

	<!-- Js Plugins -->
	<script src="js/jquery-3.3.1.min.js"></script>
	<script src="js/bootstrap.min.js"></script>
	<script src="js/jquery.magnific-popup.min.js"></script>
	<script src="js/jquery.nice-select.min.js"></script>
	<script src="js/jquery-ui.min.js"></script>
	<script src="js/jquery.slicknav.js"></script>
	<script src="js/owl.carousel.min.js"></script>
	<script src="js/main.js"></script>

	<script type="text/javascript">
	
	$('.card').mousemove(function(){
// 		if($('.val').onchange){
// 		updateTotalPrice();
// 		}
		$('.val').on('input', function() {
			  updateTotalPrice();
			});

	});

	// 找出所有商品數量的輸入框
	  const cartNumInputs = document.querySelectorAll('.val');
	
	  // 監聽所有商品數量輸入框的變更事件
// 	  cartNumInputs.forEach((cartNumInput) => {
// 	    cartNumInput.addEventListener('change', updateTotalPrice);
// 	  });
	
// 	  // 更新總價格
	  function updateTotalPrice() {
	    // 找出所有商品數量輸入框的值
	    const cartNums = Array.from(cartNumInputs).map((cartNumInput) => cartNumInput.value);
	
	    // 找出所有商品價格的值
	    const prices = Array.from(document.querySelectorAll('.table .ssname + td')).map((priceCell) => parseFloat(priceCell.textContent));
	
	    // 計算總價格
	    const totalPrice = cartNums.reduce((total, cartNum, index) => {
	      return total + cartNum * prices[index];
	    }, 0);
	    console.log(totalPrice)
	    	const tdtotal = document.getElementById('tdtotal');
			tdtotal.textContent = totalPrice.toFixed(2);
			
		$('#originPrice').val(totalPrice);

	  }
// 	  cartNumInputs.forEach((cartNumInput) => {
// 		    cartNumInput.addEventListener('keyup', function(e){
// 		    	const num = e.target.value;
// 		    	$('#cartnum').val(num);
// 		    });
// 		  });
	  
	  
// 	  $('#cartnum').keyup(function(){
// 	    	const tdtotal = document.getElementById('tdtotal');
// 			tdtotal.textContent = totalPrice.toFixed(2);
// 	    })
      
						$(function () {
							$('.delete').click(function () {
								let id = $(this).attr("value");
								console.log(id)
								Swal.fire({
									title: '確定要刪除嗎?',
//	 								text: "You won't be able to revert this!",
									icon: 'warning',
									showCancelButton: true,
									confirmButtonColor: '#3085d6',
									cancelButtonColor: '#d33',
									confirmButtonText: '確認',
							          cancelButtonText: '取消',
								}).then((result) => {
									if (result.isConfirmed) {
										$.ajax({
											url: '/users/giftCarDeleteById.controller',
											method: "post",
											dataType: "text",
											data: { "sid": id },
										})
											.done(function () {
												location.reload();
												//Gift/giftCart
												//                         $(location).attr('href', 'Gift/giftCart')
												console.log("delete")
											})//done
											.fail(function (error) {
												console.log(error)
											})//fail end
									}//if
								})//then

							});//click end


						// 新增orderitem
						
						    $('#insert').click(function (e) {
						        var orders = [];
						        var orderElements = document.querySelectorAll('.orderitem tr');
						        orderElements.forEach(element => {

						            var sname = element.querySelector('input[name="sname"]').value;
						            var sprice = element.querySelector('input[name="sprice"]').value;
						            var cartnum = element.querySelector('input[id="cartnum"]').value;
						            var sid = element.querySelector('input[id="sid"]').value;



						            orders.push({
						                sname: sname,
						                sprice: sprice,
						                cartnum: cartnum,
						                sid: sid
						            });

						        });
						        var user = [];
// 						        let newtotal = $("#tdtotal").val();
								let newtotal = document.getElementById('tdtotal').textContent;
						        let newuserid = $("#userid").attr("value");
						        let newusername = $("#username").attr("value");
						        let newaddr = $("#useraddress").attr("value");
						        let newuphone = $("#userphone").attr("value");
						        let newemail = $("#useremail").attr("value");
								let couponCode = $('#couponCode').val();
						        user.push({
						        	newtotal: newtotal,
						            newuserid: newuserid,
						            newusername: newusername,
						            newaddr: newaddr,
						            newuphone: newuphone,
						            newemail: newemail,
						            couponCode: couponCode
						        })
						        console.log(user)
						        
						        console.log(orders)
								var json0 = JSON.stringify(orders)
								var user0 = JSON.stringify(user)
								console.log(json0)
								$.ajax({
									  type: 'POST',
									  url: '/users/checorder.controller',
									  contentType: 'application/json',
									  data: JSON.stringify({ orders: json0, user: user0 }),
									  success: function(response) {
									    console.log(response);
									    var test = $('#insert');
									    test.append(response);
								 }
								});

								//送出訂單資料
// 								fetch('/users/checorder.controller', {
// 									method: 'POST',
// 									headers: {
// 										'Content-Type': 'application/json'
// 									},
// 									body: JSON.stringify({ orders: json0, user: user0  })
// 								})
// 						        .then(a=>{
// // 									window.location.href ='/users/giftdisplay.controller';

// 											})
// 								.then(function (response) {
// 									console.log()
// 									var test= document.getElementById("insert")
// 									test.append(response);
// 									console.log('response'+ response);
// 									return response.json();
								})
						    });//INSERT
						     		
						
						// $(function(){
						// 	$('#insert').click(function(e){
						// 		e.preventDefault();
						// 		 let id= $("#sid").attr("value");
						// 		 let name= $("#sname").attr("value");
						// 		 let nprice= $("#sprice").attr("value");
						// 		 let newnum= $("#cartnum").attr("value");

						// 		 let newtotal= $("#total").attr("value");
						// 		 let newuserid= $("#userid").attr("value");
						// 		 let newusername= $("#username").attr("value");
						// 		 let newaddr= $("#useraddress").attr("value");
						// 		 let newuphone= $("#userphone").attr("value");
						// 		 let newemail= $("#useremail").attr("value");

						// 		console.log(id);
						// 		console.log(name);
						// 		console.log(nprice);
						// 		console.log(newnum);
						// 		console.log(newtotal); 
						// 		console.log(newuserid);
						// 		console.log(newusername);
						// 		console.log(newaddr);
						// 		console.log(newuphone);
						// 		console.log(newemail);

						// 		var data = {
						// 			"gid":id,
						// 			"gname":name,
						// 			"gprice":nprice,
						// 			"cartnum":newnum,
						// 			"totalamount":newtotal,
						// 			"userid":newuserid,
						// 			"username":newusername,
						// 			"useraddress":newaddr,
						// 			"userphone":newuphone,
						// 			"useremail":newemail

						// 		}
						// 		var json0 = JSON.stringify(data)
						// 		console.log(json0)
						// 		fetch('/users/checorder.controller',{
						// 			 method:"post",
						//              body: json0, 
						//              headers:{
						//             	 'Content-Type': 'application/json'
						//              }
						// 				})
						// 		.then(a=>{
						// 			 window.location.href ='/users/giftdisplay.controller';

						// 		}
						// 				)
						// // 		 $.ajax({
						// //                   url:'/users/checorder.controller',
						// //                   method:"post",
						// //                   dataType: "json",
						// //               	  contentType: "application/json",
						// //                   data: json0
						// //                 }).success(a=>{
						// //                     console.log("update")
						// //                     $(location).attr('href', '/users/giftdisplay.controller')                	
						// //                 }
						// //                  )

						// 	})

						//原本的修改按鍵
// 						$('.update').click(function () {
// 							let id = $(this).attr("value");
// 							let num = $(this).closest("tr").find(".val").val();
// 							console.log(id)
// 							console.log(num)
// 							Swal.fire({
// 								title: '確定要更改數量嗎?',
// // 								text: "You won't be able to revert this!",
// 								icon: 'warning',
// 								showCancelButton: true,
// 								confirmButtonColor: '#3085d6',
// 								cancelButtonColor: '#d33',
// 								confirmButtonText: '是，請更新數量!'
// 							}).then((result) => {
// 								if (result.isConfirmed) {
// 									$.ajax({
// 										url: '/users/giftCarUpdateById.controller',
// 										method: "post",
// 										dataType: "text",
// 										data: { "sid": id, "cartnum": num },
// 									})
// 										.done(function () {
// 											$(location).attr('href', '/users/showShoppingCar')
// 											console.log("update")
// 										})//done
// 										.fail(function (error) {
// 											console.log(error)
// 										})//fail end
// 								}//if
// 							})//then

//  						});//click end

 						$(function () {
 							$('#orderBtn').click(function () {
 								let couponCode = $('#couponCode').val();
 								console.log(couponCode);
 								if (couponCode.length != 0) {
 									$.ajax({
 										method: 'post',
 										url: '/users/checkgiftcoupon.controller',
 										data: { "couponCode": couponCode },
 										success: function (response) {
 											if (response == "ok") {
 												let total = $('#originPrice').val();
 												$.ajax({
 			 										method: 'post',
 			 										url: '/users/checkgiftcouponvalue.controller',
 			 										data: { 
 			 											"couponCode": couponCode, 
 			 											"totalPrice": total
 			 										},
 			 										success: function(responsev){
//  			 											$('#total').val(responsev);
 			 											$('#tdtotal').text(responsev);
 			 										}
 												});
	 											} else {
	 												// 顯示折扣碼錯誤訊息(無效、過期、已使用)
	 												Swal.fire({
														title: response,
														icon: 'error',
														confirmButtonColor: '#3085d6',
													});
	 											}
 										}
 									});
 								} else {
 									Swal.fire({
										title: '未輸入優惠碼!',
										icon: 'error',
										confirmButtonColor: '#3085d6',
									});
 								}
 							})
 						});



					</script>
	<input id="originPrice" type="hidden" value="">
</body>

</html>