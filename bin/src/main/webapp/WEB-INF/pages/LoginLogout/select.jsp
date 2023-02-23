<%@ page language="java" import="java.util.*"
	contentType="text/html; charset=utf8"%>
<%@ taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core"%>
<! DOCTYPE  html >
<html lang="zh-Hant ">

<head>
<meta charset="UTF-8">
<meta name="description" content="Sona Template">
<meta name="keywords" content="Sona, unica, creative, html">
<meta name="viewport" content="width=device-width, initial-scale=1.0">
<meta http-equiv="X-UA-Compatible" content="ie=edge">
<title>Sona | 會員修改資料</title>

<!-- Google Font -->
<link
	href="https://fonts.googleapis.com/css?family=Lora:400,700&display=swap"
	rel="stylesheet">
<link
	href="https://fonts.googleapis.com/css?family=Cabin:400,500,600,700&display=swap"
	rel="stylesheet">

<%
String path = request.getContextPath();
String basePath10 = request.getScheme() + "://" + request.getServerName() + ":" + request.getServerPort() + path
  + "/js/jquery-3.3.1.min.js";
String basePath11 = request.getScheme() + "://" + request.getServerName() + ":" + request.getServerPort() + path
+ "/js/bootstrap.min.js";
String basePath12 = request.getScheme() + "://" + request.getServerName() + ":" + request.getServerPort() + path
+ "/js/jquery.magnific-popup.min.js";
String basePath13 = request.getScheme() + "://" + request.getServerName() + ":" + request.getServerPort() + path
+ "/js/jquery.nice-select.min.js";
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
<script src="<%=basePath13%>"></script>
<script src="<%=basePath14%>"></script>
<script src="<%=basePath15%>"></script>
<script src="<%=basePath16%>"></script>
<script src="<%=basePath17%>"></script>
<script src="https://kit.fontawesome.com/27e0c99202.js" crossorigin="anonymous"></script>
<script src="https://cdn.jsdelivr.net/npm/jquery-twzipcode@1.7.14/jquery.twzipcode.min.js"></script>
<script src="//cdn.jsdelivr.net/npm/sweetalert2@11"></script>
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

<style>
.errorMessage {
	color: red;
}

.booking-form {
	background: #ffffff;
	padding: 60px 90px 80px 100px;
	border-radius: 4px;
}

#country {
	width: 100%;
	height: 50px;
	color: #707079;
	font-size: 16px;
	padding-left: 20px;
	border: 1px solid #e5e5e5;
	border-radius: 2px;
	margin-bottom: 20px;
	-webkit-transition: all 0.3s;
	-o-transition: all 0.3s;
	transition: all 0.3s;
}

#email-icon {
	margin-top: -15px;
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
	top: calc(50% + 5px);
	transform: translateY(-50%);
	cursor: pointer;
}
</style>

</head>


