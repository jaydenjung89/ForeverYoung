<%@ page language="java" contentType="text/html; charset=utf-8"
	pageEncoding="utf-8"%>
<%@ taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core" %>
<c:set var="path" value="${pageContext.request.contextPath}"/>
<!DOCTYPE html>
<html>
<head>
<meta charset="utf-8">
<title>MyPageMain</title>
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
		<div id = "Container">
			<div id = "Contents">
				<div class = "mypage-head rate_04">
					<h1 class = "tit">
						<!-- 마이페이지 메인페이지로 이동 -->
						<a href = "#">마이페이지</a>
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
								<strong class = "name">${user.user_name} 고객</strong>
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
										${userPoint}
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
					
					<div class = "mypage-conts">
						<!-- 마이페이지 컨텐츠 -->
						<div class = "title-area2">
							<h2 class = "tit">
								주문/배송 조회
								<em>(최근 1개월)</em>
							</h2>
							<!-- 마이쇼핑 - 주문/배송 조회 페이지로 이동 -->
							<a class = "btnMore" id = "orderListMore" onclick="location.href='ShoppingBasket.jsp'" style = "cursor:pointer;" data-attr = "마이페이지^주문배송조회^더보기^더보기">더보기</a>
						</div>
						<div class = "layer_pop_wrap" id = "service_survey" style></div>
						
						<!-- 마이쇼핑 - 주문/배송 조회 페이지로 이동 -->
						<a href = "#" onclick="location.href='ShoppingBasket.jsp'" style = "cursor:pointer;" class = "order_view" data-attr = "마이페이지^주문배송조회^요약건수">
							<ul class = "mypage-step">
								<li>
									<em>N</em>
									<span>주문접수</span>
								</li>
								<li>
									<em>N</em>
									<span>결제완료</span>
								</li>
								<li>
									<em>N</em>
									<span>상품준비중</span>
								</li>
								<li>
									<em>N</em>
									<span>배송중</span>
								</li>
								<li>
									<em>N</em>
									<span>배송완료</span>
								</li>
							</ul>
						</a>
						<div class = "title-area mgT15">
							<h2 class = "tit">좋아요</h2>
							<!-- 마이쇼핑 - 좋아요 페이지로 이동 -->
							<a class = "btnMore" id = "wishListMore" href = "#">더보기</a>
						</div>
						<!-- 좋아요 상품 목록 -->
						<div class = "list-four">
							<!-- 상품 3개 list-three, 상품 4개 list-four -->
							<ul class = "cate_prd_list">
								<li class = "nodata">좋아요 상품이 없습니다.</li>
							</ul>
						</div>
						<div class = "area-over" id = "cousel">
							<div class = "left">
								<div class = "title-area">
									<h2 class = "tit">1:1문의내역</h2>
									<a class = "btnMore" id = "qnaListMore" href = "oneqmain.do">더보기</a>
								</div>
								<div class = "list-customer">
									<ul>
										<li class = "nodata">최근 1개월간 문의하신 내용이 없습니다.</li>
									</ul>
								</div>
							</div>
							<div class = "right" id = "goodsQna">
								<div class = "title-area">
									<h2 class = "tit">상품Q&A내역</h2>
									<!-- 마이활동 - 상품Q&A내역 -->
									<a class = "btnMore" id = "goodsQnsListMore" href = "goodsQnaPage.do">더보기</a>
								</div>
								<div class = "list-customer">
									<ul>
										<li class = "nodata">최근 1개월간 문의하신 내용이 없습니다.</li>
									</ul>
								</div>
							</div>
						</div>
					</div>
				</div>
			</div>
			<div class = "laytoast" id = "brandOff" style = "display:none;">
				<div class = "inner">
					<p class = "txt_recom txt_01">
						브랜드
						<br>
						<em>좋아요</em>
					</p>
				</div>
			</div>
			<div class = "laytoast on" id = "brandOn" style = "display:none;">
				<div class = "inner">
					<p class = "txt_recom txt_01">
						브랜드
						<br>
						<em>좋아요</em>
					</p>
				</div>
			</div>
			
			<!-- 브랜드 찜 확인 레이어 -->
			<div class="layerAlim brand zzimOn" style="display:none;"><!-- zzimOn / zzimOff -->
		 		<span class="icon"></span>
		 		<p>브랜드<strong>좋아요</strong></p>
			</div>
	
			<div class="layerAlim brand zzimOff" style="display:none;"><!-- zzimOn / zzimOff -->
		 		<span class="icon"></span>
		 		<p>브랜드<strong>좋아요</strong></p>
			</div>
			<!--// 브랜드 찜 확인 레이어 -->
		
			<!-- 찜 확인 레이어 -->
			<div class="layerAlim zzimOn wishPrd" style="display:none;">
				<span class="icon"></span>
				<p class="one">
					<strong>좋아요</strong>
				</p>
			</div>
			<!--// 찜 확인 레이어 -->
		
			<!-- 찜 취소 레이어 -->
			<div class="layerAlim zzimOff wishPrd" style="display:none;">
				<span class="icon"></span>
				<p class="one">
					<strong>좋아요</strong>
				</p>
			</div>
			<!--// 찜 취소 레이어 -->
	
			<!-- TOP 바로가기 버튼 추가 -->
			<div id="directTop">
				<button>
				<span></span>TOP</button>
			</div>
			<!--// TOP 바로가기 버튼 추가 -->
        </div>
        <jsp:include page="../default/footer.jsp"></jsp:include>
        
	</body>
</html>