<%@ page language="java" contentType="text/html; charset=UTF-8"
	pageEncoding="UTF-8"%>
<%@ taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core" %>
<%@ taglib prefix="fmt" uri="http://java.sun.com/jsp/jstl/fmt" %>
<c:set var="path" value="${pageContext.request.contextPath}"/>
<!DOCTYPE html>
<html>
<head>
<meta charset="UTF-8">
<title>ForeverYoung</title>
<script src="http://code.jquery.com/jquery-3.5.1.min.js"></script>
<link rel="stylesheet" type="text/css" href="${path }/css/board.css" />
<link rel="stylesheet" type="text/css" href="${path }/css/common.css" />
<link rel="stylesheet" type="text/css" href="${path }/css/contents.css" />
<link rel="stylesheet" type="text/css" href="${path }/css/curation.css" />
<link rel="stylesheet" type="text/css" href="${path }/css/global.css" />
<link rel="stylesheet" type="text/css"
   href="${path }/css/jquery.mCustomScrollbar.css" />
<link rel="stylesheet" type="text/css" href="${path }/css/pickup.css" />
<link rel="shortcut icon" href="https://fyawsbucket.s3.ap-northeast-2.amazonaws.com/favicon_logo.ico" type="image/x-icon" />
</head>
<body>
<jsp:include page="../default/header.jsp"></jsp:include>
<div id="Container">
	<div id="Contents">
		<div class = "mypage-head rate_04">
					<h1 class = "tit">
						<!-- 마이페이지 메인페이지로 이동 -->
						<a href = "MyPageMain.do">마이페이지</a>
					</h1>
					<div class = "grd-box">
						<div class = "info_user clrfix">
							<div class = "thum">
								<span class = "bg"></span>
								<!-- my_picture_base.jpg -->
								<img src = "https://fyawsbucket.s3.ap-northeast-2.amazonaws.com/my_picture_base.jpg">
							</div>
							<p class = "txt">
								<!-- 등급변경시 바꿔줘야함 -->
								${userMember }
								<!-- 기본정보페이지의 이름에서 가져오는걸로 추정됨. -->
								<strong class = "name">${userName }</strong>
								님 반갑습니다.
							</p>
							<ul class = "mem_opt">
								<!-- 멤버십 페이지로 이동 -->
								<li id = "membershipBenefit">
									<a href = "membership.do" onclick = "#">멤버십라운지</a>
								</li>
								<!-- 나의 프로필 페이지로 이동 -->
								<li id = "profileModify">
									<a href = "MyProfile.do" onclick = "#">나의 프로필</a>
								</li>
							</ul>
						</div>
						<div class = "point-box ">
							<ul class = "infor clrfix" id = "pointInfo">
								<!-- 마이페이지의 CJONE포인트 페이지로 이동 -->
								<li id = "cjOnePoingInfo" onclick = "#">
									<span class = "tit">FY ONE 포인트</span>
									<a class = "num" href = "#">
										${userPoint }
										<em class = "unit">P</em>
									</a>
								</li>
								<!-- 마이페이지의 쿠폰 페이지로 이동 -->
								<li id = "couponList" onclick = "#">
									<span class = "tit">쿠폰</span>
									<a class = "num" href = "#" data-attr = "마이페이지^쿠폰^쿠폰함이동">
										0
										<em class = "unit">개</em>
									</a>
								</li>
								<!-- 마이페이지의 예치금부분인데 우리는 기능 구현 안할거임 -->
								<li id = "depositList" onclick = "#">
									<span class = "tit">예치금</span>
									<a class = "num" href = "#">
										0
										<em class = "unit">원</em>
									</a>
								</li>
							</ul>
						</div>
					</div>
				</div>
				<div class = "mypage-ix">
					<!-- 마이페이지 sub 메뉴 -->
					<jsp:include page="../default/myPage_Sub_Menu.jsp"></jsp:include>
					<!-- 마이페이지 sub 메뉴 End-->
					<div class="mypage-conts">
						<div class="title-area">
							<h2 class="tit"></h2>
						</div>
						<div class="completed-area">
						<input type="hidden" name="order_delivery_status"  class="order_delivery_status" value="${order_delivery_status }">
							<p class="completed-guide">
								주문취소가
								<em>완료</em>
								되었습니다.
								<span>
									신용카드 결제 취소시 바로 환불 가능하며,
									<br>
									계좌이체/무통장 입금일 경우 취소신청 후 영업일 기준 3~7일 이내에 결제금액 환불처리가 됩니다.
									<br>
									자세한 문의사항은 고객센터(1522-0822) 또는 1:1상담으로 문의주시기 바랍니다. 
								</span>
							</p>
							<div class="area1sButton mgT25">
								<a href="#" class="btnGreen w150">취소내역 조회</a>
							</div>
						</div>
					</div>
				</div>
	</div>
</div>

<jsp:include page="../default/footer.jsp"></jsp:include>
</body>
</html>