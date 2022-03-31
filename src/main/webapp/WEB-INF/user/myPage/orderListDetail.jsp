<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
<%@ taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core" %>
<%@ taglib prefix="fmt" uri="http://java.sun.com/jsp/jstl/fmt" %>
<%@ taglib uri = "http://java.sun.com/jsp/jstl/functions" prefix = "fn" %>
<c:set var="path" value="${pageContext.request.contextPath}"/>
<!DOCTYPE html>
<html>
<head>
<meta charset="UTF-8">
<title>ForeverYoung</title>
<link rel="stylesheet" type="text/css" href="${path }/css/board.css" />
<link rel="stylesheet" type="text/css" href="${path }/css/common.css" />
<link rel="stylesheet" type="text/css" href="${path }/css/contents.css" />
<link rel="stylesheet" type="text/css" href="${path }/css/curation.css" />
<link rel="stylesheet" type="text/css" href="${path }/css/global.css" />
<link rel="stylesheet" type="text/css" href="${path }/css/jquery.mCustomScrollbar.css" />
<link rel="stylesheet" type="text/css" href="${path }/css/pickup.css" />
<link rel="shortcut icon" href="https://fyawsbucket.s3.ap-northeast-2.amazonaws.com/favicon_logo.ico" type="image/x-icon" />
</head>
<body>
<jsp:include page="../default/header.jsp"></jsp:include>
<div id="Container">
	<div id="Contents">
		<div class="mypage-head rate_04">
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
						<strong class = "name">${user.user_name }</strong>
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
				<div class="point-box">
					<ul class="infor clrfix" id="pointInfo">
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
				<!-- //point box -->
			</div>
			
			<div class="mypage-ix">
				<!-- 마이페이지 sub 메뉴 -->
				<jsp:include page="../default/myPage_Sub_Menu.jsp"></jsp:include>
				<!-- 마이페이지 sub 메뉴 End-->
				<div class="mypage-conts">
				
					<form id="detail-form" name="detailForm">
						<input type="hidden" id="ord-no" name="ordNo" value="${detail[0].order_merchant_serial }">
						<input type="hidden" id="dlvp-seq" name="dlvpSeq" value="38011276">
						<input type="hidden" id="rmit-post-no" name="rmitPostNo" value="${detail[0].user_zipcode }">
						<input type="hidden" id="rmit-post-addr" name="rmitPostAddr" value="">
						<input type="hidden" id="stnm-rmit-post-addr" name="stnmRmitPostAddr" value="${detail[0].user_address1 } ${detail[0].user_address2 } ">
						<input type="hidden" id="mbr-memo-cont-text" name="mbrMemoContText" value="">
						<input type="hidden" id="user_id" name="user_id" value="${user_id }">
						<div class="title-area linezero">
							<h2 class="tit">상세정보</h2>
						</div>
						<ul class="infor-data">
							<li>
								<span>주문일자&nbsp;&nbsp;:</span>
								<strong>
								<fmt:formatDate value="${detail[0].order_date}" pattern="yy-MM-dd" />
								</strong>
							</li>
							<li>
								<span>주문번호&nbsp;&nbsp;:</span>
								<strong>${detail[0].order_merchant_serial}</strong>  
							</li>
							<%--<li>
								<span>오늘드림&nbsp;&nbsp;:</span>
								<strong style="border-bottom: 0; color: #222;">
								미드나잇 배송
								</strong>
							</li>
							 --%>
						</ul>
						<h3 class="sub-title3">배송상품</h3>
						<table class="board-list-2s">
							<caption>올리브영 배송상품</caption>
							<colgroup>
								<col style="width:%;">
								<col style="width:130px;">
								<col style="width:8%;">
								<col style="width:130px;">
								<col style="width:110px;">
							</colgroup>
							<thead>
								<tr>
									<th scope="col">상품명</th>
									<th scope="col">판매가</th>
									<th scope="col">수량</th>
									<th scope="col">구매가</th>
									<th scope="col">진행현황</th>
								</tr>
							</thead>
							<tbody class="history3">
						<c:forEach var="orderDetail" items="${detail }" >
								<tr>
									<td class="subject">
										<div class="area">
											<a class="thum" href="">
												<img src="${orderDetail.category_goods_thum_img }" alt="${orderDetail.category_goods_name }">
											</a>
											<div class="textus" style="width:68%;">
												<a class href="">
													<span class="tit">${orderDetail.category_goods_brand }</span>
													<span class="txt">${orderDetail.category_goods_name }</span>
												</a>
												<span class="color1sSize"></span> 
											</div>
										</div>
									</td>
									<td class="colorBlack">
										<strong><fmt:formatNumber value="${orderDetail.order_goods_old_price }" pattern="#,### " /></strong>
										원
									</td>
									<td>${orderDetail.order_goods_count }</td>
									<td class="colorOrange">
										<strong><fmt:formatNumber value="${orderDetail.order_goods_count *  (orderDetail.goods_detail_price * (1-(orderDetail.goods_detail_discountrate * 0.01)) )}" pattern="#,### " /></strong>
										 
										원
									</td>
									<td class="bgnone">
										<strong>${orderDetail.order_delivery_status }</strong>
										<button type="button" class="BtnDelete" data-ord-no="${detail[0].order_merchant_serial}" data-trade-shp-cd="1" data-inv-no="2203051744228627" data-hdc-cd="00" data-ord-dtl-sct-cd="10" data-ord-goods-seq="${orderDetail.order_goods_price }" onclick="#">배송조회</button>
										<button type="button" class="BtnDelete" data-pur-mbr-yn="Y" data-gdas-sct-cd="10" data-ord-no="${detail[0].order_merchant_serial}" data-goods-no="${orderDetail.category_first_serial }${orderDetail.category_second_serial }${orderDetail.category_third_serial }" data-item-no="${orderDetail.category_goods_serial }" data-ord-goods-seq="1" data-ord-con-yn="N" onclick="location.href='reviewWrite.do?order_details_serial=${orderDetail.order_details_serial}&category_goods_serial=${orderDetail.category_goods_serial}'">리뷰작성</button>
									</td>
								</tr>
						</c:forEach>
							</tbody>
						</table>
						<div class="area-over mgT20">
							<h3 class="sub-title3">배송지 정보</h3>
						</div>
						<table class="board-write-2s view">
							<caption>배송지 정보 보기</caption>
							<colgroup>
								<col style="width:20%;">
								<col style="width:30%;">
								<col style="width:20%;">
								<col style="width:30%;">
							</colgroup>
							<tbody>
								<%--<tr>
									<th scope="row">배송구분</th>
									<td colspan="3"></td>
								</tr>
								<tr>
									<th scope="row">배송예정일</th>
									<td colspan="3"></td>
								</tr>
								 --%>
								<tr>
									<th scope="row">받는분</th>
									<td colspan="3">${detail[0].user_name }</td>
								</tr>
								<tr>
									<th scope="row">연락처</th>
									<td colspan="3">${detail[0].user_phone }</td>
								</tr>
								<tr class="addr">
									<th scope="row">주소</th>
									<td colspan="3">
									${detail[0].user_zipcode }
									<br>
									도로명: ${detail[0].user_address1 } ${detail[0].user_address2 }
									</td>
								</tr>
							</tbody>
						</table>
						<div class="area-over mgT20">
							<h3 class="sub-title3">배송 요청사항</h3>
						</div>
						<%--<table class="board-write-2s view">
							<caption>배송지 정보 보기</caption>
							<colgroup>
								<col style="width:20%;">
								<col style="width:30%;">
								<col style="width:20%;">
								<col style="width:30%;">
							</colgroup>
							<tbody>
								<tr>
									<th scope="row">배송구분</th>
									<td colspan="3">미드나잇 배송 (PM10~12)</td>
								</tr>
								<tr>
									<th scope="row">배송예정일</th>
									<td colspan="3">2022 .03. 05  &nbsp; PM10 ~ 12시</td>
								</tr>
								<tr>
									<th scope="row">공동현관 출입방법</th>
									<td colspan="3">
										<input type="radio" disabled="disabled">비밀번호&nbsp; &nbsp;
										<input type="radio" disabled="disabled">경비실 호출&nbsp; &nbsp;
										<input type="radio" checked="" disabled="disabled">자유출입가능&nbsp; &nbsp;
										<input type="radio" disabled="disabled">기타사항&nbsp; &nbsp;
									</td>
								</tr>
								<tr>
									<th scope="row">배송완료 메시지 전송시점</th>
									<td colspan="3">
										<input type="radio" checked="" disabled="disabled">배송직후&nbsp; &nbsp;
										<input type="radio" disabled="disabled">없음 
									</td>
								</tr>
							</tbody>
						</table>
						 --%>
						<h3 class="sub-title3">결제 정보</h3>
						<div class="price-conts">
							<ul class="list ">
								<li>
									<dl>
										<dt>주문금액</dt>
										<dd><fmt:formatNumber value="${detail[0].order_goods_price }" pattern="#,### " /><em>원</em></dd>
									</dl>
									<ul>
										<li>
											<span class="txt">총 상품금액</span>
												<c:set var="total" value="0" />
													<c:forEach var="result" items="${detail}" varStatus="status">
														<c:set var="total" value="${total + (result.order_goods_count * result.goods_detail_price * (1-(result.goods_detail_discountrate * 0.01))  ) }"	/>									
												</c:forEach>
											</span>
											<c:out value="${total}" />
											
											
											
											<c:if test="${ detail[0].order_goods_price < 20000}">
											<span class="won"><fmt:formatNumber value="${detail[0].order_goods_price  - 2500}" pattern="#,### " /><em>원</em></span>
											</c:if>
											<c:if test="${detail[0].order_goods_price  >= 20000}">
											<span class="won"><fmt:formatNumber value="${detail[0].order_goods_price }" pattern="#,### " /><em>원</em></span>
											</c:if>
										</li>
										<li>
											<span class="txt">총 배송비</span>
											<c:if test="${detail[0].order_goods_price >= 20000 }">
											<span class="won">0<em>원</em></span>
											</c:if>
											<c:if test="${  detail[0].order_goods_price < 20000 }">
											<span class="won">2500<em>원</em></span>
											</c:if>
										</li>
										 <!-- 선물하기 PRJ CBLIM 20200618 -->
										<li>
											<span class="txt">총 선물 포장비</span>
											<span class="won">0<em>원</em></span>
										</li>
									</ul>
								</li>
								<li>
									<dl>
										<dt>쿠폰할인금액</dt>
										<dd>0<em>원</em></dd>
									</dl>
									<ul> </ul>				
								</li>
								<li>
									<dl>
										<dt>포인트 및 기타결제</dt>
										<dd>0<em>원</em></dd>
									</dl>
									<ul>
										<li>
											<span class="txt">CJONE포인트</span>
											<span class="won">0<em>원</em></span>
										</li>
									</ul>
								</li>
							</ul>
							<div class="price-sum">
								<strong>총 결제금액</strong>
								<span><fmt:formatNumber value="${detail[0].order_goods_price }" pattern="#,### " />
									<em>원</em>
								</span>
								<span class="txt">KAKAOPAY</span>
							</div>
							<p class="point-earn">
								CJ ONE 포인트 예상 적립 : 
								<em></em>
							</p>
						</div>
						<div class="area1sButton mgT40">
							<a href="order.do" class="btnGray">목록</a>
						</div>
					</form>
				</div> 
			</div>
		</div>
	</div>
</div>
<jsp:include page="../default/footer.jsp"></jsp:include>
</body>
</html>