<body onload="getCountries()">
	!-- Page Preloder -->
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
	
	<div class="col-lg-10 offset-lg-1">
					<div class="blog-details-text">
						<div class="leave-comment">

							<div style="text-align:center;"><h3 style="margin: 10px 0 !important; padding: 5px 0 5px 5px;">修改會員資訊</h3></div>
							<br>
							<form action='/users/updatemember.controller' class="comment-form" enctype='multipart/form-data' method='Post'onsubmit="return removeField();">
									<input type="hidden" name="userid" value="${userid}">
								<div class="row">
									<div class="col-lg-6">
										姓名: <input type="text" name="username" id="username" value="${username}" required/>

									</div>
									<div class="col-lg-6" >
										E-mail:
									  <div style="display: flex; align-items: center;">
									   <input type="email" name="useremail" id="useremail" value="${useremail}" readonly/>
									  </div>
									</div>
									
									<div class="col-lg-6 input-with-icon">
										密碼:<input type="password" name="userpassword" id="userpassword" value="${userpassword}" size=30 placeholder="需輸入至少8碼英文大小寫和數字" pattern="(?=.*[a-z])(?=.*[A-Z])(?=.*\d)[a-zA-Z\d]{8,}" required/>
										<i class="fa-solid fa-eye-slash" id="togglePasswordVisibility" onclick="togglePasswordVisibility()"></i>
									</div>
									
									<div class="col-lg-6">
										狀態:<input type="text" name="userstatus" id="userstatus" value="${userstatus}" readonly />
									</div>
									
									<div class="col-lg-6">
										生日: <input type="date" name="userbirthday" id="userbirthday" value="${userbirthday}" required/>
									</div>
									
									<div class="col-lg-6">
										註冊日期:<input type="date" name="userregistration" id="userregistration" value="<%=new java.text.SimpleDateFormat("yyyy-MM-dd").format(new java.util.Date())%>" readonly />
									</div>		
									
									<div class="col-lg-6">
										國家： <input type="tel" name="usercountry" id="usercountry" value="${usercountry}" required/>
									</div>
									
									<div class="col-lg-6">
										電話號碼: <input type="tel" name="userphone" id="userphone" value="${userphone}" required/>
									</div>
									
									<div class="col-lg-6">
										身分證字號: <input type="text" name="useridentity" id="useridentity" value="${useridentity}" required/>
									</div>
									
									<div class="col-lg-6">
										護照號碼: <input type="text" name="useridentity" id="passport" value="${useridentity}" maxlength="10" readonly />
									</div>

									<div class="col-lg-6">
										地址：<input type="text" name="useraddress" size=30 value="${useraddress}" required/>
									</div>
									
									<div class="col-lg-6">
										性別:<input type="text" name="usergender" id="usergender" value="${usergender}" maxlength="1" required /> 
									</div>

									<div class="col-lg-12 text-center">
										<button style="margin: 20px 20px" id="registeraccount" type="submit">確定</button>&nbsp;&nbsp;
										<button type ="button" class="site-btn" onclick="window.location.href='/users/origin.controller'">取消</button>	
									</div>
									
								</div>
							</form>							
							</div>
							<br> <br>
						</div>
					</div>

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
	
     <script>
	 var usercountryInput = document.getElementById("usercountry");
    var usercountry = usercountryInput.value;

    if (usercountry === "TW") {
      document.getElementById("useridentity").style.display = "block";
      document.getElementById("passport").value = "";
    } else {
      document.getElementById("useridentity").value = "";
      document.getElementById("passport").style.display = "block";
    }
    
    // 移除passport在送出表單之前
    function removeField() {
        if (usercountry === "TW") {
        var field = document.getElementById("passport");
        field.parentNode.removeChild(field);
        return true;
        }else {
        	 var field = document.getElementById("useridentity");
             field.parentNode.removeChild(field);
          }
      }
    
    function checkStatus() {
        var status = document.getElementById("userstatus").value;
        if (status === "未驗證") {
          alert("请先驗證您的帳戶。");
          return false;
        }
        return true;
      }
    </script>
	<script>
		$("#county").twzipcode({
			zipcodeIntoDistrict : true, // 郵遞區號自動顯示在地區
			countySel: '桃園市', // 城市預設值
	        districtSel: '中壢區', // 地區預設值
			css : [ "city form-control", "town form-control" ], // 自訂 "城市"、"地區" class 名稱 
			countyName : "county", // 自訂城市 select 標籤的 name 值
			districtName : "district" // 自訂地區 select 標籤的 name 值
		});
	     
	     function checkAndShowSwal() {
		    var today = new Date();
		    var birthdate = new Date(document.getElementById("userbirthday").value);
		    var age = today.getFullYear() - birthdate.getFullYear();
		    var m = today.getMonth() - birthdate.getMonth();
		    if (m < 0 || (m === 0 && today.getDate() < birthdate.getDate())) {
		        age--;
		    }
		    if (age < 18) {
		        Swal.fire({
		            icon : 'error',
		            title : '錯誤',
		            text : '您必須年滿 18 歲，才能繼續!'
		        });
		        return false;
		    } 
		    else {
		        Swal.fire({
		          timer: 5000,
		          title: '請至信箱收取驗證信，完成註冊會員!!',
		          width: 600,
		          padding: '3em',
		          color: '#716add',
		          background: '#fff url(/images/registerbackground.jpg)',
		          backdrop: 
		        	  'rgba(0,0,123,0.4) url("/images/registerimage.gif")left top no-repeat'
		        }).then(function() {
		            document.getElementById("registeraccount").submit();
		        });
		    }
		}
	 
	 
// 		function checkIdentity() {
// 			let identity = document.getElementById("useridentity").value;
// 			let regEx = /^[A-Z][1-2][0-9]{8}$/;
// 			if (!regEx.test(identity)) {
// 				alert("身份證字號格式不正確！");
// 			}
// 		}
	</script>
	
	<script>
	
    function getCountries() {
        // URL of the API that returns the list of countries
        const url = 'https://restcountries.com/v2/all';

        // Send a GET request to the API
        fetch(url)
            .then(response => response.json())
            .then(countries => {
                // Get the select element
                const select = document.getElementById('country');

                // Remove all existing options from the select element
                while (select.firstChild) {
                    select.removeChild(select.firstChild);
                }

                // Add a default option to the select element
                const defaultOption = document.createElement('option');
                defaultOption.text = 'Select a country';
                select.appendChild(defaultOption);

                // Add options to the select element for each country returned by the API
                countries.forEach(country => {
                    const option = document.createElement('option');
                    option.value = country.alpha2Code;
                    option.text = country.name;
                    select.appendChild(option);
                });
            });
    }
    
    document.getElementById('country').addEventListener('change', function() {
    	  const selectedCountry = this.value;
    	  const userIdentityInput = document.getElementById('useridentity');
    	  const passportInput = document.getElementById('passport');
		  
    	  
    	  if (selectedCountry === 'TW') {
    		    userIdentityInput.disabled = false;
    		    passportInput.disabled = true;
    	  } else {
    		    userIdentityInput.disabled = true;
    		    passportInput.disabled = false;
    	  }
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

</body>

</html>
