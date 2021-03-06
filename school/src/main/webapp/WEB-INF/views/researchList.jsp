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
<link rel="shortcut icon" href="data:image/x-icon;," type="image/x-icon">

<title>서울학교급식포털</title>
</head>
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
    <h1><img src="resources/images/header/common/logo.gif" alt="서울학교급식포털" /></h1>
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
        <li class="mainMenu first"><a href="#"><img src="resources/images/header/common/mm_infoOff.gif" id="sel1" alt="서울학교급식소개" /></a>
         <div class="subMenu" id="sub01" style="display:none;">
            <div class="boxSR">
              <ul class="boxSM">
                <li class="left_bg"></li>
                <li class="subMenu"><a href="#"><img src="resources/images/header/common/sm_info01Off.gif" alt="인사말" /></a></li>
                <li class="subMenu"><a href="#"><img src="resources/images/header/common/sm_info02Off.gif" alt="학교급식기본방향" /></a></li>
                <li class="subMenu"><a href="#"><img src="resources/images/header/common/sm_info03Off.gif" alt="학교급식현황" /></a></li>
                <li class="last subMenu"><a href="#"><img src="resources/images/header/common/sm_info04Off.gif" alt="학교급식 담당부서" /></a></li>
                <li class="right_bg"></li>
              </ul>
            </div>
          </div>
        </li>
        <li class="mainMenu"><a href="#"><img src="resources/images/header/common/mm_safetyOff.gif" alt="학교급식위생안전" /></a>
          <div class="subMenu" id="sub02" style="display:none;">
            <div class="boxSR">
              <ul class="boxSM">
                <li class="left_bg"></li>
                <li class="subMenu"><a href="#"><img src="resources/images/header/common/sm_safety01Off.gif" alt="학교급식 위생관리" /></a></li>
                <li class="subMenu"><a href="#"><img src="resources/images/header/common/sm_safety02Off.gif" alt="식중독 대처요령" /></a></li>
                <li class="subMenu"><a href="#"><img src="resources/images/header/common/sm_safety03Off.gif" alt="안전사고예방" /></a></li>
                <li class="subMenu"><a href="#"><img src="resources/images/header/common/sm_safety04Off.gif" alt="안전사고 대처요령" /></a></li>
                <li class="last subMenu"><a href="#"><img src="resources/images/header/common/sm_safety05Off.gif" alt="위생.안전성 검사결과" /></a></li>
                <li class="right_bg"></li>
              </ul>
            </div>
          </div>
        </li>
        <li class="mainMenu"><a href="#"><img src="resources/images/header/common/mm_factoryOff.gif" alt="학교급식시설관리" /></a>
          <div class="subMenu" id="sub03" style="display:none;">
            <div class="boxSR">
              <ul class="boxSM">
                 <li class="left_bg"></li>
                <li class="subMenu"><a href="#"><img src="resources/images/header/common/sm_factory01Off.gif" alt="급식환경개선사업" /></a></li>
                <li class="subMenu"><a href="#"><img src="resources/images/header/common/sm_factory01Off.gif" alt="급식시설개선사례" /></a></li>
                <li class="subMenu"><a href="#"><img src="resources/images/header/common/sm_factory01Off.gif" alt="급식기구관리전환" /></a></li>
                <li class="last subMenu"><a href="#"><img src="resources/images/header/common/sm_factory01Off.gif" alt="컨설팅신청안내" /></a></li>
                <li class="right_bg"></li>
              </ul>
            </div>
          </div>
        </li>
        <li class="mainMenu"><a href="#"><img src="resources/images/header/common/mm_foodOff.gif" alt="학교급식식재료" /></a>
          <div class="subMenu" id="sub04" style="display:none;">
            <div class="boxSR">
              <ul class="boxSM">
                 <li class="left_bg"></li>
                <li class="subMenu"><a href="#"><img src="resources/images/header/common/sm_food01Off.gif" alt="식재료 구매·관리" /></a></li>
                <li class="subMenu"><a href="#"><img src="resources/images/header/common/sm_food02Off.gif" alt="식재료 시장조사" /></a></li>
                <li class="last subMenu"><a href="#"><img src="resources/images/header/common/sm_food03Off.gif" alt="부적합 납품 업체" /></a></li>
                <li class="right_bg"></li>
              </ul>
            </div>
          </div>
        </li>
        <li class="mainMenu"><a href="#"><img src="resources/images/header/common/mm_eduOff.gif" alt="영양,교육" /></a>
          <div class="subMenu" id="sub05" style="display:none;">
            <div class="boxSR">
              <ul class="boxSM">
                <li class="left_bg"></li>
                <li class="subMenu"><a href="#"><img src="resources/images/header/common/sm_edu01Off.gif" alt="영양·식생활교육" /></a></li>
                <li class="subMenu"><a href="#"><img src="resources/images/header/common/sm_edu02Off.gif" alt="추천식단" /></a></li>
                <li class="subMenu"><a href="#"><img src="resources/images/header/common/sm_edu03Off.gif" alt="추천레시피" /></a></li>
                <li class="last subMenu"><a href="#"><img src="resources/images/header/common/sm_edu04Off.gif" alt="학교급식특색활동" /></a></li>
                <li class="right_bg"></li>
              </ul>
            </div>
          </div>
        </li>
        <li class="mainMenu"><a href="#"><img src="resources/images/header/common/mm_partOff.gif" alt="알림마당" /></a>
          <div class="subMenu" id="sub06" style="display:none;">
            <div class="boxSR">
              <ul class="boxSM">
                <li class="left_bg"></li>
                <li class="subMenu"><a href="#"><img src="resources/images/header/common/sm_part01Off.gif" alt="학교급식인력풀" /></a></li>
                <li class="subMenu"><a href="#"><img src="resources/images/header/common/sm_part02Off.gif" alt="영양(교)사이야기" /></a></li>
                <li class="subMenu"><a href="#"><img src="resources/images/header/common/sm_part03Off.gif" alt="조리(원)사이야기" /></a></li>
                <li class="subMenu"><a href="#"><img src="resources/images/header/common/sm_part04Off.gif" alt="자유게시판" /></a></li>
                <li class="last subMenu"><a href="#"><img src="resources/images/header/common/sm_part05Off.gif" alt="설문조사" /></a></li>
                <li class="right_bg"></li>
              </ul>
            </div>
          </div>
        </li>
        <li class="mainMenu last"><a href="#"><img src="resources/images/header/common/mm_noticeOff.gif" alt="정보마당" /></a>
          <div class="subMenu" id="sub07" style="display:none;">
            <div class="boxSR">
              <ul class="boxSM">
                <li class="left_bg"></li>
                <li class="subMenu"><a href="#"><img src="resources/images/header/common/sm_notice01Off.gif" alt="급식소식" /></a></li>
                <li class="subMenu"><a href="#"><img src="resources/images/header/common/sm_notice01Off.gif" alt="연수·행사" /></a></li>
                <li class="subMenu"><a href="#"><img src="resources/images/header/common/sm_notice01Off.gif" alt="업무자료실" /></a></li>
                <li class="subMenu"><a href="#"><img src="resources/images/header/common/sm_notice01Off.gif" alt="관련법규" /></a></li>
                <li class="last subMenu"><a href="#"><img src="resources/images/header/common/sm_notice01Off.gif" alt="FAQ" /></a></li>
                <li class="right_bg"></li>
              </ul>
            </div>
          </div>
        </li>
      </ul>
    </div>
  </div>
  <!-- //header--> 
  
  <!-- container-->
  <div id="container">
    <div id="contents">
      <h2>메인내용</h2>
      <p><img src="resources/images/sub/info/sub_vimg_01.jpg" alt="건강한 급식 행복한 학교" /></p>
      <ul class="lnb">
        <li><img src="resources/images/sub/particiation/sub_title_01.gif" alt="알림마당" /></li>
        <li><a href="#"><img src="resources/images/sub/particiation/sub_stitle_01Off.gif" alt="학교급식인력풀" /></a></li>
        <li><a href="#"><img src="resources/images/sub/particiation/sub_stitle_02Off.gif" alt="영양(교)사이야기" /></a></li>
        <li><a href="#"><img src="resources/images/sub/particiation/sub_stitle_03Off.gif" alt="조리(원)사이야기" /></a></li>
        <li><a href="#"><img src="resources/images/sub/particiation/sub_stitle_04Off.gif" alt="자유게시판" /></a></li>
        <li><a href="#"><img src="resources/images/sub/particiation/sub_stitle_05On.gif" alt="설문조사" /></a></li>
      </ul>
      <div class="right_box">
        <h3><img src="resources/images/sub/particiation/title_05.gif" alt="급식기구관리전환" /></h3>
        <p class="history"><img src="resources/images/sub/history_home.gif" alt="home" /> 알림마당 <img src="resources/images/sub/history_arrow.gif" alt="다음" /> <strong>설문조사</strong></p>
        <p class="pt30"></p>
        <div class="tbl_box">
         <table width="100%" border="0" cellspacing="0" cellpadding="0" class="tbl_type01" summary="설문조사">
            <caption>
            설문조사
            </caption>
            <colgroup>
            <col width="8%"/>
            <col width="*%"/>
            <col width="15%"/>
            <col width="15%"/>
            <col width="10%"/>
            <col width="10%"/>
            </colgroup>
            <tbody>
              <tr>
                <th>NO</th>
                <th>제목</th>
                <th>시작일</th>
                <th>마감일</th>
                <th>완료여부</th>
                <th>결과확인</th>
              </tr>
              <c:forEach items="${list }" var="vo">
             	  <tr>
	                <td>${vo.rnum }</td>
					<c:choose>
						<c:when test="${sessionScope.adminYn == 'Y' }">
							<td style="text-align: center; text-decoration: none;"><pre style="overflow: hidden; text-overflow: ellipsis; text-align: left;"> <a style="white-space: pre;" title="${vo.surTitle }" href="javascript:detail(${vo.suriSeq })">${vo.surTitle }</a>
								</pre>
							</td>
						</c:when>
						<c:otherwise>
							<c:if test="${vo.surIsend == '진행중' }">
							<td style="text-align: center; text-decoration: none;"><pre style="overflow: hidden; text-overflow: ellipsis; text-align: left;"> <a style="white-space: pre;" title="${vo.surTitle }" href="javascript:detail(${vo.suriSeq })">${vo.surTitle }</a>
								</pre>
							</td>
							</c:if>
							<c:if test="${vo.surIsend == '완료' }">
								<td style="text-align: center; text-decoration: none;"><pre style="overflow: hidden; text-overflow: ellipsis; text-align: left;"> <a style="white-space: pre;" title="${vo.surTitle }" href="javascript:failare(${vo.suriSeq })">${vo.surTitle }</a>
								</pre>
							</td>
							</c:if>
						</c:otherwise>
					</c:choose>
	                <td><fmt:parseDate value="${vo.surSatDate }"
												var="surSatDate1" pattern="yyyyMMdd" scope="page" /> <fmt:formatDate
												value="${surSatDate1 }" pattern="yyyy-MM-dd" /></td>                
	                <td><fmt:parseDate value="${vo.surEndDate }"
												var="surEndDate1" pattern="yyyyMMdd" scope="page" /> <fmt:formatDate
												value="${surEndDate1 }" pattern="yyyy-MM-dd" /></td>
	                <td>${vo.surIsend }</td>
	                <c:choose>
						<c:when test="${sessionScope.adminYn == 'Y' }">
             		 		<td><a href="javascript:result(${vo.suriSeq })"><img src="resources/images/sub/btn/btn_view.gif" alt="결과보기" /></a></td>
						</c:when>
						<c:otherwise>
							<c:if test="${vo.surIsend == '진행중' }">
							<td><a href="javascript:result(${vo.suriSeq })"><img src="resources/images/sub/btn/btn_view.gif" alt="결과보기" /></a></td>
							</c:if>
							<c:if test="${vo.surIsend == '완료' }">
							<td><a href="javascript:setting(${vo.suriSeq })"><img src="resources/images/sub/btn/btn_view.gif" alt="결과보기" /></a></td>
							</c:if>
						</c:otherwise>
					</c:choose>	
	              </tr>
              </c:forEach>
            </tbody>
          </table>
          <ul class="paging">
          <c:if test="${page.curBlock > 1}">
            <li><a href="javascript:list(1)" title="맨 처음 페이지로 가기"><img src="resources/images/sub/btn/pre_01.gif"  alt="맨 처음 페이지로 가기" /></a></li>
          </c:if> 
          <c:if test="${page.curBlock > 1}">
            <li><a  href="javascript:list(${page.prevPage})" title="이전 페이지로 가기"><img src="resources/images/sub/btn/pre.gif" alt="이전 페이지로 가기" /></a></li>
         </c:if>   
           <c:forEach var="num"
				begin="${page.blockBegin}" end="${page.blockEnd}">
				<!-- **현재페이지이면 하이퍼링크 제거 -->
				<c:choose>
					<c:when test="${num == page.curPage}">
						<span style="color: red" class="span">${num}</span>
	                </c:when>
					<c:otherwise>
						<a href="javascript:list(${num})">${num}</a>
	               	</c:otherwise>
				</c:choose>
			</c:forEach> 
			<c:if test="${page.curBlock <= page.totBlock}">
            	<li><a href="javascript:list(${page.nextPage})" title="다음 페이지로 가기" ><img src="resources/images/sub/btn/next.gif" alt="다음 페이지" /></a></li>
            </c:if>
            <c:if test="${page.curPage <= page.totPage}">
    	        <li><a href="#" title="마지막 페이지로 가기"><img src="resources/images/sub/btn/next_01.gif" alt="마지막 페이지" /></a></li>
	        </c:if>
          </ul>
          <span class="bbs_btn"> 
		  	<c:choose>
		  		<c:when test="${sessionScope.adminYn == 'Y'  }">
		          <span class="per_l"><a href="${path }/web/researchCreate.do" class="pre_r">글쓰기</a></span>
		  		</c:when>
		  	</c:choose>
          </span> 
        </div>
         <form name="form" action="researchList.do" method="get">
	        <div class="search_box">
	          <select name="search_option">
	    			<option value="sur_title"<c:out value="${map.search_option == 'sur_title'?'selected':''}" />>제목</option>
	          </select>
	          <input type="text" id="keyword" name="keyword" />
	          <a href="javascript:searchClick()"><img src="resources/images/sub/btn/btn_serch.gif" alt="검색" /></a></div>
	      </div>
		</form>      
      <p class="bottom_bg"></p>
    </div>
  </div>
  <div id="footer">
    <h2>하단</h2>
    <address>
    110-781) 서울특별시 종로구 송월길 48(신문로 2-77)
    </address>
    <p>COPYRIGHT(C) 2013 <b>SEOUL metropolitan office of education</b> ALL RIGHT RESERVED</p>
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
<script type="text/javascript" src="http://code.jquery.com/jquery-1.10.2.min.js"></script>
<script type="text/javascript" src="https://ajax.googleapis.com/ajax/libs/jquery/1.12.4/jquery.min.js"></script>
<script type="text/javascript" src="https://ajax.googleapis.com/ajax/libs/jqueryui/1.12.1/jquery-ui.min.js"></script>

