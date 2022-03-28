<%@ page language="java" contentType="text/html; charset=utf-8"
	pageEncoding="utf-8"%>
<%@ taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core" %>

<c:set var="path" value="${pageContext.request.contextPath}"/>
<!DOCTYPE html>
<html>
<head>
<meta charset="utf-8">
<title>MemberShipPage</title>
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
<!-- Container -->
<div id="Container">
<!-- Contents -->
	<div class="title-coupon">
		<h1>멤버십/쿠폰<span>쇼핑하는 재미! 포에버영만의 더 특별한 혜택</span></h1>
	</div>
	<ul class="comm5sTabs tab2">
		<li class="on">
		<button type="button" onclick="location='membership.do'" title="선택됨">멤버십 라운지</button><!-- onclick 누를 시 현재 페이지(moveMembershipLoung() -->
		</li>
		<li>
			<button type="button" id="couponButton" onclick="location='coupon.do'">쿠폰/혜택</button>
		</li>	
	</ul>
	<!-- <div class="coupon-area"> -->
	<div id="couponMainHtml">
	<!-- 멤버십 START -->
		<div id="Contents">
		<c:if test="${empty user}">
			<div class="myLoginArea">
				<p>
				고객님, 로그인 후 
				<em>나의 등급과 특별한 혜택</em>
				을 확인하세요 
				<span class="btnLogin">
					<button type="button" class="btnLineLg" onclick="location='login.do'">로그인</button><!-- 버튼 클릭 시 LoginPage이동 -->
				</span>
				</p>
				
				<p class="btn_move_rate">
					<a href="" class="btn">등급별 혜택 둘러보기</a><!-- 등급별 혜택 페이지 이동 -->
				</p>	
			</div>
		</c:if>	
		<c:if test="${not empty user}">
			<div class="mem_info_top">
				<div class="thum">
					<span class="bg"></span>
					<img src="https://image.oliveyoung.co.kr/pc-static-root/image/comm/my_picture_base.jpg" alt="프로필이미지">
				</div>
				<p class="txt">
					<em>${user.user_name}</em>
					님의 등급은<b></b> 
					<strong>
						<span class="rate_04">${userMember }</span><!-- 등급 EL Tag 삽입할 것 -->
					</strong>
					입니다.
				</p>
				<p class="btn_move_rate">
					<a href="" class="btn">등급별 혜택 둘러보기</a><!-- 등급별 혜택 페이지 이동 -->
				</p>	
			</div>
		</c:if>
			<div class="tit_line">
				<h2 class="tit">참여가능 이벤트</h2>
			</div>
			<div class="event_list_area">
				<div class="inner">
					<ul class="list slick-initialized slick-slider" id="event_join">
						<div aria-live="polite" class="slick-list draggable">
							<div class="slick-track" role="listbox" style="opacity: 1; width: 1035px; transform: translate3d(0px, 0px, 0px);">
								<li class="slick-slide slick-current slick-active" data-slick-index="0" aria-hidden="false" style="width : 345px;" tabindex="-1" role="option" aria-describedby="slick-slide00">
									<a href="" data-attr="멤버십쿠폰^멤버십라운지_이벤트^참여가능 이벤트 이번달 생일인 포에버라면?" tabindex="0">
										<p>
											<img src="https://fyawsbucket.s3.ap-northeast-2.amazonaws.com/images/4550678772884383393.png">
										</p>
										<dl class="info">
											<dt>이번달 생일인 포에버라면?</dt>
											<dd class="txt1">멤버십 생일 선물 드림^^</dd>
											<dd class="txt2">22.01.01- 22.12.31</dd>
										</dl>	
									</a>
								</li>
								<li class="slick-slide slick-active" data-slick-index="1" aria-hidden="false" style="width:345px; tabindex="-1" role="option" aria-describedby="slick-slide01">
									<a href="" data-attr="멤버십쿠폰^멤버십라운지_이벤트^참여가능 이벤트 첫구매라면 누구나!^2" tabindex="0">
										<p>
											<img src="https://fyawsbucket.s3.ap-northeast-2.amazonaws.com/images/5926204382049482075.png">
										</p>
										<dl class="info">
											<dt>첫구매라면 누구나!</dt>
											<dd class="txt1">50% 즉시 할인!!</dd>
											<dd class="txt2">22.01.01- 22.06.30</dd>
										</dl>	
									</a>
								</li>
								<li class="slick-slide slick-active" data-slick-index="2" aria-hidden="false" style="width: 345px;" tabindex="-1" role="option" aria-describedby="slick-slide02">
									<a href="" data-attr="멤버십쿠폰^멤버십라운지_이벤트^참여가능 이벤트 매일 매일 출석하고^3" tabindex="0">
										<p>
											<img src="https://fyawsbucket.s3.ap-northeast-2.amazonaws.com/images/9011561272510805952.png">
										</p>
										<dl class="info">
											<dt>매일 매일 출석하고</dt>
											<dd class="txt1">포인트+기프트카드 받기</dd>
											<dd class="txt2">22.01.01- 22.01.31</dd>
										</dl>	
									</a>
								</li>
							</div>			
						</div>
					</ul>
				</div>
			</div>
			<c:if test="${empty user}">
			<div class="tit_line" id="cpnAnchor">
				<h2 class="tit">쿠폰 혜택</h2>
			</div>
			
			<p class="txt_coupon">
				<a href="login.do">로그인 후 나만의 쿠폰을 확인하세요.</a>
			</p>
			</c:if>
			<c:if test="${not empty user}">
			<div class="tit_line" id="cpnAnchor">
				<h2 class="tit">쿠폰 혜택</h2>
				<a href="" class="posR arrR">쿠폰안내</a>
			</div>
			<div class="coupon_list">
				<ul class="clrfix">
					<li id="oyCpn">
						<div class="bg">
							<input type="hidden" name="cpnNo" value="">
							<input type="hidden" name="cpnNoArr" value="">
							<em>무료배송</em>
						</div>
						<div class="info">
							<dl class="txt">
								<dt> 오늘드림 무료배송 쿠폰 </dt>
								<dd>10,000원 이상 적용가능</dd>
							</dl>
						</div>
					</li>	
				</ul>
				<p class="btn_cp_alldw cpnAllDown">
					<button type="button" class="btnCpDown">
						쿠폰을 한번에 받아보세요
						<img src="https://image.oliveyoung.co.kr/pc-static-root/image//comm/icon_dw.png">
					</button>
				</p>	
			</div>
			</c:if>
			<div class="ban_coupon dotline">
				<a href="coupon.jsp" data-attr="멤버십쿠폰^멤버십라운지^멤버십혜택조회">
					<img src="https://fyawsbucket.s3.ap-northeast-2.amazonaws.com/images/ban_coupon_go_202002.jpg">
				</a>
			</div>	
		</div>
	</div>
</div>
<!-- End Container -->
<jsp:include page="../default/footer.jsp"></jsp:include>
</body>
</html>