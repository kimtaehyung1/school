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
<script src="https://cdn.amcharts.com/lib/4/themes/material.js"></script>
<script src="https://cdn.amcharts.com/lib/4/lang/de_DE.js"></script>
<script src="https://cdn.amcharts.com/lib/4/geodata/germanyLow.js"></script>
<script src="https://cdn.amcharts.com/lib/4/fonts/notosans-sc.js"></script>
<script type="text/javascript">


$(document).ready(function(){
	$("#close").click(function(e){
		  e.preventDefault();
		  window.close();
	});
});

</script>
</head>
<body>
	<!-- w100% h545px -->
	<div class="pop">
	  <div class="pop_box">
	  	<h1>결과보기</h1>
	    <div class="pop_list">
	    	<h2>${rsivo.surTitle }</h2>
	    	
	   <c:forEach items="${surqTitle}" var="vo">
	        <div>
	        	<p>${vo }</p>
	        </div>
	        
	    	</c:forEach>
	    </div>
		<p class="pt20"></p>
	    <div class="pop_btn">
	    	<span class="blue_l"><a href="#" class="blue_r" id="close">확인</a></span>
	    </div>
	  </div>
</div>
</body>
</html>