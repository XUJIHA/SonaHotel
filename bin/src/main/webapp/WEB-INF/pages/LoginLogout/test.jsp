<%@ page language="java" import="java.util.*"
	contentType="text/html; charset=utf8"%>
<%@ taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core"%>
<!DOCTYPE html>
<html lang="zh-Hant ">
<head>
<meta charset="UTF-8">
<title>Insert title here</title>
</head>
<body>
<div style="width: 800px; height: 800px;">
<canvas id="pieChart" width="100" height="100"></canvas>
</div>

<script src="https://cdnjs.cloudflare.com/ajax/libs/Chart.js/2.9.3/Chart.min.js"></script>
<script src="https://cdn.staticfile.org/Chart.js/3.9.1/chart.js"></script>
<script>
const ctx = document.getElementById('myChart');
const data = {
  labels: [
    'Red',
    'Blue',
    'Yellow'
  ],
  datasets: [{
    label: '饼图实例',
    data: [300, 50, 100],
    backgroundColor: [
      'rgb(255, 99, 132)',
      'rgb(54, 162, 235)',
      'rgb(255, 205, 86)'
    ],
    hoverOffset: 4
  }]
};
const config = {
  type: 'pie',
  data: data,
  options: {
    responsive: true, // 设置图表为响应式，根据屏幕窗口变化而变化
    maintainAspectRatio: false,// 保持图表原有比例
    scales: {
      yAxes: [{
        ticks: {
          beginAtZero:true
		}
	  }]
    }
  }
};
const pieChart = new Chart(ctx, config);
</script>
</body>
</html>