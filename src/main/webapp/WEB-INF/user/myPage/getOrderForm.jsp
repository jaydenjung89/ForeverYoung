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
<title>주문결제 | 올리브영</title>
<link rel="stylesheet" type="text/css" href="${path }/css/join.css" />
<link rel="stylesheet" type="text/css" href="${path }/css/join.css" />
<link rel="stylesheet" type="text/css" href="${path }/css/board.css" />
<link rel="stylesheet" type="text/css" href="${path }/css/common.css" />
<link rel="stylesheet" type="text/css" href="${path }/css/contents.css" />
<link rel="stylesheet" type="text/css" href="${path }/css/curation.css" />
<link rel="stylesheet" type="text/css" href="${path }/css/global.css" />
<link rel="stylesheet" type="text/css" href="${path }/css/jquery.mCustomScrollbar.css" />
<link rel="stylesheet" type="text/css" href="${path }/css/pickup.css" />
<!-- jQuery -->
 <script type="text/javascript" src="https://code.jquery.com/jquery-1.12.4.min.js" ></script>
 <!-- iamport.payment.js -->
 <!-- iamport.payment.js -->
 <script type="text/javascript" src="https://cdn.iamport.kr/js/iamport.payment-1.1.5.js"></script>
 <script>
 $(document).ready(function(){
	 $('input[type="radio"][id="btn_dlvp_exist"]').attr('checked', true);
	 
	 
	 $('input[type=radio][id=btn_dlvp_exist]').on('click',function(){
		 console.log("기존배송지클릭");
			var chkValue=$('input[type="radio"][id="btn_dlvp_exist"]:checked').val();
			if(chkValue) {
				$('#dlvpSelect_div').attr("class","hide_box");
				$('.new_order_area').css("display","table-row");
				$('.dlvpNm_exist_span').closest().css("display","none");
				$('#pickupHide').css("display","none");
				$('#pickupHide1').css("display","none");
				$('#pickupHide2').css("display","none");
				$('#pickupHide3').css("display","none");
				$('#pickupHide4').css("display","none");
			}else {
				
				$('#dlvpSelect_div').attr("class","show");
				$('.new_order_area').css("display","none");
				$('.dlvpNm_exist_span').closest().css("display","table-row");
				$('#pickupHide').css("display","table-row");
				$('#pickupHide1').css("display","table-row");
				$('#pickupHide2').css("display","table-row");
				$('#pickupHide3').css("display","table-row");
				$('#pickupHide4').css("display","table-row");
				
			
				
				
				
			}

		});
	 $('input[type=radio][id=btn_dlvp_new]').on('click',function(){
		 console.log("신규배송지클릭");
			var chkValue=$('input[type="radio"][id="btn_dlvp_new"]:checked').val();
			if(chkValue) {
				
				$('#dlvpSelect_div').attr("class","show");
				$('.new_order_area').css("display","none");
				$('.dlvpNm_exist_span').parent().css("display","table-row");
				$('#pickupHide').css("display","table-row");
				$('#pickupHide1').css("display","table-row");
				$('#pickupHide2').css("display","table-row");
				$('#pickupHide3').css("display","table-row");
				$('#pickupHide4').css("display","table-row");
			}else {
				$('#dlvpSelect_div').attr("class","hide_box");
				$('.new_order_area').css("display","table-row");
				$('.dlvpNm_exist_span').parent().css("display","none");
				$('#pickupHide').css("display","none");
				$('#pickupHide1').css("display","none");
				$('#pickupHide2').css("display","none");
				$('#pickupHide3').css("display","none");
				$('#pickupHide4').css("display","none");
			}

		});
 });
 
  
 </script>
<style>
table{
	table-layout:fixed !important;
	word-break : keep-all !important;
}
</style>
</head>
<body>
<jsp:include page="../default/header.jsp"></jsp:include>
<input type="hidden" id="recipientName" value=""/>
   <input type="hidden" id="recipientPhone" value=""/>
   
	<c:if test="${orderPrice >= 20000}">
   <fmt:formatNumber var="payPrice" maxFractionDigits="3" value="${orderPrice}"/>
   <input type="hidden" id="payment" value="${orderPrice }" >
