$(function(){
///////////////////Front////////////////////////
	//Front Itinerary list btn
	$(document).on('click', '#iall', function(){
		let value=$(this).data("value");
		$.ajax({
				url:'/jump1',
				method:"POST",
				dataType:"JSON",
				contentType:"application/json",
				data: value,
				success:function(data) {
					$("#itinerary-info").empty();
					$.each(data,function(i,data){
						$("#itinerary-info").append("<div class='col-lg-6 col-md-3'><div class='hp-itinerary-item'><img src=/filei/"+data.id+" alt='"+data.title+"'>"+
						"<div class='hr-text'><h3><span>"+data.title+"</span></h3><table><tbody><tr><td class='r-o'></td><td></td></tr></tbody></table><span><a id='fia' data-value='"+data.id+
						"' href='itinerary"+data.id+"' class='primary-btn'>More Details</a></span></div></div></div>");
					});
				},
				error:function(error){
					console.log(error)
				}
		});
	});
	$(document).on('click', '#iv1', function(){
		let value=$(this).data("value");
		$.ajax({
				url:'/jump1',
				method:"POST",
				dataType:"JSON",
				contentType:"application/json",
				data: value,
				success:function(data) {
					$("#itinerary-info").empty();
					$.each(data,function(i,data){
						$("#itinerary-info").append("<div class='col-lg-6 col-md-3'><div class='hp-itinerary-item'><img src=/filei/"+data.id+" alt='"+data.title+"'>"+
						"<div class='hr-text'><h3><span>"+data.title+"</span></h3><table><tbody><tr><td class='r-o'></td><td></td></tr></tbody></table><span><a id='fia' data-value='"+data.id+
						"' href='itinerary"+data.id+"' class='primary-btn'>More Details</a></span></div></div></div>");
					});
				},
				error:function(error){
					console.log(error)
				}
		});
	});
	$(document).on('click', '#iv2', function(){
		let value=$(this).data("value");
		$.ajax({
				url:'/jump1',
				method:"POST",
				dataType:"JSON",
				contentType:"application/json",
				data: value,
				success:function(data) {
					$("#itinerary-info").empty();
					$.each(data,function(i,data){
						$("#itinerary-info").append("<div class='col-lg-6 col-md-3'><div class='hp-itinerary-item'><img src=/filei/"+data.id+" alt='"+data.title+"'>"+
						"<div class='hr-text'><h3><span>"+data.title+"</span></h3><table><tbody><tr><td class='r-o'></td><td></td></tr></tbody></table><span><a id='fia' data-value='"+data.id+
						"' href='itinerary"+data.id+"' class='primary-btn'>More Details</a></span></div></div></div>");
					});
				},
				error:function(error){
					console.log(error)
					
				}
		});
	});
	$(document).on('click', '#iv3', function(){
		let value=$(this).data("value");
		$.ajax({
				url:'/jump1',
				method:"POST",
				dataType:"JSON",
				contentType:"application/json",
				data: value,
				success:function(data) {
					$("#itinerary-info").empty();
					$.each(data,function(i,data){
						$("#itinerary-info").append("<div class='col-lg-6 col-md-3'><div class='hp-itinerary-item'><img src=/filei/"+data.id+" alt='"+data.title+"'>"+
						"<div class='hr-text'><h3><span>"+data.title+"</span></h3><table><tbody><tr><td class='r-o'></td><td></td></tr></tbody></table><span><a id='fia' data-value='"+data.id+
						"' href='itinerary"+data.id+"' class='primary-btn'>More Details</a></span></div></div></div>");
					});
				},
				error:function(error){
					console.log(error)
				}
		});
	});
	$(document).on('click', '#iv4', function(){
		let value=$(this).data("value");
		$.ajax({
				url:'/jump1',
				method:"POST",
				dataType:"JSON",
				contentType:"application/json",
				data: value,
				success:function(data) {
					$("#itinerary-info").empty();
					$.each(data,function(i,data){
						$("#itinerary-info").append("<div class='col-lg-6 col-md-3'><div class='hp-itinerary-item'><img src=/filei/"+data.id+" alt='"+data.title+"'>"+
						"<div class='hr-text'><h3><span>"+data.title+"</span></h3><table><tbody><tr><td class='r-o'></td><td></td></tr></tbody></table><span><a id='fia' data-value='"+data.id+
						"' href='itinerary"+data.id+"' class='primary-btn'>More Details</a></span></div></div></div>");
					});
				},
				error:function(error){
					console.log(error)
				}
		});
	});
	//Front Itinerary list btn end
	
	//Front Itinerary list
	function frontItinerary(){
		$.ajax({
			url:'/iqueryAll',
			method:"POST",
			dataType:"JSON",
			contentType:"application/json",
			success:function(data) {
				$.each(data,function(i,data){
					$("#itinerary-info").append("<div class='col-lg-6 col-md-3'><div class='hp-itinerary-item'><img src=/filei/"+data.id+" alt='"+data.title+"'>"+
					"<div class='hr-text'><h3><span>"+data.title+"</span></h3><table><tbody><tr><td class='r-o'></td><td></td></tr></tbody></table><span><a id='fia' data-value='"+data.id+
					"' href='itinerary"+data.id+"' class='primary-btn'>More Details</a></span></div></div></div>");
				});

			},
			error:function(error){
				console.log(error);
			}
		});
	}
	frontItinerary();
	
	//Front Itinerary Details Info
	function frontItineraryDetailsInfo(){
		pageId=$("#pageId").val();
		$.ajax({
			url:'/iqueryId',
			method:"POST",
			dataType:"JSON",
			contentType:"application/json",
			data: pageId,
			success:function(data) {
				for (let j = 0; j < data.length; j++) {
					$("#bd-more-text").append("<div class='bm-item'><h4>" + data[j].aname + "</h4></div><p>"+data[j].introduction+"</p>");
					$("#slider").append("<div class='ts-item' ><img src=/file/"+data[j].aid+" width='945px' height='500px' alt='"+data[j].aname+"'></div>");
				}
				$('#slider').slick({
					arrows:true,
					dots:true,
					autoplay:true,
					autoplaySpeed:1500,
					infinite:true,
				});
				
				$("#collect").append("<button class='liketf phone-btn' id='liketf' name='liketf'><i class='fa-regular fa-heart'></i></button>")
			},
			error:function(error){
				console.log(error);
			}
		});
	}
	frontItineraryDetailsInfo();
	
	//Front Attractions select_op
	getArea = function(){
		var value=$('#select_op').val();
		var iframes = []; // 宣告空陣列
		$.ajax({
				url:'/jump',
				method:"POST",
				dataType:"JSON",
				contentType:"application/json",
				data: value,
				success:function(data) {
					$('#detailes-img').empty();
					$('#detailes-text').empty();
					$.each(data,function(i,data){
						$("#detailes-img").append("<div class='about-pic m-b-60'><div class='m-b-l0'><img src=/file/"+data.aid+" alt='"+data.aname+"'></div></div>");
						$("#detailes-text").append("<div class='m-b-50'><h3 class='m-b-l0'>"+data.aname+
						"</h3><p class='m-0 p-time'>營業時間&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;景點簡介</p><div id='detailes-info' style='word-break: break-all;'>"+data.introduction+"</div>"+
						"<p class='m-0'>禮拜日 : "+data.begin7+"-"+data.end7+
						"</p><p class='m-0'>禮拜一 : "+data.begin1+"-"+data.end1+
						"</p><p class='m-0'>禮拜二 : "+data.begin2+"-"+data.end2+
						"</p><p class='m-0'>禮拜三 : "+data.begin3+"-"+data.end3+
						"</p><p class='m-0'>禮拜四 : "+data.begin4+"-"+data.end4+
						"</p><p class='m-0'>禮拜五 : "+data.begin5+"-"+data.end5+
						"</p><p class='m-0'>禮拜六 : "+data.begin6+"-"+data.end6+
						"</p><hr><button class='b-mt-10 mapbtn' "+data.aid+" id='gmap' name='gmap' type='button' data-index="+i+"><i class='fa-solid fa-location-dot'></i>立即前往</button>"+
						"<button class='b-ml-10 phone-btn' id='tel' name='tel' type='button'><i class='fa fa-phone'></i>"+data.phone+"</button>");
	
						// 設定彈窗內容
						let iframe = document.createElement('iframe');
						iframe.style.width = '100%';
						iframe.style.height = '400px';
						iframe.src = 'https://www.google.com/maps/embed/v1/search?key=AIzaSyBeMPpGN97FxAWlYcsIBeZ3o-lt6dH2Xj4&q='+data.aname+'&zoom=16&center='+data.lng+','+data.lat+'';
						
						iframes.push(iframe); // 將 iframe 物件存入陣列中
					});
					
					$(document).on('click', '#gmap', function(){
						var index = $(this).attr('data-index');
						Swal.fire({
						  title: 'Google Map',
						  html: iframes[index].outerHTML,
						  showCloseButton: true,
						  showConfirmButton: false
						});
	
					});
					
				},
				error:function(error){
					console.log(error)
				}
		});
	}

	//Front Attractions searchbtn
	$(document).on('click', '#searchbtn', function(){
		let search=$("#search").val();
		var iframes = []; // 宣告空陣列
		$.ajax({
			url: '/likesearch',
			type: 'POST',
			dataType:"JSON",
			contentType:"application/json",
			data: search,
			success: function(data) {
				if(data.length==0){
					console.log(data.length);
					$('#detailes-img').empty();
					$('#detailes-text').empty();
					$('#detailes-info').empty();
					$('#detailes-text').prepend("<h3 style='text-align:center;'>查無資料</h3>");
				}else{
					$('#detailes-img').empty();
					$('#detailes-text').empty();
					$('#detailes-info').empty();
					$.each(data,function(i,data){
						$("#detailes-img").append("<div class='about-pic m-b-60'><div class='m-b-l0'><img src=/file/"+data.aid+" alt='"+data.aname+"'></div></div>");
						$("#detailes-text").append("<div class='m-b-50'><h3 class='m-b-l0'>"+data.aname+
						"</h3><p class='m-0 p-time'>營業時間&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;景點簡介</p><div id='detailes-info' style='word-break: break-all;'>"+data.introduction+"</div>"+
						"<p class='m-0'>禮拜日 : "+data.begin7+"-"+data.end7+
						"</p><p class='m-0'>禮拜一 : "+data.begin1+"-"+data.end1+
						"</p><p class='m-0'>禮拜二 : "+data.begin2+"-"+data.end2+
						"</p><p class='m-0'>禮拜三 : "+data.begin3+"-"+data.end3+
						"</p><p class='m-0'>禮拜四 : "+data.begin4+"-"+data.end4+
						"</p><p class='m-0'>禮拜五 : "+data.begin5+"-"+data.end5+
						"</p><p class='m-0'>禮拜六 : "+data.begin6+"-"+data.end6+
						"</p><hr><button class='b-mt-10 mapbtn' "+data.aid+" id='gmap' name='gmap' type='button' data-index="+i+"><i class='fa-solid fa-location-dot'></i>立即前往</button>"+
						"<button class='b-ml-10 phone-btn' id='tel' name='tel' type='button'><i class='fa fa-phone'></i>"+data.phone+"</button>");
	
						// 設定彈窗內容
						let iframe = document.createElement('iframe');
						iframe.style.width = '100%';
						iframe.style.height = '400px';
						iframe.src = 'https://www.google.com/maps/embed/v1/search?key=AIzaSyBeMPpGN97FxAWlYcsIBeZ3o-lt6dH2Xj4&q='+data.aname+'&zoom=16&center='+data.lng+','+data.lat+'';
						
						iframes.push(iframe); // 將 iframe 物件存入陣列中
					});
					
					$(document).on('click', '#gmap', function(){
						var index = $(this).attr('data-index');
						Swal.fire({
						  title: 'Google Map',
						  html: iframes[index].outerHTML,
						  showCloseButton: true,
						  showConfirmButton: false
						});
	
					});
					
					$(document).on('click', '#tel', function(){
						window.location.href='tel:' + data.phone;
					});
				}
				$('#search').val('');
			},
			error: function(error){
			     console.log(error);
			     Swal.fire({
				  position: 'center',
				  icon: 'warning',
				  title: '請輸入搜尋條件',
				  showConfirmButton: false,
				  timer: 1500
				})
			}
		});
		
	});

//	frontAttractions();
	function frontAttractions(){
		var iframes = []; // 宣告空陣列
		$.ajax({
			url:'/queryAll',
			method:"POST",
			dataType:"JSON",
			contentType:"application/json",
			success:function(data) {
				$.each(data,function(i,data){
					$("#detailes-img").append("<div class='about-pic m-b-60'><div class='m-b-l0'><img src=/file/"+data.aid+" alt='"+data.aname+"'></div></div>");
					$("#detailes-text").append("<div class='m-b-50'><h3 class='m-b-l0'>"+data.aname+
					"</h3><p class='m-0 p-time'>營業時間&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;景點簡介</p><div id='detailes-info' style='word-break: break-all;'>"+data.introduction+"</div>"+
					"<p class='m-0'>禮拜日 : "+data.begin7+"-"+data.end7+
					"</p><p class='m-0'>禮拜一 : "+data.begin1+"-"+data.end1+
					"</p><p class='m-0'>禮拜二 : "+data.begin2+"-"+data.end2+
					"</p><p class='m-0'>禮拜三 : "+data.begin3+"-"+data.end3+
					"</p><p class='m-0'>禮拜四 : "+data.begin4+"-"+data.end4+
					"</p><p class='m-0'>禮拜五 : "+data.begin5+"-"+data.end5+
					"</p><p class='m-0'>禮拜六 : "+data.begin6+"-"+data.end6+
					"</p><hr><button class='b-mt-10 mapbtn' "+data.aid+" id='gmap' name='gmap' type='button' data-index="+i+"><i class='fa-solid fa-location-dot'></i>立即前往</button>"+
					"<button class='b-ml-10 phone-btn' id='tel' name='tel' type='button'><i class='fa fa-phone'></i>"+data.phone+"</button>");
		
					// 設定彈窗內容
					let iframe = document.createElement('iframe');
					iframe.style.width = '100%';
					iframe.style.height = '400px';
					iframe.src = 'https://www.google.com/maps/embed/v1/search?key=AIzaSyBeMPpGN97FxAWlYcsIBeZ3o-lt6dH2Xj4&q='+data.aname+'&zoom=16&center='+data.lng+','+data.lat+'';
					
					iframes.push(iframe); // 將 iframe 物件存入陣列中
				});
				$(document).on('click', '#gmap', function(){
					var index = $(this).attr('data-index');
					Swal.fire({
					  title: 'Google Map',
					  html: iframes[index].outerHTML,
					  showCloseButton: true,
					  showConfirmButton: false
					});

				});
				
				$(document).on('click', '#tel', function(){
					window.location.href='tel:' + data.phone;
				});
			},
			error:function(error){
				console.log(error);
			}
		});
	}
	frontAttractions();
	
/////////////////////////////////Back//////////////////////////////
	//Back AttractionsList
	function load(){
		$.ajax({
			url:'/queryAll',
			method:"POST",
			dataType:"JSON",
			contentType:"application/json",
			success:function(data) {
				$('#accordion').empty('');
				if(data.length==0){
					$('table').prepend("<tr><td colspan='2'><h3>暫無資料</h3></td></tr>");
				}else{
	                let columns = [
	                    { data: 'aid', title: '#' },
	                    { data: 'aname', title: '景點名稱' },
	                    { data: 'address', title: '地址' },
	                    { data: 'phone', title: '電話' },
	                    { data: 'introduction', title: '介紹' },
	                    { 
	                      data: null,
	                      title: '圖片',
	                      render: function (data) {
	                        return "<img src='/file/" + data.aid + "' id='pid' class='img-fluid img-thumbnail d-block mx-auto' style='width:200px;height:200px;'>"
	                      }
	                    },
	                    {
	                      data: null,
	                      title: '編輯',
	                      render: function (data) {
	                        return "<a class='btn btn-info' href='/admin/edit"+data.aid+"' id='eid'><i class='fa-solid fa-pen-to-square'></i></a>"
	                      }
	                    },
	                    {
	                      data: null,
	                      title: '刪除',
	                      render: function (data) {
	                        return "<a class='btn btn-danger delete' name='did' href='javascript:;' id='did' data-value='"+data.aid+"'><i class='fa-solid fa-trash' ></i></a>"
	                      }
	                    }
	                ];
	                
	                $('#accordion').DataTable({
	                    "lengthMenu": [5, 10, 25, 50],
	                    "pageLength": '5',
	                    "destroy": true,
	                    "autoWidth": true,
	                    "data": data,
	                    "columns": columns,
	                    "columnDefs":[
						    {
						      targets: '_all',//全部攔
						      className: 'text-center'  
						    },
						    {"width": "5%", "targets":0},
						    {"width": "15%", "targets":1},
						    {"width": "18%", "targets":2},
						    {"width": "8%", "targets":3},
						    {"width": "18%", "targets":4},
						    {"width": "16%", "targets":5},
						    {"width": "5%", "targets":6},
						    {"width": "5%", "targets":7}
						  ],
						  language: {
					          url: "https://cdn.datatables.net/plug-ins/1.11.3/i18n/zh_Hant.json" 
					      }
	                });
	            }
			},
			error: function(error){
			     console.log(error);
			}
		});
	
	}
	load();
	
	//timepicker
	 $('input#begin7').timepicker({});
	 $('input#end7').timepicker({});
	 $('input#begin1').timepicker({});
	 $('input#end1').timepicker({});
	 $('input#begin2').timepicker({});
	 $('input#end2').timepicker({});
	 $('input#begin3').timepicker({});
	 $('input#end3').timepicker({});
	 $('input#begin4').timepicker({});
	 $('input#end4').timepicker({});
	 $('input#begin5').timepicker({});
	 $('input#end5').timepicker({});
	 $('input#begin6').timepicker({});
	 $('input#end6').timepicker({});
	
	//Back Attractions Delete
	$(document).on('click', '#did', function(){
		let did=$(this).data("value");
		let tr=$(this).closest("tr"); 
		let name=tr.find("td:eq(1)").text();
		Swal.fire({
			title: '確定要刪除 ?',
	        text: name,
	        icon: 'warning',
	        showCancelButton: true,
	        confirmButtonColor: '#3085d6',
	        cancelButtonColor: '#d33',
	        confirmButtonText: '刪除',
	        cancelButtonText:'取消'
	        }).then((result) => {
				if (result.isConfirmed) {
					 $.ajax({
						url:'/admin/deleteattractions/' + did,
						method:"DELETE",
						dataType:"JSON",
						contentType:"application/json",
						success:function() {
							load();
						},
						error: function(error){
						     console.log(error);
						}
					});
					
				}
			});
			
	});
	
	//list btn
	$(document).on('click', '#allattractions', function(){
		load();
	});
	
	//back itinerary list
	function loadi(){
		$.ajax({
			url:'/iqueryAll',
			method:"POST",
			dataType:"JSON",
			contentType:"application/json",
			success:function(data) {
				$('#iaccordion').empty('');
				if(data.length==0){
					$('table').prepend("<tr><td colspan='2'><h3>暫無資料</h3></td></tr>");
				}else{
	                let columns = [
	                    { data: 'id', title: '#' },
	                    { data: 'title', title: '活動標題' },
	                    { data: 'days', title: '旅遊天數' },
	                    { data: 'attractions', title: '景點' },
	                    { data: 'itype', title: '類型' },
	                    { data: 'introduction', title: '行程介紹' },
	                    { 
	                      data: null,
	                      title: '圖片',
	                      render: function (data) {
	                        return "<img src='/filei/" + data.id + "' id='pid' class='img-fluid img-thumbnail d-block mx-auto' style='width:200px;height:200px;'>"
	                      }
	                    },
	                    {
	                      data: null,
	                      title: '編輯',
	                      render: function (data) {
	                        return "<a class='btn btn-info' href='/admin/editi"+data.id+"' id='eidi'><i class='fa-solid fa-pen-to-square'></i></a>"
	                      }
	                    },
	                    {
	                      data: null,
	                      title: '刪除',
	                      render: function (data) {
	                        return "<a class='btn btn-danger delete' href='javascript:;' id='didi' data-value='"+data.id+"'><i class='fa-solid fa-trash' ></i></a>"
	                      }
	                    }
	                ];
	                
	                $('#iaccordion').DataTable({
	                    "lengthMenu": [5, 10, 25, 50],
	                    "pageLength": '5',
	                    "destroy": true,
	                    "autoWidth": true,
	                    "data": data,
	                    "columns": columns,
	                    "columnDefs":[
						    {
						      targets: '_all',//全部攔
						      className: 'text-center'  
						    },
						    {"width": "5%", "targets":0},
						    {"width": "15%", "targets":1},
						    {"width": "8%", "targets":2},
						    {"width": "18%", "targets":3},
						    {"width": "8%", "targets":4},
						    {"width": "18%", "targets":5},
						    {"width": "18%", "targets":6},
						    {"width": "5%", "targets":7},
						    {"width": "5%", "targets":8}
						  ],
						  language: {
					          url: "https://cdn.datatables.net/plug-ins/1.11.3/i18n/zh_Hant.json" 
					      }
	                });
	            }
			},
			error: function(error){
			     console.log(error);
			}
		});
	
	}
	loadi();
	
	//back itinerary del
	$(document).on('click', '#didi', function(){
		let did=$(this).data("value");
		let tr=$(this).closest("tr"); 
		let name=tr.find("td:eq(1)").text();
		Swal.fire({
			title: '確定要刪除 ?',
	        text: name,
	        icon: 'warning',
	        showCancelButton: true,
	        confirmButtonColor: '#3085d6',
	        cancelButtonColor: '#d33',
	        confirmButtonText: 'Yes, delete it!'
	        }).then((result) => {
				if (result.isConfirmed) {
					 $.ajax({
						url:'/admin/deleteitinerary/' + did,
						method:"DELETE",
						dataType:"JSON",
						contentType:"application/json",
						success:function() {
							loadi();
						},
						error: function(error){
						     console.log(error);
						}
					});
				}
			});
			
	});
	
	//一鍵輸入
	//attractuins insert
	$("#addbtn").click(function(){
		$("#name").val("大湖公園 (防災公園）");
		$("#address").val("台北市內湖區成功路五段31號");
		$("#phone").val("0223815132");
		$("#lng").val("25.08261");
		$("#lat").val("121.60304");
		$("#begin7").val("00:00 AM");
		$("#end7").val("00:00 AM");
		$("#begin1").val("00:00 AM");
		$("#end1").val("00:00 AM");
		$("#begin2").val("00:00 AM");
		$("#end2").val("00:00 AM");
		$("#begin3").val("00:00 AM");
		$("#end3").val("00:00 AM");
		$("#begin4").val("00:00 AM");
		$("#end4").val("00:00 AM");
		$("#begin5").val("00:00 AM");
		$("#end5").val("00:00 AM");
		$("#begin6").val("00:00 AM");
		$("#end6").val("00:00 AM");
		$("#introduction").val("大湖公園湖泊因白鷺成群又名白鷺湖，毗鄰白鷺山，遙指五指山、忠勇山等，佔地約13公頃餘。民國68年仿中國園林興建，大湖湖泊面積約10公頃餘，屬區域性公園。公園內有各式植物，落羽松、阿勃勒、台灣欒樹、杜鵑花等會按時序開花，為園區各空間抹上不同色彩。湖邊則時常會看到白鷺鷥、夜鷺、鴨子等，甚至有季節性鳥類，蒼鷺、大白鷺等，豐富的生態吸引許多遊客帶著一家大小來到公園享受大自然。");
		
	});
	//itinerary insert
	$("#addibtn").click(function(){
		$("#title").val("內湖1日遊");
		$("#days").val(1);
//		$("#selectError1").val("");
		$("#selectError").val("花香風景");
		$("#introduction").val("內湖位在台北的東北地區，從捷運位置來看感覺很遺世獨立，真要聯想的話好像也只有好市多和內湖科技園區。其實你錯啦！內湖區內有許多山丘，可說是台北市內最接近大自然的地方，也因此擁有很多草地公園與生態步道，景點可是很多的呢。");
	});
	
	//圖片彈出
     $(document).on('click', '#pid', function(){
         let id=$(this).attr("src");
        Swal.fire({
          imageUrl: id,//'https://placeholder.pics/svg/300x1500'
          imageHeight: 500,
          imageAlt: 'image'
        })
    });

    //顯示圖片
    $('#file1').change(function(){
        $("#frames").html('');
        for (var i = 0; i < $(this)[0].files.length; i++) {
            $("#frames").append('<img src="'+window.URL.createObjectURL(this.files[i])+'" style="width:200px;height:200px;""/>');
        }
    });
    
    $(document).on('click', '#outputJson', function(){
		Swal.fire({
			  position: 'center',
			  icon: 'success',
			  title: '已下載!',
			  showConfirmButton: false,
			  timer: 1500
			})
	});
	
    $(document).on('click', '#outputCsv', function(){
		Swal.fire({
			  position: 'center',
			  icon: 'success',
			  title: '已下載!',
			  showConfirmButton: false,
			  timer: 1500
			})
	});
	
    $(document).on('click', '#outputJsonI', function(){
		Swal.fire({
			  position: 'center',
			  icon: 'success',
			  title: '已下載!',
			  showConfirmButton: false,
			  timer: 1500
			})
	});
	
    $(document).on('click', '#outputCsvI', function(){
		Swal.fire({
			  position: 'center',
			  icon: 'success',
			  title: '已下載!',
			  showConfirmButton: false,
			  timer: 1500
			})
	});
    
	$(document).on('click', '#liketf', function(){
		let pageId = $("#pageId").val();
		$.ajax({
			url:'/users/collect',
			method:"POST",
			dataType:"JSON",
			contentType:"application/json",
			data: JSON.stringify({"pageId":pageId}),
			success:function(data) {
				console.log(data);
				$("#collect").empty();
				if(data.liketf){
					Swal.fire({
					  position: 'center',
					  icon: 'success',
					  title: '已新增到我的收藏!',
					  showConfirmButton: false,
					  timer: 1500
					})
					$("#collect").append("<button class='liketf phone-btn' id='liketf' name='liketf'><i class='fa-solid fa-heart'></i></button>")
				}else{
					Swal.fire({
					  position: 'center',
					  icon: 'success',
					  title: '已取消收藏!',
					  showConfirmButton: false,
					  timer: 1500
					})
					$("#collect").append("<button class='liketf phone-btn' id='liketf' name='liketf'><i class='fa-regular fa-heart'></i></button>")
				}
				
			},
			error: function(error){
			     console.log(error);
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
			}
		});
    });
    
    $(document).on('click', '#outputPdfI', function(){
		var btn=document.getElementById("outputPdfI");
		var value=btn.innerHTML;
		$.ajax({
			url:'/admin/outputPdf',
			method:"get",
			dataType:"text",
			data:{
				key:value
			},
			success:(function(data){
				var doc = new jsPDF('l', 'pt');
				doc.addFileToVFS('msyh.ttf', data);//隨便取
				//1:隨便取,2:轉換二位元時的命名,3:normal
				doc.addFont('msyh.ttf', 'msyh', 'normal');
				//跟上面第二個一樣
				doc.setFont('msyh');
				doc.setFontSize(28);//字的大小
				doc.text('行程總覽', 350, 40);//標題位置
					
				var cols = [0,1,2,3,4,5]; // 要顯示的欄位索引
				//重新抓取要輸出的表格內容
				var element = document.getElementById("iaccordion");
				//設定表格屬性
				doc.autoTable({
					html: element,
					startY: 55,
					tableWidth: 'auto',
  					columnWidth: 'auto',
					columns: cols,
					styles: {
					font: 'msyh',
					fontStyle: 'normal',
					fontSize:14,
					},
				    columnStyles: {
				      0: {columnWidth: 55},
				      1: {columnWidth: 100},
				      2: {columnWidth: 65},
				      3: {columnWidth: 150},
				      4: {columnWidth: 90},
				      5: {columnWidth: 300}
				  }
				});
				//輸出PDF
				doc.save('itinerary.pdf');
				Swal.fire({
					  position: 'center',
					  icon: 'success',
					  title: '已下載!',
					  showConfirmButton: false,
					  timer: 1500
					})
			}),
			error:(function(error){
				console.log(error);
			})
		});
	});
    //PDF
   $(document).on('click', '#outputPdf', function(){
		var btn=document.getElementById("outputPdf");
		var value=btn.innerHTML;
		$.ajax({
			url:'/admin/outputPdf',
			method:"get",
			dataType:"text",	
			data:{
				key:value
			},
			success:(function(data){   
				var doc = new jsPDF('landscape', 'mm','a3');
				doc.addFileToVFS('msyh.ttf', data);//隨便取
				//1:隨便取,2:轉換二位元時的命名,3:normal
				doc.addFont('msyh.ttf', 'msyh', 'normal');
				//跟上面第二個一樣
				doc.setFont('msyh');
				doc.setFontSize(28);//字的大小
				doc.text('景點總覽', 190, 40);//標題位置
					
				var cols = [0,1,2,3,4]; // 要顯示的欄位索引
				//重新抓取要輸出的表格內容
				var element = document.getElementById("accordion");
				//設定表格屬性
				doc.autoTable({
					html: element,
					startY: 55,
					tableWidth: 'auto',
  					columnWidth: 'auto',
					columns: cols,
					styles: {
					font: 'msyh',
					fontStyle: 'normal',
					fontSize:14,
					},
				    columnStyles: {
				      0: {columnWidth: 30},
				      1: {columnWidth: 70},
				      2: {columnWidth: 100},
				      3: {columnWidth: 50},
				      4: {columnWidth: 140}
				  }
				});
				//輸出PDF
				doc.save('attractions.pdf');
				Swal.fire({
					  position: 'center',
					  icon: 'success',
					  title: '已下載!',
					  showConfirmButton: false,
					  timer: 1500
					})
			}),
			error:(function(error){
				console.log(error);
			})
		})
	});
	

});

