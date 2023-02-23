<%@ page language="java" contentType="text/html; charset=UTF-8"
	pageEncoding="UTF-8"%>
<!DOCTYPE html PUBLIC "-//W3C//DTD HTML 4.01 Transitional//EN" 
               "http://www.w3.org/TR/html4/loose.dtd">
<%@ taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core"%>
<%@ taglib prefix="fmt" uri="http://java.sun.com/jsp/jstl/fmt"  %>

<%@ taglib uri="http://www.springframework.org/tags" prefix="spring"%>
<html>
<head>
<meta charset="UTF-8">
<script src="//cdn.jsdelivr.net/npm/sweetalert2@11"></script>
<script src="https://cdnjs.cloudflare.com/ajax/libs/jquery/3.3.1/jquery.min.js"></script>
<script src="https://cdnjs.cloudflare.com/ajax/libs/sweetalert/2.1.2/sweetalert.min.js"></script>
<script src="https://kit.fontawesome.com/27e0c99202.js"
	crossorigin="anonymous"></script>
<script type="text/javascript">


$(function(){
    $('.delete').click(function(){
        let id=$(this).attr("value");
        console.log(id)
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
                  url:'/giftCarDeleteById.controller',
                  method:"post",
                  dataType:"text",
                  data: {"sid":id},
                })
                    .done(function () {
                        $(location).attr('href', '/showShoppingCar')
//Gift/giftCart
//                         $(location).attr('href', 'Gift/giftCart')
                        console.log("delete")
                     })//done
                     .fail(function(error) {
                         console.log(error)
                     })//fail end
            }//if
          })//then

      });//click end

     
});
// 修改
$(function(){
    $('.update').click(function(){
        let id=$(this).attr("value");
//         let num=$("#cartnum").val();
        let num=$(this).closest("tr").find(".val").val();
//         let price=$(this).closet("tr").find(".sprice").val();
//         let p = {"sid":id,"cartnum":num};
        console.log(id)
        console.log(num)
        Swal.fire({
          title: 'Are you sure?',
          text: "You won't be able to revert this!",
          icon: 'warning',
          showCancelButton: true,
          confirmButtonColor: '#3085d6',
          cancelButtonColor: '#d33',
          confirmButtonText: 'Yes, update it!'
        }).then((result) => {
            if (result.isConfirmed) {
                $.ajax({
                  url:'/giftCarUpdateById.controller',
                  method:"post",
                  dataType:"text",
                  data: {"sid":id,"cartnum":num},
                })
                    .done(function () {
                        $(location).attr('href', '/showShoppingCar')
                        console.log("update")
                     })//done
                     .fail(function(error) {
                         console.log(error)
                     })//fail end
            }//if
          })//then

      });//click end

     
});
   

</script>
</head>
<body>

<form action="<c:url value='/insertorder'/>" method="post" enctype="multipart/form-data">
	<table class="table table-bordered">
		<thead>
			<tr>
<!-- 				<th width="150">購物車</th> -->
				<th width="100">名字</th>
				<th width="100">單價</th>
				<th width="150">數量</th>
				<th width="300">單價*數量</th>
				
			</tr>
		</thead>
		<tbody>
			<c:forEach var="list" items="${cartMap}">
				<tr>
				
					<td align='center' ><input readonly type="text" name="sname" id="sname"
											value="${list.value.sbean.sname}"></td>
					<td align='center' ><input readonly type="text" name="sprice" id="sprice"
											value="${list.value.sbean.sprice}"></td>
					<td align='center' ><input readonly type="text" name="cartnum" id="cartnum"
											value="${list.value.cartnum}"></td>
					<td align='center' ><input readonly type="text" name="subtotal" id="subtotal"
											value="${list.value.subtotal}"></td>
					
				</tr>

			</c:forEach>
								
				
				<tr height='16'>
					<td colspan='5' align='right'>合計金額：</td>
<%-- 					<td align='right'>${total}元</td>  --%>
					<td align='right'>&nbsp;</td>
				</tr>
				<tr height='16'>
					<td colspan='5' align='right'>會員id</td>
<%-- 					<td align='right'>${hb.userid}</td>  --%>
					<td align='right'>&nbsp;</td>
					
				</tr>
				<tr height='16'>
					<td colspan='5' align='right'>會員 email</td>
<%-- 					<td align='right'>${hb.useremail}</td>  --%>
					<td align='right'>&nbsp;</td>
					
				</tr>
				<tr height='16'>
					<td colspan='5' align='right'>會員 userphone</td>
<%-- 					<td align='right'>${hb.userphone}</td>  --%>
					<td align='right'>&nbsp;</td>
					
				</tr>
				<tr height='16'>
					<td colspan='5' align='right'>會員 useraddress</td>
<%-- 					<td align='right'>${hb.useraddress}</td>  --%>
					<td align='right'>&nbsp;</td>
					
				</tr>
				<tr>
<%-- 				<td>${hb}</td> --%>
					<td align='center'>
						<a href="<c:url value='/insertorder' />"><i class="fa-solid fa-cookie-bite"></i>送出</a>
					</td>
				</tr>
		</tbody>
	</table>
</form>
</body>
</html>