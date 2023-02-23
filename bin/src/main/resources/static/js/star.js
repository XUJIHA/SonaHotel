$(function(){

	const stars=document.querySelector(".rating").children;
	let ratingValue=0;
	let index //目前選到的星星
	document.getElementById("rating-value").innerHTML = "請給分"
	
	for(let i=0;i<stars.length;i++){
		stars[i].addEventListener("mouseover",function(){
			document.getElementById("rating-value").innerHTML = "正在打分數"
			for(let j=0;j<stars.length;j++){
				stars[j].classList.remove("fa-star")//reset 所有星星
				stars[j].classList.add("fa-star-o");
				stars[j].style.color = "#f5b917";
			}
			for(let j=0;j<=i;j++){
				stars[j].classList.remove("fa-star-o") //先移除空心的星星
				stars[j].classList.add("fa-star") //添加新的星星 如果i=j表示選中的
			}
		})
		
		stars[i].addEventListener("click",function(){
			ratingValue=i+1
			index=i
			document.getElementById("rating-value").innerHTML = "你打的分數是 "+ratingValue;
		})
		
		stars[i].addEventListener("mouseout",function(){
			for(let j=0;j<stars.length;j++){
				stars[j].classList.remove("fa-star")//reset 所有星星
				stars[j].classList.add("fa-star-o")
			}
			for(let j=0;j<=index;j++){
				stars[j].classList.remove("fa-star-o")
				stars[j].classList.add("fa-star")
			}
		})
	}
	
	function commlist(){
		let pageId = $("#pageId").val();
		$.ajax({
			url: '/commlist',
			type: 'POST',
			dataType:"json",
			contentType : 'application/json; charset=utf-8',
			data:pageId,
			success: function(data) {
			    $("#comment").val('')
			    let datalength = data.length;
			    let score = 0;
			    $('#commlist').empty('');
				if(datalength==0){
					$("#commlist").append("<h4>行程評論</h4>");
					$('#commlist').append("<tr><td colspan='2'><h5>暫無資料</h5></td></tr><hr>");
				}else{
				    $.each(data,function(i,data){
						score += data.star;
						$("#commlist").append("<div><h5>"+data.userName+"</h5></div>");
						for(let i=0; i<data.star;i++){
							$("#commlist").append("<span style='color:#f5b917;' class='fa fa-star'></span>");
						}
							if(5-data.star>0){
								for(let i=0; i<5-data.star;i++){
									$("#commlist").append("<span style='color:#f5b917;' class='fa fa-star-o'></span>");
								}
							}
						$("#commlist").append("<div>"+data.content+"</div>");
						$("#commlist").append("<hr>");
					});
					score = Math.round(score/datalength*100)/100;
					$('#score').empty('');
					$("#commlist").prepend("<h4>行程評論 ("+score+")</h4>");
				}
			},
			error: function(error){
			     console.log(error);
			}
		});
	}
	commlist();
	
	$(document).on('click', '#starbtn', function(){
		let content = $("#comment").val();
		let star = ratingValue;
		let pageId = $("#pageId").val();
		let params = {
			"content":content,
			"star":star,
			"pageId":pageId
		}
			$.ajax({
				url: '/users/commentadd',
				type: 'POST',
				dataType:"json",
				contentType : 'application/json; charset=utf-8',
				data:JSON.stringify(params),
				success: function(data) {
					$("#comment").val('')
				    let datalength = data.length;
				    let score = 0;
				    $('#commlist').empty('');
					if(datalength==0){
						$("#commlist").append("<h4>行程評論</h4>");
						$('#commlist').append("<tr><td colspan='2'><h5>暫無資料</h5></td></tr><hr>");
					}else{
					    $.each(data,function(i,data){
							score += data.star;
							$("#commlist").append("<div><h5>"+data.userName+"</h5></div>");
							for(let i=0; i<data.star;i++){
								$("#commlist").append("<span style='color:#f5b917;' class='fa fa-star'></span>");
							}
								if(5-data.star>0){
									for(let i=0; i<5-data.star;i++){
										$("#commlist").append("<span style='color:#f5b917;' class='fa fa-star-o'></span>");
									}
								}
							$("#commlist").append("<div>"+data.content+"</div>");
							$("#commlist").append("<hr>");
						});
						score = Math.round(score/datalength*100)/100;
						$('#score').empty('');
						$("#commlist").prepend("<h4>行程評論 ("+score+")</h4>");
					}
				},
				error: function(error){
					let timerInterval
					Swal.fire({
					  title: '請登入!',
					  html: '<b></b> 毫秒 後跳轉至登入頁面',
					  timer: 1500,
					  timerProgressBar: true,
					  didOpen: () => {
					    Swal.showLoading()
					    const b = Swal.getHtmlContainer().querySelector('b')
					    timerInterval = setInterval(() => {
					      b.textContent = Swal.getTimerLeft()
					    }, 100)
					  },
					  willClose: () => {
					    clearInterval(timerInterval)
					  }
					}).then((result) => {
					  /* Read more about handling dismissals below */
					  if (result.dismiss === Swal.DismissReason.timer) {
					    window.location.assign("/");
					  }
					})
				     console.log(error);
				}
			});

		});
			
});