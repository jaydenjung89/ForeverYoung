<%@ page language="java" contentType="text/html; charset=utf-8"
	pageEncoding="utf-8"%>
<%@ taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core" %>
<%@ taglib prefix="fmt" uri="http://java.sun.com/jsp/jstl/fmt" %>
<c:set var="path" value="${pageContext.request.contextPath}"/>
<!DOCTYPE html>
<html>
<head>
<meta charset="utf-8">
<title>1:1문의</title>
<link rel="stylesheet" type="text/css" href="${path }/css/board.css" />
<link rel="stylesheet" type="text/css" href="${path }/css/common.css" />
<link rel="stylesheet" type="text/css" href="${path }/css/contents.css" />
<link rel="stylesheet" type="text/css" href="${path }/css/curation.css" />
<link rel="stylesheet" type="text/css" href="${path }/css/global.css" />
<link rel="stylesheet" type="text/css"
   href="${path }/css/jquery.mCustomScrollbar.css" />
<link rel="stylesheet" type="text/css" href="${path }/css/pickup.css" />
</head>
<body>
<jsp:include page="../default/header.jsp"></jsp:include>
<div class="popup-contents" id="pop_cont" style="top: 1733.33px; width: 650px; margin: -258px 0px 0px -325px; z-index: 999; left: 50%; display: block;">
	<div class="pop-conts">
		<form name="sForm" id="sForm">
			<input type="hidden" name="gdasSeq" id="gdasSeq" value="">
			<input type="hidden" name="goodsNo" id="goodsNo" value="A000000129008">
			<h1 class="ptit">상품 Q&amp;A 작성</h1>
	
				<div class="mypage-qna-write disabled">
				<div class="optionSec">
					<h3>아래의 문의 유형을 선택해주세요.</h3>
					<div class="radioGT1">
						<label><input type="radio" name="prdTypeSelect" id="prdTypeSelect1"><span>상품문의</span></label>
						<label><input type="radio" name="prdTypeSelect" id="prdTypeSelect2"><span>주문 상품문의</span></label>
					</div>
					<p class="txt">성분, 사용법, 구성 등 상품 관련 문의를 남겨주세요. 배송/교환/반품 문의는 ‘주문상품문의’를 선택해주세요.</p>
				</div>
	
				<p class="common4s-text">에스트라 아토베리어365 로션 150ml</p>
	
				<!-- 등록제한이 없는 한줄상품평 작성 -->
				<div class="reviews-write">
					<textarea cols="5" rows="1" id="gdasCont" name="gdasCont" placeholder="Q&amp;A 게시판에서는 고객님의 정보 확인이 어려우므로 배송문의 등은 1:1 게시판 이용 부탁드립니다." disabled=""></textarea>
					<p><span id="curTxtLength">0</span>자/250자</p>
				</div>
				<!-- 등록제한이 없는 한줄상품평 작성 -->
	
				<div class="btnGroup">
					<button id="cancel" type="button" class="btnGray" onclick="javascript:mypage.gdsQna.form.popupClose();" disabled="disabled">취소</button>
					<button id="reg" type="button" class="btnGreen" onclick="javascript:mypage.gdsQna.form.regQna();" disabled="disabled">등록</button>				
				</div>
				<div class="usage-guide">
					<h2 class="stit">이용안내</h2>
					<ul>
						<li>재판매글, 상업성 홍보글, 미풍양속을 해치는 글 등 상품 Q&amp;A의 취지에 어긋나는 글은 삭제될 수 있습니다.</li>
					</ul>
				</div>
			</div>
			<!-- [e] 2021.04.19 modify -->
	
			<button type="button" class="ButtonClose" onclick="mypage.gdsQna.form.popupClose();">팝업창 닫기</button>
			<!-- [s] 2021.04.19 add -->
			<div class="alertPop">
				<p class="txt">해당 상품의 배송/교환/반품 문의를 위해<br>1:1문의 게시판을 이용해주세요.</p>
				<p class="btnGroup">
					<button type="button" class="btnMedium wGreen btnClose">취소</button>
					<button id="btnCounsel" type="button" class="btnMedium btnGreen">1:1문의 바로가기</button>
				</p>
			</div>
		</form>
	</div>





</div>
<jsp:include page="../default/footer.jsp"></jsp:include>
</body>
</html>