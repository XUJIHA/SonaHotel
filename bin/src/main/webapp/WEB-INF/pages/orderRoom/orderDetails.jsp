<%@ page language="java" contentType="text/html; charset=UTF-8"
	pageEncoding="UTF-8"%>
<%-- <%@ taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core"%>
<%@ taglib prefix="fmt" uri="http://java.sun.com/jsp/jstl/fmt"%>
<%@ taglib prefix="fn" uri="http://java.sun.com/jsp/jstl/functions"%> --%>
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
<link rel="stylesheet" href="https://cdnjs.cloudflare.com/ajax/libs/animate.css/4.1.1/animate.min.css" />
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
				<li><a style="color:#dfa974" href="/users/searchorder.controller">訂單</a></li>
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
										</ul>
									</li>
									<li><a href="<c:url value='/SearchRestaurant.controller'/>">餐飲</a></li>
								</ul>
							</nav>
							<a href="/users/searchorder.controller"><i
								class="fa-solid fa-cart-shopping" style="color: #dfa974;font-size:20px"></i></a>
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
						<h1 style="font-weight: bold;">訂單管理</h1>
						<br>
						<div class="bt-option" style="font-size: 20px">
							<h4>
								<a style="font-size: 110%; font-weight: bold;"
									href="/users/searchorder.controller">訂單管理&nbsp;&nbsp;</a><span
									style="font-size: 110%; color: #dfa974; font-weight: 450;">&nbsp;訂單明細</span>
							</h4>
						</div>
					</div>
				</div>
			</div>
		</div>
	</div>
	<!-- Breadcrumb Section End -->
	<section class="blog-details-section" style="font-size: 20px">
		<div class="container">
			<div class="row">
				<div class="col-lg-10 offset-lg-1">
					<div class="blog-details-text">
						<div class="leave-comment">

							<br>
							<form style="font-size:20px"id="form" style="font-size: 20px" class="comment-form">
								<div class="row">

									<input type="hidden" name="orderid" value="${orderbean.orderid}">
								    <input type="hidden" name="canceltag" id="canceltag" value="${orderbean.canceltag}">

									<div class="col-lg-6">
										房型:<input style="font-size:20px"readonly
											type="text" name="roomname" value="${orderbean.roomname}">

									</div>
									<div class="col-lg-6">
										金額:<input style="font-size:20px"readonly
											type="text" name="price" value="${orderbean.price}">

									</div>
									<div class="col-lg-6">
										入住日期:<input style="font-size:20px"readonly
											type="date" name="checkindate"
											value="${orderbean.checkindate}">
									</div>
									<div class="col-lg-6">
										退房日期:<input style="font-size:20px"readonly
											type="date" name="checkoutdate"
											value="${orderbean.checkoutdate}">
									</div>
									<div class="col-lg-12">
										<hr style="border-top: 2px dashed #dfa974;">
										<br>
									</div>
									<div class="col-lg-6">
										姓名:<input style="font-size:20px"
											class="readonly" type="text" name="username" id="username"
											value="${orderbean.username}">

									</div>
									<div class="col-lg-6">
										身分證:<input style="font-size:20px"
											class="readonly" type="text" name="useridcard"
											id="useridcard" value="${orderdetailsbean.useridcard}">
									</div>
									<div class="col-lg-6">
										信箱:<input style="font-size:20px"
											class="readonly" type="text" name="useremail" id="useremail"
											value="${orderdetailsbean.useremail}">
									</div>
									<div class="col-lg-6">
										電話:<input style="font-size:20px"
											class="readonly" type="text" name="userphone" id="userphone"
											value="${orderdetailsbean.userphone}">
									</div>
									<div class="col-lg-12 ">
										備註事項:
										<textarea  style="font-size:20px" class="readonly" name="notes" id="notes"
											placeholder="ex: 統一編號、同住房客資訊">${orderdetailsbean.notes}</textarea>
									</div>
									<div id="buttons" class="col-lg-12 text-center">
										<button
											style="margin: 20px 20px; background-color: #0066FF; -webkit-filter: saturate(0.5); font-size: 20px"
											type="button" id="update" class="site-btn"
											value="${orderbean.orderid}">修改</button>
										<button
											style="margin: 20px 20px; background-color: #FF3333; -webkit-filter: saturate(0.9); font-size: 20px"
											type="button" id="cancel" class="site-btn"
											value="${orderbean.orderid}">取消</button>

										<button style="margin: 20px 20px; font-size: 20px"
											type="button" id="back" class="site-btn">返回</button>
									</div>
								</div>
							</form>
							<br> <br>
						</div>
					</div>
				</div>
			</div>
		</div>
	</section>
	<!-- Blog Details Section End -->

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
	<script src="https://kit.fontawesome.com/27e0c99202.js" crossorigin="anonymous"></script>
	<script>	
		window.onload = function() {
			var tag=$('#canceltag');
			var status=tag.val();
			var inputs = document.getElementsByClassName("readonly");
			var updatebtn = document.getElementById("update");
			var cancelbtn = document.getElementById("cancel");

			if(status==='待審核'){
				updatebtn.style.display="none";
				cancelbtn.style.display="none";
				for (var i = 0; i < inputs.length; i++) {
					  inputs[i].readOnly = true;
				}
			}else if(status==='已取消'){
				updatebtn.style.display="none";
				cancelbtn.style.display="none";
				for (var i = 0; i < inputs.length; i++) {
					  inputs[i].readOnly = true;
				}
			}
			 
		}
	</script>
	<script>
	$(function(){
		$('#back').click(function(){
			$(location).attr('href','users/searchorder.controller'); 
          })
		$('#cancel').click(function(){
			let orderid=$(this).attr("value");
			Swal.fire({
              title: '確定取消此訂單?',
              icon: 'warning',
              showCancelButton: true,
              confirmButtonColor: 'red',
              cancelButtonColor: 'gray',
              confirmButtonText: '確定',
              cancelButtonText:'取消'
            }).then((result) => {
                if (result.isConfirmed) {
                	Swal.fire({
                		  title: '您已成功提出取消申請',
                		  html:'我們會盡快為您審核，若通過將在7天內退款，<br/>歡迎您再度光臨！',
        				  icon: 'success',
        				  confirmButtonText: '確定',
                		  showClass: {
                		    popup: 'animate__animated animate__fadeInDown'
                		  },
                		  hideClass: {
                		    popup: 'animate__animated animate__fadeOutUp'
                		  }
                		}).then((result) => {
                            if (result.isConfirmed) {
                    $.ajax({
                      url:'/users/cancelorder.controller',
                      method:"post",
                      dataType:"text",
                      data: {"orderid":orderid},
                      success:setTimeout(function(){
              			$(location).attr('href','users/searchorder.controller'); 
                  	},1000)
                    })
                    
                }//if
              })//then
                }//if
            })//then
          })//click end
          
		
        $('#update').click(function(){
                let orderid=$(this).attr("value");
                let username=$("#username").val();
                let useridcard=$("#useridcard").val();
                let useremail=$("#useremail").val();
                let userphone=$("#userphone").val();
                let notes=$("#notes").val();
                console.log(orderid);
                console.log(username);
                console.log(useridcard);
                console.log(useremail);
                console.log(userphone);
                console.log(notes);
                
    			if (username === "") {
    	            Swal.fire({
    	              title: '姓名為必填資料',
    	              icon: 'warning',
    	              confirmButtonColor: '',       
    	              confirmButtonText: '確定',   
    	            })
    				return;
    			}
    			if (useridcard === "") {
    	            Swal.fire({
    	              title: '身分證為必填資料',
    	              icon: 'warning',
    	              confirmButtonColor: '',       
    	              confirmButtonText: '確定',   
    	            })
    				return;
    			}
    			if (useremail === "") {
    				Swal.fire({
    		              title: '信箱為必填資料',
    		              icon: 'warning',
    		              confirmButtonColor: '',       
    		              confirmButtonText: '確定',   
    		            })
    					return;
    			}
    			if (userphone === "") {
    				Swal.fire({
    	              title: '電話為必填資料',
    	              icon: 'warning',
    	              confirmButtonColor: '',       
    	              confirmButtonText: '確定',   
    	            })
    				return;
    				}
    				Swal.fire({
	          		  title: '您的訂單已修改完成!',
	  				  icon: 'success',
	  				  xconfirmButtonText: '確定',
	          		  showClass: {
	          		    popup: 'animate__animated animate__fadeInDown'
	          		  },
	          		  hideClass: {
	          		    popup: 'animate__animated animate__fadeOutUp'
	          		  }
	          		}).then((result) => {
    	                if (result.isConfirmed) {
                        $.ajax({
                          url:'/users/updateorder.controller',
                          method:"post",
                          dataType:"text",
                          data: {"orderid":orderid,"username":username,"useridcard":useridcard,"useremail":useremail,"userphone":userphone,"notes":notes},
                        	success:setTimeout(function(){
                    			$(location).attr('href','users/searchorder.controller'); 
                        	},1000)
                        })
    	                }//if
    				})//then
          })//click end
	});
	//function end
	</script>
	<input type="hidden" value="${username}" id="user">
	<script type="text/javascript">
       var username = document.getElementById("user").value;
       console.log(username);
    </script>
</body>

</html>