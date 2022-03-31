<%@ page language="java" contentType="text/html; charset=utf-8"
	pageEncoding="utf-8"%>
<%@ taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core" %>
<c:set var="path" value="${pageContext.request.contextPath}"/>
<!DOCTYPE html>
<html>
<head>
<meta charset="utf-8">
<title>CouponPage</title>
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
<!-- Container -->
<div id="Container">
	<div class="title-coupon">
	<h1>멤버십/쿠폰<span>쇼핑하는 재미! 포에버영만의 더 특별한 혜택</span></h1>
	</div>
<div class="coupon-area">
	<ul class="comm5sTabs tab2">
		<li>
			<button type="button" onclick="location='membership.do'">멤버십 라운지</button>
		</li>
		<li class="on">
			<button type="button" id="couponButton" title="선택됨" onclick="location='coupon.do'">쿠폰/혜택</button>
		</li>		
	</ul>
	<c:if test="${empty user}">
	<div class="TabsConts on">
		<div class="text-login">
			로그인 하시고
			<span>나만의 쿠폰</span>
			을 확인하세요
			<a href="login.do">로그인</a>
		</div>
		<a class="couponEnroll-link" href="login.do" id="getCouponLPop" data-rel="layer" data-target="discountCoupon" data-attr="멤버십쿠폰^쿠폰혜택탭^쿠폰등록">
			<!-- 위 링크에 쿠폰 등록 페이지로 이동 추가해야함 -->
			<span>
				쿠폰 등록
				<em>발급 받으신 번호를 등록해주세요</em><!-- 로그인 전에는 로그인 페이지로 이동 -->
			</span>
		</a>
	</div>
	</c:if>
	<c:if test="${not empty user }">
	<div class="TabsConts on">
		<div class="mem_info_top">
			<div class="thum">
				<span class="bg"></span>
				<img src="https://image.oliveyoung.co.kr/pc-static-root/image/comm/my_picture_base.jpg" alt="프로필이미지">
			</div>
			<p class="txt">
				<em>${user.user_name}</em>
				님의 등급은
				<strong>
					<span class="rate_04">${userMember }</span>
				</strong>
				입니다
			</p>	
		</div>
	</div>	
	<a class="couponEnroll-link" href="login.do" id="getCouponLPop" data-rel="layer" data-target="discountCoupon" data-attr="멤버십쿠폰^쿠폰혜택탭^쿠폰등록">
			<!-- 위 링크에 쿠폰 등록 페이지로 이동 추가해야함 -->
			<span>
				쿠폰 등록
				<em>발급 받으신 번호를 등록해주세요</em><!-- 로그인 전에는 로그인 페이지로 이동 -->
			</span>
		</a>
		<div class="coupon_tit_area">
			<h2 class="coupon-title member">멤버십 쿠폰</h2>
			<a href="#" class="coupon_info_link" data-rel="layer" data-target="couponNotice">쿠폰안내</a>
			<div name="cardHtmlCont" style="display:none">
			<!-- 쿠폰 안내 내용 삽입 예정 -->
		</div>
		</div>
		<ul class="cpbox_list">
			<li>
				<div class="area today">
					<div class="info">
						<span class="tit">오늘드림 무료배송 쿠폰</span>
						<span class="sale">
							<em>무료배송</em>
						</span>
						<span class="txt">10,000원 이상 적용가능</span>
						<span class="flag today">
							<strong>오늘드림</strong>
						</span>
					</div>
				</div>
				<button type="button" class="btn_cpdw">
					<span data-attr="">쿠폰 다운받기</span>
				</button>
				<input type="hidden" name="cpnNo" value="">
			</li>	
		</ul>
	</c:if>
	
	<div class="card_cont_wrap">
		<h3>카드사별 포인트 사용</h3>
		<ul class="card_list_type">
			<li>
				<div class="cont_img">
					<img src="https://fyawsbucket.s3.ap-northeast-2.amazonaws.com/DIN.jpg">
					<span class="flag all">온라인몰&매장</span>
				</div>
				<div class="cont_txt">
					<p class="tit">현대카드</p>
					<p class="desc">현대카드 M포인트 10%사용 가능(1만원 이상 결제시 최대 5천 포인트)</p>
					<p class="date">2022.01.01 - 2022.12.31</p> 
				</div>
			</li>
			<li>
				<div class="cont_img">
					<img src="https://fyawsbucket.s3.ap-northeast-2.amazonaws.com/mem%26cuimage/WIN.jpg">
					<span class="flag all">온라인몰&매장</span>
				</div>
				<div class="cont_txt">
					<p class="tit">삼성카드</p>
					<p class="desc">삼성카드 보너스포인트 100% 사용 가능</p>
					<p class="date">2022.01.01 - 2022.12.31</p>
				</div>	
			</li>	
		</ul>
	</div>
	<div class="card_cont_wrap" id="nintInstList">
		<h3>카드 무이자 할부</h3>
		<div class="card_list_type2">
			<ul>
				<li>
					<a class="detail-link" href="" style="cursor:text">
						<div class="cont_img size_75per">
							<img src="https://fyawsbucket.s3.ap-northeast-2.amazonaws.com/BCC_logo.jpg">
						</div>
						<div class="cont_txt">
							<span class="flag on">온라인몰 단독</span>
							<p class="desc">할부 개월 : 2, 3, 4, 5, 6, 7개월 무이자 할부</p>
							<p class="desc">할부 조건 : 50,000원 이상</p>
							<p class="date">2022.01.01 - 2022.01.31</p>
						</div>
					</a>
					<input type="hidden" name="urlInfo" value>	
				</li>
				<li>
					<a class="detail-link" href="" style="cursor:text">
						<div class="cont_img size_75per">
							<img src="https://fyawsbucket.s3.ap-northeast-2.amazonaws.com/CNB_logo.jpg">
						</div>
						<div class="cont_txt">
							<span class="flag on">온라인몰 단독</span>
							<p class="desc">할부 개월 : 2, 3, 4, 5, 6, 7개월 무이자 할부</p>
							<p class="desc">할부 조건 : 50,000원 이상</p>
							<p class="date">2022.01.01 - 2022.01.31</p>
						</div>	
					</a>
					<input type="hidden" name="urlInfo" value>	
				</li>
				<li>
					<a class="detail-link" href="" style="cursor:text">
						<div class="cont_img size_75per">
							<img src="https://fyawsbucket.s3.ap-northeast-2.amazonaws.com/images/NLC_logo.jpg">
						</div>
						<div class="cont_txt">
							<span class="flag on">온라인몰 단독</span>
							<p class="desc">할부 개월 : 2, 3, 4, 5, 6개월 무이자 할부</p>
							<p class="desc">할부 조건 : 50,000원 이상</p>
							<p class="date">2022.01.01 - 2022.01.31</p>
						</div>	
					</a>
					<input type="hidden" name="urlInfo" value>	
				</li>
				<li>
					<a class="detail-link" href="" style="cursor:text">
						<div class="cont_img size_75per">
							<img src="https://fyawsbucket.s3.ap-northeast-2.amazonaws.com/AMX_logo.jpg">
						</div>
						<div class="cont_txt">
							<span class="flag on">온라인몰 단독</span>
							<p class="desc">할부 개월 : 2, 3, 4개월 무이자 할부</p>
							<p class="desc">할부 조건 : 50,000원 이상</p>
							<p class="date">2022.01.01 - 2022.01.31</p>
						</div>	
					</a>
					<input type="hidden" name="urlInfo" value>	
				</li>		
			</ul>
			<ul>
				<li>
					<a class="detail-link" href="" style="cursor:text">
						<div class="cont_img size_75per">
							<img src="https://fyawsbucket.s3.ap-northeast-2.amazonaws.com/images/WIN.jpg">
						</div>
						<div class="cont_txt">
							<span class="flag on">온라인몰 단독</span>
							<p class="desc">할부 개월 : 2, 3, 4, 5, 6개월 무이자 할부</p>
							<p class="desc">할부 조건 : 50,000원 이상</p>
							<p class="date">2022.01.01 - 2022.01.31</p>
						</div>	
					</a>
					<input type="hidden" name="urlInfo" value>	
				</li>
				<li>
					<a class="detail-link" href="" style="cursor:text">
						<div class="cont_img size_75per">
							<img src="https://fyawsbucket.s3.ap-northeast-2.amazonaws.com/LGC_logo.jpg">
						</div>
						<div class="cont_txt">
							<span class="flag on">온라인몰 단독</span>
							<p class="desc">할부 개월 : 2, 3, 4, 5, 6, 7개월 무이자 할부</p>
							<p class="desc">할부 조건 : 50,000원 이상</p>
							<p class="date">2022.01.01 - 2022.01.31</p>
						</div>	
					</a>
					<input type="hidden" name="urlInfo" value>	
				</li>
				<li>
					<a class="detail-link" href="" style="cursor:text">
						<div class="cont_img size_75per">
							<img src="https://fyawsbucket.s3.ap-northeast-2.amazonaws.com/HNB_logo.jpg">
						</div>
						<div class="cont_txt">
							<span class="flag on">온라인몰 단독</span>
							<p class="desc">할부 개월 : 2, 3, 4, 5, 6, 7, 8개월 무이자 할부</p>
							<p class="desc">할부 조건 : 50,000원 이상</p>
							<p class="date">2022.01.01 - 2022.01.31</p>
						</div>	
					</a>
					<input type="hidden" name="urlInfo" value>	
				</li>
				<li>
					<a class="detail-link" href="" style="cursor:text">
						<div class="cont_img size_75per">
							<img src="https://fyawsbucket.s3.ap-northeast-2.amazonaws.com/DIN_logo.jpg">
						</div>
						<div class="cont_txt">
							<span class="flag on">온라인몰 단독</span>
							<p class="desc">할부 개월 : 2, 3, 4, 5, 6, 7개월 무이자 할부</p>
							<p class="desc">할부 조건 : 50,000원 이상</p>
							<p class="date">2022.01.01 - 2022.01.31</p>
						</div>	
					</a>
					<input type="hidden" name="urlInfo" value>	
				</li>
				
			</ul>	
		</div>
	</div>
	<!-- 어플 문자 보내기 기능 / 큐알 -->
	<div class="couponArea-area">
		<div class="image">
			<img src="https://fyawsbucket.s3.ap-northeast-2.amazonaws.com/images/bg_coupon.png">
			
		</div>
		<p>더욱 새로워진 포에버영 앱 설치 하세요</p>
		<p>포에버영 앱 알림 수신동의하고 쿠폰을 받으세요</p>
		<p>알림 수신동의 쿠폰</p>
		<p>20%</p>
		<p>1만원 이상 적용가능 (최대 2만원)</p>
	</div>
	<div class="couponApp-list">
		<h3>포에버영 앱을 받는 3가지 방법</h3>
		<ul>
			<li>
				<strong class="num">1</strong>
				<p class="tit">앱스토어 / 플레이 스토어 검색하기</p>
				<p class="txt">
					애플 앱스토어 혹은 구글 플레이 스토어에서
					<br>
					[포에버영]을 검색해보세요
				</p>
				<div class="link">
					<a href="http://itunes.apple.com/kr/app/ollibeuyeong/id873779010?1=kr&mt=8">
						<img src="https://fyawsbucket.s3.ap-northeast-2.amazonaws.com/%40app_store.gif">
					</a>
					<a href="https://play.google.com/store/apps/details?id=com.oliveyoung&h1=ko">
						<img src="https://fyawsbucket.s3.ap-northeast-2.amazonaws.com/%40google_play.gif">
					</a>
				</div>
				</li>
				<li>
					<strong class="num">2</strong>
					<p class="tit">QR코드 스캔하기</p>
					<p class="txt">
					QR스캔 앱으로 하단의 이미지를 찍어주세요<br>
					바로 다운로드 페이지로 이동합니다
					</p>
					<span class="qr-code">
						<img src="https://fyawsbucket.s3.ap-northeast-2.amazonaws.com/%40qr_code.gif">
					</span>
				</li>
				<li>
					<strong class="num">3</strong>
					<p class="tit">앱 설치 주소 문자로 받기</p>
					<p class="txt">
						휴대폰 번호를 입력하고 보내기 버튼을<br>
						클릭해 주세요
					</p>
					<div class="input">
						<input type="tel" name="phoneNum" title="휴대폰 번호를 입력해 주세요" maxlength="11" placeholder>
						<button type="button" id="sendSMS">보내기</button>	
					</div>
					<p class="free">입력하신 번호는 저장되지 않습니다 (이용료 무료)</p>	
				</li>		
			</ul>
	</div>
</div>
</div>
<jsp:include page="../default/footer.jsp"></jsp:include>
</body>
</html>