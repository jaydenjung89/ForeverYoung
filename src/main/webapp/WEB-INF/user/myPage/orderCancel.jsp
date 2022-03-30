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
</head>
<body>
<jsp:include page="../default/header.jsp"></jsp:include>
<div id="Container">
	<div id="Contents">
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
								<strong class = "name">${userName }</strong>
								님 반갑습니다.
							</p>
							<ul class = "mem_opt">
								<!-- 멤버십 페이지로 이동 -->
								<li id = "membershipBenefit">
									<a href = "#" onclick = "#">멤버십라운지</a>
								</li>
								<!-- 나의 프로필 페이지로 이동 -->
								<li id = "profileModify">
									<a href = "#" onclick = "#">나의 프로필</a>
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
						<form name="cancelForm" id="cancel-form" method="POST" enctype="multipart/form-data">
							<input type="hidden" id="ord-no" name="ordNo" value="${detail[0].order_merchant_serial }">
	                        <input type="hidden" id="chg-accp-sct-cd" name="chgAccpSctCd" value="20">
							<div class="title-area">
								<h2 class="tit">
									취소상품 선택
								</h2>
							</div>
							<h3 class="sub-title3">상품정보</h3>
							<table class="board-list-2s cancelT" >
								<caption></caption>
								<colgroup>
									<col style="width:40px;">
									<col style="width:*;">
									<col style="width:110px;">
									<col style="width:110px;">
								</colgroup>
								<thead>
									<tr>
										<th scope="col" colspan="2">상품명</th>
										<th scope="col">수량</th>
										<th scope="col">구매가</th>
									</tr>
								</thead>
								<tbody class="history" id="goods-area">
								<c:forEach var="detailList" items="${detail }" varStatus="status">
									<tr class="lineBz" id="goods-0" data-goods-idx="0" data-prom-cnt="1" data-prom-no="" data-ord-dtl-sct-cd="10" data-adtn-cost-nos="" data-tot-real-qty="1" data-elapsed-day="0" data-prgs-stat-cd="20" data-trade-shp-cd="1" data-dlv-no="20220326508864" data-ord-proc-seq="1" data-ord-goods-seq="1" data-ord-prgs-stat-cd="20" data-org-qty="1" data-sale-prc="42400" data-pur-sale-prc="42400" data-goods-cpn-amt="0" data-pay-cpn-amt="0" data-immed-cpn-amt="0" data-item-prgs-stat-cd="20" data-goods-stock-qty="141">
										<td>
											<input type="checkbox" class="input-check" id="check-0" data-idx="0" onclick="mypage.orderCancel.revitalizer(this);" title="상품 선택" checked="">
											<input type="hidden" name="arrRowCheck" value="Y">
											<input type="hidden" name="arrUpdateYn" value="N">
										</td>
										<td class="subject">
											<input type="hidden" name="arrGoodsNo" id="goods-no-0" value="A000000163178">
											<input type="hidden" name="arrTaxSctCd" id="goods-no-0" value="10">
											<input type="hidden" id="lgc-goods-no-0" value="812256028499">
											<input type="hidden" name="arrItemNo" id="item-no-0" value="001">
											<input type="hidden" name="arrOrdGoodsSeq" id="ord-goods-seq-0" value="1">
											<input type="hidden" name="arrOrdProcSeq" id="ord-proc-seq-0" value="1">
											<input type="hidden" name="arrRealQty" id="real-qty-0" value="1" alt="realQty">
											<!-- 교환반품 자동화 관련 추가 START -->
											<input type="hidden" name="arrDlvNo" id="arr-dlv-no-0" value="20220326508864" alt="dlvNo">
											<input type="hidden" name="arrOrgDlvNo" id="arr-org-dlv-no-0" value="20220326508864" alt="orgDlvNo">
											<input type="hidden" name="arrAutoRefYn" id="arr-auto-ref-yn-0" value="Y" alt="autoRefYn">
											<input type="hidden" name="arrGoodsSctCd" id="arr-goods-sct-cd-0" value="10">
											<!-- 교환반품 자동화 관련 추가 END -->
											<input type="hidden" name="arrNPromYn" value="N">

											<input type="hidden" id="goods-cpn-amt-0" value="0" alt="goodsCpnAmt">
											<input type="hidden" id="goods-cpn-aply-qty-0" value="0">
											<input type="hidden" id="org-qty-0" value="1">
											<input type="hidden" id="sale-prc-0" value="42400" alt="salePrc">
											<input type="hidden" id="pur-sale-prc-0" value="42400" alt="purSalePrc">
											<input type="hidden" id="immed-cpn-amt-0" value="0" alt="immedCpnAmt">
											<input type="hidden" id="pay-cpn-amt-0" value="0" alt="payCpnAmt">
											<input type="hidden" id="ord-prgs-stat-cd-0" value="20" alt="ordPrgsStatCd">
											<input type="hidden" id="dlv-no-0" value="20220326508864" alt="dlvNo">
											<input type="hidden" id="whtd-free-yn-0" value="N" alt="whtdFreeYn">
											<input type="hidden" id="dlex-free-yn-0" value="N" alt="dlexFreeYn">
											<input type="hidden" id="org-dlv-no-0" value="20220326508864" alt="orgDlvNo">
											<input type="hidden" id="add-real-amt-0" value="0" alt="addRealAmt">
											<input type="hidden" id="cncl-amt-0" value="42400" alt="cnclAmt">
											<input type="hidden" id="rfd-amt-0" value="0" alt="rfdAmt">
											<input type="hidden" id="pay-amt-0" value="0" alt="payAmt">
											<input type="hidden" id="sale-amt-0" value="42400" alt="saleAmt">
											<input type="hidden" id="dlv-shp-cd-0" value="20" alt="dlvShpCd">
											<input type="hidden" id="inv-no-0" value="" alt="invNo">
											<input type="hidden" id="buy-cond-strt-qty-amt-0" value="0" alt="buyCondStrtQtyAmt">
											
											<div class="area">
												<a class="thum" href="">
													<img src="${detailList.category_goods_thum_img }">
												</a>
												<div class="textus" style="width:68%;">
													<a class href="">
														<span class="tit">${detailList.category_goods_brand }</span>
														<span class="txt">${detailList.category_goods_name }</span>
													</a>
												</div>
												<input type="hidden" name="chgPsbYn" id="chgPsbYn-0" value="Y" alt="chgPsbYn">
											</div>
										</td>
										<td>
											<input type="text" name="goods_cart_count" id="count_text" value="${detailList.order_goods_count }" title="수량입력" style="display:block;" >
										</td>
										<td class="colorOrange ">
											<strong id="ord-tot-0">${detailList.order_goods_price }</strong>
											원
										</td>
									</tr>
								</c:forEach>
								</tbody>
							</table>
							<input type="hidden" name="arrPayMeanCd" value="25" data-rfdpsblmoamt="42400">
							<input type="hidden" name="arrPayAmt" value="42400">
							<input type="hidden" id="cjMemberDscntAmt" value="0">
							<input type="hidden" id="cjDscntAmt" value="0">
							<p class="infoTxt01" id="chg_txt" style="display:none;">현재 판매종료/일시품절 상품은 교환처리가 불가합니다.</p>
							
							<h3 class="sub-title3">환불내역</h3>
							<div class="price-conts" id="refund-list">
								<ul class="list">
									<li>
										<dl>
											<dt>취소 금액</dt>
											<dd id="ctrl_cnclTotAmt"><fmt:formatNumber value="${detail[0].order_goods_price }" pattern="#,### " /><em>원</em></dd>
										</dl>
										<ul>
											<li>
												<span class="txt">취소 상품금액</span>
												<span class="won" id="ctrl_cnclGoodsTotAmt">
													<fmt:formatNumber value="${detail[0].order_goods_price }" pattern="#,### " />
													<em>원</em>
												</span>
											</li>
											<li>
												<span class="txt">총 배송비</span>
												<span class="won" id="ctrl_cnclDelxAmt">
												0
												<em>원</em>
												</span>
											</li>
										</ul>
									</li>
									<li>
										<dl>
											<dt>쿠폰할인금액 차감</dt>
											<dd id="ctrl_totAplyAdtnCostAmt">
											0
											<em>원</em>
											</dd>
										</dl>
									</li>
									<li>
										<dl>
											<dt>
											포인트 및 기타결제 반환
											<input type="hidden" id="subPayAmt" value="0">
											</dt>
											<dd id="ctrl_subPayAmt">
											0
												<em>원</em>
											</dd>
										</dl>
									</li>
									<li class="nodata hide">전체 취소를 하실 경우에만 환불내역을 확인하실 수 있습니다.</li>
								</ul>
								<div class="price-sum">
									<div>
										<strong>환불예정금액</strong>
										<span id="ctrl_totPayAmt">
											<fmt:formatNumber value="${detail[0].order_goods_price }" pattern="#,### " />
											<em>원</em>
										</span>
									</div>
									<input type="hidden" id="mainPaymeanCd" name="mainPaymeanCd" value="25">
									<p class="point-earn">KAKAOPAY 결제 취소</p>
								</div>
							</div>
							<div class="area1sButton mgT5">
								<a href="order.do" class="btnGray">이전</a>
								<a href="order_cancelProc.do?order_merchant_serial=${detail[0].order_merchant_serial }" class="btnGreen" data-attr="마이페이지취소반품^주문취소^신청">신청</a>
							</div>
							<div class="usage-guide">
								<h2 class="stit">이용안내</h2>
									<ul>
										<li>신용카드 결제 취소 시 바로 환불 가능하며, 계좌이체/무통장 등 계좌환불이 필요한 경우 취소신청 후 영업일 기준 3~7일 이내에 결제금액 환불처리가 됩니다.</li>
										<li>1+1, 2+1, GIFT 상품의 경우 취소 시 행사상품도 함께 취소해주셔야합니다.</li>
									</ul>
							</div>
					
						</form>
					
					</div>
				</div>
				</div>
</div>
<jsp:include page="../default/footer.jsp"></jsp:include>
</body>
</html>