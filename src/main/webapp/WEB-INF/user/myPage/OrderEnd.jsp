<%@ page language="java" contentType="text/html; charset=UTF-8"
	pageEncoding="UTF-8"%>
<%@ taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core" %>
<%@ taglib prefix="fmt" uri="http://java.sun.com/jsp/jstl/fmt" %>
<%@ taglib uri = "http://java.sun.com/jsp/jstl/functions" prefix = "fn" %>
<c:set var="path" value="${pageContext.request.contextPath}" />
<!DOCTYPE html>
<html>
<head>
<meta charset="UTF-8">
<title>주문완료 | 올리브영</title>
<link rel="stylesheet" type="text/css" href="${path }/css/join.css" />
<link rel="stylesheet" type="text/css" href="${path }/css/join.css" />
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
<input type="hidden" id="user_id" name="user_id" value="${user_id }" />
<input type="hidden" id="order_merchant_serial" name="order_merchant_serial" value="${order_merchant_serial}" />


<div id="Container">
	<div id="Contents">
		<!-- title_box -->
		<div class="title_box">
			<h1>주문완료</h1>
			<ul class="step_list">
				<li>
					<span class="step_num tx_num">
					1
					</span>
					장바구니
				</li>
				<li>
					<span class="step_num tx_num">
					2
					</span>
					주문/결제
				</li>
				<li class="last on">
					<span class="hide">현재단계</span>
					<span class="step_num tx_num">
					3
					</span>
					주문완료
				</li>
			</ul>
		</div>
		<!-- //title_box -->
		<!-- 주문완료 알림 영역 -->
		<div class="order_end_box">
			<div class="order_title">
				<p>
					주문이
					<span>완료</span>
					되었습니다.
				</p>
				<span class="tx_order_info">
					주문번호 : 
					<strong class="tx_num">
					${order_merchant_serial }
					</strong>
				</span>
			</div>
			<!-- 결제 정보 -->
			
			<div class="inner_box">
				<h2 class="sub-title2">결제정보</h2>
				<table class="tbl_data_view">
					<caption>결제정보 안내</caption>
					<colgroup>
						<col style="width:170px">
						<col style="width:*">
					</colgroup>
					<tbody>
						<!-- 총 상품금액(totalPrice) -->
						
						<tr>
							<th scope="row">총상품금액</th>
							<td>
								<span class="tx_num">
									<c:set var="total" value="0" />
									<c:forEach var="result" items="${orderEndList }" varStatus="status">
									
										<c:set var="total" value="${total + result.order_goods_old_price  }"	/>									
									</c:forEach>
								</span>
								<c:out value="${total}" />
								원
							</td>
						</tr>
					

						<!-- //총 상품금액(totalPrice) -->
						<!-- 총 할인 금액(salePrice) -->
						<tr>
							<th scope="row">총할인금액</th>
							<td>
								 <span class="tx_price">
									<span class="tx_num">
									<c:if test="${(orderEndList[0].order_goods_old_price - 2500) >= 20000 }">
										<c:set var="salePr" value="0" />
										<c:forEach var="result1" items="${orderEndList }" varStatus="status">
											<c:set var="salePr"   value="${salePr + (result1.order_goods_old_price * (result1.goods_detail_discountrate * 0.01))  }" >
											<%--<c:set var="total" value="${total + ((result.order_goods_count *result.order_goods_old_price) * ((result.goods_detail_discountrate * 0.01))) }">--%>
										
											</c:set>
											
										</c:forEach>
									</c:if>
									
									<c:if test="${(orderEndList[0].order_goods_old_price-2500) < 20000 }">
										<c:set var="salePr" value="0" />
										<c:forEach var="result1" items="${orderEndList }" varStatus="status">
											<c:set var="salePr"   value="${salePr + (result1.order_goods_old_price * (result1.goods_detail_discountrate * 0.01))  }" >
											<%--<c:set var="total" value="${total + ((result.order_goods_count *result.order_goods_old_price) * ((result.goods_detail_discountrate * 0.01))) }">--%>
											</c:set>
										</c:forEach>
									</c:if>
									</span>
									
									<fmt:formatNumber type="number" maxFractionDigits="3" value="${salePr }" />
									
									
									원
									
								</span>
							</td>
						</tr>
						<!-- //총 할인 금액(salePrice) -->
						<!-- 총 배달비 -->
						<tr>
							<th scope="row">총배송비</th>
							<td>
								<c:if test="${(orderEndList[0].order_goods_price - 2500)  >= 20000}">
								<span class="tx_num">0
								</span>
								원
								</c:if>
								<c:if test="${(orderEndList[0].order_goods_price - 2500)  < 20000 }">
								<span class="tx_num">2500
								</span>
								원
								</c:if>
							</td>
							 
						</tr>
						<!-- 총 배달비 -->
						<!-- 최종 결제 금액(total-salePrice) -->
						<tr class="last_tot_price">
							<th scope="row">최종 결제금액</th>
							<td>
								<span class="tx_price">
									<span class="tx_num"><fmt:formatNumber maxFractionDigits="3" value="${ orderEndList[0].order_goods_price }"/></span>
									원
								</span>
								<p>KAKAOPAY</p>
							</td>
						</tr>
						<!-- //최종 결제 금액(total-salePrice) -->
					</tbody>
				</table>
			</div>
			
			<!-- //결제 정보 -->
		
			<!-- 배송지 정보 -->
			<div class="inner_box">
				<h2 class="sub-title2">배송정보</h2>
				<table class="tbl_data_view type2">
					<caption>배송정보 안내</caption>
					<colgroup>
						<col style="width:170px">
						<col style="width:*">
					</colgroup>
					<tbody>
						<tr>
							<th scope="row">받는분</th>
							<td>${orderEndList[0].user_name}</td>
						</tr>
						<tr>
							<th scope="row">연락처1</th>
							<td>${orderEndList[0].user_phone }</td>
						</tr>
						<tr>
							<th scope="row">주소</th>
							<td>
								<p>도로명 주소 : ${orderEndList[0].user_zipcode} ${orderEndList[0].user_address1 } ${orderEndList[0].user_address2 }</p>
								<%--<p class="colorGrey">지번주소 : 경기 성남시 중원구 금광동 2974 301호</p> --%>
							</td>
						</tr>
					</tbody>
				</table>
			</div>
		
			<!-- //배송지 정보 -->
			<ul class="info_dot_list type2 mgT20 mgL100">
				<li>
				주문취소는 [결제완료] 상태까지 가능합니다. [상품준비중], [배송중]에는 상품 수령 후 반품요청 부탁드립니다.
				</li>
			</ul>
			<!-- 버튼영역 -->
			<div class="order_btn_area">
				<button class="btnGreenW" onclick="location.href='https://www.oliveyoung.co.kr/store/index.do';">쇼핑계속</button>
				<button class="btnGreen" onclick="location.href='order_detail.do?order_merchant_serial=${orderEndList[0].order_merchant_serial}'">주문내역조회</button>
			</div>
			<!-- //버튼영역 -->
			<!-- 이런 상품을 놓지지 않으셨나요  -->
			<div id="curation_wrap_a008" class="cura_pord crtBtm" style>
				<div class="curation_area_a008_lead"></div>
				<div class="loading_box" id="loadingBox_a008" style="display:none;">
					<h4 class="tit_h4">이런 상품을 놓치지 않으셨나요?</h4>
					<span class="icon">
						<img src="https://image.oliveyoung.co.kr/pc-static-root/image/comm/pc_loading.gif" alt="로딩중">
					</span>
					<p class="txt">고객님을 위한 상품추천중이에요</p>
				</div>
				<div id="goods_curation_a008">
					<h4 class="tit_h4"></h4>
					<div class="inner_cont" role= "toolbar">
						<ul class="curation_basket slide_list slick_slider slick-initialized slick-slider slick-dotted" id="curation_ulList_a008">
							<button type="button" data-role="none" class="slick-prev slick-arrow" aria-label="Previous" role="button" style="display: block;">Previous</button>
							<div aria-live="polite" class="slick-list draggable">
								<div class="slick-track" style="opacity: 1; width: 5832px; transform: translate3d(-972px, 0px, 0px);" role="listbox">
									<!-- 상품1 -->
									<li data-wlog_type="a008" class="gtm_sale_lk_list slick-slide slick-current slick-active" data-slick-index="0" aria-hidden="false" style="width:324px;" tabindex="-1" role="option" aria-describedby="slick-slide00">
										<div class="thum" data-ref-goodsno="A000000148344" data-egrank="1" data-attr="세일^주목할만한상품^메디필 레드락토 콜라겐 클리어 올영단독 SET (300ml+딥 해면 증정)^1" data-trk="/Ordercom_Curation" data-impression="A000000148344^세일_주목할만한상품^1" data-ref-dispcatno data-ref-itemno="001" data-impression-visibility="1">
											<span class="thumb_flag best">베스트</span>
											<img src="https://image.oliveyoung.co.kr/uploads/images/goods/400/10/0000/0014/A00000014834414ko.jpg?l=ko" alt="메디필 레드락토 콜라겐 클리어 올영단독 SET (300ml+딥 해면 증정)" onerror="common.errorImg(this);" data-attr="세일^주목할만한상품^메디필 레드락토 콜라겐 클리어 올영단독 SET (300ml+딥 해면 증정)^1" onclick="javascript: gtm.goods.callGoodsGtmInfo("A000000148344", "", "ee-productClick", "세일_주목할만한상품", "1");">
											<div class="my">
												<button type="button" class="myCart cartBtnRecoBell" data-ref-goodsno="A000000148344" name="" data-ref-dispcatno="" data-ref-itemno="001" tabindex="0">
													<span>장바구니</span>
												</button>
												<button type="button" class="mySee btn_zzim" data-ref-goodsno="A000000148344" tabindex="0">
													<span>찜하기전</span>
												</button>
											</div>
										</div>
										<div class="info">
											<a href="https://www.oliveyoung.co.kr/store/goods/getGoodsDetail.do?goodsNo=A000000148344&dispCatNo&trackingCd=Ordercom_Curation&curation=ordercompl_curation_prod&egcode=a008_m002&rccode=pc_cart_order_a&egrankcode=1" class="a_detail" name="Ordercom_Curation" data-ref-goodsno="A000000148344" data-egrank="1" date-egcode="a008_m002" data-attr="세일^주목할만한상품^메디필 레드락토 콜라겐 클리어 올영단독 SET (300ml+딥 해면 증정)^1" data-trk="/Ordercom_Curation" data-ref-dispcatno data-ref-itemno="001" tabindex="0" onclick="javascript:common.wlog("ordercompl_curation_prod");common.wlog("undefined");common.link.moveGoodsDetailCuration("A000000148344", "","ordercompl_curation_prod" , "pc_cart_order_a","a008_m002" ,"1" ,"Ordercom_Curation"); return false;">
												<dl>
													<dt class="tit">메디필 레드락토 콜라겐 클리어 올영단독 SET (300ml+딥 해면 증정)</dt>
													<dd class="price">
														<del>24,000원</del>
														<strong>13,200원</strong>
													</dd>
													<dd class="icon">
														<span class="icon_flag sale">세일</span>
														<span class="icon_flag delivery">세일</span>
													</dd>
												</dl>
											</a> 
										</div>
									</li>
									<!-- //상품1 -->
									<!-- 상품2 -->
									<li data-wlog_type="a008" class="gtm_sale_lk_list slick-slide slick-current slick-active" data-slick-index="1" aria-hidden="false" style="width:324px;" tabindex="-1" role="option" aria-describedby="slick-slide01">
										<div class="thum" data-ref-goodsno="A000000148344" data-egrank="1" data-attr="세일^주목할만한상품^메디필 레드락토 콜라겐 클리어 올영단독 SET (300ml+딥 해면 증정)^1" data-trk="/Ordercom_Curation" data-impression="A000000148344^세일_주목할만한상품^1" data-ref-dispcatno data-ref-itemno="001" data-impression-visibility="1">
											<span class="thumb_flag best">베스트</span>
											<img src="https://image.oliveyoung.co.kr/uploads/images/goods/400/10/0000/0014/A00000014834414ko.jpg?l=ko" alt="메디필 레드락토 콜라겐 클리어 올영단독 SET (300ml+딥 해면 증정)" onerror="common.errorImg(this);" data-attr="세일^주목할만한상품^메디필 레드락토 콜라겐 클리어 올영단독 SET (300ml+딥 해면 증정)^1" onclick="javascript: gtm.goods.callGoodsGtmInfo("A000000148344", "", "ee-productClick", "세일_주목할만한상품", "1");">
											<div class="my">
												<button type="button" class="myCart cartBtnRecoBell" data-ref-goodsno="A000000148344" name="" data-ref-dispcatno="" data-ref-itemno="001" tabindex="0">
													<span>장바구니</span>
												</button>
												<button type="button" class="mySee btn_zzim" data-ref-goodsno="A000000148344" tabindex="0">
													<span>찜하기전</span>
												</button>
											</div>
										</div>
										<div class="info">
											<a href="https://www.oliveyoung.co.kr/store/goods/getGoodsDetail.do?goodsNo=A000000148344&dispCatNo&trackingCd=Ordercom_Curation&curation=ordercompl_curation_prod&egcode=a008_m002&rccode=pc_cart_order_a&egrankcode=1" class="a_detail" name="Ordercom_Curation" data-ref-goodsno="A000000148344" data-egrank="1" date-egcode="a008_m002" data-attr="세일^주목할만한상품^메디필 레드락토 콜라겐 클리어 올영단독 SET (300ml+딥 해면 증정)^1" data-trk="/Ordercom_Curation" data-ref-dispcatno data-ref-itemno="001" tabindex="0" onclick="javascript:common.wlog("ordercompl_curation_prod");common.wlog("undefined");common.link.moveGoodsDetailCuration("A000000148344", "","ordercompl_curation_prod" , "pc_cart_order_a","a008_m002" ,"1" ,"Ordercom_Curation"); return false;">
												<dl>
													<dt class="tit">메디필 레드락토 콜라겐 클리어 올영단독 SET (300ml+딥 해면 증정)</dt>
													<dd class="price">
														<del>24,000원</del>
														<strong>13,200원</strong>
													</dd>
													<dd class="icon">
														<span class="icon_flag sale">세일</span>
														<span class="icon_flag delivery">세일</span>
													</dd>
												</dl>
											</a> 
										</div>
									</li>
									<!-- //상품2 -->
									<!-- 상품3 -->
									<li data-wlog_type="a008" class="gtm_sale_lk_list slick-slide slick-current slick-active" data-slick-index="2" aria-hidden="false" style="width:324px;" tabindex="-1" role="option" aria-describedby="slick-slide02">
										<div class="thum" data-ref-goodsno="A000000148344" data-egrank="1" data-attr="세일^주목할만한상품^메디필 레드락토 콜라겐 클리어 올영단독 SET (300ml+딥 해면 증정)^1" data-trk="/Ordercom_Curation" data-impression="A000000148344^세일_주목할만한상품^1" data-ref-dispcatno data-ref-itemno="001" data-impression-visibility="1">
											<span class="thumb_flag best">베스트</span>
											<img src="https://image.oliveyoung.co.kr/uploads/images/goods/400/10/0000/0014/A00000014834414ko.jpg?l=ko" alt="메디필 레드락토 콜라겐 클리어 올영단독 SET (300ml+딥 해면 증정)" onerror="common.errorImg(this);" data-attr="세일^주목할만한상품^메디필 레드락토 콜라겐 클리어 올영단독 SET (300ml+딥 해면 증정)^1" onclick="javascript: gtm.goods.callGoodsGtmInfo("A000000148344", "", "ee-productClick", "세일_주목할만한상품", "1");">
											<div class="my">
												<button type="button" class="myCart cartBtnRecoBell" data-ref-goodsno="A000000148344" name="" data-ref-dispcatno="" data-ref-itemno="001" tabindex="0">
													<span>장바구니</span>
												</button>
												<button type="button" class="mySee btn_zzim" data-ref-goodsno="A000000148344" tabindex="0">
													<span>찜하기전</span>
												</button>
											</div>
										</div>
										<div class="info">
											<a href="https://www.oliveyoung.co.kr/store/goods/getGoodsDetail.do?goodsNo=A000000148344&dispCatNo&trackingCd=Ordercom_Curation&curation=ordercompl_curation_prod&egcode=a008_m002&rccode=pc_cart_order_a&egrankcode=1" class="a_detail" name="Ordercom_Curation" data-ref-goodsno="A000000148344" data-egrank="1" date-egcode="a008_m002" data-attr="세일^주목할만한상품^메디필 레드락토 콜라겐 클리어 올영단독 SET (300ml+딥 해면 증정)^1" data-trk="/Ordercom_Curation" data-ref-dispcatno data-ref-itemno="001" tabindex="0" onclick="javascript:common.wlog("ordercompl_curation_prod");common.wlog("undefined");common.link.moveGoodsDetailCuration("A000000148344", "","ordercompl_curation_prod" , "pc_cart_order_a","a008_m002" ,"1" ,"Ordercom_Curation"); return false;">
												<dl>
													<dt class="tit">메디필 레드락토 콜라겐 클리어 올영단독 SET (300ml+딥 해면 증정)</dt>
													<dd class="price">
														<del>24,000원</del>
														<strong>13,200원</strong>
													</dd>
													<dd class="icon">
														<span class="icon_flag sale">세일</span>
														<span class="icon_flag delivery">세일</span>
													</dd>
												</dl>
											</a> 
										</div>
									</li>
									<!-- //상품3 -->
								</div>
							</div>
							<button type="button" data-role="none" class="slick-next slick-arrow" aria-label="Next" role="button" style="display: block;">Next</button>
						</ul>
					</div>
					<input type="hidden" id="recoGoodsYn" value="Y">
					<script type="text/javascript"></script>
				</div>
			</div>
		</div>
		<!-- //주문완료 알림 영역 -->
	</div>
	<!-- //Contents -->
</div>
<!-- //Container -->
<jsp:include page="../default/footer.jsp"></jsp:include>
</body>
</html>