</c:if>
<c:if test="${orderPrice < 20000}">
   <fmt:formatNumber var="payPrice" maxFractionDigits="3" value="${orderPrice + 2500}"/>
   <input type="hidden" id="payment" value="${orderPrice + 2500 }" >
</c:if>
   <fmt:formatNumber var="oldPrice" maxFractionDigits="3" value="${goodsPrice}"/>
   <fmt:formatNumber var="dc" maxFractionDigits="3" value="${orderPrice-goodsPrice }"/>
   <fmt:parseNumber var="oldReserves" type="number" integerOnly="true" value="${(orderPrice*(membershipInfo.user_membership_point_rate/100)+5)/10 }"/>
   <fmt:formatNumber var="afterReserves" type="number" maxFractionDigits="1" value="${oldReserves*10 }"/>
   <input type="hidden" id="reserves" value="${oldReserves*10 }"/>
   <input type="hidden" name="userPoint" value="${userPoint}">
	
<div id="Container">
	<!-- #Contents 시작 -->
	<div id="Contents">
		<!-- title_box시작 -->
		<div class="title_box">
			<!-- ::before -->
			<h1>주문/결제</h1>
			<ul class="step_list">
				<li>
					<span class="step_num tx_num">
						<!-- ::before -->
						1
					</span>
						장바구니
				</li>
				<li class="on">
					<span class="hide">현재단계</span>
					<span class="step_num tx_num">
						<!-- ::before -->
						2
					</span>
					주문/결제
				</li>
				<!-- 현재단계 li에 클래스 on과 <span class="hide">현재단계</span>을 넣어주세요 -->
				<li class="last">
					<span class="step_num tx_num">
						<!-- ::before -->
						3
					</span>
						주문완료
				</li>
				<!-- ::after -->
			</ul>
			<!-- ::after -->
		</div>
		<!-- //title_box끝 -->
		<!-- 오늘드림 시작 -->
		<form name="pickupOrderForm" id="pickupOrderForm"></form>
		<!-- //오늘드림 끝 -->
		<!-- 일반배송 시작 -->
		<form name="orderForm" id="orderForm">
		<input type="hidden" id="user_id" name="user_id" value="${userId}">
		<c:forEach var="list" items="${shippingList }">
		<c:if test="${list.address_default == true }">
				<input type="hidden" id="user_shipping_serial" name="user_shipping_serial" value="${list.user_shipping_serial }" />
		</c:if>
		<c:if test="${list.address_default == false }">
				<input type="hidden" id="user_shipping_serial" name="user_shipping_serial" value="${list.user_shipping_serial }" />
		</c:if>
		</c:forEach>
			<!-- 주문자 정보 -->
			<h2 class="sub-title2 mgT20" style="display:none;">주문자정보</h2>
			<table class="tbl_inp_form" style="display:none;"></table>
			<!-- //주문자정보 -->
			<!-- 배송지정보 -->
			<div class="title_wrap">
				<h2 class="sub-title2">배송지정보</h2>
				<p class="sub_area" id="pickupHide6">
					<input type="checkbox" id="setBaseDlvpYn" name="baseDlvpYn" value="Y" checked="checked" onclick="#">
					<!-- checked="checked"이면 체크박스선택된 상태 ,onclick시 페이지이동없음 -->
					<label for="setBaseDlvpYn">기본 배송지 설정</label>
				</p>
			</div>
			<table class="tbl_inp_form important" id="dlvpInfo" style="table-layout:fixed;">
				<caption></caption>
				<colgroup>
					<col style="width:170xp">
					<col style="width:*">
				</colgroup>
				
				<tbody>
					<!-- 배송지선택 -->
					
					<tr id="pickupHide0">
						<th scope="row" style="width:170px">배송지선택</th>
						<td style="width:850px">
						
							<span class="chk_area mgzero">
								<input type="radio" id="btn_dlvp_exist" name="inpAddrSel" value targetid="exist" data-attr="배송지정보^1_배송지선택">
								<label for="btn_dlvp_exist">기존 배송지</label>
							</span>
							<span class="chk_area">
								<input type="radio" id="btn_dlvp_new" name="inpAddrSel" value="" targetid="new" data-attr="배송지정보^1_배송지선택">
								<label for="btn_dlvp_new">신규 배송지</label>
							</span>
							<div class="show" id="dlvpSelect_div">
								<input type="hidden" name="selectDlvSeq" value="">
								
								
								<select id="dlvpSelect" name="mbrDlvpSeq" class="selH28" title="배송지를 선택해주세요." style="width:200px; border:1px solid #9bce26;" data-attr="배송지정보^1_배송지선택">
									<%-- <option value="1" >1</option>
									<option value="2">2</option>
									<option value="3">3</option>
									<option value="4">4</option>--%>
									<c:forEach var="list" items="${shippingList}" varStatus="num">
									
									
									<option value="${list.user_shipping_serial}"  >${list.user_shipping_place_name}</option>
									
									</c:forEach>
								</select>
								
								
							</div>
						</td>
					</tr>
					<!-- //배송지선택 -->
					<!-- 기존배송지 클릭시 배송지명 -->
					<!-- 기본 배송지 라디오버튼 클릭시 -->
					<tr type="exist" id="pickupHide" style="display:table-row;" class="deliveryInfo">
						<th scope="row" style="width:170px">배송지명</th>
						
						<td style="width:850px" id="dlvpNm_exist_span"></td>
						
						<input type="hidden" id="dlvpNm_exist" name="dlvpNm" value="자택" title="배송지명을 입력해주세요." style="width:200px; border:1px solid #9bce26;" this="배송지명은"/>
					</tr>
					<!-- //기존배송지 클릭시 배송지명 -->
					
					<!-- 기존 배송지 클릭시 받는분 -->
					<tr id="pickupHide1" type="exist" style="display: table-row;" class="deliveryInfo">
						<th scope="row" style="width:170px">받는분</th>
						<td style="width:850px" class="imp_data">
							<input type="text" id="rmitNm_exist" name="rmitNm" value="" orgvalue="" class="inpH28" title="받는분 이름을 입력해주세요." style="width:200px; border:1px solid #9bce26;" this="받는분 이름은" data-attr="배송지정보^1_받는분">
							
					</tr>
					<!-- //기존 배송지 클릭시 받는분 -->
					<!-- 기존 배송지 클릭시 연락처 -->
					<tr class="sumtr2" id="pickupHide2" type="exist" style="display:table-row;" class="deliveryInfo">
						<th scope="row" style="width:170px">연락처</th>
						<td style="width:850px" class="imp_data">
							<input type="text" id="user_shipping_phone" name="user_shipping_phone" title="수령하시는 분의 연락처를 입력하세요.(최대 12자 -제외)" style="width:200px; border:1px solid #9bce26;" value="" maxlength="12"/>
							
						</td>
					</tr>
					<!-- //기존 배송지 클릭시 연락처 -->
					
					<!-- 기존 배송시 클릭시 주소 -->
					<tr id="pickupHide4" type="exist" style="display: table-row;" class="deliveryInfo">
						<th scope="row" style="width:170px">주소</th>
						<td style="width:850px" class="imp_data">
							<input type="text" id="stnmRmitPostNo_exist" name="rmitPostNo" value="" class="inpH28" title="우편번호를 검색해주세요." style="width:90px; border:1px solid #9bce26;" readonly="readonly">
							<input type="hidden" id="rmitPostNo_exist" name="stnmRmitPostNo" value="13173" title="우편번호를 검색해주세요.">
							<button type="button" class="btnSmall wGreen w100" id="search-zipcode-pop_exist_r" data-attr="배송지정보^1_주소">우편번호 찾기</button>
							<div class="addr_box">
												<!-- 도로명주소 -->
												<input type="hidden" id="stnmRmitPostAddr_exist" name="stnmRmitPostAddr" value="" class="inpH28" title="우편번호를 검색해주세요." readonly="readonly">
												<!-- 옛날 주소 -->
												<input type="hidden" id="rmitBaseAddr_exist" name="rmitPostAddr" value="" class="inpH28" title="우편번호를 검색해주세요." readonly="readonly">
												<p class="addr_new">
													<span class="tx_tit">도로명</span>
													:
													<span class="tx_adr" id="stnmPostAddr_exist" ></span>
												</p>
												
											</div>
											
											<input type="hidden" id="stnmRmitDtlAddr_exist" name="stnmRmitDtlAddr" value="301호" orgvalue="301호" class="inpH28" title="상세주소를 입력해주세요." style="width:500px" this="상세 주소는">
											<input type="hidden" id="rmitDtlAddr_exist" name="rmitDtlAddr" value="301호" orgvalue="301호" class="inpH28" title="상세주소를 입력해주세요." style="width:500px">
											<input type="hidden" id="emdNm_exist" name="emdNm" value="금광동">
											<input type="hidden" id="admrNm_exist" name="admrNm" value="금광2동">
						</td>
					</tr>
					
					<!-- //기존 배송시 클릭시 주소 -->
					
				 
					<%-- 신규배송지 --%>
					<tr type="new" class="new_order_area" style="display:none;">
						<th scope="row">배송지명</th>
						<td class="imp_data" nowrap>
							<input type="text" id="dlvpNm_new" name="user_shipping_place_name" value="" clss="inpH28" style="width:200px; border:1px solid #9bce26;" title="배송지명을 입력해주세요."/>
						</td>
					</tr>		
					<!-- 신규배송지 클랙시 받는분 -->
					<tr type="new" class="new_order_area" style="display:none;">
						<th scope="row">받는분</th>
						<td class="imp_data">
							<input type="text" id="rmitNm_new" name="user_shipping_name" value="" orgvalue="" class="inpH28" title="받는분 이름을 입력해주세요." style="width:200px; border:1px solid #9bce26;" this="받는분 이름은" data-attr="배송지정보^1_받는분">
							<span class="chk_area">
								<input type="checkbox" id="copyToDlvp_new" targetid="new">
								<label for="copyToDlvp_new">주문자정보와 동일</label>
							</span>
						</td>
					</tr>
					<!-- //신규배송지 클랙시 받는분 -->	
					<!-- 신규 배송지 클릭시 연락처 -->
					<tr type="new" class="new_order_area" style="display:none;">
						<th scope="row">연락처</th>
						<td class="imp_data">
							<input type="text" id="user_shipping_phone" name="user_shipping_phone" title="수령하시는 분의 연락처를 입력하세요.(최대 12자 -제외)" style="width:200px; border:1px solid #9bce26;" value="" maxlength="12"/>
							
						</td>
					</tr>
					<!-- //신규 배송지 클릭시 연락처 -->
					
					<!-- 신규 배송시 클릭시 주소 -->
					<tr type="new" class="new_order_area" style="display:none;">
						<th scope="row">주소</th>
						<td class="imp_data">
							<input type="text" id="stnmRmitPostNo_new" name="user_shipping_zipcode" value="" class="inpH28" title="우편번호를 검색해주세요." style="width:90px; border:1px solid #9bce26; " readonly="readonly" disabled="disabled">
							<input type="hidden" id="rmitPostNo_new" name="stnmRmitPostNo" value="" title="우편번호를 검색해주세요." disabled="disabled">
							<button type="button" class="btnSmall wGreen w100" id="search-zipcode-pop_new" data-attr="배송지정보^1_주소">
								<span>우편번호 찾기</span>
							</button>
							
							<div>
						
												
								<!-- 주소 입력시 보여지는 부분 -->
								<input type=text id="user_shipping_address1" name="user_shipping_address1" style="width:500px; border:1px solid #9bce26;" value="" />
							</div>	
							
							<input type="text" id="tempRmitDtlAddr_new" name="user_shipping_detail_address" value="" class="inpH28" title="상세주소를 입력해주세요." placeholder="상세주소를 입력해주세요." style="width:500px; border:1px solid #9bce26;" this="상세 주소는" >
							<p class="txtDot mgT5">신규배송지 정보는 마이페이지 내 배송지에 저장됩니다.</p>
							<input type="hidden" id="stnmRmitDtlAddr_new" name="stnmRmitDtlAddr" value="" class="inpH28" title="상세주소를 입력해주세요." style="width:500px" this="상세 주소는" disabled="disabled">
							<input type="hidden" id="rmitDtlAddr_new" name="rmitDtlAddr" value="" class="inpH28" title="상세주소를 입력해주세요." style="width:500px" disabled="disabled">
							<input type="hidden" id="emdNm_new" name="emdNm" disabled="disabled">
							<input type="hidden" id="admrNm_new" name="admrNm" disabled="disabled">
						</td>
						
					</tr>
					<!-- //신규 배송시 클릭시 주소 -->
					</tbody>
					
				</table>			
			
			<!-- 주문상품정보 -->
			<h2 class="sub-title2">
				포에버영 배송상품
				
			</h2>
			<table class="tbl_prd_list">
				<caption>포에버영 배송상품 주문상품 목록</caption>
				<colgroup>
					<col style="width:*">
					<col style="width:110px">
					<col style="width:100px">
					<col style="width:110px">
				</colgroup>
				<thead>
					<tr>
						<th scope="col" style="width:700px">상품정보</th>
						<th scope="col" style="width:110px">판매가</th>
						<th scope="col" style="width:100px">수량</th>
						<th scope="col" style="width:110px">구매가</th>
					</tr>
				</thead>
				<tbody> <!-- 구매하려는 상품개수에 따라 행<tr>이 생성 -->
			<c:set var="listSize" value="${fn:length(purchaseList) }" />
			<c:forEach var="item" items="${purchaseList }">
					<tr>
						<input type="hidden" name="cartNo" value="291651463">
						<td colspan="5" dispcatno stdcatno="030101" goodsno="${item.category_goods_serial}" itemno="001"
							entrno="C14765" brndcd="4013" tradeshpcd="1" staffdscntyn="Y" pntrsrvyn="Y"  ordqty="${item.goods_cart_count}" thnlpathnm="${item.category_goods_thum_img}"
								goodsnm="${item.category_goods_name}" cartno="">
								<div class="tbl_cont_area">
									<div class="tbl_cell w700">
										<div class="prd_info">
											<div class="prd_img">
												<img src="${item.category_goods_thum_img}" alt="장바구니상품 임시 이미지" onerror="common.errorImg(this);">
											</div>
											<div class="prd_name">
												<span>${item.category_goods_brand }</span>
												<p>${item.category_goods_name }</p>
											</div>
											<p class="prd_opt"> </p>
											<p class="prd_flag">
												<span class="icon_flag gift">증정</span>
												<span class="icon_flag delivery">오늘드림</span>
											</p>
										</div>
									</div>
									<div class="tbl_cell w110">
										<span class="cur_price">
											<fmt:formatNumber var="itemPrice" maxFractionDigits="3" value="${item.goods_detail_price }"/>
											<span class="tx_num">${itemPrice }</span>
											원
											
										</span>
									</div>
									<div class="tbl_cell w100">${item.goods_cart_count }</div>
									<div class="tbl_cell w110">
                              <span class="org_price">
                                 <span class="tx_num" id="normPrc_${item.category_goods_serial }"><fmt:formatNumber maxFractionDigits="3" value="${item.goods_detail_price  * item.goods_cart_count}"/></span>
                              </span>
                              <span class="org_price" style="display:none;"></span>
                              <span class="pur_price">
                                 <fmt:formatNumber var="itemPrice" maxFractionDigits="3" value="${item.goods_cart_count*item.goods_last_price }"/>
                                 <span class="tx_num" id="salePrice_A000000147084/001">${itemPrice }</span>
                                 원
                              </span>
                            
                           </div>
								</div>
								</td>
					</tr>
			</c:forEach>
				</tbody>
			</table>
			<script type="text/javascript"></script>
			
			<!-- 쿠폰 및 포인트, 결제수단, 결제정보 -->
			<div class="order_payment_box">
				<div class="left_area">
					
					<!-- 포인트사용 -->
					<h2 class="sub-title2">포인트사용</h2>
					<table class="tbl_inp_form type2">
						<caption>포인트사용 입력 폼</caption>
						<colgroup>
							<col style="width:170px">
							<col style="width:*">
						</colgroup>
						<input type="hidden" id="lastAplyPntInputName" value>
						<tbody>
							
							
							<tr>
								<th scope="row">
									<span class="tx_num">FY ONE</span>
									포인트
								</th>
								<td>
									<div>
										<span class="inp_point_wrap">
											<input type="text" id="usePoint" name="using_point" value="" class="inpH28 cjonePoint" title="사용하실 CJ ONE 포인트를 입력해주세요."
												style="width:100px" this="CJ ONE 포인트는 "pattern="[0-9]*"
												 onkeyup="javascript:inputPoint()" onkeydown="if (event.keyCode==13){return false}">
												 원
												 <span id="cjonePnt_span" class="tx_num colorOrange">
												 <fmt:formatNumber var="point" maxFractionDigits="3" value="${userPoint}"/>
												 	<span id="cjonePnt">${point}</span>
												 </span>
												 P
										</span>
										<input type="hidden" name="cjonePnyAplyAmt" value="0">
										<input type="hidden" name="cjonePntNonPosCnt" value="0">
										<button type="button" class="btnSmall wGray3" name="allPoint" id="allPoint" data-attr="포인트/기프트카드사용^CJONE포인트">
											<span data-attr="포인트/기프트카드사용^CJONE포인트">전액사용</span>
										</button>
											<p class="tx_point_info">CJONE포인트는 최소 1,000원 이상 보유시 10원 단위로 사용가능합니다.
											</p>
									</div>
								</td>
								
							</tr>
							<input type="hidden" id="vMbrStaffYn" value="N">
							
							
						</tbody>
					</table>
					<!-- //포인트사용 -->
					<!-- 결제수단 선택 -->
					<div class="title_wrap" id="payMethod_div">
						<h2 class="sub-title2">결제수단 선택</h2>
						<p class="sub_area" style="display:none;"> </p> 
					</div>
					<!-- 결제수단 선택할수있는 부분 -->
					<ul class="payment_info_form" id="payMethodList">
						<li class="bg_area">
							<input type="hidden" id="payCouponIndex" value paycd>
							<input type="hidden" id="easyPayCd" value>
							<!-- 카카오페이 시작 -->
							<span>
								<input type="radio" id="payMethod_26" name="payMethod" value="26" cashreceipt="N" checked="checked" data-attr="결제수단선택^결제수단선택">
								<label id="payMethodLabel_26" for="payMethod_26">
									카카오페이
								</label>
							</span>
							<!-- 카카오페이 끝 -->
							<!-- 신용카드 라디오버튼 시작 -->
							<span>
								<input type="radio" id="payMethod_11" name="payMethod" value="11" cashreceipt="N" data-attr="결제수단선택^결제수단선택">
								<label id="payMethodLabel_11" for="payMethod_11">
									신용카드
									<span class="flag bn">혜택</span>
									<!-- 혜택버튼을 누르면 할부종류 밑에 안내사항이 나옴 -->
								</label>
							</span>
							<!-- 신용카드 라디오버튼 끝 -->
							<!-- 무통장입금 라디오버튼 시작 -->
							<span class="pay_24h_sh">
								<input type="radio" id="payMethod_61" name="payMethod" value="61" cashreceipt="" data-attr="결제수단선택^결제수단선택">
								<label id="payMethodLabel_61" for="payMethod_61">
									무통장입금
								</label>
							</span>
							<!-- 무통장입금 라디오버튼 끝 -->
							<!-- 페이코 라디오버튼 시작 -->
							<span>
								<input type="radio" id="payMethod_25" name="payMethod" value="25" cashreceipt="N" data-attr="결제수단선택^결제수단선택">
								<label id="payMethodLabel_25" for="payMethod_25">
									PAYCO
									<span class="flag bn">혜택</span>
									<!-- 혜택을 누르거나 페이코라디오버튼을 클릭하면 안내사항이 나옴 -->
								</label>
							</span>
							<!-- 페이코 라디오버튼 끝 -->
							
							<!-- 네이버페이 시작 -->
							<span>
								<input type="radio" id="payMethod_29" name="payMethod" value="29" cashreceipt="N" data-attr="결제수단선택^결제수단선택">
								<label id="payMethodLabel_29" for="payMethod_29">
									네이버페이
								</label>
							</span>
							<!-- 네이버페이 끝 -->
							<!-- 휴대폰결제 시작 -->
							<span>
								<input type="radio" id="payMethod_22" name="payMethod" value="22" cashreceipt="N" data-attr="결제수단선택^결제수단선택">
								<label id="payMethodLabel_22" for="payMethod_22">
									휴대폰결제
								</label>
							</span>
							<!-- 휴대폰결제 끝 -->
							
							
							
						</li>
						
						
					</ul>
					<!-- 현금영수증신청 -->
					<div class id="cashReceipt" style="display:none;"></div>
				</div>
				
				<div class="right_area">
					<!-- 최종 결제정보 -->
					<h2 class="sub-title2">최종 결제정보</h2>
					<!-- //최종 결제 정보 -->
					<ul class="total_payment_box">
						<li>
							<span class="tx_tit">총 상품 금액</span>
							<span class="tx_cont">
								<fmt:formatNumber var="strOrderPrice" maxFractionDigits="3" value="${orderPrice }"/>
								<span class="tx_num">${strOrderPrice }</span>
								원
							</span>
							<input type="hidden" name="goodsAmt" value="53000">
						</li>
						
						<li class="line_top2">
							<span class="tx_tit">
								총 배송비
								<button type="button" class="btnSmall wGray" onclick="#javascriptpopup">
									<span>상세보기</span>
								</button>
							</span>
							<span class="tx_cont">
                        		<c:if test="${orderPrice >= 20000 }">
                           			<span class="tx_num" id="dlexPayAmt_span">0</span>
                       		    </c:if>
                        		<c:if test="${orderPrice < 20000 }">
                           			<span class="tx_num" id="dlexPayAmt_span">2500</span>
                        		</c:if>
                        	원
                     </span>
							<input type="hidden" name="dlexPayAmt" value="0">
						</li>
						
						<li>
							<span class="tx_tit">
								<span class="tx_num" >FY ONE</span>
								포인트
							</span>
							<span class="tx_cont colorOrange">
								<span class="tx_num" id="cjonePntAplyAmt_span">0</span>
								원
							</span>
						</li>
						<!-- 임직원일 경우 -->
						
						<li class="total">
		                     <span class="tx_tit">최종 결제금액</span>
		                     <span class="tx_cont">   
		                        
		                        <span class="tx_num" id="totPayAmt_sum_span">${payPrice }</span>
		                        원
		                     </span>
		                     <fmt:formatNumber var="itemPrice" maxFractionDigits="3" value="${item.goods_cart_count*item.goods_last_price }"/>
		                     <input type="hidden" name="remainAmt" value="${itemPrice }">
		                     <fmt:formatNumber var="itemPrice" maxFractionDigits="3" value="${item.goods_detail_price }"/>
		                     <input type="hidden" name="ordPayAmt" value="${itemPrice }">
		                     <input type="hidden" name="goodsNm" value="${item.category_goods_name}">
                  		</li>
						<li>
							<button class="btnPayment" id="btnPay" name="btnPay" type="button" data-attr="최종결제정보^결제하기" onclick="javascript:requestPay()">
								결제하기
								
							</button>
							<input type="hidden" id="tempOrdNo" value>
						</li>
					</ul>
					
					
				</div>
			</div>
			<!-- // 쿠폰 및 포인트, 결제수단, 결제정보 끝-->
		</form>
		<!-- //일반배송 끝 -->
	</div>
	<!-- //Contents 끝 -->
