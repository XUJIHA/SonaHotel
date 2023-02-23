<%@ page language="java" contentType="text/html; charset=UTF-8"
	pageEncoding="UTF-8"%>
<%@ taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core"%>
<%@ taglib prefix="fmt" uri="http://java.sun.com/jsp/jstl/fmt" %>
<!DOCTYPE html >
<html lang="zh-Hant ">
<head>
<meta charset="UTF-8">
<meta name="description" content="Sona Template">
<meta name="keywords" content="Sona, unica, creative, html">
<meta name="viewport" content="width=device-width, initial-scale=1.0">
<meta http-equiv="X-UA-Compatible" content="ie=edge">
<title>Sona | 登入</title>

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
		
	.booking-form form .check-date label {
		font-size: 18px;
		color: #707079;
		display: block;
		margin-bottom: 10px;
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
	  top: calc(50% + 16px);
	  transform: translateY(-50%);
	  cursor: pointer;
	}
		
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
			<a href="#" class="bk-btn">Login Now</a>
		</div>
		<nav class="mainmenu mobile-menu">
			<ul>
				<li class="active"><a href="/login/page">首頁</a></li>
				<li><a href="/showallroom.controller">房型</a></li>
				<li><a href="<c:url value='giftdisplay.controller'/>">伴手禮</a></li>
				<li><a href="attractions">景點</a>
					<ul class="dropdown">
						<li><a href="attractions">推薦景點</a></li>
						<li><a href="itinerary">套裝行程</a></li>
					</ul></li>
				<li><a href="/SearchRestaurant.controller">餐飲</a></li>
			</ul>
		</nav>
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
									<li class="active"><a href="/login/page">首頁</a></li>
									<li><a href="/showallroom.controller">房型</a></li>
									<li><a href="<c:url value='giftdisplay.controller'/>">伴手禮</a></li>
									<li><a href="attractions">景點</a>
										<ul class="dropdown">
											<li><a href="attractions">推薦景點</a></li>
											<li><a href="itinerary">套裝行程</a></li>
										</ul></li>
									<li><a
										href="<c:url value='/SearchRestaurant.controller'/>">餐飲</a></li>
								</ul>
							</nav>
							<span class="color"><a href="/login/page"><i class="fa-solid fa-cart-shopping" style="color: black;font-size:20px"></i></a></span>
							<div class="nav-right search-switch">
								<i class="icon_search"></i>
							</div>
							<div >
							<marquee onMouseOver="this.stop()" onMouseOut="this.start()">
								<i class="fa-solid fa-hotel" style="font-size: 24px">&nbsp&nbsp 歡迎來到 Sona 飯店 !! 飯店房型怎麼選？</i>
								<a href="/showallroom.controller" style="color: red; font-size: 24px;">各種房型介紹 </a>
								<i class="fa-solid fa-arrow-left">&nbsp 點這 !</i>
							</marquee>
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
						<h1>Sona 豪華飯店 </h1><br/><br/>
						<p style="font-size: 150%;">位於台北市中心，方便前往市內的旅遊景點。<br/><br/>
						提供您精美客房、伴手禮、餐廳訂位與行程規劃。</p>
						<a href="/showallroom.controller" class="primary-btn" style="font-size: 120%;">更多資訊</a>
					</div>
				</div>
				<div class="col-xl-4 col-lg-5 offset-xl-2 offset-lg-1">
					<div class="booking-form">
						<div style="text-align: center; color:#dfa974" >${successMsg}</div>
						<h3>Login</h3>
						<form id="loginform" name="login" action="/login/page" method="POST">
							<div class="check-date">
								<label for="useremail">E-mail :</label> 
								<input type="email" id="useremail" name="username" placeholder="請輸入EMAIL"><br> 
							</div>
							<div class="check-date input-with-icon">
								<label for="userpassword">密碼:</label> 
								<input type="password" id="userpassword" name="password" placeholder="請輸入密碼"><br>
								<i class="fa-solid fa-eye-slash" id="togglePasswordVisibility" onclick="togglePasswordVisibility()"></i>
							</div>
							<div class="check-date">
								<label>驗證碼：</label> 
								<input type="text" name="code" id="code" size=13 placeholder="請輸入驗證碼" style="text-transform: uppercase;">
								<br />
								<br /> 
								<img src="<%= request.getContextPath() %>/captcha" width="130px" height="48px" id="codeimg" name="imgValidate" onclick="refresh()" />
								
							</div>
							<div>
								<input type="checkbox" name="remember-me">Remember Me<br>
							</div>
							<div class="check-date">
								<br/><input type="submit" value='管理者登入' id="inputadmin">
								<br/><br/><input  type="submit" value='使用者登入' id="inputuser">
							</div>
							<button id="login" >登入</button>
							
						</form>
						<form action="/register1.controller" method="post">
							<div style="text-align: center">
								<button type="submit">註冊</button><br/>
							<div style="text-align: center; color:red" >${error}</div>	
							<div style="text-align: center; color:red" >${stoperror}</div>
							<div style="text-align: center; color:red" >${errorMsgMap.LoginError}</div>					
							</div>
						</form>
						<br/>
						<h5>Forgot Password?</h5>
						<br/>
						<div class="language-option">
						<p>
							<span class="color">No problem, <a href="#" style="color: #FF8888" id="forgot">click here</a> to get a new password.</span>
						</p>
						</div>	
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
	
	$('#inputadmin').mouseover(
			function(){
				$.ajax({
				    url: '/captcha2',
				    type: 'GET',
				    dataType: 'text',
				    success: function(data) {
				    	console.log(data)
				    	$('#vcode').val(data);
				}
				});
			}
			)

	
	<%-- 對輸入的賬號資訊進行判斷，賬號密碼不能為空且必須輸入驗證碼 --%>
		$('#login').on('click',function(e) {
			e.preventDefault()
			
 			if ($('#useremail').val() === "") {
 				Swal.fire({
			        icon: 'warning',
			        title: '警告',
			        text: '帳號不能為空!'
 				})
 				return;
 			}
 			if ($('#userpassword').val() === "") {
 				Swal.fire({
			        icon: 'warning',
			        title: '警告',
			        text: '密碼不能為空!'
 				})
 				return;
 			}
 			if ($('#code').val() === "") {
 				Swal.fire({
			        icon: 'warning',
			        title: '警告',
			        text: '驗證碼不能為空!'
 				})
 				return;
 			}
 			
//  			 if ($('#code').val() != null && $('#code').val()=== expectedCaptcha) {
//  				  Swal.fire({
//  				        icon: 'success',
//  				        title: '正確',
//  				        text: '驗證碼正確!'
//  				  })
//  			  } else {
//  			      Swal.fire({
//  			        icon: 'error',
//  			        title: '錯誤',
//  			        text: '驗證碼錯誤，請重新輸入!'
//  			  })
//  			        return;
//  			  }
 			 			
 			$('#loginform').submit();

 		})

 		<%--點選圖片可進行驗證碼重新整理 --%>
 		function refresh() {
 			t=Math.random()
 		    var img = document.getElementById("codeimg");
 		    img.src = "/captcha?t=" + Math.random();  // 加上隨機數防止瀏覽器快取
 		}

 	</script> 
 	<script type="text/javascript"> 
 	$(document).ready(async function() { 
 		$('#forgot').click(async function() {
	 	const { value: email } = await Swal.fire({
			  title: 'Input email address',
			  input: 'email',
			  inputLabel: 'Your email address',
			  inputPlaceholder: 'Enter your email address'
				})
		if (email) {
		  	Swal.fire('Entered email:'+'<br/>'+email)
		  	window.location.href = '/sendeforgetmail.controller?email='+ encodeURIComponent(email);
		  	app.get('/sendeforgetmail.controller', (req, res) => {
		  	  const email = req.query.email;
		  	  // Do something with email
		  	});
		   }//if
 		});//forgot
 	});
 	</script>
 	
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
	<script>
	$('#inputadmin').on('click',function(){
	            $('#useremail').attr('value','eeit156.sonahotel@gmail.com')
	            $('#userpassword').attr('value','Aa123456')
	             let codeValue = $('#vcode').val();
	            $('#code').val(codeValue);
		    	$('#vcode').val(data);
		    	if ($('#code').val() != null && $('#code').val()!= data) {
		    		Swal.fire({
  			        icon: 'error',
  			        title: '錯誤',
  			        text: '驗證碼錯誤，請重新輸入!'
			  		})//Swal
		    }
		    	$('#loginform').submit();
	     })
	$('#inputuser').on('click',function(){
	            $('#useremail').attr('value','sandylu8923@gmail.com')
	            $('#userpassword').attr('value','Aa123456')
	            let codeValue = $('#vcode').val();
	             $('#code').val(codeValue);
	             $('#vcode').val(data);
			    	if ($('#code').val() != null && $('#code').val()!= data) {
			    		Swal.fire({
	  			        icon: 'error',
	  			        title: '錯誤',
	  			        text: '驗證碼錯誤，請重新輸入!'
				  		})//Swal
			    }
			    	$('#loginform').submit();
	     })
	   
	  
	if (successMsg !== '') {
  const message = `<div style="text-align: center; color:#dfa974">${successMsg}</div>`;
  const Toast = Swal.mixin({
    toast: true,
    position: 'top-end',
    showConfirmButton: false,
    timer: 3000,
    timerProgressBar: true,
    didOpen: (toast) => {
      toast.addEventListener('mouseenter', Swal.stopTimer);
      toast.addEventListener('mouseleave', Swal.resumeTimer);
    }
  });

  Toast.fire({
    icon: 'success',
    html: message
  });
}
	
 	</script>
 	<input id="vcode" type="hidden" value="">
 	
 	
</body>

</html>







