<%@ taglib uri="http://java.sun.com/jsp/jstl/core" prefix="c"%>
<%@ page language="java" contentType="text/html; charset=UTF-8"
	pageEncoding="UTF-8"%>
<%@ taglib uri="http://java.sun.com/jsp/jstl/core" prefix="c"%>
<%@ taglib prefix="fmt" uri="http://java.sun.com/jsp/jstl/fmt"%>
<html xmlns="http://www.w3.org/1999/xhtml" lang="ko">
<head>

<link rel="stylesheet" href="resources/css/common.css">
<link rel="stylesheet" href="resources/css/base.css">
<link href="http://ajax.googleapis.com/ajax/libs/jqueryui/1.8/themes/base/jquery-ui.css" rel="Stylesheet" type="text/css" />
<script type="text/javascript" src="http://code.jquery.com/jquery-1.11.3.js"></script>
<script type="text/javascript" src="https://www.gstatic.com/charts/loader.js"></script>

</head>
<body>
	<!-- w100% h545px -->
	<div class="pop">
	  <div class="pop_box">
	  	<h1>결과보기</h1>
	    <div class="pop_list">
	    	<h2>${surTitle }</h2>
	   	 <div id="chartdiv" style="width: 700px; height: 500px"></div>
	    </div>
		<p class="pt20"></p>
	    <div class="pop_btn">
	    	<span class="blue_l"><a href="#" class="blue_r" id="close">확인</a></span>
	    </div>
	  </div>
</div>
</body>
<script type="text/javascript">

	$(document).ready(function(){
		$("#close").click(function(e){
			  e.preventDefault();
			  window.close();
		});
	});

	var list = '${list}';
	var cnt = '${queCnt}';
	var list = JSON.parse(list); 

	google.charts.load('current', {'packages':['corechart']});
	google.charts.setOnLoadCallback(drawVisualization);
	
	function drawVisualization(){
	
 		var data = new google.visualization.DataTable();
 		
 		data.addColumn('string');
 		data.addColumn('number', 1);
 		data.addColumn('number', 2);
 		data.addColumn('number', 3);
 		data.addColumn('number', 4);
 		data.addColumn('number', 5);
 		
 	 	for(var i=0; i<list.length; i++){
 	 		
 	 		var name = list[i].name;
	 		var n1 = list[i].num00;
	 		var n2 = list[i].num01;
	 		var n3 = list[i].num02;
	 		var n4 = list[i].num03;
	 		var n5 = list[i].num04;
	 		
			data.addRows([
	 			[name, parseInt(n1), parseInt(n2), parseInt(n3), parseInt(n4), parseInt(n5)]
	 		]);
	 	}
	 
			var options = {
					vAxis: {title: '번호'},
					hAxis: {title: '사람'},
					seriesType: 'bars',
					series:{5: {type: 'line'}}
			};
			
			var chart = new google.visualization.ComboChart(document.getElementById('chartdiv'));
			chart.draw(data, options);
	}
	
</script>
</html>