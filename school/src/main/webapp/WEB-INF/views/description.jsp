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
    <h1>사유전체보기</h1>
    <div class="pop_list">
	      <div class="research_box">
	          <h2>${surTitle }</h2>
		    <c:forEach items="${list }" var="vo">
	          <ul class="research_list">
	            <li>${vo.DESCRIPTION }</li>
	          </ul>
		    </c:forEach>
	      </div>
      
    </div>
    <p class="pt20"></p>
    <div class="pop_btn"> 
    <span class="blue_l"><a href="#" id="close" class="blue_r">확인</a></span> 
    <!-- <span class="gray_l"><a href="#" class="gray_r">취소</a></span> </div> -->
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
	
</script>
</html>