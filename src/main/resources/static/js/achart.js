$(function(){
	//景點地區分布
	let arr = []; 

	let getData = function() {
	  return $.ajax({
	    url: '/queryAll',
	    type: 'POST',
	    dataType: 'json'
	  });
	};
	
	let dataPromise = getData();

	dataPromise.then(function(data) {
		let shilin = 0, beitou = 0, datong = 0, zhongzheng = 0, wenshan = 0, xinyi = 0, gongliao = 0, ruifang = 0, shimen = 0, neihu = 0;
		$.each(data, function(i, data) {
	    let vale = data.address.substr(3, 2);
	    switch (vale) {
	      case '士林':
	        shilin += 1;
	        break;
	      case '北投':
	        beitou += 1;
	        break;
	      case '大同':
	        datong += 1;
	        break;
	      case '中正':
	        zhongzheng += 1;
	        break;
	      case '文山':
	        wenshan += 1;
	        break;
	      case '信義':
	        xinyi += 1;
	        break;
	      case '貢寮':
	        gongliao += 1;
	        break;
	      case '瑞芳':
	        ruifang += 1;
	        break;
	      case '石門':
	        shimen += 1;
	        break;
	      case '內湖':
	        neihu += 1;
	        break;
	      default:
	        break;
	    }
	  });
	  arr = [shilin, beitou, datong, zhongzheng, wenshan, xinyi, gongliao, ruifang, shimen, neihu];
	  var ctx = document.getElementById('myChart').getContext('2d');
	  var chart = new Chart(ctx, {
		    type: 'doughnut',
		    data: {
		      labels: ['士林', '北投', '大同', '中正', '文山', '信義', '貢寮', '瑞芳', '石門', '內湖'],
		      datasets: [{
		        label: '# of Votes',
		        data: arr,
		       backgroundColor: [
	               'rgba(255, 99, 132, 0.2)',
	               'rgba(54, 162, 235, 0.2)',
	               'rgba(255, 206, 86, 0.2)',
	               'rgba(75, 192, 192, 0.2)',
	               'rgba(153, 102, 255, 0.2)',
	               'rgba(255, 159, 64, 0.2)',
	               'rgba(0, 0, 255, 0.2)',
	               'rgba(173, 255, 47, 0.2)',
	               'rgba(255, 20, 147, 0.2)',
	               'rgba(255, 255, 0, 0.2)'
	            ],
	            borderColor: [
	               'rgba(255, 99, 132, 1)',
	               'rgba(54, 162, 235, 1)',
	               'rgba(255, 206, 86, 1)',
	               'rgba(75, 192, 192, 1)',
	               'rgba(153, 102, 255, 1)',
	               'rgba(255, 159, 64, 1)',
	               'rgba(0, 0, 255, 1)',
	               'rgba(173, 255, 47, 1)',
	               'rgba(255, 20, 147, 1)',
	               'rgba(255, 255, 0, 1)'
	            ],
	            borderWidth: 1
	         }]
	      },
	      options: {
	         scales: {
	            yAxes: [{
	               ticks: {
	                  beginAtZero: true
	               }
	            }]
	         }
	      }
	   });
	});

	//行程類型
	$.ajax({
		url: '/iqueryAll',
		type: 'POST',
		dataType:"json",
		success: function(data) {
			let arr1 = [];
			let haian = 0, chengshi = 0, fengjing = 0, shanlin = 0;
			$.each(data, function(i, data) {
			    let vale = data.itype;
			    switch (vale) {
			      case '海岸探索':
			        haian += 1;
			        break;
			      case '城市探索':
			        chengshi += 1;
			        break;
			      case '花香風景':
			        fengjing += 1;
			        break;
			      case '山林徜徉':
			        shanlin += 1;
			        break;
			      default:
			        break;
			    }
		    });
		    arr1 = [haian,chengshi,fengjing,shanlin];
			var ctx = document.getElementById('myChart2').getContext('2d');
			  var chart = new Chart(ctx, {
				    type: 'doughnut',
				    data: {
				      labels: ['海岸探索', '城市探索', '花香風景', '山林徜徉'],
				      datasets: [{
				        label: '# of Votes',
				        data: arr1,
				       backgroundColor: [
			               'rgba(0, 0, 255, 0.2)',
			               'rgba(255, 206, 86, 0.2)',
			               'rgba(255, 99, 132, 0.2)',
			               'rgba(75, 192, 192, 0.2)'
			               
			            ],
			            borderColor: [
			               'rgba(0, 0, 255, 1)',
			               'rgba(255, 206, 86, 1)',
			               'rgba(255, 99, 132, 1)',
			               'rgba(75, 192, 192, 1)'
			            ],
			            borderWidth: 1
			         }]
			      },
			      options: {
			         scales: {
			            yAxes: [{
			               ticks: {
			                  beginAtZero: true
			               }
			            }]
			         }
			      }
			   });
		},
		error: function(error){
		     console.log(error);
		}
	});
	
	

});