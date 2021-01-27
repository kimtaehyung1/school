<%@ taglib uri="http://java.sun.com/jsp/jstl/core" prefix="c"%>
<%@ page language="java" contentType="text/html; charset=UTF-8"
	pageEncoding="UTF-8"%>
<%@ taglib uri="http://java.sun.com/jsp/jstl/core" prefix="c"%>
<%@ taglib prefix="fmt" uri="http://java.sun.com/jsp/jstl/fmt"%>
<html xmlns="http://www.w3.org/1999/xhtml" lang="ko">
<head>

<link rel="stylesheet" href="resources/css/common.css">
<link rel="stylesheet" href="resources/css/base.css">
<link
	href="http://ajax.googleapis.com/ajax/libs/jqueryui/1.8/themes/base/jquery-ui.css"
	rel="Stylesheet" type="text/css" />
<script type="text/javascript"
	src="http://code.jquery.com/jquery-1.11.3.js"></script>
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
<div class="pop">
  <div class="pop_box">
    <div class="pop_list">
    	<h2>설문조사가 저장되었습니다.</h2>
    </div>
	<p class="pt20"></p>
    <div class="pop_btn">
    	<span class="blue_l"><a href="#" id="close" class="blue_r">확인</a></span>
        <!-- <span class="gray_l"><a href="#"  class="gray_r">취소</a></span> -->
    </div>
  </div>
  
  </div>
</body>
</html>