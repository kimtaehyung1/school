<%@ taglib uri="http://java.sun.com/jsp/jstl/core" prefix="c"%>
<%@ page language="java" contentType="text/html; charset=UTF-8"
	pageEncoding="UTF-8"%>
<%@ taglib uri="http://java.sun.com/jsp/jstl/core" prefix="c"%>
<%@ taglib prefix="fmt" uri="http://java.sun.com/jsp/jstl/fmt"%>
<html xmlns="http://www.w3.org/1999/xhtml" lang="ko">
<head>
<link rel="stylesheet" href="resources/css/common.css">
<link rel="stylesheet" href="resources/css/base.css">
<meta http-equiv="Content-Type" content="text/html; charset=UTF-8" />
<script type="text/javascript" src="http://code.jquery.com/jquery-1.10.2.min.js"></script>
<script type="text/javascript">

</script>
	</head>
		<body>
			<li class="bn"><input placeholder="아이디" name="userId" id="userId" /></li>
			<li class="bn"><input placeholder="비밀번호" name="adminPw" id="adminPw" type="password" /></li>
			<button type="button" style="height: 18px; margin-left: 5px" id="login">
				<img src="resources/images/header/common/btn_login.gif" alt="로그인" />
			</button>
		</body>
</html>

