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
				<div class="mypage-ix">
					<!-- 마이페이지 sub 메뉴 -->
					<jsp:include page="../default/myPage_Sub_Menu.jsp"></jsp:include>
					<!-- 마이페이지 sub 메뉴 End-->
					<div class="mypage-conts">
						<div class="title-area">
							<h2 class="tit">취소/반품/교환 내역</h2>
						</div>
						
						<p class="board-guide-text">
							<span class="txt">
								2017년&nbsp;4월&nbsp;1일 이전의 취소/반품/교환내역은&nbsp;CJmall&nbsp;에서 확인하실 수 있습니다.
							</span>
							<span class="txt">
								매장 구매는 FY ONE 포인트 적립을 한 경우, 최근 1년 내역만 조회가 가능합니다. (2019년 9월 27일 이후 내역만 조회 가능)
							</span>
						</p>
					<c:forEach var="order" items="${order }">
						<table class="board-list-2s mgT20">
							<caption>취소&amp;반품&amp;교환 내역 목록</caption>
							<colgroup>
								<col style="width:17%;">
								<col style="width:%;">
								<col style="width:130px;">
								<col style="width:8%;">
								<col style="width:110px;">
							</colgroup>
							<thead>
								<tr>
									<th scope="col">주문번호</th>
									<th scope="col">상품</th>
									<th scope="col">구매가</th>
									<th scope="col">수량</th>
									<th scope="col">상태</th>
								</tr>
							</thead>
							<tbody class="history">
								<tr>
									<td rowspan="1">
										<ul class="mypage-flag-apply">
											<li> </li>
											<li class="order-date">2022.03.26</li>
											<li class="color1s">${order.order_merchant_serial}</li>
											<li>
												 <c:if test="${order.order_delivery_status == '결제취소' }">
                        							<a href="order_cancelDetail.do?order_merchant_serial=${order.order_merchant_serial }" class="btnDetail" data-oper-dt="2022.03.19" data-origin-bizpl-cd data-pos-no data-receipt-no data-deal-sp data-frst-receipt-no onclick="">
                        								상세보기
                       							 	</a>
                     							</c:if>
											</li>
										</ul>
									</td>
									<td class="subject">
										<div class="area">
											<a class="thum" href="">
												<img src="${order.category_goods_thum_img }">
											</a>
											<div class="textus">
												<a class href="">
													<span class="tit">${order.category_goods_brand}</span>
													<span class="txt">${order.category_goods_name }</span>
												</a>
											</div>
										</div>
									</td>
									<td class="colorOrange">
										<strong><fmt:formatNumber value="${order.order_goods_price }" pattern="#,###"/></strong>
										원
									</td>
									<td class>${order.order_goods_count }</td>
									<td>
										<strong>취소완료</strong>
										<span class="color1sSize">
											처리일시
											<br>
											2022.03.26
										</span>
										<button type="button" class="BtnDelete" data-ord-no="${order.order_merchant_serial }" data-ord-goods-seq="" data-cnsl-ord-proc-seq="0" 
											data-ord-dtl-sct-cd="20" data-chg-accp-sct-cd data-rtn-proc-sct-cd- onclick="#">
										자세히보기
										</button>
									</td>
								</tr>
							</tbody>
							<tbody></tbody>
						</table>
						</c:forEach>
							<div class="pageing">
							<c:if test="${pagination.prev}">
								<a class="" href="#" onclick="fn_prev('${pagination.page}', '${pagination.range}', '${pagination.rangeSize}')">이전</a>
							</c:if>
							<c:forEach begin="${pagination.startPage}" end="${pagination.endPage}" var="idx">
								<c:out value="${pagination.page==idx ? 'active' : '' }"/>
									<a class="" href="#" onclick="fn_pagination('${idx}', '${pagination.range}', '${pagination.rangeSize}')">${idx}</a>
								
							</c:forEach>
							<c:if test="${pagination.next}">
								
									<a class="" href="#" onclick="fn_next('${pagination.range}', '${pagination.range}', '${pagination.rangeSize}')">다음</a>
								
							</c:if>	
							                  
			                  <input type="hidden" name="pageNum" value="${pagination.page}">
			                  <input type="hidden" name="amount" value="${pagination.range}">
			                  
						</div>
					</div>
				</div>
		</div>
	</div>
<!-- 닫기하면 -->
<!-- <div class="layer_pop_wrap hide" id="layer_pop_wrap" style="z-index: 999; display: none; left: 50%;"-->	
<%--<div class="layer_pop_wrap" id="layer_pop_wrap" style="z-index: 999; display: block; left: 50%; margin-left: -249.5px; top: 532px;">
	<div class="popup-contents2 W500">
		<div class="pop-conts">
			<h1 class="ptit">취소 상세정보</h1>
			<div class="scroll-area" style="max-height:490px;">
				<div class="address-data">
					<div class="date_area">
						<p>
							처리일시
							<em>:</em>
							<span>2022년 03월26일 21시 11분 31초</span>
					</div>
					<div class="area">
						<table class="boardPopup">
							<caption></caption>
							<colgroup>
								<col style="width:60px;">
								<col style="width:*;">
							</colgroup>
							<tbody>
								<tr>
									<th scope="row">사유</th>
									<td>주문오류</td>
								</tr>
							</tbody>
						</table>
					</div>
				</div>
				<div class="area1sButton">
					<a href="#" class="btnGreen">확인</a>
				</div>
				<button type="button" class="ButtonClose" onclick="">팝업창 닫기</button>
			</div>
		</div>
	</div>
</div>
 --%>
<jsp:include page="../default/footer.jsp"></jsp:include>
<script>
						function fn_prev(page, range, rangeSize) {
							var page = ((range - 2) * rangeSize) + 1;
							var range = range - 1;
							var url = "${pageContext.request.contextPath}/order.do";
							url = url + "?page=" + page;
							url = url + "&range=" + range;
							location.href = url;
						}
						//페이지 번호 클릭
						function fn_pagination(page, range, rangeSize,searchType, keyword) {
							var url = "${pageContext.request.contextPath}/order.do";
							url = url + "?page=" + page;
							url = url + "&range=" + range;
							location.href = url;
						}
						//다음 버튼 이벤트
						function fn_next(page, range, rangeSize) {
							var page = parseInt((range * rangeSize)) + 1;
							var range = parseInt(range) + 1;
							var url = "${pageContext.request.contextPath}/order.do";
							url = url + "?page=" + page;
							url = url + "&range=" + range;
							location.href = url;
						}
</script>
</body>
</html>