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
	
	$(document).ready(function(){
		$("#delete").click(function(){
			
			var adminPw = $("#adminPw").val();
			var userId = '${sessionScope.userId}';
			var suriSeq ='${vo.suriSeq}';
			var url = "${path}/web/researchList.do";
			
			var param = {
				"adminPw": adminPw,
				"userId": userId,
				"suriSeq": suriSeq,
				
			}
			$.ajax({
	 			url: "passChk.do",
			 	dataType: "json",
				type: "post",
				data: param,
				success: function(data) {
					
					console.log(data);
					if(data.bl == true) {
						alert("삭제 되었습니다.");
						window.opener.parent.location.href=url;
						self.close();
					}else if(data.bl == false){
						alert("비밀번호가 틀렸습니다. 다시 입력해주세요.");
						$("#adminPw").focus();
					}
				}, error: function(data){
			        alert("비밀번호를 확인하세요."); // 실패 시 처리
			    	$("#adminPw").focus();
			       }
			}); 
			
		});
	});
	
</script>
</head>
	<body>
		<div class="login">
			<h4>
				<img src="resources/images/sub/etc/login_img_02.gif" alt="비밀번호를 입력하세요" />
			</h4>
			<dl>
				<dt>비밀번호</dt>
				<dd>
					<input type="password" class="inp" name="adminPw" id="adminPw" style="width: 180px;" /> 
					<a href="#" id="delete"> <img src="resources/images/sub/etc/login_btn_02.gif" alt="확인" /></a> 
					<a href="#" id="close"> <img src="resources/images/sub/etc/login_btn_03.gif" alt="취소" /></a>
				</dd>
			</dl>
		</div>
	</body>
</html>