<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
<!DOCTYPE html>
<html>
<head>
<meta charset="UTF-8">
<title>Insert title here</title>
<script src="js/jquery-3.3.1.min.js"></script>
<script src="https://cdn.jsdelivr.net/npm/jquery-twzipcode@1.7.14/jquery.twzipcode.min.js"></script>
</head>
<body>
 <section class="hero-section">
        <div class="container">
            <div class="row">
                <div class="col-lg-6">
                    <div class="hero-text">
                        <h1>Sona A Luxury Hotel</h1>
                        <p>Here are the best hotel booking sites, including recommendations for international
                            travel and for finding low-priced hotel rooms.</p>
                        <a href="#" class="primary-btn">Discover Now</a>
                    </div>
                </div>
                <div class="col-xl-4 col-lg-5 offset-xl-2 offset-lg-1">
                    <div class="booking-form">
                        <h3>註冊會員</h3>
                        <form action="#">
                            <div class="check-date">
                                <label for="date-in">姓名:</label>
                                <input type="text" name="username" id="username" required/>
                                <i class="icon_calendar"></i>
                            </div>
                            <div class="check-date">
                                <label for="date-out">密碼：</label>
                                <input type="password" name="userpassword" id="userpassword" size=30 placeholder="需輸入至少8碼英文大小寫和數字" pattern="(?=.*[a-z])(?=.*[A-Z])(?=.*\d)[a-zA-Z\d]{8,}" required/>
                                <i class="icon_calendar"></i>
                            </div>
                            <div class="select-option">
                                <label for="guest">再次確認您的密碼：</label>
                                <input type="password" name="confirmpassword" id="confirmpassword" size=30 placeholder="再次確認密碼" pattern="(?=.*[a-z])(?=.*[A-Z])(?=.*\d)[a-zA-Z\d]{8,}" required/>${errorMsgMap.LoginError}
                            </div>
                            <div class="select-option">
                                <label for="room">身分證字號：</label>
                                <input type="text" name="useridentity" id="useridentity" maxlength="10" required/>
                            </div>
                            <div class="select-option">
                                <label for="room">E-mail：</label>
                                <input type="email" name="useremail" id="useremail" size=30 required/>
                            </div>
                            <div class="select-option">
                                <label for="room">電話號碼：</label>
                                <input type="tel" name="userphone" id="userphone" maxlength="10" required/>
                            </div>
                            <div class="select-option">
                                <label for="room">性別：</label>
                                <input type="radio" name="usergender" value="男">男 <input type="radio" name="usergender" value="女" checked>女
                            </div>
                            <div class="select-option">
                                <label for="room">國家：</label>
                                <input type="text" name="usercountry" id="usercountry" required/>
                            </div>
							<div class="select-option">
								<!--選擇縣市-->
								<div id="county"
									style="width: 200px; height: 40px; border: 3px;">地址：</div>
								<br /> <br />
								<br />
								<input type="text" name="address" id="address" placeholder="詳細地址" required />
							</div>
							<div class="select-option">
                                <label for="room">生日：</label>
                                <input type="date" name="userbirthday" id="userbirthday" onclick="checkAge()" required/>
                            </div>
                            <div class="select-option">
                                <label for="room">註冊日期：</label>
                                <input type="date" name="userregistration" id="userregistration" value="<%=new java.text.SimpleDateFormat("yyyy-MM-dd").format(new java.util.Date())%>" readonly/>
                            </div>

							<input type="button" value='一鍵輸入' id="inputform" class="btn btn-outline-primary"><br> <br> 
							<input style="margin-right: 40px" id="registeraccount" type="submit" value="確定" class="btn btn-outline-secondary">
							<button type="submit">Check Availability</button>
                        </form>
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
</script>

</body>
</html>