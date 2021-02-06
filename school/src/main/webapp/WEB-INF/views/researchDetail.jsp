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
	function checkSpecial(str) { 
		
		var re = /[\#,$%^&*\()\+_]/gi;
		if(re.test(str)) {
			alert("특수문자"+"["+ " "+str+" "+"]" + "를 사용할수 없습니다.\n삭제후 다시 작성해주세요");
			return false;
		}
	}
</script>
<body>
	<div id="wrap">
		<!--skip S-->
		<ul id="skipnavi">
			<li><a href="#gnb">주메뉴 바로가기</a></li>
			<li><a href="#contents">메인내용 바로가기</a></li>
			<li><a href="#footer">하단 바로가기</a></li>
		</ul>
		<!--skip E-->

		<!-- header-->
		<div id="header">
			<h1>
				<img src="resources/images/header/common/logo.gif" alt="서울학교급식포털" />
			</h1>
			<form method="post" name="form1" id="form1">
				<div class="topmenu">
					<ul>
						<li class="bn"><a href="${path }/web/home.do">HOME</a></li>
						<li><a href="#">SITEMAP</a></li>
						<c:choose>
							<c:when test="${sessionScope.memberName != null }">
								<%@ include file="login.jsp"%>
							</c:when>
							<c:otherwise>
								<c:if test="${sessionScope.memberName == null }">
									<%@ include file="logout.jsp"%>
								</c:if>
							</c:otherwise>
						</c:choose>
						<c:if test="${msg == 'failure' }">
							<li style="color: red;">
								<p>비밀번호가 일치하지 않습니다</p>
							</li>
						</c:if>
					</ul>
				</div>
			</form>
			<div id="gnb">
				<h2>주메뉴</h2>
				<ul class="MM">
					<li class="mainMenu first"><a href="#"><img
							src="resources/images/header/common/mm_infoOff.gif" id="sel1"
							alt="서울학교급식소개" /></a>
						<div class="subMenu" id="sub01" style="display: none;">
							<div class="boxSR">
								<ul class="boxSM">
									<li class="left_bg"></li>
									<li class="subMenu"><a href="#"><img
											src="resources/images/header/common/sm_info01Off.gif"
											alt="인사말" /></a></li>
									<li class="subMenu"><a href="#"><img
											src="resources/images/header/common/sm_info02Off.gif"
											alt="학교급식기본방향" /></a></li>
									<li class="subMenu"><a href="#"><img
											src="resources/images/header/common/sm_info03Off.gif"
											alt="학교급식현황" /></a></li>
									<li class="last subMenu"><a href="#"><img
											src="resources/images/header/common/sm_info04Off.gif"
											alt="학교급식 담당부서" /></a></li>
									<li class="right_bg"></li>
								</ul>
							</div>
						</div></li>
					<li class="mainMenu"><a href="#"><img
							src="resources/images/header/common/mm_safetyOff.gif"
							alt="학교급식위생안전" /></a>
						<div class="subMenu" id="sub02" style="display: none;">
							<div class="boxSR">
								<ul class="boxSM">
									<li class="left_bg"></li>
									<li class="subMenu"><a href="#"><img
											src="resources/images/header/common/sm_safety01Off.gif"
											alt="학교급식 위생관리" /></a></li>
									<li class="subMenu"><a href="#"><img
											src="resources/images/header/common/sm_safety02Off.gif"
											alt="식중독 대처요령" /></a></li>
									<li class="subMenu"><a href="#"><img
											src="resources/images/header/common/sm_safety03Off.gif"
											alt="안전사고예방" /></a></li>
									<li class="subMenu"><a href="#"><img
											src="resources/images/header/common/sm_safety04Off.gif"
											alt="안전사고 대처요령" /></a></li>
									<li class="last subMenu"><a href="#"><img
											src="resources/images/header/common/sm_safety05Off.gif"
											alt="위생.안전성 검사결과" /></a></li>
									<li class="right_bg"></li>
								</ul>
							</div>
						</div></li>
					<li class="mainMenu"><a href="#"><img
							src="resources/images/header/common/mm_factoryOff.gif"
							alt="학교급식시설관리" /></a>
						<div class="subMenu" id="sub03" style="display: none;">
							<div class="boxSR">
								<ul class="boxSM">
									<li class="left_bg"></li>
									<li class="subMenu"><a href="#"><img
											src="resources/images/header/common/sm_factory01Off.gif"
											alt="급식환경개선사업" /></a></li>
									<li class="subMenu"><a href="#"><img
											src="resources/images/header/common/sm_factory01Off.gif"
											alt="급식시설개선사례" /></a></li>
									<li class="subMenu"><a href="#"><img
											src="resources/images/header/common/sm_factory01Off.gif"
											alt="급식기구관리전환" /></a></li>
									<li class="last subMenu"><a href="#"><img
											src="resources/images/header/common/sm_factory01Off.gif"
											alt="컨설팅신청안내" /></a></li>
									<li class="right_bg"></li>
								</ul>
							</div>
						</div></li>
					<li class="mainMenu"><a href="#"><img
							src="resources/images/header/common/mm_foodOff.gif" alt="학교급식식재료" /></a>
						<div class="subMenu" id="sub04" style="display: none;">
							<div class="boxSR">
								<ul class="boxSM">
									<li class="left_bg"></li>
									<li class="subMenu"><a href="#"><img
											src="resources/images/header/common/sm_food01Off.gif"
											alt="식재료 구매·관리" /></a></li>
									<li class="subMenu"><a href="#"><img
											src="resources/images/header/common/sm_food02Off.gif"
											alt="식재료 시장조사" /></a></li>
									<li class="last subMenu"><a href="#"><img
											src="resources/images/header/common/sm_food03Off.gif"
											alt="부적합 납품 업체" /></a></li>
									<li class="right_bg"></li>
								</ul>
							</div>
						</div></li>
					<li class="mainMenu"><a href="#"><img
							src="resources/images/header/common/mm_eduOff.gif" alt="영양,교육" /></a>
						<div class="subMenu" id="sub05" style="display: none;">
							<div class="boxSR">
								<ul class="boxSM">
									<li class="left_bg"></li>
									<li class="subMenu"><a href="#"><img
											src="resources/images/header/common/sm_edu01Off.gif"
											alt="영양·식생활교육" /></a></li>
									<li class="subMenu"><a href="#"><img
											src="resources/images/header/common/sm_edu02Off.gif"
											alt="추천식단" /></a></li>
									<li class="subMenu"><a href="#"><img
											src="resources/images/header/common/sm_edu03Off.gif"
											alt="추천레시피" /></a></li>
									<li class="last subMenu"><a href="#"><img
											src="resources/images/header/common/sm_edu04Off.gif"
											alt="학교급식특색활동" /></a></li>
									<li class="right_bg"></li>
								</ul>
							</div>
						</div></li>
					<li class="mainMenu"><a href="#"><img
							src="resources/images/header/common/mm_partOff.gif" alt="알림마당" /></a>
						<div class="subMenu" id="sub06" style="display: none;">
							<div class="boxSR">
								<ul class="boxSM">
									<li class="left_bg"></li>
									<li class="subMenu"><a href="#"><img
											src="resources/images/header/common/sm_part01Off.gif"
											alt="학교급식인력풀" /></a></li>
									<li class="subMenu"><a href="#"><img
											src="resources/images/header/common/sm_part02Off.gif"
											alt="영양(교)사이야기" /></a></li>
									<li class="subMenu"><a href="#"><img
											src="resources/images/header/common/sm_part03Off.gif"
											alt="조리(원)사이야기" /></a></li>
									<li class="subMenu"><a href="#"><img
											src="resources/images/header/common/sm_part04Off.gif"
											alt="자유게시판" /></a></li>
									<li class="last subMenu"><a href="#"><img
											src="resources/images/header/common/sm_part05Off.gif"
											alt="설문조사" /></a></li>
									<li class="right_bg"></li>
								</ul>
							</div>
						</div></li>
					<li class="mainMenu last"><a href="#"><img
							src="resources/images/header/common/mm_noticeOff.gif" alt="정보마당" /></a>
						<div class="subMenu" id="sub07" style="display: none;">
							<div class="boxSR">
								<ul class="boxSM">
									<li class="left_bg"></li>
									<li class="subMenu"><a href="#"><img
											src="resources/images/header/common/sm_notice01Off.gif"
											alt="급식소식" /></a></li>
									<li class="subMenu"><a href="#"><img
											src="resources/images/header/common/sm_notice01Off.gif"
											alt="연수·행사" /></a></li>
									<li class="subMenu"><a href="#"><img
											src="resources/images/header/common/sm_notice01Off.gif"
											alt="업무자료실" /></a></li>
									<li class="subMenu"><a href="#"><img
											src="resources/images/header/common/sm_notice01Off.gif"
											alt="관련법규" /></a></li>
									<li class="last subMenu"><a href="#"><img
											src="resources/images/header/common/sm_notice01Off.gif"
											alt="FAQ" /></a></li>
									<li class="right_bg"></li>
								</ul>
							</div>
						</div></li>
				</ul>
			</div>
		</div>
		<!-- //header-->

		<!-- container-->
		<div id="container">
			<div id="contents">
				<h2>메인내용</h2>
				<p>
					<img src="resources/images/sub/info/sub_vimg_01.jpg"
						alt="건강한 급식 행복한 학교" />
				</p>
				<ul class="lnb">
					<li><img
						src="resources/images/sub/particiation/sub_title_01.gif"
						alt="알림마당" /></li>
					<li><a href="#"><img
							src="resources/images/sub/particiation/sub_stitle_01Off.gif"
							alt="학교급식인력풀" /></a></li>
					<li><a href="#"><img
							src="resources/images/sub/particiation/sub_stitle_02Off.gif"
							alt="영양(교)사이야기" /></a></li>
					<li><a href="#"><img
							src="resources/images/sub/particiation/sub_stitle_03Off.gif"
							alt="조리(원)사이야기" /></a></li>
					<li><a href="#"><img
							src="resources/images/sub/particiation/sub_stitle_04Off.gif"
							alt="자유게시판" /></a></li>
					<li><a href="#"><img
							src="resources/images/sub/particiation/sub_stitle_05On.gif"
							alt="설문조사" /></a></li>
				</ul>
				<div class="right_box">
					<h3>
						<img src="resources/images/sub/particiation/title_05.gif"
							alt="설문조사" />
					</h3>
					<p class="history">
						<img src="resources/images/sub/history_home.gif" alt="home" />
						알림마당 <img src="resources/images/sub/history_arrow.gif" alt="다음" />
						<strong>설문조사</strong>
					</p>
					<p class="pt30"></p>

			
						<div class="tbl_box">
							<table width="100%" border="0" cellspacing="0" cellpadding="0"
								class="tbl_type01" summary="설문조사">
								<caption>설문조사</caption>
								<colgroup>
									<col width="15%" />
									<col width="20%" />
									<col width="15%" />
									<col width="20%" />
									<col width="15%" />
									<col width="%" />
								</colgroup>
								<tbody>
									<tr>
										<th>제목</th>
										<td colspan="5" class="tl"><strong>${vo.surTitle }</strong></td>
									</tr>
									<tr>
										<th>시작일</th>
										<td class="tl"><fmt:parseDate value="${vo.surSatDate }"
												var="surSatDate1" pattern="yyyyMMdd" scope="page" /> <fmt:formatDate
												value="${surSatDate1 }" pattern="yyyy-MM-dd" /></td>
										<th>종료일</th>
										<td class="tl"><fmt:parseDate value="${vo.surEndDate }"
												var="surEndDate1" pattern="yyyyMMdd" scope="page" /> <fmt:formatDate
												value="${surEndDate1 }" pattern="yyyy-MM-dd" /></td>
										<th>결과확인</th>
										<td class="tl"><a href="javascript:result(${vo.suriSeq })">
											<img src="resources/images/sub/btn/btn_view.gif" alt="결과보기" /></a></td>
									</tr>
									<tr>
										<th>문항수</th>
										<td colspan="5" class="tl">${vo.queCnt }개</td>
									</tr>
									      <tr>
							                	<th style="font-size: 5px; color:red;">주의사항</th>
							                	<td  colspan="4"  style="font-size: 5px; color:red; width: 300px; text-align: left">
							                		※ [선택사유] 에는 특수문자 [ \ # , $ % ^ & * \ ( ) \ + _ ]를 입력할 수 없습니다.</br>
							                		※ 각 항목당 글자수 '50글자(숫자포함)' 로 제한 합니다.
							                	</td>
							                </tr>
									<tr>
										<td colspan="6" class="tl">

											<div class="research">
												<c:forEach var="vo" items="${list01 }" varStatus="status">
													<p>${status.count }. ${vo }</p>
												 		<ul class="test-li">
															<li><input type="checkbox" value="1" name="chk" id="chk" class="chk"/> ${list02[status.index] }</li> 
															<li><input type="checkbox" value="2" name="chk" id="chk" class="chk"/> ${list03[status.index] }</li>
															<li><input type="checkbox" value="3" name="chk" id="chk" class="chk"/> ${list04[status.index] }</li>
															<li><input type="checkbox" value="4" name="chk" id="chk" class="chk"/> ${list05[status.index] }</li>
															<li><input type="checkbox" value="5" name="chk" id="chk" class="chk"/> ${list06[status.index] }</li>
															<li>선택사유&nbsp;&nbsp;&nbsp; <input maxlength="50" type="text" value="${list07[status.index] }" onkeyup="checkSpecial(this.value)" id="list07" class="inp" style="width: 600px;" /></li>
														<br />
													</ul>
												</c:forEach>
											</div>

										</td>
										    <input type="hidden" id="suriSeq" name="suriSeq" value="${vo.suriSeq}" />
						              		<input type="hidden" id="regDate" name="regDate" value="${vo.regDate }" />
						               		<input type="hidden" id="writer" name="writer" value="${vo.writer }"/>
						               		<input type="hidden" id="regName" name="regName" value="${sessionScope.memberName }"/>
						               		<input type="hidden" id="udtName" name="udtName" value="${sessionScope.memberName }"/>
									</tr>
								</tbody>
							</table>

							<p class="pt40"></p>
							<!-- btn-->
							<span class="bbs_btn"> <span class="wte_l">
							<a href="${path }/web/researchList.do" class="wte_r">목록</a></span> 
								<c:if test="${sessionScope.adminYn == 'Y' }">
									<span class="wte_l"><a href="javascript:update(${vo.suriSeq })" class="wte_r">수정</a></span>
									<span class="wte_l"><a href="javascript:chk()" class="wte_r">삭제</a></span>
								</c:if> 
							<!-- 	<span class="wte_l"><a href="#" class="wte_r">결과보기</a></span>  -->
								<span class="wte_l"><a href="#" class="wte_r" id="save">저장</a></span>
								<!-- <span class="wte_l"><a href="#" class="wte_r">사유전체보기</a></span> -->
								<span class="wte_l"><a href="javascript:back();" class="wte_r">취소</a></span>
							</span>
							 
						</div>
				</div>

				<p class="bottom_bg"></p>
			</div>
		</div>
		<!-- //container-->

		<div id="footer">
			<h2>하단</h2>
			<address>110-781) 서울특별시 종로구 송월길 48(신문로 2-77)</address>
			<p>
				COPYRIGHT(C) 2013 <b>SEOUL metropolitan office of education</b> ALL
				RIGHT RESERVED
			</p>
			<ul>
				<li class="bn"><a href="#">개인정보보호정책</a></li>
				<li><a href="#">이메일 무단수집거부</a></li>
				<li><a href="#">뷰어프로그램</a></li>
				<li><a href="#">저작권보호</a></li>
				<li><a href="#">서울학교급식 배너다운로드</a></li>
			</ul>
		</div>
	</div>
</body>
<script
	src="http://ajax.googleapis.com/ajax/libs/jquery/1.8/jquery.min.js"
	type="text/javascript"></script>
<script
	src="http://ajax.googleapis.com/ajax/libs/jqueryui/1.8/jquery-ui.min.js"
	type="text/javascript"></script>

<script type="text/javascript">

	function result(seq) {
		var suriSeq = '${vo.suriSeq}';

		$.ajax({
			url:"researchPopup.do?suriSeq="+seq,
			method:"get",
			dataType:"html",
			success: eventSuccess,
			error: function(xhr, status, error) {
				alert("설문조사 투표후 [결과보기]를 확인하여 주세요.");
			}
		});

		function eventSuccess(data) {
			window.open("researchPopup.do?suriSeq="+seq,"researchPopup","width=900,height=550");
		}
	}
	
	function chk() {
		
		var suriSeq = '${vo.suriSeq}';
		var userId = '${sessionScope.userId}';
		
		 window.open("passChk.do?suriSeq="+suriSeq+"&userId="+userId,
				"passChk","width=700,height=350");
	}

	function back() {
		window.history.back();
	}

	$(document).ready(function(){
		$("#save").click(function(){
		
			var suriSeq = '${vo.suriSeq}'; // 문제SEQ
			var surTitle = '${vo.surTitle }'; //제목 
			var surSatDate = '${vo.surSatDate }'; //시작일		
			var surEndDate = '${vo.surEndDate }';	//종료일
			var queCnt = '${vo.queCnt }'; //항목수
			var writer = '${vo.writer}';
			var regName = $("#regName").val();
			var udtName = $("#udtName").val();
			var regDate = '${vo.regDate}';
			
			var date = new Date(regDate);
		 	var year = date.getFullYear().toString().substring(2, 4); //yyyy
		    var month = (1 + date.getMonth());          //M
		    month = month >= 10 ? month : '0' + month;  //month 두자리로 저장
		    var day = date.getDate();                   //d
		    day = day >= 10 ? day : '0' + day;
		    var regDateString = year + '/' + month + '/' + day;//day 두자리로 저장 
					    
			//문제 타이틀 
			var suriTitle1 = '${list01}';
			
			// [2,3] ==이 형태로 마
			
			var send_array = Array();
			var send_cnt = 0;
			var arr = [];
			var chkbox = $(".chk");
			
			
			for(i=0;i<chkbox.length;i++) {
			    if (chkbox[i].checked == true){
			        send_array[send_cnt] = chkbox[i].value;
			        send_cnt++;
			        arr.push(chkbox[i].value);
			    }
			}


			//항목 타이틀 
		 	var suriTitle2 = '${list02}';
			var suriTitle3 = '${list03}';
			var suriTitle4 = '${list04}';
			var suriTitle5 = '${list05}';
			var suriTitle6 = '${list06}';
			
			// 사유 
			var suriTitle7 = [];
			$('input[id="list07"]').each(function(i){
				suriTitle7.push($(this).val());
			});
			
			var param = {
					"suriSeq" : suriSeq,
					"surTitle": surTitle,
					"surSatDate": surSatDate,
					"surEndDate": surEndDate,
					"queCnt": queCnt,
					"writer": writer,
					"regName": regName,
			 		"regDate": regDateString,
					"udtName": udtName,
					"suriTitle1": suriTitle1,
					"suriNum": arr.toString(),
					"suriTitle2": suriTitle2,
					"suriTitle3": suriTitle3,
					"suriTitle4": suriTitle4,
					"suriTitle5": suriTitle5,
					"suriTitle6": suriTitle6,
					"description": suriTitle7.toString()
			}
			
			if( $(":checkbox[name='chk']:checked").length == 0 ){
				alert("설문 항목을 하나이상 체크해주세요.");
				return; //체크 한번 하면 두번은 못하게 막기 
				
			} else {
		 	 	 $.ajax({
					url: "researchConfirm.do",
					dataType: "html",
					type: "post",
					data: param,
					success: function(){
						alert("저장 되었습니다.");
						window.location.reload();
					}, error: function(request, status, error){
						alert("code = "+ request.status + " message = " + request.responseText + " error = " + error); // 실패 시 처리
					}
				});   
			}
		});
	});
	

	function update(suriSeq) {
		location.href = 'researchUpdate.do?suriSeq='+suriSeq;
	}


	$(document).ready(function() {
		$("#login").click(function() {
			var suriSeq = '${vo.suriSeq}';
			var userId = $('#userId').val();
			var adminPw = $('#adminPw').val();
			var blank =  /\s/g;
			
			if(userId == "") {
				alert("아이디를 입력하세요");
				$('#userId').focus();
				return false;
			}else if(userId.length == 0 || !userId.trim()){
	 			alert("연속적인 공백은 입력이 안됩니다");
	 			$('#userId').focus();
	 			return false;
			}else if( userId.match(blank) || userId.length < 2){
	 			alert("아이디에 공백이 있거나 두자리 미만의 이름을 입력하셨습니다!");
	 			$('#userId').focus();
	 			return false;	
			}
			
			if(adminPw == "") {
				alert("비밀번호를 입력하세요");
				$("#adminPw").focus();
				return false;
			}
			
			document.form1.action = "${path}/web/researchDetail.do?suriSeq="+suriSeq;
			document.form1.submit();
		})
	})
	
	$(document).ready(function(){
		$("#form1").keypress(function(e) {
			if(e.keyCode == 13){
				var suriSeq = '${vo.suriSeq}';
				var userId = $('#userId').val();
				var adminPw = $('#adminPw').val();
				var blank =  /\s/g;
				
				if(userId == "") {
					alert("아이디를 입력하세요");
					$('#userId').focus();
					return false;
				}else if(userId.length == 0 || !userId.trim()){
		 			alert("연속적인 공백은 입력이 안됩니다");
		 			$('#userId').focus();
		 			return false;
				}else if( userId.match(blank) || userId.length < 2){
		 			alert("아이디에 공백이 있거나 두자리 미만의 이름을 입력하셨습니다!");
		 			$('#userId').focus();
		 			return false;	
				}
				
				if(adminPw == "") {
					alert("비밀번호를 입력하세요");
					$("#adminPw").focus();
					return false;
				}
				
				/* if(adminPw == ) */
			
				document.form1.action = "${path}/web/researchDetail.do?suriSeq="+suriSeq;
				document.form1.submit();
			}
		});
	});
	
	var flag1=true;
	var flag2=true;
	
	$(document).ready(function(){
		$(".mainMenu").each(function(index, item){
			$(item).click(function(){
				flag1=false;
			});
		});
		
		$(".subMenu").each(function(index, item){
			$(item).click(function(){
				flag1=true;
				flag2=false;
			});
		});
	});
	
	function getElementsByClass(searchClass, node, tag) {
	 var classElements = new Array();
	 if ( node == null ) node = document;
	 if ( tag == null ) tag = '*';
	 var els = node.getElementsByTagName(tag);
	 var elsLen = els.length;
	 var pattern = new RegExp("(^|\\s)"+searchClass+"(\\s|$)");
	 for (i = 0, j = 0; i < elsLen; i++) {
	  if ( pattern.test(els[i].className) ) {
	    classElements[j] = els[i];
	    j++;
	  }
	}
	return classElements;
	}
	
	function menuHidden(menu, sub) {
	menu.src = menu.src.replace("On", "Off");
	sub.style.display = "none";
	}
	
	function setEvtGnb() {
	var mainMenu = getElementsByClass("mainMenu");
	var prevMenu1, prevSub1, isHid1, prevMenu2, isHid2;
	
	var subMenu = getElementsByClass("subMenu");
	
	for (var i=0; i < mainMenu.length; i++) {
	  (function (pos){
	    mainMenu[pos].getElementsByTagName("img")[0].onmouseover = function(){
	      if(prevMenu1) menuHidden(prevMenu1, prevSub1);
	      prevMenu1 = this;
	      this.src = this.src.replace("Off", "On");
	      prevSub1 = document.getElementById("sub"+("0"+(pos+1)).match(/..$/));
	      prevSub1.style.display = "block";
	    };
	
	    mainMenu[pos].onmouseout = function(e){
	      var bool, e= e || event;
	      (function (obj, tobj) {
	        var childs = obj.childNodes;
	        for (var x=0; x<childs.length; x++) {
	          if(childs[x] == tobj) bool = true;
	          else arguments.callee(childs[x], tobj);
	        }
	      })(this, document.elementFromPoint(e.clientX, e.clientY));
	      if(flag1){
	          if(bool) return false;
	          menuHidden(prevMenu1, prevSub1);
	      }
	    };
	  })(i);
	}
	
	for (var j=0; j<subMenu.length; j++) {
	  (function (pos){
	    subMenu[pos].getElementsByTagName("img")[0].onmouseover = function(){
	      prevMenu2 = this;
	      this.src = this.src.replace("Off", "On");
	      prevSub2 = document.getElementById("sub"+("0"+(pos+1)).match(/..$/));
	   	  flag2=true;
	    };
	
	    subMenu[pos].onmouseout = function(e){
	      var bool, e= e || event;
	      (function (obj, tobj) {
	        var childs = obj.childNodes;
	        for (var x=0; x<childs.length; x++) {
	          if(childs[x] == tobj) bool = true;
	          else arguments.callee(childs[x], tobj);
	        }
	      })(this, document.elementFromPoint(e.clientX, e.clientY));
	      if(flag2){
	          if(bool) return false;
	          menuHidden(prevMenu2, prevSub2);
	      }
	    };
	  })(j);
	}
	}
	
	window.onload = function() {
	setEvtGnb();
	}
	
	doGoTab = function(thisObject, tab) {
		$(".business_tab").find(">li>a").each(function(index, el) {
			$(el).removeClass("business_tab0"+(index+1)+"_on");
			$(el).addClass("business_tab0"+(index+1));
		});
		$(thisObject).addClass("business_tab"+tab+"_on");
		if("01"==tab){
			$("#tab02").hide();
			$("#tab01").show();
		}else{
			$("#tab01").hide();
			$("#tab02").show();
		}
	}; 
</script>
</html>