</div>
<script>

	$("#dlvpSelect").prop("selected", true);
	
	 $("#dlvpSelect").change(function(){
	 	var selectVal=$("#dlvpSelect option:selected").val();
	 	console.log(selectVal);
	 	
	 	$('#pickupHide').empty(); 
	 	$('#pickupHide1').empty();
	 	$('#pickupHide2').empty();
	 	$('#pickupHide4').empty();
	 	
	 	$.ajax({
	 		url:"changeAddress.do",
	 		type:"post",
	 		data:{"user_shipping_serial" : selectVal},
	 		dataType:"html",
	 		success:function(result){
	 			
	 			$('#pickupHide').append(result);
	 		
	 			
	 		}
	 	});
	 });
	 
	
</script>
<script type="text/javascript">
var rePoint=0;
var originPayPrice=parseInt($("input#payment").val());
$("button#allPoint").click(function(){
	$("input#usePoint").val(${userPoint});
	$("input#payment").val(originPayPrice-${userPoint});
	$("span#totPayAmt_sum_span").text(parseInt(originPayPrice-${userPoint}).toLocaleString("ko-KR"));
	$("span#cjonePntAplyAmt_span").text((${userPoint}).toLocaleString("ko-KR"));
});
function inputPoint(){
	var point=parseInt($("input#usePoint").val());
	
	/*if(point='')point=0;
	else point=parseInt(point);
	*/
	$("input#payment").val(originPayPrice-point);
	$("span#totPayAmt_sum_span").text(parseInt(originPayPrice-point).toLocaleString("ko-KR"));
	$("span#cjonePntAplyAmt_span").text(point).toLocaleString("ko-KR");
	rePoint=point;
}	
$('#btnPay').click(function() {
	   var IMP = window.IMP; // 생략 가능
	   IMP.init("imp80368513"); 

 
	   /* 결제 금액 */
	   var amount = $("input#payment").val();
	   var address = $("#stnmRmitPostAddr_exist").val();
	   var zipdcode = $("#stnmRmitPostNo_exist").val();
	   if($("#rmitBaseAddr_exist").val() != null){
	      address = address + $("#stnmRmitPostAddr_exist").val();
	   }
	   IMP.request_pay({ // param
	        pg: "kakaopay",
	        pay_method: "card",
	        merchant_uid: "merchant" + new Date().getTime(),
	        name: "포에버영" + amount + " 원 결제 요청",
	        amount: amount,
	        buyer_email: "${userInfo.user_email}",
	        buyer_name: "${userInfo.user_name}",
	        buyer_tel: "${userInfo.user_phone}",
	        buyer_addr: address,
	        buyer_postcode: zipdcode
	          }, function (req) { // callback
	                  // 결제 성공 시 로직,
	                  $.ajax({
	                     url: "iamport.do?imp_uid="+req.imp_uid,
	                     type: "POST",
	                     dataType: "JSON"
	                  }).done(function(data){
	                     var address1 = $("input#stnmRmitPostAddr_exist").val();
	                     var address2 = $("input#stnmRmitDtlAddr_exist").val()
	                     var zipcode = $("input#stnmRmitPostNo_exist").val();
	                     var listSize = String(${listSize});
	                     var price = $("input#payment").val();
	                     var merchant = String(req.merchant_uid);
	                     var id = "${userInfo.user_id}";
	                     var name = "${userInfo.user_name}";
	                     var email = "${userInfo.user_email}";
	                     var phone = "${userInfo.user_phone}";
	                     var masterGoodsSerial = ${purchaseList[0].category_goods_serial };
	                     
	                     var recipiName = $("input#recipientName").val();
	                     var recipiPhone = $("input#recipientPhone").val();
	                     var amount = parseInt(data.amount)
	                     var point=$("input#reserves").val();
	                     var usingPoint=$("input#usePoint").val();
	                     if(usingPoint==""||usingPoint==null)usingPoint=0;
	                   
	                     if(req.paid_amount == data.response.amount) {
	                        alert("성공적으로 결제가 완료되었습니다!");
	                        $.ajax({
	                         url: "paymentSuccess.do",
	                         type : "POST",
	                         dataType: "text",
	                         data : {
	                            "user_id" : id,
	                            "user_name" : name,
	                            "user_email" : email,
	                            "user_phone" : phone,
	                            "user_address1" : address1,
	                            "user_address2" : address2,
	                            "user_zipcode" : zipcode,
	                            "order_goods_count" : listSize,
	                            "order_goods_price" : price,
	                            "order_merchant_serial" : merchant,
	                            "master_goods_serial" : masterGoodsSerial,
	                            "shipping_recipient_name" : recipiName,
	                            "shipping_recipient_phone" : recipiPhone,
	                            "order_point":point,
	                            "usingPoint":usingPoint
	                            
	                         }
	                        }).done(function(location){
	                           window.location.href="orderEnd.do?order_merchant_serial="+merchant;
	                        }) 
	                     
	                     }
	                  })
	            
	           }
	    );
	})

</script>
<jsp:include page="../default/footer.jsp"></jsp:include>
</body>
</html>