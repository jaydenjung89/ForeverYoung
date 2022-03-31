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
		</div>
		
		<div class="mypage-ix">
			<!-- 마이페이지 sub 메뉴 -->
			<jsp:include page="../default/myPage_Sub_Menu.jsp"></jsp:include>
			<!-- 마이페이지 sub 메뉴 End-->
			
			<div class="mypage-conts">
				<div class="title-area2">
					<h2 class="tit">주문/배송 조회</h2>
				</div>
				<div class="layer_pop_wrap"></div>
				<ul class="mypage-step">
					<li>
						<em>0</em>
						<span>주문접수</span>
					</li>
					<li>
						<em>0</em>
						<span>결제완료</span>
					</li>
					<li>
						<em>0</em>
						<span>상품준비중</span>
					</li>
					<li>
						<em>0</em>
						<span>배송중</span>
					</li>
					
					<li class="on">
					
						<em>${fn:length(order)}</em>
						<span>배송완료</span>
					</li>
					
				</ul>
				<p class="board-guide-text">
					<span class="txt">
					2017년 4월 1일 이후 내역만 조회가 가능하며, 이전의 주문내역은 ForeverYoungMall주문내역에서 확인하실 수 있습니다.
					</span>
					<span class="txt">
					매장구매는 CJ ONE 포인트 적립을 한 경우, 최근 1년 내역만 조회가 가능합니다.(2019년 9월 27일 이후 내역만 조회 가능)
					</span>
				</p>
				<c:forEach var="order" items="${order }">
				<table class="board-list-2s mgT20">
					<caption>주문일자, 상품 수량, 주문금액, 상태로 이루어진 주문/배송/내역 목록 표</caption>
					<colgroup>
						<col style="width:17%;">
						<col style="width:%;">
						<col style="width:8%;">
						<col style="width:130px;">
						<col style="width:110px;">
					</colgroup>
					<thead>
						<tr>
							<th scope="col">주문일자</th>
							<th scope="col">상품</th>
							<th scope="col">수량</th>
							<th scope="col">주문금액</th>
							<th scope="col">상태</th>
						</tr>
					</thead>
					<tbody class="history">
						<tr>
							<td rowspan="1">
                     
                        <span style="display:inline-block;font-weight:bold;"><fmt:formatDate value="${order.order_date }" pattern="yyyy.MM.dd"/></span>
                        <br>
                        <span class="color1s">
                        ${order.order_merchant_serial}
                        </span>
                     <c:if test="${order.order_delivery_status == '결제완료' }">
                        <a href="order_detail.do?order_merchant_serial=${order.order_merchant_serial }" class="btnDetail" data-oper-dt="2022.03.19" data-origin-bizpl-cd data-pos-no data-receipt-no data-deal-sp data-frst-receipt-no onclick="">
                        상세보기
                        </a>
                     </c:if>
                     <c:if test="${order.order_delivery_status == '결제취소' }">
                        <a href="order_cancel.do?order_merchant_serial=${order.order_merchant_serial }" class="btnDetail" data-oper-dt="2022.03.19" data-origin-bizpl-cd data-pos-no data-receipt-no data-deal-sp data-frst-receipt-no onclick="">
                        상세보기
                        </a>
                     </c:if>
                        <br>
                     </td>
							<td class="subject ">
								<div class="area">
									<a class="thum" href="">
										<img src="${order.category_goods_thum_img }"  onerror="";>
									</a>
									<div class="textus">
										<a class href="">
											<span class="tit">${order.category_goods_brand}</span>
											<span class="txt">${order.category_goods_name }</span>
										</a>
										<button type="button" class="btn_bag mgT10" name="Order" onclick="common.gf_regCart(this); return false;" >
											<span>장바구니 담기</span>
										</button>
									</div>
								</div>
							</td>
							<td class>${order.order_goods_count }</td>
							<td class="colorOrange">
								<strong><fmt:formatNumber value="${order.order_goods_price }" pattern="#,###"/></strong>
								원
							</td>
							<td>
                        <c:if test="${order.order_delivery_status=='결제완료' }">
                           <strong>결제완료</strong>
                              <span class="color1sSize">
                           배송예정일
                           <br>
                           2022.03.30
                           </span>
                           <button type="button" class="BtnDelete mgT5" id="btnDelete" onclick="location.href='order_cancel.do?order_merchant_serial=${order.order_merchant_serial}'">주문취소</button>
                        </c:if>
                        <c:if test="${order.order_delivery_status == '배송완료' }">
                           <button type="button" class="BtnDelete mgT5" data-ord-no="" onclick="mypage.common.searchTrackingPop(this); return false;">배송조회</button>
                           <button type="button" class="BtnDelete mgT5" data-ord-no="" onclick="location.href='reviewWrite.do?order_details_serial=${orderDetail.order_details_serial}&category_goods_serial=${orderDetail.category_goods_serial}'">리뷰작성</button>
                        </c:if>
                        <c:if test="${order.order_delivery_status == '결제취소' }">
                           <strong>취소완료</strong>
                           <span class="color1sSize">
                              처리일시
                              <br>
                              2022.03.26
                           </span>
                           <button type="button" class="BtnDelete" data-ord-no="${order.order_merchant_serial }" data-ord-goods-seq="1" data-cnsl-ord-proc-seq="0" 
                              data-ord-dtl-sct-cd="20" data-chg-accp-sct-cd="" data-rtn-proc-sct-cd="" onclick="pop_show()">자세히 보기</button>
                        </c:if>                     
                     </td>
                     
							
						</tr>
					</tbody>
					
						
							
					
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
	<!-- //Contents -->
</div>
<!-- //Container -->
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