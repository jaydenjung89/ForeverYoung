<%@ page language="java" contentType="text/html; charset=utf-8"
	pageEncoding="utf-8"%>
<%@ taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core" %>
<c:set var="path" value="${pageContext.request.contextPath}"/>
<!DOCTYPE html>
<html>
<head>
<meta charset="utf-8">
<title>배송지/환불계좌</title>
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
				<form id="frm">
				<div class = "mypage-ix">
					<!-- 마이페이지 sub 메뉴 -->
					<jsp:include page="../default/myPage_Sub_Menu.jsp"></jsp:include>
					<!-- 마이페이지 sub 메뉴 End-->
					<div class="mypage-conts">
						<input type="hidden" id="user_id" value="${userId}">
						
						<div class="title-area linezero">
							<h2 class="tit">배송지/환불계좌</h2>
						</div>
						<ul class="comm1sTabs mgzero">
							<li class="on">
								<a href="">배송지</a>
							</li>
							<li>
								<a href="">환불계좌</a>
							</li>
						</ul>
						<p class="notice-text">
							배송지는 최대 <strong class="colorGreen">20개</strong>
							까지 등록 가능합니다.
						</p>
						<table class="board-list-2s mgT10">
							<caption>배송지/환불계좌 목록</caption>
							<colgroup>
								<col style="width:10%;">
								<col style="width:10%;">
								<col style="width:40%;">
								<col style="width:20%;">
								<col style="width:20%;">
							</colgroup>
							<thead>
								<tr>
									<th scope="col">배송지명</th>
									<th scope="col">받는사람</th>
									<th scope="col">주소</th>
									<th scope="col">연락처</th>
									<th scope="col">관리</th>
								</tr>
							</thead>
							<!-- 배송지 입력 했을 때 생성 부분 -->
							
							
							<c:forEach var="list" items="${list}" varStatus="index">
							
							<tbody>
								<tr>
									<td>${list.user_shipping_place_name}</td>
									<td>${list.user_shipping_name}</td>
									<td class="subject">
										<c:if test="${list.address_default eq true }">
										<div class="flagWrap">
											<strong class="FGBasic">기본 배송지</strong>
										</div>
										</c:if>
										${list.user_shipping_zipcode}
										<br>
										도로명 :${list.user_shipping_address1}&nbsp;${list.user_shipping_detail_address} 
										 
										
										
									</td>
									<td>${list.user_shipping_phone}</td>
									<td>
										<c:if test="${list.address_default eq false }">
										<button type="button" class="ButtonBasic w106" onclick="">기본 배송지 설정</button>
										<button type="button" class="ButtonBasic" onclick="location.href='destination_update.do?user_shipping_serial=${list.user_shipping_serial}';">수정</button>
										<button type="button" class="ButtonBasic" id="deleteBt" onclick="location.href='deleteAddress.do?user_shipping_serial=${list.user_shipping_serial}'">삭제</button>
										</c:if>
										<c:if test="${list.address_default eq true }">
										<button type="button" class="ButtonBasic" onclick="location.href='destination_update.do?user_shipping_serial=${list.user_shipping_serial}';">수정</button>
										</c:if>
									</td>
									
								</tr>		 	
							</tbody>
							
							</c:forEach>
							
						 	
							<c:if test="${empty list}">
							<tbody>
								<td class="nodata" colspan="5">등록된 배송지가 없습니다.</td>
							</tbody>
							</c:if>
						</table>
						<div class="area1sButton mgT20">
							<a href="destination_new.do" class="btnGreen" onclick="">배송지 등록</a>
						</div>
					</div>
				</div>
				</form>
			</div>
		</div>
					

     <jsp:include page="../default/footer.jsp"></jsp:include>

</body>
</html>