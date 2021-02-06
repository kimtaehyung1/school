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
<script src="https://cdn.amcharts.com/lib/4/core.js"></script>
<script src="https://cdn.amcharts.com/lib/4/charts.js"></script>
<script src="https://cdn.amcharts.com/lib/4/themes/animated.js"></script>

</head>
<body>
	<!-- w100% h545px -->
	<div class="pop">
	  <div class="pop_box">
	  	<h1>결과보기</h1>
	    <div class="pop_list">
	    	<h2>${surTitle }</h2>
	    
	   	 <div id="chartdiv"></div>
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

   		 	var num100 = list[0].nList[0];
  		    var num101 = list[0].nList[1];
			var num102 = list[0].nList[2];
			var num103 = list[0].nList[3];
			var num104 = list[0].nList[4]; 
			        
			var num200 = list[1].nList[0];
	 		var num201 = list[1].nList[1];
			var num202 = list[1].nList[2];
			var num203 = list[1].nList[3];
			var num204 = list[1].nList[4];
			      
			var num300 = list[2].nList[0];
		 	var num301 = list[2].nList[1];
			var num302 = list[2].nList[2];	
			var num303 = list[2].nList[3];	
			var num304 = list[2].nList[4];	   

	am4core.useTheme(am4themes_animated);
	// Create chart instance
	var chart = am4core.create("chartdiv", am4charts.XYChart);

	// Add data

	for(var i in list){
		var arr = list[i].surqTitle.split(",");
		
	}
	
	for(var i=0; i<list.length; i++){
	
		 chart.data = [
			{ "category": arr[0], "value0": num100, "value1": num200, "value2": num300 }, 
		 	{ "category": arr[1], "value0": num101, "value1": num201, "value2": num301 },
	 		{ "category": arr[2], "value0": num102, "value1": num202, "value2": num302 },
	 		{ "category": arr[3], "value0": num103, "value1": num203, "value2": num303 },
	 		{ "category": arr[4], "value0": num104, "value1": num204, "value2": num304 }

	 		
	 	];  
	}			
	
	// Create axes
 /* 	var dateAxis = chart.xAxes.push(new am4charts.DateAxis());
	dateAxis.renderer.minGridDistance = 20;
	dateAxis.renderer.grid.template.location = 0.5; */
	
	var categoryAxis = chart.xAxes.push(new am4charts.CategoryAxis());
	categoryAxis.dataFields.category = "category";
	categoryAxis.renderer.grid.template.location = 0;
	categoryAxis.renderer.minGridDistance = 20;


	var valueAxis = chart.yAxes.push(new am4charts.ValueAxis());
	valueAxis.gridAlpha = 0; 
	// Create series
	function createSeries(field, name) {
	  var series = chart.series.push(new am4charts.LineSeries());
	  series.dataFields.valueY = field;
	  series.dataFields.categoryX = "category";
	  series.name = name;
	  series.tooltipText = "{valueY}[/]";
	  series.strokeWidth = 2;
	  
/* 	  series.smoothing = "monotoneX"; */
	  
	  var bullet = series.bullets.push(new am4charts.CircleBullet());
	  bullet.circle.stroke = am4core.color("#fff");
	  bullet.circle.strokeWidth = 2;
	}
	 
 	/* createSeries("value",  "0#0");   
	createSeries("value2",  "0#0");    
	createSeries("value",  "0#0");  */ 
	
 	 for(var i=0; i<list.length; i++){ //다시 정비 
 		createSeries("value"+i,  list[i].date+"#"); 
 	} 
	chart.legend = new am4charts.Legend();
	chart.cursor = new am4charts.XYCursor();
</script>
</html>