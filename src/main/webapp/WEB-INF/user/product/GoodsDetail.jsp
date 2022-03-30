<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
<%@ taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core" %>
<%@ taglib prefix="fmt" uri="http://java.sun.com/jsp/jstl/fmt" %>
<%@ taglib prefix="fn" uri="http://java.sun.com/jsp/jstl/functions" %>
<c:set var="path" value="${pageContext.request.contextPath}"/>
<!DOCTYPE html>
<html>
<head>
<meta charset="utf-8">
<title>2차 상품 디테일</title>
<link rel="stylesheet" type="text/css" href="${path }/css/board.css" />
<link rel="stylesheet" type="text/css" href="${path }/css/common.css" />
<link rel="stylesheet" type="text/css" href="${path }/css/contents.css" />
<link rel="stylesheet" type="text/css" href="${path }/css/curation.css" />
<link rel="stylesheet" type="text/css" href="${path }/css/global.css" />
<link rel="stylesheet" type="text/css"
   href="${path }/css/jquery.mCustomScrollbar.css" />
<link rel="stylesheet" type="text/css" href="${path }/css/pickup.css" />
<script src="http://code.jquery.com/jquery-3.5.1.min.js"></script>
<script type="text/javascript">
$(document).ready(function(){
	$("#viewcate").hover(function(){
		$(this).attr("class", "active")
	});
	$("#viewcate").mouseleave(function(){
		$(this).attr("class", "")
	});
	$("#cateview2").hover(function(){
		$(this).attr("class", "active")
	});
	$("#cateview2").mouseleave(function(){
		$(this).attr("class", "")
	});
	$("#cateview3").hover(function(){
		$(this).attr("class", "active")
	});
	$("#cateview3").mouseleave(function(){
		$(this).attr("class", "")
	});
	$("#productInfo").click(function(){
		$(this).attr("class", "on");
		$("#buyInfo").attr("class", "");
		$("#reviewInfo").attr("class", "");
		$("#qnaInfo").attr("class", "");
		$("#tab1").attr("class", "tabConts prd_detail_cont show");
		$("#tab2").attr("class", "tabConts prd_detail_cont");
		$("#gdasContentsArea").attr("class", "tabConts prd_detail_cont");
		$("#qnaContentsArea").attr("class", "tabConts prd_detail_cont");
	});
	$("#buyInfo").click(function(){
		$(this).attr("class", "on");
		$("#productInfo").attr("class", "");
		$("#reviewInfo").attr("class", "");
		$("#qnaInfo").attr("class", "");
		$("#tab1").attr("class", "tabConts prd_detail_cont");
		$("#gdasContentsArea").attr("class", "tabConts prd_detail_cont");
		$("#qnaContentsArea").attr("class", "tabConts prd_detail_cont");
		$("#tab2").attr("class", "tabConts prd_detail_cont show");
	});
	$("#reviewInfo").click(function(){
		$(this).attr("class", "on");
		$("#buyInfo").attr("class", "");
		$("#productInfo").attr("class", "");
		$("#qnaInfo").attr("class", "");
		$("#tab1").attr("class", "tabConts prd_detail_cont");
		$("#tab2").attr("class", "tabConts prd_detail_cont");
		$("#qnaContentsArea").attr("class", "tabConts prd_detail_cont");
		$("#gdasContentsArea").attr("class", "tabConts prd_detail_cont show");
	});
	$("#qnaInfo").click(function(){
		$(this).attr("class", "on");
		$("#buyInfo").attr("class", "");
		$("#reviewInfo").attr("class", "");
		$("#productInfo").attr("class", "");
		$("#tab1").attr("class", "tabConts prd_detail_cont");
		$("#tab2").attr("class", "tabConts prd_detail_cont");
		$("#gdasContentsArea").attr("class", "tabConts prd_detail_cont");
		$("#qnaContentsArea").attr("class", "tabConts prd_detail_cont show");
	});
});
function quantity(count){
	var currentCount=$("span.option_cnt_box").find("input.tx_num").val();
	var changeCount=parseInt(currentCount)+count;
	var price=$("input#oldPrice").val();
	var discount=${getItemPage.goods_detail_discountrate}
	
	if(changeCount<1)changeCount=1;
	var changePrice=parseInt(price*((100-discount)/100))*changeCount;
	$("span.option_cnt_box").find("input.tx_num").val(changeCount);
	$("span.tx_cont").find("span.tx_num").text(changePrice.toLocaleString("ko-KR"));
}
function div_show(){
	$("div.popup-contents");
	$("#pop_cont").show();
	$("#dim").css("display","block");
	$("body").css("overflow","hidden");
}
function div_hide(){
	$("#pop_cont").hide();
	$("body").css("overflow","auto");
	$("#dim").css("display","none");
}
function pop_hide(){
	$("#basketOption").hide();
	$(this).css("display","none");
}

function discount_show(){
	$("#btnSaleOpen").show();
	$("#saleLayer").css("display", "block");
}
$(document).ready(function(){
	$(".btn_close").click(function(){
	$("#saleLayer").css("display","none");
});
});
$(document).ready(function(){

	   $("ul.prd_qna_list li").click(function() {
	      if($(this).hasClass("show")) {
	         $(".qna_answer_box").children().css("display","none");
	         $(this).removeClass();
	      }else {
	         $(this).addClass("show");
	         $(".qna_answer_box").children().css("display","block");
	         
	      }
	   });
	   
	   
	});

