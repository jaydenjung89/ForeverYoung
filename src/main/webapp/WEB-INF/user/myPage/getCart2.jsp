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
<title>장바구니 | 올리브영</title>
<link rel="stylesheet" type="text/css" href="css/board.css" />
<link rel="stylesheet" type="text/css" href="css/common.css" />
<link rel="stylesheet" type="text/css" href="css/contents.css" />
<link rel="stylesheet" type="text/css" href="css/curation.css" />
<link rel="stylesheet" type="text/css" href="css/global.css" />
<link rel="stylesheet" type="text/css"
	href="css/jquery.mCustomScrollbar.css" />
<link rel="stylesheet" type="text/css" href="css/pickup.css" />
<link rel="shortcut icon" href="https://fyawsbucket.s3.ap-northeast-2.amazonaws.com/favicon_logo.ico" type="image/x-icon" />
</head>
<body>
<jsp:include page="../default/header.jsp"></jsp:include>
<!--  Container 시작 -->
<div id="Container">


	<!-- #Contents -->
	<form name="cartForm" id="cartForm" >
		<div id="Contents">
			<!-- 장바구니 진한 글씨 부분 -->
			<div class="title_box">
				<!-- ::before -->
				<h1>
					장바구니
					<span class="tx_num">${listSize}</span>
				</h1>
				<ul class="step_list">
					<li class="on">
						<span class="hide">현재단계</span>
						<span class="step_num tx_num">
						<!-- ::before -->
						1
						</span>
						장바구니					
					</li>
					<!-- 현재단계 li에 클래스 on과 <> -->
					<li>
						<span class="step_num tx_num">
						<!-- ::before -->
						2
						</span>
						주문/결제
					</li>
					<li class="last">
						<span class="ste_num tx_num">
						<!-- ::before -->
						3
						</span>
						주문완료
					</li>
				</ul>
				<!-- ::after -->
			</div>
			<!-- //title_box -->
			<!-- membership_box(멤버십 정보 박스) -->
			<div class="membership_box iconGrade4">
				<p class="tx_grade_info">
					<strong>${user.user_name }</strong>
					님의 멤버십등급은
					<span class="grade">${userMember }</span>
					입니다
				</p>
				<ul class="membership_info_list">
					<li>
						<a href="#/getMembershipBenefitInfo.do" class="grade_benefit">
							<span>등급혜택</span>
						</a>
					</li>
					<li>
						<a href="/getPointInfo.do">
							<strong>
								<span class="tx_num">FY ONE</span>
								포인트
							</strong>
							<span class="own_point">
								<span class="tx_num">${userPoint }</span>
								P
							</span>
						</a>
					</li>
					<li>
						<a href="#/getCouponList.do">
							<strong>할인쿠폰</strong>
							<span class="own_point">
								<span class="tx_num">0</span>
								개
							</span>
						</a>
					</li>
					<li>
						<a href="#/getDepositList.do">
							<strong>예치금</strong>
							<span class="own_point">
								<span class="tx_num">0</span>
								원
							</span>
						</a>
					</li>
				</ul>
				<!-- ::after -->
			</div>
			<!-- //membership_box -->
			<!-- 일반배송, 당일배송 탭 -->
			<ul class="comm5sTabs" id="ulDelivGb">
				<!-- 주소에 quickyn=?값이 물고 넘어가짐 -->
				<li quickyn="N" class="on">
					<!-- ::before -->
					<button type="button" data-attr="장바구니^Tab^일반배송" title="선택됨">일반배송(${listSize})</button>
				</li>
				<li quickyn="Y">
					<button type="button" data-attr="장바구니^Tab^오늘 드림">오늘드림&픽업 (N)</button>
				</li>
			
			</ul>
			<!-- //일반배송, 당일배송 탭 -->
			<!-- 배송지 선택(당일배송탭에서나오는 부분) -->
			<div class="box_delivery pickStore" id="divDelivery" style="display:none;">
			</div>
			<!-- //배송지 선택(당일배송탭에서나오는 부분) -->
			<!-- 일반배송 -> 올리브영배송상품 -->
			<h2 class="sub-title2">올리브영 배송상품</h2>
			<table class="tbl_prd_list tableFix">
				<caption>상품정보, 판매가, 수량, 구매가, 배송정보 선택으로 이루어진 올리브영 배송상품 장바구니 목록 표</caption>
				<colgroup>
					<col style="width:40px">
					<col style="width:*">
					<col style="width:110px">
					<col style="width:100px">
					<col style="width:110px">
					<col style="width:120px">
					<col style="width:150px">
				</colgroup>
				<thead>
					<tr>
						<th scope="col">
							<input type="checkbox" class="all_check_input" checked="checked" id="inp_allRe1" name value title="올리브영 배송상품 전체 선택">
						</th>
						<th scope="col">상품정보</th>
						<th scope="col">판매가</th>
						<th scope="col">수량</th>
						<th scope="col">구매가</th>
						<th scope="col">배송정보</th>
						<th scope="col">선택</th>
					</tr>
				</thead>
				<c:if test="${listSize==0}">
				<tbody>
					<tr>
						<td colspan="7" class="no_data">장바구니에 저장된 상품이 없습니다.</td>
					</tr>	
				</tbody>
				</c:if>
				<tbody>
					<!-- 1+1 행사 상품인 경우 -->
					<!-- 판매종료이거나 일시품절 -->
					<!-- 판매종료 -->
					<!-- 일시품절 -->
					<!-- 증정품은 제외 -->
					<!-- 장바구니 첫번째 항목 -->
		
		<c:if test="${productList != null }">
			<c:forEach var="item" items="${productList }" varStatus="count">	
					<tr soldoutyn="N" cno="288577927" goodsno="A000000160637" itemno="001" lgcggoodsno="8801051480757" oripno
						pno ormokndcd rsvsaleyn="N" drtouryn="N" dispcatno buycondstrtqtyamt getcondstrtqtyamt pkggoodsno quickyn="N"
						strno criteo-goods="A000000160637001" trackingcd="Today" gatecd="Main">
						<input type="hidden" id="soldout_yn" name="soldout_yn" value="N">
						<td colspan="7">
							<div class="tbl_cont_area">
								<!-- 쿠폰할인 : 즉시할인, 상품할인 쿠폰 할인가 적용 -->
								<input type="hidden" id="saleCpnDcprc" name="saleCpnDcPrc" value="0">
								<input type="hidden" id="goodsCpnYn" name="goodsCpnYn" value="N">
								<div class="tbl_cell w40 cart_info_td">
									<input type="checkbox" saleprc="${item.goods_cart_count * item.goods_detail_price * (1-(item.goods_detail_discountrate * 0.01)) }" 
										orgsaleprc="${item.goods_detail_price }" cpndcamt="0" data-goodsNum="${item.category_goods_serial }"
											ordqty="${item.goods_cart_count }" rsvstockqty="" stockqty="${item.goods_detail_stock_quantity }" checked="checked" 
										id="inp_prd_chk1" name="s_checkbox1" soldoutyn="N" value="0" class="chkSmall" title="${item.category_goods_name }">
									<input type="hidden" id="totalPrice" name="totalPrice" value="${totalPrice }"/>
									<input type="hidden" id="dcPrice" name="dcPrice" value="${dcPrice }"/>	
									<c:forEach var="list" items="${getShipping }">
									<c:if test="${list.address_default == true }">
									<input type="hidden" id="user_shipping_serial" name="user_shipping_serial" value="${list.user_shipping_serial }" />
									</c:if>
									</c:forEach>
									
									<input type="hidden" name="categroy_goods_thum_img" class="categroy_goods_thum_img" value="${item.category_goods_thum_img}">
									<input type="hidden" name="category_goods_brand" class="category_goods_brand" value="${item.category_goods_brand }">
									<input type="hidden" name="category_goods_name" class="category_goods_name" value="${item.category_goods_name }">
									<input type="hidden" name="category_goods_serial" class="category_goods_serial" value="${item.category_goods_serial }">
									<input type="hidden" name="goods_detail_price" class="goods_detail_price_total" value="${item.goods_cart_count * item.goods_detail_price }">
									<input type="hidden" name="goods_detail_price" class="goods_detail_price" value="${item.goods_detail_price }">	
									<input type="hidden" name="goods_sale_price" class="goods_sale_price" value="${(item.goods_cart_count * item.goods_detail_price) - item.goods_cart_count * item.goods_detail_price * (1-(item.goods_detail_discountrate * 0.01))  }">
									<input type="hidden" name="category_goods_count" class="category_goods_count" value="${item.category_goods_count }">
									<input type="hidden" name="goods_cart_count" class="goods_cart_count" value="${itemt.goods_cart_count }">
									<input type="hidden" name="goods_last_price" class="goods_last_price" value="${item.goods_cart_count * item.goods_detail_price * (1-(item.goods_detail_discountrate * 0.01)) }">
									<input type="hidden" name="goods_detail_discountrate" class="goods_detail_discountrate" value="${item.goods_detail_discountrate }">
                         			<c:if test="${ item.goods_cart_count *  (item.goods_detail_price * (1-(item.goods_detail_discountrate * 0.01)) ) < 20000}">
                              		<input type="hidden" name="delivery_price" class="delivery_price" value="2500">
                           			</c:if>
                           			<c:if test="${ item.goods_cart_count *  (item.goods_detail_price * (1-(item.goods_detail_discountrate * 0.01)) ) >= 20000}">
                              		<input type="hidden" name="delivery_price" class="delivery_price" value="0">
                           			</c:if>










									
								</div>
								<div class="tbl_cell w390">
									<div class="prd_info">
										<a class="prd_img" href="#javascript.moveGoodsDetail">
											<img data-original="${item.category_goods_thum_img}" class="completed-seq-lazyload" alt="상품이미지" onerror="common.errorImg(this);"
											src="${item.category_goods_thum_img}">
										</a>
										<a class="prd_name" href="#javascript.moveGoodsDetail">
											<span class="tx_sale_info"></span>
											<!-- 브랜드명 및 할인정보 -->
											<span id="brandNm">${item.category_goods_brand }</span>
											<p id="goodsNm">${item.category_goods_name }</p>
										</a>
										<p class="prd_opt"> </p>
										<p class="prd_flag">
											<span class="icon_flag sale">세일</span>
											<span class="icon_flag delivery">오늘드림</span>
										</p>
									</div>
								</div>
								<div class="tbl_cell w110">
									<span class="cur_price">
										<span class="tx_num">${item.goods_detail_price }</span>
										원
									</span>
								</div>
								<div class="tbl_cell w100">
									<div class="prd_cnt">
									`<select class="amount"  name="goods_cart_count" prdtp="1" prdcnt="0" ordpsbminqty="1" ordpsbmaxqty="999" qtyaddunit="1" ordqty="${item.goods_cart_count }" title="상품 수량 선택" >
										
										<option value="1" <c:if test="${item.goods_cart_count eq '1'}">selected="selected"</c:if>>1</option>
										<option value="2" <c:if test="${item.goods_cart_count eq '2'}">selected="selected"</c:if>>2</option>
										<option value="3" <c:if test="${item.goods_cart_count eq '3'}">selected="selected"</c:if>>3</option>
										<option value="4" <c:if test="${item.goods_cart_count eq '4'}">selected="selected"</c:if>>4</option>
										<option value="5" <c:if test="${item.goods_cart_count eq '5'}">selected="selected"</c:if>>5</option>
										<option value="6" <c:if test="${item.goods_cart_count eq '6'}">selected="selected"</c:if>>6</option>
										<option value="7" <c:if test="${item.goods_cart_count eq '7'}">selected="selected"</c:if>>7</option>
										<option value="8" <c:if test="${item.goods_cart_count eq '8'}">selected="selected"</c:if>>8</option>
										<option value="9" <c:if test="${item.goods_cart_count eq '9'}">selected="selected"</c:if>>9</option>
										<option value="10" <c:if test="${item.goods_cart_count eq '10'}">selected="selected"</c:if>>10</option>
										<option value="10+">10+</option>
										<!-- 10+을 선택하면 직접 수량을 입력할 수 있게 바뀜 -->
									</select>
									<input type="text" name="goods_cart_count" id="count_text" title="수량입력" style="display:none" ;>
									</div>
									<button type="button" class="btnSmall wGray" style="display:none" ; name="btnQtyMod">
										<span>변경</span>
									</button>
								</div>
								<div class="tbl_cell w110">
									<span class="org_price">
										<span class="tx_num result" ><fmt:formatNumber value="${item.goods_cart_count * item.goods_detail_price }" pattern="#,### " /></span>
										원
									</span>
									<span class="pur_price">
										<fmt:formatNumber value="${item.goods_cart_count * item.goods_detail_price * (1-(item.goods_detail_discountrate * 0.01)) }" pattern="#,### " />원
									</span>
								</div>
								
									<div class="tbl_cell w120">
                           <p class="prd_delivery">
                              <c:if test="${ item.goods_cart_count *  (item.goods_detail_price * (1-(item.goods_detail_discountrate * 0.01)) ) >= 20000}" >
                                 <strong id="deliStrongText">
                                    무료배송
                                    <span class="ex">도서.산간 제외</span>
                                 </strong>
                              </c:if>
                              <c:if test="${ item.goods_cart_count *  (item.goods_detail_price * (1-(item.goods_detail_discountrate * 0.01)) ) < 20000}" >
                                 <strong id="deliStrongText">
                                    2,500
                                    <span class="ex">도서.산간 제외</span>
                                 </strong>
                              </c:if>
                           </p>
                        </div>
								<div class="tbl_cell w150">
									<div class="btn_group">
										<button id="288577927|A000000160637|001" type="button" class="btnSmall wGreen" name="btn_buy" data-attr="장바구니^장바구니바로구매^바로구매">
											<span data-attr="장바구니^장바구니바로구매^바로구매">바로구매</span>
										</button>
										<button type="button" class="btnSmall wGray zzim" name="btnZzim" zim-on-off data-ref-goodsno="A00000160637">
											<span>
												쇼핑찜
												<span class="oyblind">해제됨</span>
											</span>
										</button>
										<button type="button" class="btnSmall wGray delete" name="btnDelete" data-attr="장바구니^장바구니상품삭제^삭제" >
											<span data-attr="장바구니^징바구니상품삭제^삭제">삭제</span>
										</button>
									</div>
								</div>
							</div>
							<!-- 장바구니 첫번째 항목 끝 -->
							<div class="curation_box" id="curation_area_8801051480757_A000000160637_001"></div>
							
						</td>
					
					</tr>
			</c:forEach>	
		</c:if>

					<!-- //장바구니 첫번째 항목 끝 -->
					
				</tbody>
			</table>
			<!-- //일반배송 -> 올리브영배송상품 -->
			<!-- 배송상품 결제금액 -->
			<c:if test="${listSize>0 }">
			<div class="basket_price_info">
				<div class="btn_area">
					<!-- 선택상품 삭제버튼 -->
					<button type="button" class="btnSmall wGray type2" id="partDelBtn1" name="partDelBtn">
						<span>선택상품 삭제</span>
					</button>
					
				</div>
			<div class="sum_price">
               총 판매가
               <span class="tx_num totalPrice_span" > </span>
               원
               <span class="tx_sign minus"></span>
               총 할인금액
               <span class="tx_num totalSalePrice_span" > </span>
               원
               <span class="tx_sign plus">+</span>
               배송비
               <span class="tx_num totalDeliveryPrice_span"></span>
               원
               <span class="span_quickDeliCharge" style="display:none;">(3!4!, 미드나잇 이용시)</span>
               <span class="tx_sign equal">=</span>
               <span class="tx_total_price">
                  총 결제금액
                  <span class="tx_price">
                     <span class="tx_num totalPayPrice_span" ></span>
                     원
                  </span>
               </span>
            </div>
			</div>
			<!-- // -->
			<!-- 총 결제예상금액 -->
			<div class="total_price_info">
				<div class="detail_price">
					<p>
						총 판매가
						<span>
							<span  class="tx_num totalPrice_span" > </span> <!-- db서 가져올 가격 -->
						</span>
					</p>
					<span class="tx_sign2 minus">-</span>
					<p class="tx_sale" >
						 총 할인금액
						 <span>
						 	<span  class="tx_num totalSalePrice_span" > </span>
						 	원
						 </span>
					</p>
					<span class="tx_sign2 plus">+</span>
					<p>
                  배송비
                  <span>
                     <span class="tx_num totalDeliveryPrice_span"></span>
                     원
                  </span>
               </p>
				</div>
				<div class="sum_price">
					<span class="tx_text"></span>
						총 결제예상금액
						<span class="span_quickDeliCharge" style="display: none;">최소</span>
						<span class="tx_price">
							<span   class="tx_num totalPayPrice_span" > </span>
						</span>
				</div>
			</div>
			<!-- 주문 선택 버튼 -->
			<div class="order_btn_area order_cart">
				<button type="submit" class="btnOrangeW" name="partOrderBtn" data-attr="장바구니^주문유형^선택주문"  style="cursor:pointer;">선택주문</button>
				<button type="button" class="btnOrange" name="allOrderBtn" data-attr="장바구니^주문유형^전체주문"  style="cursor:pointer;">전체주문</button>
			</div>
			
			<!-- //주문 선택 버튼 -->
	
			<div class="cart_comment">
				<p>장바구니 상품은 90일동안, 판매종료 된 상품은 10일동안 보관됩니다.</p>
			</div>
			</c:if>
		</div>
	</form>
	<form action="paymentPage.do" method="post" class="order_form"></form>
	<!-- //Contents -->
</div>
<!-- //Container -->
<jsp:include page="../default/footer.jsp"></jsp:include>
<script>
$(document).ready(function(){
	setTotalInfo();
	
});
$(".chkSmall").click(function(){
	$(".all_check_input").prop("checked", false);
});
/* 체크여부에 따른 종합 정보 변화*/
 $(".chkSmall").on("change", function(){
	 /* 총 주문 정보 세팅*/
	 setTotalInfo($(".cart_info_td"));
 });
 
 $(".all_check_input").on("click", function(){
	 /*  체크박스 체크/해제 */
	 if($(".all_check_input").prop("checked")){
		 $(".chkSmall").attr("checked", true);
	 }else {
		 $(".chkSmall").attr("checked", false);
	 }
	 setTotalInfo($(".cart_info_td"));
 });
 function setTotalInfo(){
	   let totalPrice = 0; //총 판매가격
	   let totalSalePrice = 0; //총 할인 가격 (totalPrice - totalPayPrice)
	   let totalPayPrice = 0; //총 구매가격
	   let totalCount = 0; //총 개수
	   let deliveryPrice = 0; //배송비
	   let finalTotalPrice = 0;//최종가격(totalPayPrice + deliveryPrice)
	   
	   $(".cart_info_td").each(function(index, element){
	      if($(element).find(".chkSmall").is(":checked") === true) {
	         //총 가격
	         totalPrice += parseInt($(element).find(".goods_detail_price_total").val());
	         totalCount += parseInt($(element).find(".goods_cart_count").val());
	         totalSalePrice += parseInt($(element).find(".goods_sale_price").val());
	         totalPayPrice += parseInt($(element).find(".goods_last_price").val());
	         
	      }
	   });
	   
	   if(totalPayPrice >= 20000) {
	      deliveryPrice = 0;
	   }else if(totalPayPrice == 0){
	      deliveryPrice = 0;
	   }else{
	      deliveryPrice = 2500;
	   }
	   finalTotalPrice = totalPayPrice + deliveryPrice
	   //값 삽입
	   $(".totalPrice_span").text(totalPrice.toLocaleString());
	   //총 가격
	   $(".totalSalePrice_span").text(totalSalePrice.toLocaleString());
	   $(".totalPayPrice_span").text(finalTotalPrice.toLocaleString());
	   $(".totalDeliveryPrice_span").text(deliveryPrice.toLocaleString());
	   
	};
/* 수량 반영 */
	let goods_cart_count = '${item.goods_cart_count}';

	$(".amount").prop("selected", true);


$(".amount").on("change",function(){
	//select에서 선택한 value가져오기
	var selectVal = $(".amount option:selected").val();

	const category_goods_serial =parseInt($(".category_goods_serial").val());
	const goods_detail_price =  parseInt($(".goods_detail_price").val());
	const goods_last_price = parseInt('${item.goods_detail_price * (1-(item.goods_detail_discountrate * 0.01)) }');
	const goods_cart_count = parseInt($(".goods_cart_count").val());
	
	console.log(selectVal, category_goods_serial, goods_detail_price, goods_last_price, goods_cart_count);
	
	if(selectVal >= 1){
		$.ajax({
			url: "cartUpdateCount.do",
			type: "post",
			data : { "goods_cart_count" : selectVal,
				     "category_goods_serial" : category_goods_serial,
			},
			dataType: "text",
			 success : function(res){
					 alert("수량변경 성공");
					 location.href="cartPage.do";
					 setTotalInfo($(".cart_info_td"));
				 
			   		
		   },
		   error : function(res) {
			   alert("수량변경 실패");
		   }
		});
		
	}
	
});

/* 장바구니 삭제 버튼*/
$(".delete").on("click", function(){
	 if(confirm("상품을 장바구니에서 삭제하시겠습니까?")==true){
		 var category_goods_serial = new Array();
		 category_goods_serial.push(parseInt($(".category_goods_serial").val()));

		 console.log(category_goods_serial);
		 $.ajax({
			 url: "cartDelete.do",
			 type: "post",
			 data : {"category_goods_serial" : category_goods_serial},
			 datatype: "text",
			 success: function(res){
				 //삭제된 금액만큼 화ㅁ면에 찍히는 숫자도 변경되어야함.
				 alert("삭제가 완료되었습니다!");
				 location.href="cartPage.do";
				 setTotalInfo($(".cart_info_td"));
			 },
			 error:function(res){
				 alert("오류발생!");
			 }
			 
		 });
	 }
});
 
 
 /* 선택 항목 삭제 버튼 */
 $("#partDelBtn1").on("click",function(){
	 if(confirm("선택하신 상품을 정말 삭제하시겠습니까?")==true){
		 var category_goods_serial = new Array();
		 
		 $("input[class='chkSmall']:checked").each(function(){
			 category_goods_serial.push($(this).attr("data-goodsNum"));
		 });
		 console.log(category_goods_serial);
		 $.ajax({
			 url: "cartDelete.do",
			 type: "post",
			 data: {"category_goods_serial" : category_goods_serial},
			 datatype: "text",
			
			 success: function(res){
				 //삭제된 금액만큼 화ㅁ면에 찍히는 숫자도 변경되어야함.
				 alert("삭제가 완료되었습니다!");
				 location.href="cartPage.do";
				 setTotalInfo($(".cart_info_td"));
			 },
			 error:function(res){
				 alert("선택한 항목이 없습니다!");
			 }
		 });
	 }
 });
 /* 바로구매하기 버튼*/
 $(".btnSmall wGreen").on("click", function(){
	 
 });
 /* 전체주문하기 버튼*/
 $(".btnOrange").on("click", function(){
    let form_contents = '';
    let orderNumber = 0;
    $(".cart_info_td").each(function(index, element){
       if($(element).find(".chkSmall").is(":checked") === true){
         let category_goods_serial = $(element).find(".category_goods_serial").val(); 
         let goods_cart_count = $(element).find(".goods_cart_count").val();
         var totalPrice = parseInt($(".cart_info_td").find("input[name='totalPrice']").val(totalPrice));
         var dcPrice = parseInt($(".cart_info_td").find("input[name='dcPrice']").val(dcPrice));
         /* let shippingAddr = $(element).find("input[name='user_shipping_serial']").val(); */
         
         let category_goods_serial_input = "<input name='order_serial[" + orderNumber + "].category_goods_serial' type='hidden' value='" + category_goods_serial + "'>";
         form_contents += category_goods_serial_input;
         
         let goods_cart_count_input = "<input name='order_serial[" + orderNumber + "].goods_cart_count' type='hidden' value='" + goods_cart_count + "'>";
         form_contents += goods_cart_count_input;
         
         var totalPrice_input = "<input name='order_serial[" + orderNumber + "].totalPrice' type='hidden' value='" + totalPrice + "'>";
         form_contents += totalPrice_input;

         /*var shippingAddr_input = "<input name='order_serial[" + orderNumber + "].shippingAddr' type='hidden' value='" + shippingAddr + "'>"; */
         /* form_contents += shippingAddr_input;*/
        
         orderNumber += 1;
       }
   });
    $(".order_form").html(form_contents);
    $(".order_form").submit();
 });
</script>
</body>
</html>