<script type="text/javascript">

	$(function(){
		$('#surTitle').tooltip();
	})

	function searchClick(){
		
		var count = '${count}';
		if(count == 0){
			alert("검색결과가 없습니다.");
			location.href="researchList.do";
			return false;
		}
		
		if(document.getElementById("keyword").value == ""){
			alert("검색단어를 입력하세요");
			return false;
		}else if(document.getElementById("keyword").value.replace(/\s/g,"").length == 0){
			alert('공백은 입력하실수 없습니다.\n삭제후 다시 입력해주세요');
		    return false;
		}
		document.form.submit();
	}

	 	
	  function list(page){
	       location.href="researchList.do?curPage="+page
	       +"&search_option=${search_option}" 
	       +"&keyword=${keyword}";
	   }

	function result(seq) {
		var suriSeq = '${vo.suriSeq}';

		$.ajax({
			url:"researchPopup.do?suriSeq="+seq,
			method:"get",
			dataType:"html",
			success: eventSuccess,
			error: function(xhr, status, error) {
				alert("결과가 없습니다. 설문조사를 해주시기 바랍니다.");
			}
		});

		function eventSuccess(data) {
			window.open("researchPopup.do?suriSeq="+seq,"researchPopup","width=800,height=630");
		}
	}
	
	function detail(suriSeq){
		location.href = 'researchDetail.do?suriSeq='+suriSeq;
	}

	function failare(){
		alert("설문이 완료 되었습니다. 다음에 이용하시기 바랍니다");
	}
	
	function setting() {
		alert("완료된 설문은 [결과보기] 를 이용할수 없습니다");
	}
	
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
	
	for (var i=0; i<mainMenu.length; i++) {
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
	
	
	$(document).ready(function() {
		$("#login").click(function() {
	
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
			
			document.form1.action = "${path}/web/researchList.do" 
			document.form1.submit();
		})
	})
	
	$(document).ready(function(){
		$("#form1").keypress(function(e) {
			if(e.keyCode == 13){
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
			
				document.form1.action = "${path}/web/researchList.do" 
				document.form1.submit();
			}
		});
	});
	
	
/*  	window.onload = function(){
		var count = '${count}';
		
		if(count == 0){
			alert("검색결과가 없습니다.");
			location.href="researchList.do";
		}
	}  */
</script>
</html>