</script>
<style>
 /* 고객후기_상세 */
        .board .name_purchase .name{display:block;font-weight:700;font-size:12px;color:#514859;line-height:18px}
        .board .name_purchase .package{padding-top:2px;font-size:14px;color:#000;line-height:20px}
        .board .review_photo{padding-top:30px;line-height:16px}
        .board .review_view{display:none;padding:10px 10px 11px;border-top:1px solid #e3e3e3;}
        .board .review_view .inner_review{width:100%;padding:20px 9px 9px;line-height:25px}
        .board .review_notice .name_purchase{display:none}
        .board .review_notice .review_photo{display:none}
        .board .goods-review-grp-btn .styled-button{height:32px}
        /* 고객후기 없을때 */
        .board .no_data{padding:30px;text-align:center}
.board .board_pg_area {
    clear: both;
    text-align: center;
    padding-bottom: 15px;
}
 .board .board_pg_area{clear:both;text-align:center;padding-bottom:15px}
 .layout-pagination-button:first-child {
    border-left: 1px solid #ddd;
}
.layout-pagination-first-page {
    background-image: url(https://res.kurly.com/pc/etc/old/images/common/icon-pagination-first.png);
}
.layout-pagination-first-page, .layout-pagination-prev-page, .layout-pagination-next-page, .layout-pagination-last-page {
    background-repeat: no-repeat;
    background-position: 50% 50%;
    text-indent: -9999px;
}
.layout-pagination-button {
    display: inline-block;
    width: 34px;
    height: 34px;
    border: 1px solid #ddd;
    border-left: 0;
    vertical-align: top;
}
.layout-pagination-first-page {
    background-image: url(https://res.kurly.com/pc/etc/old/images/common/icon-pagination-first.png);
}
.layout-pagination-prev-page {
    background-image: url(https://res.kurly.com/pc/etc/old/images/common/icon-pagination-prev.png);
}
.layout-pagination-number:hover, .layout-pagination-number.__active {
    background-color: #f7f7f7;
    color: #5f0080;
}
.layout-pagination-number {
    font-weight: 700;
    color: #333;
    line-height: 34px;
}
.layout-pagination-next-page {
    background-image: url(https://res.kurly.com/pc/etc/old/images/common/icon-pagination-next.png);
}
.layout-pagination-last-page {
    background-image: url(https://res.kurly.com/pc/etc/old/images/common/icon-pagination-last.png);
}
</style>
<script>
$(document).ready(function(){

   $("div.tr_line td").click(function() {
      if($(this).hasClass("open")) {
         $(".review_view").children().css("display","none");
         $(this).removeClass();
      }else {
         $(this).addClass("open");
         $(".review_view").children().css("display","block");
         
      }
   });
   
   
});

</script>
<style>
/* 상품 상세 페이지 리뷰 영역*/
.xans-product-additional table.xans-board-listheader {
    margin: 15px 0 0;
    color: #353535;
    font-size: 12px;
    line-height: 140%;
    table-layout: fixed;
}
.xans-product-additional .sort-wrap {
    position: relative;
}
.list_type1.old .ico {
    float: left;
    width: 4px;
    height: 4px;
    margin: 7px 8px 0 0;
    background-color: #514859;
    vertical-align: 2px;
}
.list_type1.old .txt {
    overflow: hidden;
    padding: 0;
    font-size: 12px;
    color: #666;
    line-height: 18px;
    letter-spacing: -.3px;
}
.xans-product-additional .sort {
    position: absolute;
    bottom: 0;
    right: 0;
    padding: 10px;
    text-align: right;
}

.xans-board-listheader {
    border-top: 2px solid #9bce26;
    font-size: 13px;
    line-height: 140%;
}
.xans-product-additional table.xans-board-listheader th {
    padding: 25px 0 23px;
    vertical-align: middle;
    font-size: 12px;
}
.xans-board-listheader th {
    padding: 20px 0;
    vertical-align: middle;
    font-size: 12px;
}
.screen_out {
    display: block;
    overflow: hidden;
    position: absolute;
    left: -9999px;
    width: 1px;
    height: 1px;
    font-size: 0;
    line-height: 0;
    text-indent: -9999px;
}
.goods_board .tbl_newtype1 .subject {
    padding-left: 50px;
    text-align: left;
}
.xans-product-additional table.tbl_newtype1 td {
    height: auto;
    padding: 22px 3px 23px;
}
.xans-product-additional table.xans-board-listheaderd td {
    padding: 25px 3px 23px;
    border-top: 1px solid #e3e3e3;
    text-align: center;
    vertical-align: middle;
    height: 65px;
}
.xans-product-additional table.tbl_newtype1 td .snd {
    display: none;
}
.xans-product-additional table.tbl_newtype1 td.user_grade {
    padding: 22px 0 23px;
    line-height: 19px;
    text-align: left;
}
.xans-product-additional table.tbl_newtype1 td.user_grade {
    padding: 22px 0 23px;
    line-height: 19px;
    text-align: left;
}
.goods_board .tbl_newtype1 .time {
    color: #939393;
}
.xans-product-additional table.tbl_newtype1 td {
    height: auto;
    padding: 22px 3px 23px;
}
.goods_board .review_view .inner_review {
    width: 100%;
    padding: 20px 9px 9px;
    line-height: 25px;
}
.goods_board .name_purchase .name {
    display: block;
    font-weight: 700;
    font-size: 12px;
    color: #514859;
    line-height: 18px;
}
.goods_board .name_purchase .package {
    padding-top: 2px;
    font-size: 14px;
    color: #000;
    line-height: 20px;
}
.goods_board .review_photo {
    padding-top: 30px;
    line-height: 16px;
}
.goods-review-grp-btn {
    text-align: right;
}
.goods_board .goods-review-grp-btn .styled-button {
    height: 32px;
}
.goods-review-grp-btn .styled-button {
    width: auto;
    min-width: 75px;
    padding: 0 15px;
    height: 30px;
    line-height: 28px;
    font-size: 12px;
}
.styled-button {
    display: inline-block;
    width: 175px;
    height: 50px;
    border: 1px solid #5f0080;
    background-color: #fff;
    font-size: 14px;
    color: #5f0080;
    line-height: 50px;
    text-align: center;
}
.xans-product-additional .btnArea .bhs_button {
    margin: 20px 0 20px 5px;
}
.xans-product-additional .btnArea .bhs_button {
    margin: 50px 0 20px 5px;
}
.bhs_button {
    width: 150px;
    display: inline-block;
    line-height: 40px;
    text-align: center;
    background-color: #a3d278;
    border: 1px solid #679e35;
    color: #fff;
    font-size: 15px;
    float: right;
    margin-left: 2px;
    font-size: 13px;
}

</style>
</head>


<body>
<input type="hidden" id="oldPrice" value="${getItemPage.goods_detail_price}" />
<input type="hidden" id="dcPrice" value="${getItemPage.goods_last_price }" />
<fmt:formatNumber var="OldPrice" maxFractionDigits="3" value="${getItemPage.goods_detail_price }" />
<fmt:formatNumber var="DcPrice" maxFractionDigits="3"	value="${getItemPage.goods_last_price }" />
<fmt:formatNumber var="afterDcPrice" maxFractionDigits="3"	value="${getItemPage.goods_last_price-getItemPage.goods_detail_price}" />
<jsp:include page="../default/header.jsp"></jsp:include>

	<div id="Container">
		<div id="Contents">
		
			<!-- 상단 카테고리 history -->
			<div class="page_location">
				<!-- 홈으로 바로가기 버튼 -->
				<a href="main.do" class="loc_home">홈</a>
				<!-- 카테고리 분류하기 -->
				<ul class="loc_history">
					<!-- 2차분류(중분류) 시작 -->
					<li class="" id="viewcate">
					
						<a href="#" class="cate_y">${categoryFirst.category_first_name}</a>
					
						<!-- 중분류 카테고리 리스트들 -->
						<div class="history_cate_box" style="width: 242px;">
							<ul>
						<c:forEach var="categoryFirst" items="${categoryFirstList}">
						<c:if test="${firstSerial==categoryFirst.category_first_serial}">
							<li><a class="on" href="categoryItemPage.do?category_first_serial=${categoryFirst.category_first_serial}" >${categoryFirst.category_first_name}</a></li>
						</c:if>	
						<c:if test="${firstSerial !=categoryFirst.category_first_serial}">
							<li><a class="" href="categoryItemPage.do?category_first_serial=${categoryFirst.category_first_serial}" >${categoryFirst.category_first_name}</a></li>
						</c:if>	
						</c:forEach>
							</ul>
						</div>
					</li>
					<!-- 2차분류(중분류) 끝 -->

					<!-- 3차분류 선택 -->
					<li class="" id="cateview2">
						<c:forEach var="categorySecond" items="${categorySecond}">
                		
                		<c:if test="${secondSerial == categorySecond.category_second_serial}">
						<a href="categoryItemPage2.do?category_first_serial=${categoryFirst.category_first_serial}&category_second_serial=${categorySecond.category_second_serial}" class="cate_y">
						${categorySecond.category_second_name }</a>
						</c:if>
                	</c:forEach>
						
						<!-- 3차분류 리스트들 -->
						<div class="history_cate_box" style="width: 122px;">
						<ul>
					<c:forEach var="categorySecond" items="${categorySecond}">
						<c:if test="${secondSerial == categorySecond.category_second_serial}">
							<li><a href="categoryItemPage2.do?category_first_serial=${categoryFirst.category_first_serial}&category_second_serial=${categorySecond.category_second_serial}" class="on">${categorySecond.category_second_name }</a></li>	
						</c:if>
						<c:if test="${secondSerial != categorySecond.category_second_serial}">	
							<li><a href="categoryItemPage2.do?category_first_serial=${categoryFirst.category_first_serial}&category_second_serial=${categorySecond.category_second_serial}" class="">${categorySecond.category_second_name }</a></li>	
							
						</c:if>
					</c:forEach>		
						</ul>

						</div>
					</li>
					<!-- 3차분류 선택 끝 -->
					
					<!-- 4차분류 선택 -->
					<li class="" id="cateview3">
						<c:forEach var="categorySecond" items="${categorySecond}">
					<c:if test="${secondSerial == categorySecond.category_second_serial}">
					<c:if test="${thirdSerial !=null}">
						<c:forEach var="categoryThird" items="${categoryThird}">
						<c:if test="${thirdSerial==categoryThird.category_third_serial }">
							<a href="categoryItemPage2.do?category_first_serial=${categoryFirst.category_first_serial}&category_second_serial=${categorySecond.category_second_serial}&category_third_serial=${categoryThird.category_third_serial}" class="cate_y">${categoryThird.category_third_name}</a>
						</c:if>
						</c:forEach>	
					</c:if>
					</c:if>
				</c:forEach>
						
						<!-- 4차분류 카테고리 리스트들 -->
						<div class="history_cate_box" style="width: 122px;">
						<ul>
						<c:forEach var="categorySecond" items="${categorySecond}">
						<c:if test="${secondSerial == categorySecond.category_second_serial}">
						<c:if test="${thirdSerial !=null}">
						<c:forEach var="categoryThird" items="${categoryThird}">
							<c:if test="${thirdSerial==categoryThird.category_third_serial }">
								<li><a class="on" href="categoryItemPage2.do?category_first_serial=${categoryFirst.category_first_serial}&category_second_serial=${categorySecond.category_second_serial}&category_third_serial=${categoryThird.category_third_serial}">${categoryThird.category_third_name}</a></li>
							</c:if>
							<c:if test="${thirdSerial !=categoryThird.category_third_serial }">
								<li><a class="" href="categoryItemPage2.do?category_first_serial=${categoryFirst.category_first_serial}&category_second_serial=${categorySecond.category_second_serial}&category_third_serial=${categoryThird.category_third_serial}">${categoryThird.category_third_name}</a></li>
							</c:if>
						</c:forEach>
						</c:if>
						</c:if>
						</c:forEach>		
						</ul>

						</div>
					</li>
					<!-- 4차분류 선택 끝 -->
				</ul>
			</div>
			<!-- 상단 카테고리 분류하기 끝 -->

			<!-- 상품상세 부분 !! -->
			<div class="prd_detail_box renew">
			
				<!-- 상품상세 왼쪽 영역 -->
				<div class="left_area">
					<!-- 상품 썸네일 이미지 -->
					<div class="prd_img">
						<!-- 베스트표시 -->
						<span class="thumb_flag best">${getItemPage.category_goods_info}</span>
						<!-- 상품 메인 이미지 링크 -->
						<img id="mainImg" src="${getItemPage.category_goods_main_img}" onerror="common.errorImg(this);">
						<input type="hidden" id="mainImgSize" value="550">

						<!-- 20200526 상품개선 : 추가 / 발색비교 옵션 선택 시 옵션명 변경 및 관련 썸네일로 변경 -->
						<div class="prd-option-name">
							<!-- 노출 시 is-active class 추가 -->
							<span class="txt" id="goodstxt"></span>
						</div>
					</div>
			
					<!-- 평점 및 공유하기 -->
					<div class="prd_social_info">
						<!-- 평점 및 리뷰 -->
						<p id="repReview">
							<strong>고객 리뷰</strong> <span class="review_point"> <span
								class="point" style="width: 92.0%"> </span>
							</span> <b> 4.6 </b> <em>(0건)</em>
						</p>
						
						<!-- 공유하기 -->
						<p>
							<!-- 카카오톡으로 공유하기 -->
							<a href="javascript:common.sns.doShare('kakaostory');" class="link_social kakao goods_share_kakao">카카오톡 공유하기(새창)</a>
							<!-- 페이스북으로 공유하기 -->
							<a href="javascript:common.sns.doShare('facebook');" class="link_social facebook goods_share_facebook">페이스북 공유하기(새창)</a>
							<!-- URL로 공유하기 -->
							<a href="javascript:common.sns.doShare('url');" class="link_social url goods_share_url">URL공유하기</a>
						</p>
					</div>
					<!-- 평점 및 공유하기 끝 -->

				</div>
				
				<!-- 상품상세 오른쪽 영역 -->
				<div class="right_area">
					<div class="prd_info">

						<!-- 브랜드 -->
						<p class="prd_brand">
							<!-- 해당 브랜드 바로가기 링크 -->
							<a href="#" id="moveBrandShop" class="pd_arrow_link">${getItemPage.category_goods_brand }</a>
						</p>
						
						<!-- 상품 제목 -->
						<p class="prd_name">
							${getItemPage.category_goods_name }
						</p>

						<!-- 상품 가격 -->
						<div class="price">
							<!-- 상품 정가 -->
							<span class="price-1"> <strike>${OldPrice }</strike> <span>원</span></span>
							<!-- 상품 현재가 -->
							<span class="price-2"> <strong>${DcPrice }</strong> <span>원</span></span>

							<!-- 버튼 누르면 현재 할인 적용중인 혜택 볼수있음 -->
							<button type="button" id="btnSaleOpen" class="btn_more" onclick="javascript:discount_show()">혜택정보</button>
							
							<!-- 버튼 눌렀을때 표시되는 혜택정보 -->
							<div id="saleLayer" class="sale_list" style="display: none">
								<p class="tit">혜택 정보</p>
								<div class="detail">
									<div class="list">
										<div class="flex-item">
											<span class="label">판매가</span> <span class="price">${OldPrice}<em>원</em></span>
										</div>

										<div class="price_child">
											<div class="flex-item">
												<span class="label">세일 (22.02.01 ~ 22.03.31)</span> <span
													class="price">${afterDcPrice }<em>원</em></span>
											</div>

									
										</div>
									</div>

									<div class="list">
										<div class="flex-item">
										
											<span class="label"><b>최적가</b></span> <span class="price total">${DcPrice}<em>원</em></span>
										</div>


									</div>
								</div>
								<button type="button" id="btnSaleClose" class="btn_close" >레이어
									닫기</button>
							</div>

						</div>

						<!-- 적용중인 이벤트 모음 -->
						<p class="prd_flag">			
							<span class="icon_flag sale">세일</span>&nbsp;&nbsp;&nbsp;현재<script id="_wauf0z">var _wau = _wau || []; _wau.push(["dynamic", "0s8n8ragwn", "f0z", "ffffff000000", "small"]);</script><script async src="//waust.at/d.js"></script> 명이 보고 있습니다.
						</p>
						<!-- 배송정보와 결제혜택 -->
						<div class="prd_more_info">
							<!-- 배송정보 -->
							<div class="row">
								<p class="tit">
									배송정보
									<!-- 링크 클릭시 팝업창으로 배송비 확인가능 -->
									<a href="javascript:deli_show();" class="ico_info" style="margin: 5px 0 0 7px">배송정보 레이어 열기</a>
								</p>
								<p></p>

								<!-- 일반배송 및 오늘드림 설명 -->
								<ul class="bl_list">
									<li><span>일반배송</span>
										<div>
											2,500원 ( 20,000 원 이상 무료배송 )
											<br>
											<em>올리브영 배송 </em>
											<em>평균 3일 이내 배송</em>
										</div>
									</li>

									
									
								</ul>
							</div>
							
<!-- 배송정보 팝업 -->							
	<div class="layer_pop_wrap w400" id="dlexAmtPopup" style="display: none;">
	<div class="layer_cont2 w400" id="dlexAmtCont" data-dlv-cd="20" data-set="true">
		<h2 class="layer_title2">배송비 안내</h2>

		<dl class="oy_dlex">
			<dt class="bold_str"><span id="dlvShpStr">올리브영</span> 배송</dt>
			<dd><span id="dlexAmt">2,500</span>원</dd>
		</dl>
		<dl class="add_dlex_amt">
			<dt class="bold_str">추가 배송비</dt>
			<dd></dd>
		</dl>
		<dl class="dlex_amt_info">
			<dt>도서산간</dt>
			<dd><span id="ferryRgnDlexAmt">2,500</span>원</dd>
		</dl>
		<dl class="dlex_amt_info">
			<dt>제주지역</dt>
			<dd><span id="jejuDlexAmt">2,500</span>원</dd>
		</dl>
		<dl class="dlex_amt_info">
			<dt>제주도서산간</dt>
			<dd><span id="jejuFerryRgnDlexAmt">7,000</span>원</dd>
		</dl>
		<button class="layer_close type2" onclick="javascript:deli_hide();">창 닫기</button>
	</div>
</div>
<!-- END 배송정보 팝업 -->

							<!-- 배송정보 끝 -->

							<!-- 결제혜택 -->
							<div class="row">
								<p class="tit">결제혜택</p>
								<div class="txt_list">
									<p>
										THE FY 카드 추가 10%할인 <a
											href="javascript:goods.detail.openCardFullPop();"
											class="ico_info">카드혜택가 안내 레이어 열기</a>
									</p>

									<!-- <li> -->
									<p>
										FY ONE 포인트 <span class=""></span> 최대 2% 적립 예상 <a
											href="javascript:goods.detail.openCjonepntPop();"
											class="ico_info">CJ ONE 포인트 예상적립 레이어 열기</a>
									</p>

									<!-- </li> -->


									<!-- <p>THE CJ 카드 추가 10%할인 <a href="javascript:goods.detail.openCardFullPop();" class="ico_info">카드혜택안내 레이어열기</a></p> -->
									<!-- <p>CJ ONE 포인트 2% 예상 적립</p> -->
									<!-- 등급별 노출 -->
									<!-- <p>CJ ONE 포인트 <span class="color-1">GOLD OLIVE</span> 2.0% 적립 예상 <a href="#" class="ico_info">등급혜택 레이어 열기</a></p>
                                    <p>CJ ONE 포인트 <span class="color-2">BLACK OLIVE</span> 2.0% 적립 예상  <a href="#" class="ico_info">등급혜택 레이어 열기</a></p>
                                    <p>CJ ONE 포인트 <span class="color-3">GREEN OLIVE</span> 1.5% 적립 예상  <a href="#" class="ico_info">등급혜택 레이어 열기</a></p>
                                    <p>CJ ONE 포인트 <span class="color-4">BABY OLIVE</span> 1% 적립 예상  <a href="#" class="ico_info">등급혜택 레이어 열기</a></p>-->
								</div>
							</div>
							<!-- 결제혜택 끝 -->

						</div>

						<!-- 구매수량 선택 -->
						<div class="option_add_area">
							<div class="prd_cnt_box">
								<div class="tit_area">
									<span>구매수량</span>
								</div>
								<div class="cont_area">
									<input type="hidden" class="hprice"/>
									<input type="hidden" class="hdiscount"/>
									<input type="hidden" class="hserial" name="category_goods_serial" value="${getItemPage.category_goods_serial }"/>
									<span class="option_cnt_box">
										<!-- 수량 감소 버튼 -->
										<button class="btnCalc minus" onclick="javascript:quantity(-1)">수량 1감소</button>
										<!-- 수량 수동입력 텍스트 -->
										<input type="text" id="cartCnt" name="goods_cart_count" value="1" class="tx_num" title="구매수량">
										<!-- 수량 증가 버튼 -->
										<button class="btnCalc plus" onclick="javascript:quantity(1)">수량 1증가</button>
									</span>
								</div>
							</div>


						</div>

						<!-- 상품금액 합계 -->
						<div class="prd_total_price">
							<span class="tx_tit">상품금액 합계</span> <input type="hidden" id="totalCnt" value="1" name="totalCnt">
							<input type="hidden" id="totalPrc" value="26640" name="totalPrc">
							<span class="tx_cont"><span class="tx_num" id="totalPrcTxt">${DcPrice}</span>원</span>
						</div>

					
		
						<!-- 장바구니, 바로구매, 찜하기 버튼 -->
						<div class="prd_btn_area">
							
							<!-- 장바구니 -->
							<button class="btnBasket  goods_cart"
								onclick="javascript:popLayer();">장바구니</button>
							<!-- <button class="btnBuy goods_buy" id="cartBtn" onClick="javascript:goods.detail.bindBtnBuy();">구매하기</button> -->
							
							<!-- 바로구매 -->
							<button class="btnBuy goods_buy" id="cartBtn"
								onclick="javascript:common.popLayer.todayDelivery.openTodayDeliveryNotice('goodsdetail.order');"
								data-attr="상품상세^주문유형^바로구매">바로구매</button>
							
							<button class="btnSoldout dupItem goods_cart"
								style="display: none;" onclick="javascript:;">일시품절</button>
							
							<button class="goods_buy btnReStock" style="display: none;"
								onclick="javascript:;"
								data-attr="상품상세^재입고알림신청^★힙으뜸 세럼★한율 힘찬콩 탄력 세럼 증량 기획 30ml(+20ml+크림4ml)_클릭"
								data-trk="/Result_1">재입고 알림신청</button>
							
							<!-- 찜하기 -->
							<button class="btnZzim  goods_wish"
								data-ref-goodsno="A000000161610"
								data-attr="상품상세^상품좋아요^★힙으뜸 세럼★한율 힘찬콩 탄력 세럼 증량 기획 30ml(+20ml+크림4ml)_0">찜하기전</button>
						</div>

					</div>
				</div>
			
			</div>

			<!-- 상품구매가능 매장확인, 상품 브랜드관 이동 -->
			<div class="prd_more_info type2 type-logo">
				<!-- 구매가능 매장 -->
				<div class="row store_search">
					<a href="javascript:;"
						class="btn_off_store goods_offline link_arrow gen1"
						data-rel="layer" data-target="offStoreStock"
						data-attr="상품상세^구매가능매장^구매가능매장확인버튼"> <em><i>구매 가능 매장</i>을
							확인해보세요</em>
					</a>
					<!-- <a href="javascript:mgoods.detail.openOffstoreFullPop2();" class="link_arrow"><span>구매 가능 매장을 확인해보세요</span></a> -->
				</div>
				
				<!-- 브랜드관 -->
				<div class="row">
					<div class="brand_like">
						<p class="inner">
							<a href="javascript:;" id="moveBrandShop_like"
								class="link arr goods_brand">
								<!-- <span class="img" style="background-image:url('/pc-static-root/image/product/img_brand_default.png')"></span> -->
								<span class="logo"
								style="background-image: url()"></span>
								<em>${getItemPage.category_goods_brand} 브랜드관</em>
							</a>

							<!-- 브랜드관 좋아요 버튼 -->
							<button type="button" id="brnd_wish" class="icon goods_brandlike ">좋아요 해제됨</button>
						</p>
					</div>
				</div>

			</div>

			
			<!-- *********************************************************************************************************************************************************** -->
			
		
			<!-- 상품설명, 구매정보, 리뷰, Q&A 4가지 탭을 설정하는 영역 -->
			<!-- 4가지 탭이 중 하나가 활성화 되면 class = "on"이 추가됨 -->
			<ul class="prd_detail_tab" id="tabList">
				<!-- 상품설명탭 -->
				<li class = "on" id="productInfo" ><a href="javascript:;" class="goods_detailinfo" data-attr="상품상세^상품상세_SortingTab^상품설명">상품설명</a></li>
				<!-- 구매정보탭 -->
				<li class = "" id="buyInfo" ><a href="javascript:;" class="goods_buyinfo" data-attr="상품상세^상품상세_SortingTab^구매정보">구매정보</a></li>
				<!-- 리뷰탭 -->
				<li class = "" id="reviewInfo"><a href="javascript:;" class="goods_reputation" data-attr="상품상세^상품상세_SortingTab^리뷰">리뷰<span>(${fn:length(reviews)})</span></a></li>
				<!-- Q&A탭 / db에서 리뷰 개수도 가져와야됨-->
				<li class = "" id="qnaInfo" ><a href="javascript:;" class="goods_qna" data-attr="상품상세^상품상세_SortingTab^Q&amp;A">Q&amp;A<span>(${fn:length(goodsqnalist)})</span></a></li>
			</ul>
			
			<!-- 상품설명탭 선택시 보여지는 영역 -->
			<!-- 해당 탭의 내용을 보고싶으면 div class 에 show를 붙인다. -->
			<div class="tabConts prd_detail_cont show" id ="tab1">
				<div class="detail_area">

		<!-- 공지배너 삭제해둠 -->


					<!-- 상품 홍보하는 이미지 및 영상 링크넣는 곳 -->
					<div class="contEditor">
						<img alt=""
							src="${getItemPage.category_goods_detail }"
							style="height: 100%; width: 750px"><br> 

					</div>

					<!-- 상품 홍보 이미지 하단에 알림 문구창 -->
					<div style="text-align: center; padding: 20px 0px 0px 0px;">
						<p
							style="display: inline-block; font-size: 14px; border: 1px solid #ddd; padding: 10px 40px 10px 40px; text-align: center;">본
							상품 정보(상품 상세, 상품 설명 등)의 내용은 협력사가 직접 등록한 것 입니다.</p>
					</div>

				</div>
			</div>
			
			<!-- 구매정보탭 클릭시 보여지는 영역 / 주석달아야함 -->
			<div class="tabConts prd_detail_cont" id="tab2">
					<h3 class="detail_tit">상품정보 제공고시</h3>
					<div id="kcInfo"></div>
					
					
					<div id="artcInfo">		

						<dl class="detail_info_list">
							<dt>용량 또는 중량</dt>
							<dd>30ml</dd>
						</dl>
		
						<dl class="detail_info_list">
							<dt>제품 주요 사양</dt>
							<dd>모든 피부용</dd>
			
		
						</dl>

		
						<dl class="detail_info_list">
							<dt>사용기간(개봉 후 사용기간)</dt>
							<dd>개봉전 36개월, 개봉후 12개월 이내 사용</dd>
			
		
						</dl>

						<dl class="detail_info_list">
							<dt>사용방법</dt>
							<dd>세안 후 사용</dd>				
						</dl>

						<dl class="detail_info_list">
							<dt>화장품제조업자 및 화장품책임판매업자</dt>
							<dd>㈜코스비전 / ㈜아모레퍼시픽</dd>
						</dl>

						<dl class="detail_info_list">
							<dt>제조국</dt>
							<dd>대한민국</dd>
						</dl>

						<dl class="detail_info_list">
							<dt>화장품법에 따라 기재해야 하는 모든 성분</dt>
							<dd>정제수, 글리세린, 부틸렌글라이콜, 다이프로필렌글라이콜, 베타인, 1,2-헥산다이올, 변성알코올, 스쿠알란, 다이에톡시에틸석시네이트,<br>폴리글리세릴-10스테아레이트, 수크로오스스테아레이트, 폴리글리세릴-10라우레이트, 피토스테롤(3,000 ppm), 카보머, 하이드로제네이<br>티드레시틴, 하이드로제네이티드포스파티딜콜린, 트로메타민, 잔탄검, 에틸헥실글리세린, 아데노신, 다 이소듐이디티에이, 덱스트린,<br>카카오추출물, 피토스핑고신, 검정콩오일(18.94 ppm) , 동백나무꽃추출물(5 ppm), 세라마이드엔피(4 ppm), 토코페롤, 카놀라오일, 로즈<br>마리잎추출물</dd>
						</dl>

						<dl class="detail_info_list">
							<dt>기능성 화장품 식품의약품안전처 심사필 여부</dt>
							<dd>Y</dd>
						</dl>

						<dl class="detail_info_list">
							<dt>사용시 주의사항</dt>
							<dd>1. 화장품 사용 시 또는 사용 후 직사광선에 의하여 사용부위가 붉은 반점, 부어오름 또는 가려움증 등의 이상 증상이나 부작용이<br>있는 경우 전문의 등과 상담하십시오. 2. 상처가 있는 부위 등에는 사용을 자제하십시오. 3. 보관 및 취급 시의 주의 사항 1)어린<br>이의 손이 닿지 않는 곳에 보관하고, 삼켰을 경우 즉시 전문의와 상담하십시오. 2)직사광선을 피해서 보관하십시오.</dd>
						</dl>

						<dl class="detail_info_list">
							<dt>품질보증기준</dt>
							<dd>본 제품에 이상이 있을 경우, 공정거래위원회 고시에 의거 보상해 드립니다. 고객서비스센터(수신자요금부담) 080-023-5455</dd>
						</dl>


						<dl class="detail_info_list">
							<dt>소비자상담 전화번호</dt>
							<dd>080-023-5454(수신자 요금부담) 운영시간 : 09:00 ~ 18:00 (점심시간 제외, 12-14시) (주말, 공휴일 제외)</dd>
						</dl>

					</div>
					
					
					
					<h3 class="detail_tit mgT40">배송안내</h3>
					<dl class="detail_info_list" id="dlexAjaxInfo">
						<dt>배송비/배송가능일</dt>
						<dd>
							<div>
								<p>
									<strong>[일반 배송]</strong>
								</p>
								<p>
									<strong>배송지역 : </strong>전국
								</p>
								<p>
									<strong>배송비 : </strong>



									<!-- 그외 표기 -->
									<span>2,500원</span>
								</p>

								<p>
									올리브영 배송 상품의 총 결제금액 <span>20,000</span>원 이상일 경우 <span>무료배송</span>
									됩니다.
								</p>

								<p>도서, 산간, 오지 일부 지역은 배송비가 추가될 수 있습니다.</p>



								<p>
									<strong>배송가능일 : </strong><span>3</span>일
								</p>
								<p>배송가능일이란 본 상품을 주문하신 고객님들께 상품 배송이 가능한 기간을 의미합니다. 단, 연휴 및
									공휴일은 기간 계산시 제외하며 현금 주문일 경우 입금일 기준 입니다.</p>
								<p>예약 상품의 경우 예약된 날짜에 출고되며, 상품의 입고가 빠르게 진행된 경우 예약일 보다 일찍 배송될
									수 있습니다.</p>


							</div>
							<br>
							<!-- <div>
								<p>
									<strong>[오늘드림 배송]</strong>
								</p>
								<p>
									<strong>배송지역 : </strong>전국(일부지역 제외)
								</p>
								<p>
									<strong>배송비 : </strong><strong>빠름</strong>&nbsp;<span>5,000원</span>,
									<strong>3!4!/미드나잇</strong>&nbsp;<span>2,500원</span>
								</p>
								<p>
									오늘드림 배송 상품의 총 결제금액&nbsp;<span>30,000</span>원 이상일 경우&nbsp;<span>무료배송</span>&nbsp;됩니다.
								</p>
								<p>오늘드림 배송비는 도서, 산간지역에 관련없이 배송비가 동일합니다.</p>
								<div class="crlfix">
									<p style="float: left;">
										<strong>배송가능시간 : </strong>
									</p>
									<div style="margin-left: 87px">
										<p>
											<strong>빠름/미드나잇 </strong>당일 20시까지 주문 시 당일 도착, 이후 주문 건 익일 도착
										</p>
										<p>
											<strong>3!4! </strong>당일13시까지 주문 시 당일 도착, 이후 주문 건 익일 도착
										</p>
									</div>
								</div>
							</div> -->
						</dd>
					</dl>



					<h3 class="detail_tit mgT40">교환/반품/환불 안내</h3>
					<dl class="detail_info_list">
						<dt>교환/반품 신청 방법</dt>
						<dd>
							마이페이지 내 주문내역에서 신청가능하며,<br>반품 신청의 경우 택배회수 / 매장방문(일부 매장)중 선택하여
							신청가능합니다.
						</dd>
					</dl>
					<dl class="detail_info_list">
						<dt>교환/반품 신청 기간</dt>
						<dd>
							교환, 반품 신청은 배송이 완료된 후 15일 이내 가능합니다.<br> 고객님이 배송 받으신 상품의 내용이
							표시∙광고의 내용과 다르거나 계약내용과 다르게 이행된 경우에는 배송 받으신 날로부터 3개월 이내, 혹은 그 사실을 알
							수 있었던 날로 부터 30일 이내에 가능합니다.
						</dd>
					</dl>
					<dl class="detail_info_list">
						<dt>교환/반품/회수 비용</dt>
						<dd>
							<p>
								<strong>[택배 회수 반품]</strong>
							</p>
							고객님의 사유에 의한 교환 및 반품은 회수 및 배송에 필요한 비용을 부담해주셔야 합니다.<br> 기본 비용은
							교환 5,000원(회수비+배송비), 반품 2,500원(회수비)입니다.<br> 제주도 및 도서산간 지방에는
							추가 운임이 발생합니다.<br> 당사의 사유(상품의 하자, 배송의 오류 등)로 인한 경우 교환 및 반품에
							필요한 비용은 당사에서 부담합니다. <br> <br>
							<p>
								<strong>[매장 방문 반품]</strong>
							</p>
							올리브영 일반 주문 Green Olive 이상 등급 또는 오늘드림 주문에 한해서 별도 회수비 부담없이 반품
							가능합니다.(단, 일부 매장만 가능)
						</dd>
					</dl>
					<dl class="detail_info_list">
						<dt>교환/반품 불가안내</dt>
						<dd>
							고객님의 사유에 의한 교환 및 반품이 불가한 경우<br> 1. 배송이 완료된 후 15일이 경과한 경우<br>
							2. 포장 훼손 및 사용 또는 일부 소비, 구성품 누락 및 상품의 결함 발생으로 인해 상품의 가치가 훼손된 경우<br>
							<br> 당사의 사유에 의한 교환 및 반품이 불가한 경우<br> 1. 배송 받으신 날로부터 3개월,
							혹은 그 사실을 알 수 있었던 날로 부터 30일이 경과한 경우<br> 2. 당사의 귀책(상품의 불량, 생산
							및 제조 및 배송 간의 파손 등)으로 인한 현상이 아닌 해당 상품의 고유한 특성, 혹은 상품 수령 후 고객님의 과실로
							인한 문제임이 규명된 경우
						</dd>
					</dl>
				</div>
			
		 <div class="tabConts prd_detail_cont" id="gdasContentsArea">
            <div class="xans-element- xans-product xans-product-additional detail_board  ">
               <div class="board">
                  <span class="line"></span>
                  <form name="frmList">
                     <input type="hidden" name="sort" value>
                     <input type="hidden" name="page_num" value>
                     <input type="hidden" name="category_goods_serial" value="${getItemPage.category_goods_serial }">
                     <input type="hidden" name="category_first_serial" value="${getItemPage.category_first_serial }">
                     <input type="hidden" name="category_second_serial" value="${getItemPage.category_second_serial }">
                     <input type="hidden" name="category_third_serial" value="${getItemPage.category_third_serial }">
                     <div class="title_txt">
                        <h2>PRODUCT REVIEW</h2>
                        <div class="sort-wrap">
                           <ul class="list_type1 old">
                              <li>
                                 <span class="ico"></span>
                                 <p class="txt">상품에 대한 문의를 남기는 공간입니다. 해당 게시판의 성격과 다른 글은 사전동의 없이 담당 게시판으로 이동될 수 있습니다.</p>
                              </li>
                              <li>
                                 <span class="ico"></span>
                                 <p class="txt">배송관련, 주문(취소/교환/환불)관련 문의 및 요청사항은 마이페이지 내 <a href="#">1:1문의</a>에 남겨주세요.</p>
                              </li>
                           </ul>
                           <div class="sort" style="bottom: -9px">
                              <select onchange="this.form.sort.value = this.value; this.form.submit()">
                                 <option value="1">최근등록순</option>
                                 <option value="2">좋아요많은순</option>
                                 <option value="3">조회많은순</option>
                              </select>
                           </div>
                        </div>
                     </div>
                     <table class="xans-board-listheader" width="100%" border="0" cellpadding="0" cellspacing="0">
                        <caption style="display:none;">구매후기 제목</caption>
                        <colgroup>
                           <col style="width:70px;">
                           <col style="width:auto;">
                           <col style="width:51px;">
                           <col style="width:77px;">
                           <col style="width:100px;">
                           <col style="width:40px;">
                           <col style="width:80px;">
                        </colgroup>
                        <tbody>
                           <tr>
                              <th scope="col" class="input_txt">번호</th>
                              <th scope="col" class="input_txt">제목</th>
                              <th scope="col" class="input_txt"><span class="screen_out">회원 등급</span></th>
                              <th scope="col" class="input_txt" align="left">작성자</th>
                              <th scope="col" class="input_txt">작성일</th>
                              <%--<th scope="col" class="input_txt">도움</th> --%>
                              <th scope="col" class="input_txt">조회</th>
                           </tr>
                        </tbody>
                     </table>
                     <!-- 첫번째 리뷰 -->
                     <c:forEach var="review" items="${reviews }">
                     <div class="tr_line">
                        <table class="xans-board-listheaderd tbl_newtype1" width="100%" cellpadding="0" cellspacing="0" onclick="">
                           <caption style="display:none;">구매후기 내용</caption>
                           <colgroup>
                              <col style="width:70px;">
                              <col style="width:auto;">
                              <col style="width:51px;">
                              <col style="width:77px;">
                              <col style="width:100px;">
                              <col style="width:40px;">
                              <col style="width:80px;">
                           </colgroup>
                           <tbody>
                              <tr>
                                 <input type="hidden" name="category_goods_serial" value="${goods.category_goods_serial }">
                                 <input type="hidden" name="category_first_serial" value="${goods.category_first_serial }">
                                 <input type="hidden" name="category_second_serial" value="${goods.category_second_serial }">
                                 <input type="hidden" name="category_third_serial" value="${goods.category_third_serial }">
                                 <input type="hidden" name="index" value="1">
                                 <input type="hidden" name="image" value="true">
                                 <input type="hidden" name="grade" value="0">
                                 <input type="hidden" name="best" value="true">
                                 <input type="hidden" name="pNo" value>
                                 <td align="center" >${review.rnum }</td>
                                 <td class="subject">
                                    <div class="fst">
                                       ${review.review_title }
                                    </div>
                                    <div class="snd"></div>
                                 </td>
                                 <td class="user_grade grade_comm"></td>      
                                 <c:if test="${fn:length(review.user_id)>=4 }">
                                    <td class="user_grade">
                                       ${fn:substring(review.user_id,0,fn:length(review.user_id)-3) }***
                                    </td>
                                 </c:if>
                                 <c:if test="${fn:length(review.user_id)<4 }">
                                    <td class="user_grade">
                                       ${fn:substring(review.user_id,0,fn:length(review.user_id)/2) }***
                                    </td>
                                 </c:if>
                              
                                 <td class="time"><fmt:formatDate value="${review.review_date }" pattern="yyyy-MM-dd"/></td>
                                 <%--<td>
                                    <span class="review-like-cnt" data-sno="20782595">${review.review_hit }</span>
                                 </td> --%>
                                 <td>
                                    <span class="review-hit-cnt" data-sno="20782595">${review.review_hit }</span>
                                 </td>
                              </tr>
                           </tbody>
                        </table>
                        <script>
                         $(".fst").click(function(){
                              $(".review_view").css("display", "block");
                         }); 
                         
                         

                        </script>
                        <div data-sno="" class="review_view" style="display:none;">
                           <div class="inner_review">
                              <div class="name_purchase">
                                 <strong class="name">${getItemPage.category_goods_name }</strong>
                                 <p class="package"></p>
                              </div>
                              <div class="review_photo">
                                 <c:if test="${review.review_image_main != null }">
                                 <img src="${review.review_image_main }" alt="이미지가 첨부됨">
                                 </c:if>
                              </div>
                              ${fn:replace(review.review_content,"ln","<br>")} 
                              
                           </div>
                           <div class="goods-review-grp-btn">
                              <button type="button" class="styled-button review-like-btn" data-sno="2078259" onclick="review_like('20782595', $(this));">
                                 도움이 돼요
                                 <span class="num">1</span>
                              </button>
                           </div>
                        </div>
                     </div>
                     </c:forEach>
                        <form id="moveForm" method="get">
                           <input type="hidden" name="pageNum" value="${pagination.page}">
                           <input type="hidden" name="amount" value="${pagination.range}">
                        </form>
                     <!--// 첫번째 리뷰 -->
                     <script type="text/javascript">
            
            

         </script>
                  </form>
                  
                  <%-- <p class="btnArea after">
                     <a href="#none" onclick="popup_register()>">
                     <a onclick="location.href='reviewWrite.do?category_goods_serial=${getItemPage.category_goods_serial}'">
                        <span class="bhs_button" style="line-height:30px; width:130px;">후기쓰기</span>
                     </a>
                  </p> --%>
                  
               </div>
            </div>
            
            <!-- 리뷰 페이징 처리 영역 -->
            <div class="board_pg_area">
               <a href="#goods-review" class="layout-pagination-button layout-pagination-prev-page" onclick="javascript:reviewPaging(-1);">이전페이지로 가기</a>
               <a href="#goods-review" class="layout-pagination-button layout-pagination-next-page" onclick="javascript:reviewPaging(1);">다음페이지로 가기</a>
            </div>
      
         </div>
          <!--// 리뷰탭 수정 부분 -->

			<!-- Q&A탭 클릭시 보여지는 영역 -->
			<%--
			<!-- Q&A 리뷰가 아예 없었을시 -->
			<div class = "tabConts prd_detail_cont show" id = "qnaContentsArea">
				<div class = "prd_qna_tit">
					<p onclick = "#" style = "cursor : pointer;">
						★ 상품 문의사항이 아닌 반품/교환관련 문의는 고객센터 1:1 문의를 이용해주세요.
					</p>
					<button class = "btnInquiry goods_qna_inquiry" onclick = "goods.detail.qna.moveGoodsQnaRegPage('');">
						상품문의
					</button>
				</div>
				<ul class = "prd_qna_list" id = "prd_qna_list">
					<li class = "no_data">
						<p>등록된 상품문의가 없습니다.</p>
					</li>
				</ul>
				<!-- pageing 처리 -->
				<div class = "pageing"></div>
				<!-- script 부분 -->
			</div>
			<!-- //Q&A 리뷰가 아예 없었을시 -->
			--%>
			<!-- Q&A 팝업창 -->

<div class="layer_pop_wrap" id="dim" style="z-index: 999;"></div>
	
<div class="popup-contents" id="pop_cont" style="top: 1350px; width: 650px; margin: -258px 0px 0px -325px; z-index: 999; left: 50%; display:none;">
	<div class="pop-conts">
		<form name="goodsQnaForm" id="insertgoodsqna" method="post" action="insertGoodsQna.do">
			<input type="hidden" name="user_id"  value="${userId }">
			<input type="hidden" name="category_first_serial" value="${getItemPage.category_first_serial }"/>
			<input type="hidden" name="category_second_serial" value="${getItemPage.category_second_serial }"/>
			<input type="hidden" name="category_third_serial" value="${getItemPage.category_third_serial }"/>
			<input type="hidden" name="category_goods_serial" value="${getItemPage.category_goods_serial }"/>
			<input type="hidden" name="qna_goods_name" value="${getItemPage.category_goods_name }"/>
			<input type="hidden" name="qna_goods_serial" value="0"/>
			<h1 class="ptit">상품 Q&amp;A 작성</h1>
	
				<div class="mypage-qna-write">
				<div class="optionSec">
					<h3>아래의 문의 유형을 선택해주세요.</h3>
					<div class="radioGT1">
						<label class="">
							<strong>상품문의</strong>
						</label>
						
					</div>
					
				</div>
	
				<p class="common4s-text">${getItemPage.category_goods_name}</p>
	
				<!-- 등록제한이 없는 한줄상품평 작성 -->
				<div class="reviews-write">
					<textarea cols="5" rows="1" id="gdasCont" name="qna_goods_content" placeholder="Q&amp;A 게시판에서는 고객님의 정보 확인이 어려우므로 배송문의 등은 1:1 게시판 이용 부탁드립니다." ></textarea>
					<!-- <p><span id="curTxtLength">0</span>자/250자</p> -->
				</div>
				<!-- 등록제한이 없는 한줄상품평 작성 -->
	
				<div class="btnGroup">
					<button id="cancel" type="button" class="btnGray" onclick="javascript:div_hide();">취소</button>
					<button id="reg" type="button" class="btnGreen" onclick="javascript:goodsQnaAction('insertGoodsQna.do');">등록</button>				
				</div>
				<div class="usage-guide">
					<h2 class="stit">이용안내</h2>
					<ul>
						<li>재판매글, 상업성 홍보글, 미풍양속을 해치는 글 등 상품 Q&amp;A의 취지에 어긋나는 글은 삭제될 수 있습니다.</li>
					</ul>
				</div>
			</div>
			<!-- [e] 2021.04.19 modify -->
	
			<button type="button" class="ButtonClose" onclick="javascript:div_hide()">팝업창 닫기</button>
			<!-- [s] 2021.04.19 add -->
			<div class="alertPop">
				<p class="txt">해당 상품의 배송/교환/반품 문의를 위해<br>1:1문의 게시판을 이용해주세요.</p>
				<p class="btnGroup">
					<button type="button" class="btnMedium wGreen btnClose" onclick="javascript:div_hide();">취소</button>
					<button id="btnCounsel" type="button" class="btnMedium btnGreen" onclick="location.href='oneqmain.do'">1:1문의 바로가기</button>
				</p>
			</div>
		</form>
	</div>
</div>	
	<!--END Q&A 팝업창 -->
			<!-- Q&A 리뷰가 있을 경우 -->
			
				<div class = "tabConts prd_detail_cont" id = "qnaContentsArea">
					<div class = "prd_qna_tit">
						<c:if test="${userId !=null }">
						<p onclick = "location.href='oneqmain.do'" style = "cursor : pointer;">
							★ 상품 문의사항이 아닌 반품/교환관련 문의는 고객센터 1:1 문의를 이용해주세요.
						</p>
						</c:if>
						<c:if test="${userId ==null }">
						<p onclick = "location.href='login.do'" style = "cursor : pointer;">
							★ 상품 문의사항이 아닌 반품/교환관련 문의는 고객센터 1:1 문의를 이용해주세요.
						</p>
						</c:if>
						<c:if test="${userId==null }">
						<button class = "btnInquiry goods_qna_inquiry" onClick="location.href='login.do';">
							상품문의
						</button>
						</c:if>
						<c:if test="${userId!=null }">
						<button class = "btnInquiry goods_qna_inquiry" onClick="javascript:div_show()">
							상품문의
						</button>
						</c:if>
					</div>
					
					<ul class = "prd_qna_list" id = "prd_qna_list">
					
					<c:forEach var="goodsqnalist" items="${goodsqnalist}" varStatus="postNum">	
						<li class="">
							<div class = "qna_tit_box">
							
								<p class = "qna_question">
								<c:if test="${goodsqnalist.qna_goods_answer_date==null}">
									<span class = "qna_flag">답변대기</span>
								</c:if>
								<c:if test="${goodsqnalist.qna_goods_answer_date!=null}">
									<span class = "qna_flag complete">답변완료</span>
								</c:if>	
									<a style="cursor:pointer;" class = "completeBind">${fn:replace(goodsqnalist.qna_goods_content,"ln","")}</a>
								</p>
								<p class = "tx_userid">
							
									<c:if test="${goodsqnalist.user_id!=userId}">
									<span>${fn:substring(goodsqnalist.user_id,0,3)}****</span>
									</c:if>
									<c:if test="${goodsqnalist.user_id==userId}">
									<span>${goodsqnalist.user_id}</span>
									</c:if>
								</p>
								<p class = "tx_date">
									<fmt:formatDate value="${goodsqnalist.qna_goods_date}" pattern="yyyy-MM-dd"/>
								</p>
							</div>
							<!-- 질문과 답변 상세보기 -->
							<div class = "qna_answer_box">
								<div class = "tx_question">
									<span class = "ico_qna question">질문	</span>
									${fn:replace(goodsqnalist.qna_goods_content,"ln","<br>")}
								</div>
								<c:if test="${goodsqnalist.qna_goods_answer_date !=null }">
								<div class="tx_answer">
									<%pageContext.setAttribute("newLineChar", "\n"); %>
									<span class="ico_qna answer">답변</span>
										<%-- ${fn:replace(goodsqnalist.qna_goods_answer,"ln","<br>")} --%>
										${fn:replace(goodsqnalist.qna_goods_answer,newLineChar,"<br/>")}
									<div style="margin-top:30px;">
										<span>※답변 내용은 각 브랜드사에서 작성되며, 올리브영의 서비스/정책과 상이할 수 있는 점 안내드립니다.</span>
									</div>
								</div>
								</c:if>
								
							</div>
						</li>						
					</c:forEach>
					</ul>
					
					<div class = "pageing">
						<a onclick="javascript:qnaPaging(-1)">이전</a>
						<strong title = "현재 페이지">${qnaPaging }</strong>
						<a onclick="javascript:qnaPaging(1)">다음</a>
					</div>
					<!-- script 부분 -->
				</div>
			<!-- //Q&A 리뷰가 있을 경우 --> 
			<!-- //Q&A탭 클릭시 보여지는 영역 -->
		</div>
		<!-- Contents 끝 -->
	</div>
	
	<!-- Container 끝 -->
<jsp:include page="../default/footer.jsp"></jsp:include>
<!-- 장바구니 버튼 누르면 나올 팝업 창 -->
<%--<div class="layer_pop_wrap w490" id="basketOption" style="z-index: 999; display: block; left: 50%; margin-left: -245px; top: 341.5px;" data-quick-yn="N">
</div> --%>
<div class="layer_pop_wrap w490" id="basketOption" style="z-index: 999; display: none; left: 50%; margin-left: -245px; top: 341.5px;" data-quick-yn="N">
   <div class="popup-contents" style="top:50%;width:534px;margin:-365px 0 0 -268px;">
      <div class="pop-conts">
         <h1 class="ptit">선택완료</h1>
         <div class="popCont contPd01">
            <p class="txt_onbag">
               <p class="txt_onbag">장바구니에 추가되었습니다.</p>
            </p>
         </div>
         <div class="area2sButton pdTz">
            <button class="btnlG01 pdzero w130" onclick="pop_hide()"><span>쇼핑계속하기</span></button>
            <button class="btnG01 pdzero w130" onclick="location.href='cartPage.do';"><span>장바구니 확인</span></button>
         </div>
         <div class="lay-cu-box"></div>
         
         <button type="button" class="ButtonClose" onclick="pop_hide()">팝업창 닫기</button>
      </div>
   </div>
   </div>
<script>
function goodsQnaAction(direction){
	document.goodsQnaForm.action=direction;
	document.goodsQnaForm.submit();
}
var firstSerial=${getItemPage.category_first_serial};
var secondSerial=${getItemPage.category_second_serial};
var thirdSerial=${getItemPage.category_third_serial};
var goodsSerial=${getItemPage.category_goods_serial};
var qnaMaxPage=${qnaPaging};
var qnaPage=${currentPage};

function qnaPaging(pageMv){
	if(qnaPage+pageMv>=0&&qnaPage+pageMv<qnaMaxPage){
		location.href="itemPage.do?category_first_serial="+String(firstSerial)+"&category_second_serial="+String(secondSerial)+"&category_third_serial="+String(thirdSerial)+"&category_goods_serial="+String(goodsSerial)+"&qnaPage="+String(qnaPage+pageMv);
	}
}

</script>
<script>

function popLayer(){
    
    var serial = parseInt($(".option_add_area .cont_area").find("input.hserial").val());
    var count = $(".option_add_area .cont_area").find("span.option_cnt_box").find("#cartCnt").val();

   $.ajax({
       url: "cartInput.do",
       type: "post",
       data : {"category_goods_serial" : serial, "goods_cart_count" : count},
       dataType: "text",
       success : function(res){
                if(res!= "good"){
                  alert(res);
                }else{
                 $("#basketOption").css("display", "block");   
                }
       },
       error : function() {
          alert("카트 담기 실패");
       }
    });
};


   //24시간 기준 쿠키 설정하기  
   var setCookie = function (cname, cvalue, exdays) {
      var now = new Date();
      var date = new Date(now.getFullYear(),now.getMonth(),now.getDate(), 09,00,00);
      
      date.setTime(date.getTime() + (exdays*24*60*60*1000));
        var expires = "; expires=" + date.toUTCString();
        
        document.cookie = cname + "=" + cvalue + expires;
   }

   //오늘 하루만 추천 받지 않기
   var _checkRecom = $("#recomCheckTo"); 
   _checkRecom.change(function(){
      if($(this).is(":checked")){
         setCookie("curation_area_a008", 'Y', 1);
       } else {
          setCookie("curation_area_a008", 'N', 1);
       }
      var endDay = new Date().addDate(1).format("yyyyMMdd")
      setCookie("curation_area_a008_endDay", endDay);
   });

   $(document).ready(function(){
       common.cart.completeRecoLayerMsg();
       
       if(getCookie_search('curation_area_a008') == "Y" &&
          new Date().format("yyyyMMdd") < getCookie_search('curation_area_a008_endDay')){
          
          $('.lay-cu-box').attr('style','display:none');
          $('.noSeeToday').attr('style','display:none');
       }
   });
   
   </script>
</body>
</html>
