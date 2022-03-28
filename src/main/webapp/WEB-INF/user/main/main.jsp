<%@ page language="java" contentType="text/html; charset=UTF-8"
	pageEncoding="UTF-8"%>
<%@ taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core" %>
<c:set var="path" value="${pageContext.request.contextPath}"/>
<!DOCTYPE html>
<html>
<head>
<meta charset="UTF-8">
<title>포에버영 메인</title>
<link rel="stylesheet" type="text/css" href="${path }/css/board.css" />
<link rel="stylesheet" type="text/css" href="${path }/css/common.css" />
<link rel="stylesheet" type="text/css" href="${path }/css/contents.css" />
<link rel="stylesheet" type="text/css" href="${path }/css/curation.css" />
<link rel="stylesheet" type="text/css" href="${path }/css/global.css" />
<link rel="stylesheet" type="text/css" href="${path }/css/jquery.mCustomScrollbar.css" />
<link rel="stylesheet" type="text/css" href="${path }/css/pickup.css" />

<script src="http://code.jquery.com/jquery-3.5.1.min.js"></script>
<script src="${path }/js/slick.min.js"></script>

<script>
$(document).ready(function (){
	$('.abc').slick({
		dots : true,	//페이지 네비게이션
		arrows : true,	//next prev 이동 
		autoplay : true,	//자동 넘김 여부 
		infinite : true,	//반복 설정
		speed : 300,		//슬라이드 속도
		autoplaySpeed : 3000,	  //자동 스피드
		vertical : false,		//세로방향 슬라이드
		slidesToShow : 1,	//보여질 슬라이드 
		slidesToScroll : 1,	//넘겨질 슬라이드
		prevArrow : $('.slick-prev'),
		nextArrow : $('.slick-next'),
		
		responsive : [	//반응형
			{
				breakpoint : 1024,
				settings : {
					slidesToShow : 1,
					slidesToScroll : 1,
					infinite : true,
					dots : true
				}
			} ,
			{
				breakpoint : 600,
				settings : {
					slidesToShow : 1,
					slidesToScroll : 1
				}
			},
			{
				breakpoint : 480,
				settings : {
					slidesToShow : 1,
					slidesToScroll : 1
				}
			}
		]
	});
	
	$('.slick').slick({
		/* dots : true,	//페이지 네비게이션 */
	/* 	arrows : true,	//next prev 이동 */
		autoplay : true,	//자동 넘김 여부 
		infinite : true,	//양방향 무한 모션
		speed : 300,		//슬라이드 속도
		autoplaySpeed : 3000,	  //자동 스피드
		vertical : false,		//세로방향 슬라이드
		slidesToShow : 2,	//한 화면에 보여줄 아이템 수 
		slidesToScroll : 2,	//한번에 슬라이드 시킬 아이템 수
		
		
		/* responsive : [	//반응형
			{
				breakpoint : 480,
				settings : {
					slidesToShow : 2,
					slidesToScroll : 2,
					infinite : true,
					dots : true
				}
			}
		]*/
	});
});
</script>
<style>
.banner_desc{
	margin-left : -500px !important;
}

.slick-arrow {
	margin-left : -500px !important;
}

.slick-next{
	margin-left : -400px !important;
}

.slick-paging{
	margin-left : -450px !important;
}
.curation_area.two .curation_slide.type03{
	min-height : 300px !important;
}

.curation_area .slide_list .item .thumImg>img{
	max-width : 200px !important;
}

.test{
	line-height : 3px !important;
}

.test2{
	line-height : 37px !important;
}
</style>
</head>
<body>
	<jsp:include page="../default/header_for_main.jsp"></jsp:include>
	<div id="container">
		<div id="Contents">
			<div class="main_full_banner">
				<div class="banner_wrap" id="mainFullSlider">
					<!-- <button type="button" class="slick-prev slick-arrow" style="display: block;">이전 슬라이드</button> -->
					 <!--<div class="slick-list draggable">
						<div class="slick-track" role="listbox" style="opacity: 1; width: 25000px;">
							<div class="slick-slide" aria-hidden="false"
								style="width: 1920px; position: relative; left: 0px; top: 0px; z-index: 999; opacity: 1;">
								<a href="#" class="banner_link">
									<p class="banner_desc">
										<span class="tit"> 
											
										</span> 
										<strong> 
											
										</strong> 
										<span>
										
										</span>
									</p>  -->
									<div class = "abc">
										<div>
											
											<a href="#" class="banner_link">
												<p class="banner_desc">
													<span class="tit">
														${banners[0].banner_title }
													</span>
													<strong>
														${banners[0].banner_contents }
													</strong>
													<span>
														${banners[0].banner_subcontents }
													</span>
												</p>
												<img src = "${banners[0].banner_filepath }">
											</a>
										</div>
										<div>
											
											<a href="#" class="banner_link">
												<p class="banner_desc">
													<span class="tit"> 
														${banners[1].banner_title }
													</span> 
													<strong> 
														${banners[1].banner_contents }
													</strong> 
													<span>
														${banners[1].banner_subcontents }
													</span>
												</p>
												<img src = "${banners[1].banner_filepath }">
											</a>
										</div>
										<div>
											
											<a href="#" class="banner_link">
												<p class="banner_desc">
													<span class="tit"> 
														${banners[2].banner_title }
													</span> 
													<strong> 
														${banners[2].banner_contents }
													</strong> 
													<span>
														${banners[2].banner_subcontents }
													</span>
												</p>
												<img src = "${banners[2].banner_filepath }">
											</a>
										</div>
									</div>
				<!-- 				</a>
							</div>
						</div>
				 -->
				 	<!-- <button type="button" class="slick-next slick-arrow" aria-label="Next" style="display: block;">다음 슬라이드</button> -->
					<!-- 	<button id="mainSliderBtn">멈춤</button> -->
						<button type="button" class="slick-prev slick-arrow" style="display: block;"></button>
						<button type="button" class="slick-next slick-arrow" aria-label="Next" style="display: block;"></button>
						<!-- <button id="mainSliderBtn" class=></button> -->
						<!-- <button id="mainSliderBtn" class="pause"></button> -->
						<p class="slick-paging">
							<span class="cur_no"></span>
						</p>
					</div>
				</div>
			<!-- main_full_banner end -->
			
			
			
			
			
			
			
			
			
			<div class="main_mid_banner split">
				<a href="#" class=home_banner_top_split> <img
					src="https://fyawsbucket.s3.ap-northeast-2.amazonaws.com/images/5692991382543608252.jpg" alt="" />
				</a> <a href="#" class=home_banner_top_split> <img
					src="https://fyawsbucket.s3.ap-northeast-2.amazonaws.com/images/1307432734373528907.jpg" alt="" />
				</a>
			</div>
			<!-- main_mid_banner split end -->
			<div class="curation_wrap">
				<div class="loading_box main" style="display: none;">
					<span class="icon"> 
						<img src="https://fyawsbucket.s3.ap-northeast-2.amazonaws.com/images/pc_loading.gif" alt="로딩중">
					</span>
					<p class="txt">고객님을 위한 상품 추천중이에요</p>
				</div>
				<div class="curation_area two">
					<div class="inner">
						<div class="curation_slide type03" id="recobell_area1">
							<div class="tit_type03">
								유사한 고객님이
								<br/>
								많이 구매했어요
								<button class="moreBtn" id="crt_more_p002" onclick="">
									<span>더보기</span>
								</button>
							</div>
							<div class="curation_slide type03" role="toolbar">
								<ul id="main_curation02_01" class="slide_list slick slick-dotted slick-dots" name="section1" style="display: block;">
									<c:forEach var="item" items="${categoryProductList}" varStatus="status">
									<li>
										<a href="itemPage.do?category_goods_serial=${item.category_goods_serial}" name="Home_Curation1_1" class="item a_detail">             								
											<span class="thumb_flag best">${item.category_goods_info }</span>
											<span class="thumImg">
												<img src="${item.category_goods_thum_img}">
												<c:if test="${item.goods_detail_stock_quantity=='0'}">
								                	<span class="status_flag soldout">SoldOut</span>
								                </c:if>
											</span>
											
											<!-- 상품설명 -->
											<div class="prd_name" class="goodsList">
												<p class="tx_name">${item.category_goods_brand}</p>
											</div>
											
											<!-- 상품가격 -->
											<p class="prd_price test">
												<!-- 상품정가 -->
												<span class="tx_org">
													<span class="tx_num">${item.goods_detail_price}</span>
													원
												</span>
												<span class="tx_cur">
													<span class="tx_num">${item.goods_last_price }</span>
													원
												</span>
											</p>
											
											<!-- 프로모션 -->
											<p class="prd_flag test">
												<span class="icon_flag sale">세일</span>
											</p>
										</a>
										<button type="button" class="btnbag" onclick="">장바구니 담기</button>
									</li>
									</c:forEach>
								</ul>
							</div>
							
							<div class="btnRef">
								<!-- <button type="button" class="btn" id="refBtn">
									<span class="icon"> 
										다른상품 추천해드릴게요 <em class="num"> <span
											class="current" id="contsInfoBeginNum"> 1 </span> 5
									</em>
									</span>
								</button> -->
							</div>
							<!-- btnRef end -->
						</div>
						<!-- curation_slide type03 end -->
					</div>
					<!-- inner end -->

					<div class="inner">
						<div class="curation_slide type03" id="recobell_area2">
							<div class="tit_type03">
								<span id="rectypeTitle"> <strong>최근 본 상품</strong> 과<br />
									연관 상품 추천해드려요
								</span>
								<button class="moreBtn" id="crt_more_p001" onclick="">
									<span>더보기</span>
								</button>
							</div>
							<div class="curation_slide type03" role="toolbar">
								<ul id="main_curation03_01"
									class="slide_list slick_slider slick-initialized slick-slider slick-dotted"
									name="section1" style="display: block;">
									<!-- <div aria-live="polite" class="slick-list draggable">
										<div class="slick-track" role="listbox" style="opacity: 1; width: 3060px; transform: translate3d(-510px, 0px, 0px);"> -->
									<li class="slick-slide slick-current slick-active"
										aria-hidden="false" style="width: 255px"><a href="getGoodsDetail.do"
										name="Home_Curation2_1" class="item a_detail" onclick=""
										data-ref-goodno="A000000152564" data-egrank="1"
										data-ecode="a901_a901" data-ref-dispcatno="90000010001"
										data-ref-itemno="001" tabindex="0"
										data-impression-visibility="1"> <span class="thumImg">
												<img src="https://fyawsbucket.s3.ap-northeast-2.amazonaws.com/images/A00000015256401ko.jpg" alr="" />
										</span>
											<div class="prd_name">
												<p class="tx_name">라타타 데일리마스크 비말차단 KF-AD 30매입</p>
											</div>
											<p class="prd_price test2">
												<span class="tx_cur"> <span class="tx_num">9,900</span>
													원
												</span>
											</p>
											<p class="prd_flag"></p>
									</a>
										<button type="button" class="btnbag" onclick="">장바구니 담기</button>
									</li>
									<li class="slick-slide slick-active" aria-hidden="false"
										style="width: 255px;"><a href="getGoodsDetail.do" name="Home_Curation2_1"
										class="item a_detail" onclick=""> <span class="thumImg">
												<img src="https://fyawsbucket.s3.ap-northeast-2.amazonaws.com/images/A00000014300602ko.jpg" alt="" />
										</span>
											<div class="prd_name">
												<p class="tx_name">크리넥스 마스크 1입 (KF-AD/KF94/KF80)</p>
											</div>
											<p class="prd_price test2">
												<span class="tx_cur"> <span class="tx_num">900</span>
													원 ~
												</span>
											</p>
											<p class="prd_flag test2"></p>
									</a>
										<button type="button" class="btnbag" onclick="">장바구니
											담기</button></li>
								</ul>
							</div>
							<input type="hidden" id="rectype" name="rectype" value="p001" />
						</div>
					</div>
					<!— inner end2 —>
				</div>
				<!— curation area two end —>
			</div>
			<!— curation wrap end —>
			<!-- 인기 행사만 모았어요 -->
			<div class="main_plan_banner ty02">
				<h3 class="main_sub_tit">
					<strong>인기 행사만 모았어요!</strong>
				</h3>
				<div class="banner_wrap">
					<div class="slick_slider" id="mainPlanSlider">
						<div class="slider_unit ">
							<div class="plan_top">
								<div class="plan_banner"
									style="background-image: url('https://fyawsbucket.s3.ap-northeast-2.amazonaws.com/7091732516857804231.jpg');">
									<a href="#">
										<p>
											<strong class="tit" style="color: #000000;">트러블 자리엔
											</strong> <strong class="tit" style="color: #000000;">이즈앤트리 </strong>
											<span class="desc" style="color: #000000;">어니언 뉴페어 라인</span>
										</p>
									</a>
								</div>
							</div>
							<ul class="cate_prd_list">
								<li>
									<div class="prd_info ">
										<a href="#	name=" Home_Planshop3" class="prd_thumb goodsList">
											<span class="thumb_flag best">베스트</span><img
											src="https://fyawsbucket.s3.ap-northeast-2.amazonaws.com/images/A00000016064803ko.jpg"
											alt="★강유미 Pick★ #2주흔적크림 이즈앤트리 어니언 뉴페어 겔크림 50ml">
										</a>
										<div class="prd_name">
											<a href="#" name="Home_Planshop3" class="goodsList"> <span
												class="tx_brand">이즈앤트리</span>
												<p class="tx_name">★강유미 Pick★ #2주흔적크림 이즈앤트리 어니언 뉴페어 겔크림
													50ml</p>
											</a>
										</div>
										<button class="btn_zzim jeem">찜하기</button>
										<p class="prd_price">
											<span class="tx_org"><span class="tx_num">32,000</span>원
											</span><span class="tx_cur"><span class="tx_num">17,600</span>원
											</span>
										</p>
										<p class="prd_flag">
											<span class="icon_flag sale">세일</span><span
												class="icon_flag gift">증정</span>
										</p>
										<p class="prd_point_area tx_num">
											<span class="review_point"><span class="point"
												style="width: 94.0%">10점만점에 5.5점</span></span>(63)
										</p>
										<p class="prd_btn_area">
											<button class="cartBtn">장바구니</button>
											<button class="btn_new_pop goodsList">새창보기</button>
										</p>
									</div>
								</li>
								<li>
									<div class="prd_info ">
										<a href="#" name="Home_Planshop3" class="prd_thumb goodsList">
											<img
											src="https://fyawsbucket.s3.ap-northeast-2.amazonaws.com/images/A00000016065002ko.jpg"
											alt="★강유미 Pick★ 이즈앤트리 어니언 뉴페어 에센스 토너 200ml"
											onerror="common.errorImg(this);">
										</a>
										<div class="prd_name">
											<a href="#" name="Home_Planshop3" class="goodsList"> <span
												class="tx_brand">이즈앤트리</span>
												<p class="tx_name">★강유미 Pick★ 이즈앤트리 어니언 뉴페어 에센스 토너 200ml</p>
											</a>
										</div>
										<button class="btn_zzim jeem">찜하기</button>
										<p class="prd_price">
											<span class="tx_org"><span class="tx_num">23,000</span>원
											</span><span class="tx_cur"><span class="tx_num">11,500</span>원
											</span>
										</p>
										<p class="prd_flag">
											<span class="icon_flag sale">세일</span><span
												class="icon_flag gift">증정</span>
										</p>
										<p class="prd_point_area tx_num">
											<span class="review_point"><span class="point"
												style="width: 92.0%">10점만점에 5.5점</span></span>(18)
										</p>
										<p class="prd_btn_area">
											<button class="cartBtn">장바구니</button>
											<button class="btn_new_pop goodsList">새창보기</button>
										</p>
									</div>
								</li>
							</ul>
						</div>
						<div class="slider_unit  right">
							<div class="plan_top">
								<div class="plan_banner"
									style="background-image: url('https://fyawsbucket.s3.ap-northeast-2.amazonaws.com/images/6911315567936879437.jpg');">
									<a href="#">
										<p>
											<strong class="tit" style="color: #000000;">에스트라 </strong> <strong
												class="tit" style="color: #000000;">바디크림&로션 런칭 </strong> <span
												class="desc" style="color: #000000;">10% 할인 선착순 샘플
												증정까지💙</span>
										</p>
									</a>
								</div>
							</div>
							<ul class="cate_prd_list">
								<li>
									<div class="prd_info ">
										<a href="#" name="Home_Planshop3" class="prd_thumb goodsList">
											<span class="thumb_flag best">베스트</span> <img
											src="https://fyawsbucket.s3.ap-northeast-2.amazonaws.com/images/A00000016116502ko.jpg"
											alt="★NEW★ 에스트라 아토베리어365 바디로션 400ml">
										</a>
										<div class="prd_name">
											<a href="#" name="Home_Planshop3" class="goodsList"> <span
												class="tx_brand">에스트라</span>
												<p class="tx_name">★NEW★ 에스트라 아토베리어365 바디로션 400ml</p>
											</a>
										</div>
										<button class="btn_zzim jeem">찜하기</button>
										<p class="prd_price">
											<span class="tx_org"><span class="tx_num">33,000</span>원
											</span><span class="tx_cur"><span class="tx_num">29,700</span>원
											</span>
										</p>
										<p class="prd_flag">
											<span class="icon_flag coupon">쿠폰</span><span
												class="icon_flag gift">증정</span>
										</p>
										<p class="prd_point_area tx_num">
											<span class="review_point"><span class="point"
												style="width: 98.0%">10점만점에 5.5점</span></span>(41)
										</p>
										<p class="prd_btn_area">
											<button class="cartBtn">장바구니</button>
											<button class="btn_new_pop goodsList">새창보기</button>
										</p>
									</div>
								</li>
								<li>
									<div class="prd_info ">
										<a href="#" name="Home_Planshop3" class="prd_thumb goodsList">
											<span class="thumb_flag best">베스트</span> <img
											src="https://fyawsbucket.s3.ap-northeast-2.amazonaws.com/images/A00000016116701ko.jpg"
											alt="★NEW★ 에스트라 아토베리어365 바디크림 250ml">
										</a>
										<div class="prd_name">
											<a href="#" name="Home_Planshop3" class="goodsList"> <span
												class="tx_brand">에스트라</span>
												<p class="tx_name">★NEW★ 에스트라 아토베리어365 바디크림 250ml</p>
											</a>
										</div>
										<button class="btn_zzim jeem">찜하기</button>
										<p class="prd_price">
											<span class="tx_org"><span class="tx_num">30,000</span>원
											</span><span class="tx_cur"><span class="tx_num">27,000</span>원
											</span>
										</p>
										<p class="prd_flag">
											<span class="icon_flag coupon">쿠폰</span><span
												class="icon_flag gift">증정</span>
										</p>
										<p class="prd_point_area tx_num">
											<span class="review_point"><span class="point"
												style="width: 98.0%">10점만점에 5.5점</span></span>(10)
										</p>
										<p class="prd_btn_area">
											<button class="cartBtn">장바구니</button>
											<button class="btn_new_pop goodsList">새창보기</button>
										</p>
									</div>
								</li>
							</ul>
						</div>

						<!-- 옆배너 -->
						<div class="slider_unit ">
							<div class="plan_top">
								<div class="plan_banner"
									style="background-image: url('https://image.oliveyoung.co.kr/uploads/images//categoryBanner/2946834113637985280.jpg');">
									<a
										href="javascript:common.link.movePlanShop('500000102200032', 'Home_Planshop3_PROD');"
										data-ref-dispCatNo="500000102200032"
										data-tracking-cd="Home_Planshop3_PROD"
										data-attr="홈^인기행사기획전상세^#2월색조템 #단독선런칭^3" data-trk="/"
										data-attr-imp-goodsno="">
										<p>
											<strong class="tit" style="color: #000000;">놓치면 안될
												신상 </strong> <strong class="tit" style="color: #000000;">여기
												다모았다✨ </strong> <span class="desc" style="color: #000000;">#단독선런칭
												#신상조합</span>
										</p>
									</a>
								</div>
							</div>
							<ul class="cate_prd_list">
								<li>
									<div class="prd_info ">
										<a
											href="https://www.oliveyoung.co.kr/store/goods/getGoodsDetail.do?goodsNo=A000000161214&dispCatNo=90000010001&trackingCd=Home_Planshop3&curation&egcode&rccode&egrankcode"
											name="Home_Planshop3" class="prd_thumb goodsList"
											data-ref-goodsNo="A000000161214"
											data-attr="홈^인기행사만 모았어요^★런칭단독특가★재유개발★글린트 스틱하이라이터 7g^1"
											data-ref-dispCatNo="90000010001" data-ref-itemNo="001"
											data-trk="null"
											data-impression="A000000161214^홈_인기행사만 모았어요^1"><span
											class="thumb_flag best">베스트</span><img
											src="https://image.oliveyoung.co.kr/uploads/images/goods/400/10/0000/0016/A00000016121404ko.jpg?l=ko"
											alt="★런칭단독특가★재유개발★글린트 스틱하이라이터 7g"
											onerror="common.errorImg(this);"></a>
										<div class="prd_name">
											<a href="javascript:;" name="Home_Planshop3"
												class="goodsList" data-ref-goodsNo="A000000161214"
												data-attr="홈^인기행사만 모았어요^★런칭단독특가★재유개발★글린트 스틱하이라이터 7g^1"
												data-ref-dispCatNo="90000010001" data-ref-itemNo="001"
												data-trk="null"><span class="tx_brand">글린트바이비디보브</span>
												<p class="tx_name">★런칭단독특가★재유개발★글린트 스틱하이라이터 7g</p></a>
										</div>
										<button class="btn_zzim jeem" data-ref-goodsNo="A000000161214">찜하기</button>
										<p class="prd_price">
											<span class="tx_org"><span class="tx_num">24,000</span>원
											</span><span class="tx_cur"><span class="tx_num">22,800</span>원
											</span>
										</p>
										<p class="prd_flag">
											<span class="icon_flag coupon">쿠폰</span><span
												class="icon_flag gift">증정</span><span
												class="icon_flag delivery">오늘드림</span>
										</p>
										<p class="prd_point_area tx_num">
											<span class="review_point"><span class="point"
												style="width: 84.0%">10점만점에 5.5점</span></span>(31)
										</p>
										<p class="prd_btn_area">
											<button class="cartBtn" data-ref-goodsNo="A000000161214"
												data-ref-dispCatNo="90000010001" data-ref-itemNo="001">장바구니</button>
											<button class="btn_new_pop goodsList">새창보기</button>
										</p>
									</div>
								</li>
								<li>
									<div class="prd_info ">
										<a
											href="https://www.oliveyoung.co.kr/store/goods/getGoodsDetail.do?goodsNo=A000000160430&dispCatNo=90000010001&trackingCd=Home_Planshop3&curation&egcode&rccode&egrankcode"
											name="Home_Planshop3" class="prd_thumb goodsList"
											data-ref-goodsNo="A000000160430"
											data-attr="홈^인기행사만 모았어요^언리시아 프리티 이지 글리터 스틱 4종 중 택1^2"
											data-ref-dispCatNo="90000010001" data-ref-itemNo="001"
											data-trk="null"
											data-impression="A000000160430^홈_인기행사만 모았어요^2"><img
											src="https://image.oliveyoung.co.kr/uploads/images/goods/400/10/0000/0016/A00000016043002ko.jpg?l=ko"
											alt="언리시아 프리티 이지 글리터 스틱 4종 중 택1"
											onerror="common.errorImg(this);"></a>
										<div class="prd_name">
											<a href="javascript:;" name="Home_Planshop3"
												class="goodsList" data-ref-goodsNo="A000000160430"
												data-attr="홈^인기행사만 모았어요^언리시아 프리티 이지 글리터 스틱 4종 중 택1^2"
												data-ref-dispCatNo="90000010001" data-ref-itemNo="001"
												data-trk="null"><span class="tx_brand">언리시아</span>
												<p class="tx_name">언리시아 프리티 이지 글리터 스틱 4종 중 택1</p></a>
										</div>
										<button class="btn_zzim jeem" data-ref-goodsNo="A000000160430">찜하기</button>
										<p class="prd_price">
											<span class="tx_org"><span class="tx_num">15,000</span>원
											</span><span class="tx_cur"><span class="tx_num">12,000</span>원
											</span>
										</p>
										<p class="prd_flag">
											<span class="icon_flag sale">세일</span><span
												class="icon_flag coupon">쿠폰</span><span
												class="icon_flag delivery">오늘드림</span>
										</p>
										<p class="prd_point_area tx_num">
											<span class="review_point"><span class="point"
												style="width: 94.0%">10점만점에 5.5점</span></span>(34)
										</p>
										<p class="prd_btn_area">
											<button class="cartBtn" data-ref-goodsNo="A000000160430"
												data-ref-dispCatNo="90000010001" data-ref-itemNo="001">장바구니</button>
											<button class="btn_new_pop goodsList">새창보기</button>
										</p>
									</div>
								</li>
							</ul>
						</div>
						<div class="slider_unit  right">
							<div class="plan_top">
								<div class="plan_banner"
									style="background-image: url('https://image.oliveyoung.co.kr/uploads/images//categoryBanner/5426265985293215247.jpg');">
									<a
										href="javascript:common.link.movePlanShop('500000102140031', 'Home_Planshop3_PROD');"
										data-ref-dispCatNo="500000102140031"
										data-tracking-cd="Home_Planshop3_PROD"
										data-attr="홈^인기행사기획전상세^립케어루틴^4" data-trk="/"
										data-attr-imp-goodsno="">
										<p>
											<strong class="tit" style="color: #000000;">꼭 필요한
												립케어 </strong> <strong class="tit" style="color: #000000;">DAY
												TO NIGHT </strong> <span class="desc" style="color: #000000;">일상
												속 루틴 제안드려요</span>
										</p>
									</a>
								</div>
							</div>
							<ul class="cate_prd_list">
								<li>
									<div class="prd_info ">
										<a
											href="https://www.oliveyoung.co.kr/store/goods/getGoodsDetail.do?goodsNo=A000000160343&dispCatNo=90000010001&trackingCd=Home_Planshop3&curation&egcode&rccode&egrankcode"
											name="Home_Planshop3" class="prd_thumb goodsList"
											data-ref-goodsNo="A000000160343"
											data-attr="홈^인기행사만 모았어요^방탄소년단 ㅣ아모레퍼시픽 립 슬리핑 마스크 [거미베어]^1"
											data-ref-dispCatNo="90000010001" data-ref-itemNo="001"
											data-trk="null"
											data-impression="A000000160343^홈_인기행사만 모았어요^1"><span
											class="thumb_flag best">베스트</span><img
											src="https://image.oliveyoung.co.kr/uploads/images/goods/400/10/0000/0016/A00000016034306ko.jpg?l=ko"
											alt="방탄소년단 ㅣ아모레퍼시픽 립 슬리핑 마스크 [거미베어]"
											onerror="common.errorImg(this);"></a>
										<div class="prd_name">
											<a href="javascript:;" name="Home_Planshop3"
												class="goodsList" data-ref-goodsNo="A000000160343"
												data-attr="홈^인기행사만 모았어요^방탄소년단 ㅣ아모레퍼시픽 립 슬리핑 마스크 [거미베어]^1"
												data-ref-dispCatNo="90000010001" data-ref-itemNo="001"
												data-trk="null"><span class="tx_brand">라네즈</span>
												<p class="tx_name">방탄소년단 ㅣ아모레퍼시픽 립 슬리핑 마스크 [거미베어]</p></a>
										</div>
										<button class="btn_zzim jeem" data-ref-goodsNo="A000000160343">찜하기</button>
										<p class="prd_price">
											<span class="tx_cur"><span class="tx_num">22,000</span>원
											</span>
										</p>
										<p class="prd_flag">
											<span class="icon_flag gift">증정</span><span
												class="icon_flag delivery">오늘드림</span>
										</p>
										<p class="prd_point_area tx_num">
											<span class="review_point"><span class="point"
												style="width: 96.0%">10점만점에 5.5점</span></span>(92)
										</p>
										<p class="prd_btn_area">
											<button class="cartBtn" data-ref-goodsNo="A000000160343"
												data-ref-dispCatNo="90000010001" data-ref-itemNo="001">장바구니</button>
											<button class="btn_new_pop goodsList">새창보기</button>
										</p>
									</div>
								</li>
								<li>
									<div class="prd_info ">
										<a
											href="https://www.oliveyoung.co.kr/store/goods/getGoodsDetail.do?goodsNo=A000000161644&dispCatNo=90000010001&trackingCd=Home_Planshop3&curation&egcode&rccode&egrankcode"
											name="Home_Planshop3" class="prd_thumb goodsList"
											data-ref-goodsNo="A000000161644"
											data-attr="홈^인기행사만 모았어요^바비브라운 립밤 SPF15^2"
											data-ref-dispCatNo="90000010001" data-ref-itemNo="001"
											data-trk="null"
											data-impression="A000000161644^홈_인기행사만 모았어요^2"><img
											src="https://image.oliveyoung.co.kr/uploads/images/goods/400/10/0000/0016/A00000016164401ko.jpg?l=ko"
											alt="바비브라운 립밤 SPF15" onerror="common.errorImg(this);"></a>
										<div class="prd_name">
											<a href="javascript:;" name="Home_Planshop3"
												class="goodsList" data-ref-goodsNo="A000000161644"
												data-attr="홈^인기행사만 모았어요^바비브라운 립밤 SPF15^2"
												data-ref-dispCatNo="90000010001" data-ref-itemNo="001"
												data-trk="null"><span class="tx_brand">바비브라운</span>
												<p class="tx_name">바비브라운 립밤 SPF15</p></a>
										</div>
										<button class="btn_zzim jeem" data-ref-goodsNo="A000000161644">찜하기</button>
										<p class="prd_price">
											<span class="tx_cur"><span class="tx_num">41,000</span>원
											</span>
										</p>
										<p class="prd_point_area tx_num">
											<span class="review_point"><span class="point"
												style="width: 100.0%">10점만점에 5.5점</span></span>(2)
										</p>
										<p class="prd_btn_area">
											<button class="cartBtn" data-ref-goodsNo="A000000161644"
												data-ref-dispCatNo="90000010001" data-ref-itemNo="001">장바구니</button>
											<button class="btn_new_pop goodsList">새창보기</button>
										</p>
									</div>
								</li>
							</ul>
						</div>
						<div class="slider_unit ">
							<div class="plan_top">
								<div class="plan_banner"
									style="background-image: url('https://image.oliveyoung.co.kr/uploads/images//categoryBanner/6343805621167139195.jpg');">
									<a
										href="javascript:common.link.movePlanShop('500000102130036', 'Home_Planshop3_PROD');"
										data-ref-dispCatNo="500000102130036"
										data-tracking-cd="Home_Planshop3_PROD"
										data-attr="홈^인기행사기획전상세^엉키고 끊어지는 모발엔?^5" data-trk="/"
										data-attr-imp-goodsno="">
										<p>
											<strong class="tit" style="color: #000000;">이브로쉐 </strong> <strong
												class="tit" style="color: #000000;">극손상모 케어 </strong> <span
												class="desc" style="color: #000000;">엉키고 끊어지는 모발 해결!</span>
										</p>
									</a>
								</div>
							</div>
							<ul class="cate_prd_list">
								<li>
									<div class="prd_info ">
										<a
											href="https://www.oliveyoung.co.kr/store/goods/getGoodsDetail.do?goodsNo=A000000146531&dispCatNo=90000010001&trackingCd=Home_Planshop3&curation&egcode&rccode&egrankcode"
											name="Home_Planshop3" class="prd_thumb goodsList"
											data-ref-goodsNo="A000000146531"
											data-attr="홈^인기행사만 모았어요^★모발 윤기강화 두피 세정★ 이브로쉐 라즈베리 헤어식초 대용량 400ml 트리플기획^1"
											data-ref-dispCatNo="90000010001" data-ref-itemNo="001"
											data-trk="null"
											data-impression="A000000146531^홈_인기행사만 모았어요^1"><span
											class="thumb_flag best">베스트</span><img
											src="https://image.oliveyoung.co.kr/uploads/images/goods/400/10/0000/0014/A00000014653104ko.jpg?l=ko"
											alt="★모발 윤기강화 두피 세정★ 이브로쉐 라즈베리 헤어식초 대용량 400ml 트리플기획"
											onerror="common.errorImg(this);"></a>
										<div class="prd_name">
											<a href="javascript:;" name="Home_Planshop3"
												class="goodsList" data-ref-goodsNo="A000000146531"
												data-attr="홈^인기행사만 모았어요^★모발 윤기강화 두피 세정★ 이브로쉐 라즈베리 헤어식초 대용량 400ml 트리플기획^1"
												data-ref-dispCatNo="90000010001" data-ref-itemNo="001"
												data-trk="null"><span class="tx_brand">이브로쉐</span>
												<p class="tx_name">★모발 윤기강화 두피 세정★ 이브로쉐 라즈베리 헤어식초 대용량
													400ml 트리플기획</p></a>
										</div>
										<button class="btn_zzim jeem" data-ref-goodsNo="A000000146531">찜하기</button>
										<p class="prd_price">
											<span class="tx_org"><span class="tx_num">47,700</span>원
											</span><span class="tx_cur"><span class="tx_num">35,200</span>원
											</span>
										</p>
										<p class="prd_flag">
											<span class="icon_flag sale">세일</span><span
												class="icon_flag coupon">쿠폰</span><span
												class="icon_flag gift">증정</span><span
												class="icon_flag delivery">오늘드림</span>
										</p>
										<p class="prd_point_area tx_num">
											<span class="review_point"><span class="point"
												style="width: 96.0%">10점만점에 5.5점</span></span>(999+)
										</p>
										<p class="prd_btn_area">
											<button class="cartBtn" data-ref-goodsNo="A000000146531"
												data-ref-dispCatNo="90000010001" data-ref-itemNo="001">장바구니</button>
											<button class="btn_new_pop goodsList">새창보기</button>
										</p>
									</div>
								</li>
								<li>
									<div class="prd_info ">
										<a
											href="https://www.oliveyoung.co.kr/store/goods/getGoodsDetail.do?goodsNo=A000000148719&dispCatNo=90000010001&trackingCd=Home_Planshop3&curation&egcode&rccode&egrankcode"
											name="Home_Planshop3" class="prd_thumb goodsList"
											data-ref-goodsNo="A000000148719"
											data-attr="홈^인기행사만 모았어요^★극손상모 트리트먼트 팩★ 이브로쉐 호호바 유니버셜 보태니컬 밤 150ml^2"
											data-ref-dispCatNo="90000010001" data-ref-itemNo="001"
											data-trk="null"
											data-impression="A000000148719^홈_인기행사만 모았어요^2"><img
											src="https://image.oliveyoung.co.kr/uploads/images/goods/400/10/0000/0014/A00000014871901ko.jpg?l=ko"
											alt="★극손상모 트리트먼트 팩★ 이브로쉐 호호바 유니버셜 보태니컬 밤 150ml"
											onerror="common.errorImg(this);"></a>
										<div class="prd_name">
											<a href="javascript:;" name="Home_Planshop3"
												class="goodsList" data-ref-goodsNo="A000000148719"
												data-attr="홈^인기행사만 모았어요^★극손상모 트리트먼트 팩★ 이브로쉐 호호바 유니버셜 보태니컬 밤 150ml^2"
												data-ref-dispCatNo="90000010001" data-ref-itemNo="001"
												data-trk="null"><span class="tx_brand">이브로쉐</span>
												<p class="tx_name">★극손상모 트리트먼트 팩★ 이브로쉐 호호바 유니버셜 보태니컬 밤
													150ml</p></a>
										</div>
										<button class="btn_zzim jeem" data-ref-goodsNo="A000000148719">찜하기</button>
										<p class="prd_price">
											<span class="tx_org"><span class="tx_num">18,900</span>원
											</span><span class="tx_cur"><span class="tx_num">15,120</span>원
											</span>
										</p>
										<p class="prd_flag">
											<span class="icon_flag coupon">쿠폰</span><span
												class="icon_flag gift">증정</span><span
												class="icon_flag delivery">오늘드림</span>
										</p>
										<p class="prd_point_area tx_num">
											<span class="review_point"><span class="point"
												style="width: 94.0%">10점만점에 5.5점</span></span>(23)
										</p>
										<p class="prd_btn_area">
											<button class="cartBtn" data-ref-goodsNo="A000000148719"
												data-ref-dispCatNo="90000010001" data-ref-itemNo="001">장바구니</button>
											<button class="btn_new_pop goodsList">새창보기</button>
										</p>
									</div>
								</li>
							</ul>
						</div>
						<div class="slider_unit  right">
							<div class="plan_top">
								<div class="plan_banner"
									style="background-image: url('https://image.oliveyoung.co.kr/uploads/images//categoryBanner/6991391991998205396.jpg');">
									<a
										href="javascript:common.link.movePlanShop('500000102190028', 'Home_Planshop3_PROD');"
										data-ref-dispCatNo="500000102190028"
										data-tracking-cd="Home_Planshop3_PROD"
										data-attr="홈^인기행사기획전상세^남자스틱파운데이션^6" data-trk="/"
										data-attr-imp-goodsno="">
										<p>
											<strong class="tit" style="color: #000000;">메이크업의 완성
											</strong> <strong class="tit" style="color: #000000;">오브제 런칭
											</strong> <span class="desc" style="color: #000000;">#이진욱PICK
												#전품목할인</span>
										</p>
									</a>
								</div>
							</div>
							<ul class="cate_prd_list">
								<li>
									<div class="prd_info ">
										<a
											href="https://www.oliveyoung.co.kr/store/goods/getGoodsDetail.do?goodsNo=A000000161010&dispCatNo=90000010001&trackingCd=Home_Planshop3&curation&egcode&rccode&egrankcode"
											name="Home_Planshop3" class="prd_thumb goodsList"
											data-ref-goodsNo="A000000161010"
											data-attr="홈^인기행사만 모았어요^★이진욱 PICK!★오브제 내추럴 커버 파운데이션 13g_아이보리/베이지 (SPF50+, PA++++)^1"
											data-ref-dispCatNo="90000010001" data-ref-itemNo="001"
											data-trk="null"
											data-impression="A000000161010^홈_인기행사만 모았어요^1"><span
											class="newOyflag today"><em>오특</em></span><img
											src="https://image.oliveyoung.co.kr/uploads/images/goods/400/10/0000/0016/A00000016101006ko.jpg?l=ko"
											alt="★이진욱 PICK!★오브제 내추럴 커버 파운데이션 13g_아이보리/베이지 (SPF50+, PA++++)"
											onerror="common.errorImg(this);"></a>
										<div class="prd_name">
											<a href="javascript:;" name="Home_Planshop3"
												class="goodsList" data-ref-goodsNo="A000000161010"
												data-attr="홈^인기행사만 모았어요^★이진욱 PICK!★오브제 내추럴 커버 파운데이션 13g_아이보리/베이지 (SPF50+, PA++++)^1"
												data-ref-dispCatNo="90000010001" data-ref-itemNo="001"
												data-trk="null"><span class="tx_brand">오브제</span>
												<p class="tx_name">★이진욱 PICK!★오브제 내추럴 커버 파운데이션
													13g_아이보리/베이지 (SPF50+, PA++++)</p></a>
										</div>
										<button class="btn_zzim jeem" data-ref-goodsNo="A000000161010">찜하기</button>
										<p class="prd_price">
											<span class="tx_org"><span class="tx_num">36,800</span>원
											</span><span class="tx_cur"><span class="tx_num">29,120</span>원
											</span>
										</p>
										<p class="prd_flag">
											<span class="icon_flag coupon">쿠폰</span><span
												class="icon_flag gift">증정</span><span
												class="icon_flag delivery">오늘드림</span>
										</p>
										<p class="prd_point_area tx_num">
											<span class="review_point"><span class="point"
												style="width: 100.0%">10점만점에 5.5점</span></span>(7)
										</p>
										<p class="prd_btn_area">
											<button class="cartBtn" data-ref-goodsNo="A000000161010"
												data-ref-dispCatNo="90000010001" data-ref-itemNo="001">장바구니</button>
											<button class="btn_new_pop goodsList">새창보기</button>
										</p>
									</div>
								</li>
								<li>
									<div class="prd_info ">
										<a
											href="https://www.oliveyoung.co.kr/store/goods/getGoodsDetail.do?goodsNo=A000000161006&dispCatNo=90000010001&trackingCd=Home_Planshop3&curation&egcode&rccode&egrankcode"
											name="Home_Planshop3" class="prd_thumb goodsList"
											data-ref-goodsNo="A000000161006"
											data-attr="홈^인기행사만 모았어요^★이진욱 PICK!★오브제 퍼펙트 옴므 쿠션 15g_아이보리/베이지/샌드 (SPF50+PA++++)^2"
											data-ref-dispCatNo="90000010001" data-ref-itemNo="001"
											data-trk="null"
											data-impression="A000000161006^홈_인기행사만 모았어요^2"><img
											src="https://image.oliveyoung.co.kr/uploads/images/goods/400/10/0000/0016/A00000016100604ko.jpg?l=ko"
											alt="★이진욱 PICK!★오브제 퍼펙트 옴므 쿠션 15g_아이보리/베이지/샌드 (SPF50+PA++++)"
											onerror="common.errorImg(this);"></a>
										<div class="prd_name">
											<a href="javascript:;" name="Home_Planshop3"
												class="goodsList" data-ref-goodsNo="A000000161006"
												data-attr="홈^인기행사만 모았어요^★이진욱 PICK!★오브제 퍼펙트 옴므 쿠션 15g_아이보리/베이지/샌드 (SPF50+PA++++)^2"
												data-ref-dispCatNo="90000010001" data-ref-itemNo="001"
												data-trk="null"><span class="tx_brand">오브제</span>
												<p class="tx_name">★이진욱 PICK!★오브제 퍼펙트 옴므 쿠션
													15g_아이보리/베이지/샌드 (SPF50+PA++++)</p></a>
										</div>
										<button class="btn_zzim jeem" data-ref-goodsNo="A000000161006">찜하기</button>
										<p class="prd_price">
											<span class="tx_org"><span class="tx_num">34,900</span>원
											</span><span class="tx_cur"><span class="tx_num">31,410</span>원
											</span>
										</p>
										<p class="prd_flag">
											<span class="icon_flag coupon">쿠폰</span><span
												class="icon_flag gift">증정</span><span
												class="icon_flag delivery">오늘드림</span>
										</p>
										<p class="prd_point_area tx_num">
											<span class="review_point"><span class="point"
												style="width: %">10점만점에 5.5점</span></span>
										</p>
										<p class="prd_btn_area">
											<button class="cartBtn" data-ref-goodsNo="A000000161006"
												data-ref-dispCatNo="90000010001" data-ref-itemNo="001">장바구니</button>
											<button class="btn_new_pop goodsList">새창보기</button>
										</p>
									</div>
								</li>
							</ul>
						</div>
						<div class="slider_unit ">
							<div class="plan_top">
								<div class="plan_banner"
									style="background-image: url('https://image.oliveyoung.co.kr/uploads/images//categoryBanner/623932010045974921.jpg');">
									<a
										href="javascript:common.link.movePlanShop('500000102220024', 'Home_Planshop3_PROD');"
										data-ref-dispCatNo="500000102220024"
										data-tracking-cd="Home_Planshop3_PROD"
										data-attr="홈^인기행사기획전상세^면역력키우기^7" data-trk="/"
										data-attr-imp-goodsno="">
										<p>
											<strong class="tit" style="color: #000000;">면역UP
												건강UP </strong> <strong class="tit" style="color: #000000;">특별
												건강비법 </strong> <span class="desc" style="color: #000000;">#홍삼#알로에#레벨업</span>
										</p>
									</a>
								</div>
							</div>
							<ul class="cate_prd_list">
								<li>
									<div class="prd_info ">
										<a
											href="https://www.oliveyoung.co.kr/store/goods/getGoodsDetail.do?goodsNo=A000000156608&dispCatNo=90000010001&trackingCd=Home_Planshop3&curation&egcode&rccode&egrankcode"
											name="Home_Planshop3" class="prd_thumb goodsList"
											data-ref-goodsNo="A000000156608"
											data-attr="홈^인기행사만 모았어요^블랙모어스 B 콤플렉스 플러스 면역 60정 트윈팩 (4개월분)^1"
											data-ref-dispCatNo="90000010001" data-ref-itemNo="001"
											data-trk="null"
											data-impression="A000000156608^홈_인기행사만 모았어요^1"><img
											src="https://image.oliveyoung.co.kr/uploads/images/goods/400/10/0000/0015/A00000015660802ko.jpg?l=ko"
											alt="블랙모어스 B 콤플렉스 플러스 면역 60정 트윈팩 (4개월분)"
											onerror="common.errorImg(this);"></a>
										<div class="prd_name">
											<a href="javascript:;" name="Home_Planshop3"
												class="goodsList" data-ref-goodsNo="A000000156608"
												data-attr="홈^인기행사만 모았어요^블랙모어스 B 콤플렉스 플러스 면역 60정 트윈팩 (4개월분)^1"
												data-ref-dispCatNo="90000010001" data-ref-itemNo="001"
												data-trk="null"><span class="tx_brand">블랙모어스</span>
												<p class="tx_name">블랙모어스 B 콤플렉스 플러스 면역 60정 트윈팩 (4개월분)</p></a>
										</div>
										<button class="btn_zzim jeem" data-ref-goodsNo="A000000156608">찜하기</button>
										<p class="prd_price">
											<span class="tx_org"><span class="tx_num">68,700</span>원
											</span><span class="tx_cur"><span class="tx_num">42,900</span>원
											</span>
										</p>
										<p class="prd_flag">
											<span class="icon_flag sale">세일</span><span
												class="icon_flag coupon">쿠폰</span><span
												class="icon_flag gift">증정</span><span
												class="icon_flag delivery">오늘드림</span>
										</p>
										<p class="prd_point_area tx_num">
											<span class="review_point"><span class="point"
												style="width: 90.0%">10점만점에 5.5점</span></span>(11)
										</p>
										<p class="prd_btn_area">
											<button class="cartBtn" data-ref-goodsNo="A000000156608"
												data-ref-dispCatNo="90000010001" data-ref-itemNo="001">장바구니</button>
											<button class="btn_new_pop goodsList">새창보기</button>
										</p>
									</div>
								</li>
								<li>
									<div class="prd_info ">
										<a
											href="https://www.oliveyoung.co.kr/store/goods/getGoodsDetail.do?goodsNo=A000000154255&dispCatNo=90000010001&trackingCd=Home_Planshop3&curation&egcode&rccode&egrankcode"
											name="Home_Planshop3" class="prd_thumb goodsList"
											data-ref-goodsNo="A000000154255"
											data-attr="홈^인기행사만 모았어요^아임뮨 알로에 면역 스틱형 젤리 7포 (1주분)^2"
											data-ref-dispCatNo="90000010001" data-ref-itemNo="001"
											data-trk="null"
											data-impression="A000000154255^홈_인기행사만 모았어요^2"><img
											src="https://image.oliveyoung.co.kr/uploads/images/goods/400/10/0000/0015/A00000015425505ko.jpg?l=ko"
											alt="아임뮨 알로에 면역 스틱형 젤리 7포 (1주분)"
											onerror="common.errorImg(this);"></a>
										<div class="prd_name">
											<a href="javascript:;" name="Home_Planshop3"
												class="goodsList" data-ref-goodsNo="A000000154255"
												data-attr="홈^인기행사만 모았어요^아임뮨 알로에 면역 스틱형 젤리 7포 (1주분)^2"
												data-ref-dispCatNo="90000010001" data-ref-itemNo="001"
												data-trk="null"><span class="tx_brand">아임뮨</span>
												<p class="tx_name">아임뮨 알로에 면역 스틱형 젤리 7포 (1주분)</p></a>
										</div>
										<button class="btn_zzim jeem" data-ref-goodsNo="A000000154255">찜하기</button>
										<p class="prd_price">
											<span class="tx_org"><span class="tx_num">14,900</span>원
											</span><span class="tx_cur"><span class="tx_num">9,810</span>원
											</span>
										</p>
										<p class="prd_flag">
											<span class="icon_flag sale">세일</span><span
												class="icon_flag coupon">쿠폰</span><span
												class="icon_flag delivery">오늘드림</span>
										</p>
										<p class="prd_point_area tx_num">
											<span class="review_point"><span class="point"
												style="width: 92.0%">10점만점에 5.5점</span></span>(77)
										</p>
										<p class="prd_btn_area">
											<button class="cartBtn" data-ref-goodsNo="A000000154255"
												data-ref-dispCatNo="90000010001" data-ref-itemNo="001">장바구니</button>
											<button class="btn_new_pop goodsList">새창보기</button>
										</p>
									</div>
								</li>
							</ul>
						</div>
						<div class="slider_unit  right">
							<div class="plan_top">
								<div class="plan_banner"
									style="background-image: url('https://image.oliveyoung.co.kr/uploads/images//categoryBanner/2789372409794486733.jpg');">
									<a
										href="javascript:common.link.movePlanShop('500000102150018', 'Home_Planshop3_PROD');"
										data-ref-dispCatNo="500000102150018"
										data-tracking-cd="Home_Planshop3_PROD"
										data-attr="홈^인기행사기획전상세^스마트한 홈케어^8" data-trk="/"
										data-attr-imp-goodsno="">
										<p>
											<strong class="tit" style="color: #000000;">스마트한 뷰티
											</strong> <strong class="tit" style="color: #000000;">디바이스
												대전💗 </strong> <span class="desc" style="color: #000000;">#브이라인
												#클렌징기기</span>
										</p>
									</a>
								</div>
							</div>
							<ul class="cate_prd_list">
								<li>
									<div class="prd_info ">
										<a
											href="https://www.oliveyoung.co.kr/store/goods/getGoodsDetail.do?goodsNo=A000000157354&dispCatNo=90000010001&trackingCd=Home_Planshop3&curation&egcode&rccode&egrankcode"
											name="Home_Planshop3" class="prd_thumb goodsList"
											data-ref-goodsNo="A000000157354"
											data-attr="홈^인기행사만 모았어요^SPUUN 피부스푼 스마트 스패츌러 단품/기획세트^1"
											data-ref-dispCatNo="90000010001" data-ref-itemNo="001"
											data-trk="null"
											data-impression="A000000157354^홈_인기행사만 모았어요^1"><span
											class="thumb_flag best">베스트</span><img
											src="https://image.oliveyoung.co.kr/uploads/images/goods/400/10/0000/0015/A00000015735402ko.jpg?l=ko"
											alt="SPUUN 피부스푼 스마트 스패츌러 단품/기획세트"
											onerror="common.errorImg(this);"></a>
										<div class="prd_name">
											<a href="javascript:;" name="Home_Planshop3"
												class="goodsList" data-ref-goodsNo="A000000157354"
												data-attr="홈^인기행사만 모았어요^SPUUN 피부스푼 스마트 스패츌러 단품/기획세트^1"
												data-ref-dispCatNo="90000010001" data-ref-itemNo="001"
												data-trk="null"><span class="tx_brand">SPUUN</span>
												<p class="tx_name">SPUUN 피부스푼 스마트 스패츌러 단품/기획세트</p></a>
										</div>
										<button class="btn_zzim jeem" data-ref-goodsNo="A000000157354">찜하기</button>
										<p class="prd_price">
											<span class="tx_org"><span class="tx_num">129,000</span>원
												~</span><span class="tx_cur"><span class="tx_num">83,800</span>원
												~</span>
										</p>
										<p class="prd_flag">
											<span class="icon_flag sale">세일</span><span
												class="icon_flag coupon">쿠폰</span><span
												class="icon_flag delivery">오늘드림</span>
										</p>
										<p class="prd_point_area tx_num">
											<span class="review_point"><span class="point"
												style="width: 94.0%">10점만점에 5.5점</span></span>(12)
										</p>
										<p class="prd_btn_area">
											<button class="cartBtn" data-ref-goodsNo="A000000157354"
												data-ref-dispCatNo="90000010001" data-ref-itemNo="001">장바구니</button>
											<button class="btn_new_pop goodsList">새창보기</button>
										</p>
									</div>
								</li>
								<li>
									<div class="prd_info ">
										<a
											href="https://www.oliveyoung.co.kr/store/goods/getGoodsDetail.do?goodsNo=A000000142953&dispCatNo=90000010001&trackingCd=Home_Planshop3&curation&egcode&rccode&egrankcode"
											name="Home_Planshop3" class="prd_thumb goodsList"
											data-ref-goodsNo="A000000142953"
											data-attr="홈^인기행사만 모았어요^페이스팩토리 BEST 미용가전 4종^2"
											data-ref-dispCatNo="90000010001" data-ref-itemNo="003"
											data-trk="null"
											data-impression="A000000142953^홈_인기행사만 모았어요^2"><span
											class="thumb_flag best">베스트</span><img
											src="https://image.oliveyoung.co.kr/uploads/images/goods/400/10/0000/0014/A00000014295302ko.jpg?l=ko"
											alt="페이스팩토리 BEST 미용가전 4종" onerror="common.errorImg(this);"></a>
										<div class="prd_name">
											<a href="javascript:;" name="Home_Planshop3"
												class="goodsList" data-ref-goodsNo="A000000142953"
												data-attr="홈^인기행사만 모았어요^페이스팩토리 BEST 미용가전 4종^2"
												data-ref-dispCatNo="90000010001" data-ref-itemNo="003"
												data-trk="null"><span class="tx_brand">페이스팩토리</span>
												<p class="tx_name">페이스팩토리 BEST 미용가전 4종</p></a>
										</div>
										<button class="btn_zzim jeem" data-ref-goodsNo="A000000142953">찜하기</button>
										<p class="prd_price">
											<span class="tx_org"><span class="tx_num">38,900</span>원
												~</span><span class="tx_cur"><span class="tx_num">34,900</span>원
												~</span>
										</p>
										<p class="prd_flag">
											<span class="icon_flag coupon">쿠폰</span><span
												class="icon_flag delivery">오늘드림</span>
										</p>
										<p class="prd_point_area tx_num">
											<span class="review_point"><span class="point"
												style="width: 92.0%">10점만점에 5.5점</span></span>(73)
										</p>
										<p class="prd_btn_area">
											<button class="cartBtn" data-ref-goodsNo="A000000142953"
												data-ref-dispCatNo="90000010001" data-ref-itemNo="003">장바구니</button>
											<button class="btn_new_pop goodsList">새창보기</button>
										</p>
									</div>
								</li>
							</ul>
						</div>
					</div>
				</div>
				<!-- banner_wrap end -->
				<div class="banner_paging" role="toolbar">
					<ul class="slick-dots" role="tablist" style="display: block;">
						<li class="slick_active" aria-hidden="false" role="presentation"
							aria-selected="true" id="slick-slide20">
							<button type="button" role="button">1</button>
						</li>
						<li aria-hidden="true" role="presentation" aria-selected="false"
							id="slick-slide21">
							<button type="button" role="b0utton">2</button>
						</li>
						<li aria-hidden="true" role="presentation" aria-selected="false"
							id="slick-slide22">
							<button type="button" role="button">3</button>
						</li>
						<li aria-hidden="true" role="presentation" aria-selected="false"
							id="slick-slide23">
							<button type="button" role="button">4</button>
						</li>
					</ul>
				</div>
				<span class="slick-prev prev slick-arrow" id="plan_prev"
					style="display: block;"> prev </span> <span
					class="slick-next next slick-arrow" id="plan_next"
					style="display: block;"> next </span>
			</div>
			<!-- main_plan_banner ty02 end -->
			<!-- 인기 행사만 모았어요 end -->
			<!-- //메인 꾸밈영역 -->
			<div class="main_design_area">
				<div class="left_area"></div>
				<div class="right_area"></div>
			</div>
			<!-- //메인 꾸밈영역 end -->
			<!-- catchKeyword -->
			<div class="catch_keyword_wrap">
				<h3 class="main_sub_tit">
					<strong>Catch Keyword</strong>
				</h3>
				<div class="catch_keyword_slide">
					<ul class="slide_list slick_slider slick-initialized slick-slider"
						id="catch_keyword">
						<div aria-live="polite" class="slick-list">
							<div class="slick-track" role="listbox"
								style="opacity: 1; width: 1020px;">
								<li class="slick_slide slick-current slick-active"
									aria-hidden="false"
									style="width: 1020px; position: relative; left: 0px; top: 0px; z-index: 999; opacity: 1;"
									role="option">
									<ul class="keyword_banner">
										<li class="keyword_items"><a href="#">
												<div class="keyword_thumb">
													<img
														src="https://fyawsbucket.s3.ap-northeast-2.amazonaws.com/images/73986180392308394.jpg"
														alt="" />
												</div>
												<div class="keyword_title">
													<strong>1월3주 검색탑100 패치</strong>
												</div>
												<div class="keyword_sub_title">피부를 위한 뾰족한 한 수, 고민의 정곡을
													찔러봐요</div>
										</a></li>
										<li class="keyword_items"><a href="#">
												<div class="keyword_thumb">
													<img
														src="https://fyawsbucket.s3.ap-northeast-2.amazonaws.com/images/7403986040826622052.jpg"
														alt="" />
												</div>
												<div class="keyword_title">
													<strong>세달간 검색 탑3, 립밤</strong>
												</div>
												<div class="keyword_sub_title">건조한 겨울에도 립스틱 끼임 없는 입술
													만들어요</div>
										</a></li>
									</ul>
								</li>
							</div>
						</div>
					</ul>
				</div>
			</div>
			<!-- catchKeyword end -->
			<!-- 오직 올리브영에서만 -->
			<div class="main_onlyone_wrap">
				<div class="bg_box">
					<h3 class="main_sub_tit">
						<a href="#"> <span class="tx_num">EXCLUSIVE</span> 오직 <strong>올리브영에서만</strong>
						</a>
					</h3>
					<div
						class="banner_wrap slick_slider slick-initialized slick-slider slick-dotted"
						id="OnlyoneSlider">
						<div aria-live="polite" class="slick-list draggable">
							<div class="slick-track" role="listbox"
								style="opacity: 1; width: 4080px; transform: translate3d(-1020px, 0px, 0px);">
								<div class="slick-slide slick-current slick-active"
									data-slick-index="0" aria-hidden="false" style="width: 340px;"
									tabindex="-1">
									<a href="#" class="onlyone_box" data-trk="/" tabindex="0">
										<img
										src="https://fyawsbucket.s3.ap-northeast-2.amazonaws.com/images/1963811434675199950.jpg"
										alt="" />
										<p>
											<span class="tx_num">모르면 손해, 찐 Eye템✨</span> 웨이크메이크X컬러그램
										</p>
									</a>
								</div>
								<div class="slick-slide slick-active" data-slick-index="1"
									aria-hidden="false" style="width: 340px;" tabindex="-1">
									<a href="#" class="onlyone_box" data-trk="/" tabindex="0">
										<img
										src="https://fyawsbucket.s3.ap-northeast-2.amazonaws.com/images/8008025913025187041.jpg"
										alt="" />
										<p>
											<span class="tx_num">너에게,나에게 선물🎁</span> 새해뷰티 특가 서둘러 GET📢
										</p>
									</a>
								</div>
								<div class="slick-slide slick-active" data-slick-index="2"
									aria-hidden="false" style="width: 340px;" tabindex="-1">
									<a href="#" class="onlyone_box" data-trk="/" tabindex="0">
										<img
										src="https://fyawsbucket.s3.ap-northeast-2.amazonaws.com/images/8926818001144804653.gif"
										alt="" />
										<p>
											<span class="tx_num">새해 '보' 많이 받으세요~! </span> 🎁바이오힐보 설 기프트
											대전🎁
										</p>
									</a>
								</div>
								<div class="slick-slide" data-slick-index="3" aria-hidden="true"
									style="width: 340px;" tabindex="-1">
									<a href="#" class="onlyone_box" data-trk="/" tabindex="0">
										<img
										src="https://fyawsbucket.s3.ap-northeast-2.amazonaws.com/images/8190261830745820074.jpeg"
										alt="" />
										<p>
											<span class="tx_num">브링그린 추천 새해 루틴💯 </span> #수분정석대나무#미백정석당근
										</p>
									</a>
								</div>
								<div class="slick-slide" data-slick-index="4" aria-hidden="true"
									style="width: 340px;" tabindex="-1">
									<a href="#" class="onlyone_box" data-trk="/" tabindex="0">
										<img
										src="https://fyawsbucket.s3.ap-northeast-2.amazonaws.com/images/8618772027634973191.jpg"
										alt="" />
										<p>
											<span class="tx_num">✨2022년 맛있는시작✨ </span> 🎉딜라이트 원물간식 대전🎉
										</p>
									</a>
								</div>
								<div class="slick-slide" data-slick-index="5" aria-hidden="true"
									style="width: 340px;" tabindex="-1">
									<a href="#" class="onlyone_box" data-trk="/" tabindex="0">
										<img
										src="https://fyawsbucket.s3.ap-northeast-2.amazonaws.com/images/3041236092193375076.jpg"
										alt="" />
										<p>
											<span class="tx_num">브러시 모가 중요해👍</span> #비건브러시#완벽한메이크업
										</p>
									</a>
								</div>
							</div>
						</div>
						<ul class="slick-dots" style="display: block;">
							<li class="slick-active" aria-hidden="false" aria-selected="true"
								id="slick-slide30">
								<button type="button" tabindex="0">1</button>
							</li>
							<li aria-hidden="true" aria-selected="false" id="slick-slide31">
								<button type="button" tabindex="0">2</button>
							</li>
						</ul>
					</div>
					<!-- banner_wrap slick_slider end -->
				</div>
				<!-- bg_box end -->
			</div>
			<!-- 오직 올리브영에서만 end-->
			<!-- 이 상품 어때요 -->
			<h3 class="main_sub_tit">
				<strong>이 상품 어때요?</strong>
			</h3>
			<div class="main_recomm_wrap" id="mainReComSlider">
				<div>
					<ul class="cate_prd_list no_line">
						<li class="flag">
							<div class="prd_info ">
								<a
									href="https://www.oliveyoung.co.kr/store/goods/getGoodsDetail.do?goodsNo=A000000160941&dispCatNo=90000010001&trackingCd=Home_Recommand&curation&egcode&rccode&egrankcode"
									name="Home_Recommand" class="prd_thumb goodsList"> <span
									class="thumb_flag best">베스트</span> <img
									src="https://fyawsbucket.s3.ap-northeast-2.amazonaws.com/images/A00000016094101ko.jpg"
									alt="[장나라 PICK] 참존 톤업핏 블랙라벨 마스크 10매입 7종"></a>
								<div class="prd_name">
									<a href="#" name="Home_Recommand" class="goodsList"> <span
										class="tx_brand">참존</span>
										<p class="tx_name">[장나라 PICK] 참존 톤업핏 블랙라벨 마스크 10매입 7종</p></a>
								</div>
								<button class="btn_zzim jeem">찜하기</button>
								<p class="prd_price">
									<span class="tx_org"><span class="tx_num">14,900</span>원
									</span><span class="tx_cur"><span class="tx_num">11,300</span>원
									</span>
								</p>
								<p class="prd_flag">
									<span class="icon_flag sale">세일</span><span
										class="icon_flag coupon">쿠폰</span>
								</p>
								<p class="prd_point_area tx_num">
									<span class="review_point"><span class="point"
										style="width: 96.0%">10점만점에 5.5점</span></span>(73)
								</p>
								<p class="prd_btn_area">
									<button class="cartBtn">장바구니</button>
									<button class="btn_new_pop goodsList">새창보기</button>
								</p>
							</div>
						</li>
						<li class="flag">
							<div class="prd_info ">
								<a href="#" name="Home_Recommand" class="prd_thumb goodsList"><span
									class="thumb_flag best">베스트</span><img
									src="https://fyawsbucket.s3.ap-northeast-2.amazonaws.com/images/A00000015675201ko.jpg"
									alt="센트룸 포커스 신바이오틱스 60캡슐 (1개월분)"></a>
								<div class="prd_name">
									<a href="javascript:;" name="Home_Recommand" class="goodsList">
										<span class="tx_brand">센트룸</span>
										<p class="tx_name">센트룸 포커스 신바이오틱스 60캡슐 (1개월분)</p>
									</a>
								</div>
								<button class="btn_zzim jeem">찜하기</button>
								<p class="prd_price">
									<span class="tx_org"><span class="tx_num">27,000</span>원
									</span><span class="tx_cur"><span class="tx_num">24,000</span>원
									</span>
								</p>
								<p class="prd_flag">
									<span class="icon_flag sale">세일</span>
								</p>
								<p class="prd_point_area tx_num">
									<span class="review_point"><span class="point"
										style="width: 94.0%">10점만점에 5.5점</span></span>(34)
								</p>
								<p class="prd_btn_area">
									<button class="cartBtn">장바구니</button>
									<button class="btn_new_pop goodsList">새창보기</button>
								</p>
							</div>
						</li>
						<li class="flag">
							<div class="prd_info ">
								<a href="#" name="Home_Recommand" class="prd_thumb goodsList"><img
									src="https://fyawsbucket.s3.ap-northeast-2.amazonaws.com/images/A00000015690513ko.jpg"
									alt="페이스팩토리 세라믹 괄사 마사저"></a>
								<div class="prd_name">
									<a href="#" name="Home_Recommand" class="goodsList"> <span
										class="tx_brand">페이스팩토리</span>
										<p class="tx_name">페이스팩토리 세라믹 괄사 마사저</p></a>
								</div>
								<button class="btn_zzim jeem">찜하기</button>
								<p class="prd_price">
									<span class="tx_org"><span class="tx_num">38,900</span>원
									</span><span class="tx_cur"><span class="tx_num">34,900</span>원
									</span>
								</p>
								<p class="prd_flag">
									<span class="icon_flag coupon">쿠폰</span>
								</p>
								<p class="prd_point_area tx_num">
									<span class="review_point"><span class="point"
										style="width: 96.0%">10점만점에 5.5점</span></span>(67)
								</p>
								<p class="prd_btn_area">
									<button class="cartBtn">장바구니</button>
									<button class="btn_new_pop goodsList">새창보기</button>
								</p>
							</div>
						</li>
						<li class="flag">
							<div class="prd_info ">
								<a href="#" name="Home_Recommand" class="prd_thumb goodsList">
									<span class="thumb_flag best">베스트</span> <img
									src="https://fyawsbucket.s3.ap-northeast-2.amazonaws.com/images/A00000014970502ko.jpg"
									alt="실크테라피 모이스처 에센스 190kit(130ml+60ml)">
								</a>
								<div class="prd_name">
									<a href="#" name="Home_Recommand" class="goodsList"> <span
										class="tx_brand">실크테라피</span>
										<p class="tx_name">실크테라피 모이스처 에센스 190kit(130ml+60ml)</p></a>
								</div>
								<button class="btn_zzim jeem">찜하기</button>
								<p class="prd_price">
									<span class="tx_org"><span class="tx_num">32,000</span>원
									</span><span class="tx_cur"><span class="tx_num">20,610</span>원
									</span>
								</p>
								<p class="prd_flag">
									<span class="icon_flag sale">세일</span><span
										class="icon_flag coupon">쿠폰</span><span class="icon_flag gift">증정</span>
								</p>
								<p class="prd_point_area tx_num">
									<span class="review_point"><span class="point"
										style="width: 96.0%">10점만점에 5.5점</span></span>(587)
								</p>
								<p class="prd_btn_area">
									<button class="cartBtn">장바구니</button>
									<button class="btn_new_pop goodsList">새창보기</button>
								</p>
							</div>
						</li>
					</ul>
				</div>
				<div>
					<ul class="cate_prd_list no_line">
						<li class="flag">
							<div class="prd_info ">
								<a href="#" name="Home_Recommand" class="prd_thumb goodsList"><span
									class="thumb_flag best">베스트</span><img
									src="https://fyawsbucket.s3.ap-northeast-2.amazonaws.com/images/A00000015932709ko.jpg"
									alt="[염색] 제니하우스 프리미엄 헤어컬러 크림염색약 7종 #시카염색"></a>
								<div class="prd_name">
									<a href="#" name="Home_Recommand" class="goodsList">제니하우스</span>
										<p class="tx_name">[염색] 제니하우스 프리미엄 헤어컬러 크림염색약 7종 #시카염색</p></a>
								</div>
								<button class="btn_zzim jeem">찜하기</button>
								<p class="prd_price">
									<span class="tx_org"><span class="tx_num">14,000</span>원
									</span><span class="tx_cur"><span class="tx_num">6,650</span>원
									</span>
								</p>
								<p class="prd_flag">
									<span class="icon_flag sale">세일</span><span
										class="icon_flag coupon">쿠폰</span><span class="icon_flag gift">증정</span>
								</p>
								<p class="prd_point_area tx_num">
									<span class="review_point"><span class="point"
										style="width: 90.0%">10점만점에 5.5점</span></span>(999+)
								</p>
								<p class="prd_btn_area">
									<button class="cartBtn">장바구니</button>
									<button class="btn_new_pop goodsList">새창보기</button>
								</p>
							</div>
						</li>
						<li class="flag">
							<div class="prd_info ">
								<a href="#" name="Home_Recommand" class="prd_thumb goodsList"><span
									class="thumb_flag best">베스트</span><img
									src="https://fyawsbucket.s3.ap-northeast-2.amazonaws.com/images/A00000012174918ko.jpg"
									alt="클리오 킬래쉬 수퍼프루프마스카라 1+1 기획 (본품+본품)"></a>
								<div class="prd_name">
									<a href="#" name="Home_Recommand" class="goodsList"><span
										class="tx_brand">클리오</span>
										<p class="tx_name">클리오 킬래쉬 수퍼프루프마스카라 1+1 기획 (본품+본품)</p></a>
								</div>
								<button class="btn_zzim jeem">찜하기</button>
								<p class="prd_price">
									<span class="tx_cur"><span class="tx_num">18,000</span>원
									</span>
								</p>
								<p class="prd_flag"></p>
								<p class="prd_point_area tx_num">
									<span class="review_point"><span class="point"
										style="width: 94.0%">10점만점에 5.5점</span></span>(999+)
								</p>
								<p class="prd_btn_area">
									<button class="cartBtn">장바구니</button>
									<button class="btn_new_pop goodsList">새창보기</button>
								</p>
							</div>
						</li>
						<li class="flag">
							<div class="prd_info ">
								<a href="#" name="Home_Recommand" class="prd_thumb goodsList"><span
									class="thumb_flag best">베스트</span><img
									src="https://fyawsbucket.s3.ap-northeast-2.amazonaws.com/images/A00000016042901ko.jpg"
									alt="[NEW] 힐링버드 울트라 프로틴 노워시 리커버리 크림 트리트먼트 130ml (손상모)"></a>
								<div class="prd_name">
									<a href="#" name="Home_Recommand" class="goodsList"><span
										class="tx_brand">힐링버드</span>
										<p class="tx_name">[NEW] 힐링버드 울트라 프로틴 노워시 리커버리 크림 트리트먼트
											130ml (손상모)</p></a>
								</div>
								<button class="btn_zzim jeem">찜하기</button>
								<p class="prd_price">
									<span class="tx_org"><span class="tx_num">22,000</span>원
									</span><span class="tx_cur"><span class="tx_num">14,300</span>원
									</span>
								</p>
								<p class="prd_flag">
									<span class="icon_flag sale">세일</span><span
										class="icon_flag gift">증정</span>
								</p>
								<p class="prd_point_area tx_num">
									<span class="review_point"><span class="point"
										style="width: 96.0%">10점만점에 5.5점</span></span>(92)
								</p>
								<p class="prd_btn_area">
									<button class="cartBtn">장바구니</button>
									<button class="btn_new_pop goodsList">새창보기</button>
								</p>
							</div>
						</li>
						<li class="flag">
							<div class="prd_info ">
								<a href="#" name="Home_Recommand" class="prd_thumb goodsList"><span
									class="thumb_flag best">베스트</span><img
									src="https://fyawsbucket.s3.ap-northeast-2.amazonaws.com/images/A00000014661701ko.jpg"
									alt="츠바키 프리미엄 리페어 마스크 1+1 기획세트"></a>
								<div class="prd_name">
									<a href="#" name="Home_Recommand" class="goodsList"><span
										class="tx_brand">츠바키</span>
										<p class="tx_name">츠바키 프리미엄 리페어 마스크 1+1 기획세트</p></a>
								</div>
								<button class="btn_zzim jeem">찜하기</button>
								<p class="prd_price">
									<span class="tx_cur"><span class="tx_num">16,000</span>원
									</span>
								</p>
								<p class="prd_flag"></p>
								<p class="prd_point_area tx_num">
									<span class="review_point"><span class="point"
										style="width: 96.0%">10점만점에 5.5점</span></span>(999+)
								</p>
								<p class="prd_btn_area">
									<button class="cartBtn">장바구니</button>
									<button class="btn_new_pop goodsList">새창보기</button>
								</p>
							</div>
						</li>
					</ul>
				</div>
				<!-- 
				<div>
					<ul class="cate_prd_list no_line">
						<li class="flag">
							<div class="prd_info ">
								<a
									href="https://www.oliveyoung.co.kr/store/goods/getGoodsDetail.do?goodsNo=A000000160721&dispCatNo=90000010001&trackingCd=Home_Recommand&curation&egcode&rccode&egrankcode"
									name="Home_Recommand" class="prd_thumb goodsList"
									data-ref-goodsNo="A000000160721"
									data-attr="홈^이상품어때요^★최초1+1기획★리얼베리어 익스트림 크림 50ml 기획 (+50ml+폼50ml)^9"
									data-ref-dispCatNo="90000010001" data-ref-itemNo="001"
									data-trk="null" data-impression="A000000160721^홈_이상품어때요^9"><span
									class="thumb_flag best">베스트</span><img
									src="https://image.oliveyoung.co.kr/uploads/images/goods/400/10/0000/0016/A00000016072107ko.jpg?l=ko"
									alt="★최초1+1기획★리얼베리어 익스트림 크림 50ml 기획 (+50ml+폼50ml)"
									onerror="common.errorImg(this);"></a>
								<div class="prd_name">
									<a href="javascript:;" name="Home_Recommand" class="goodsList"
										data-ref-goodsNo="A000000160721"
										data-attr="홈^이상품어때요^★최초1+1기획★리얼베리어 익스트림 크림 50ml 기획 (+50ml+폼50ml)^9"
										data-ref-dispCatNo="90000010001" data-ref-itemNo="001"
										data-trk="null"><span class="tx_brand">리얼베리어</span>
									<p class="tx_name">★최초1+1기획★리얼베리어 익스트림 크림 50ml 기획
											(+50ml+폼50ml)</p></a>
								</div>
								<button class="btn_zzim jeem" data-ref-goodsNo="A000000160721">찜하기</button>
								<p class="prd_price">
									<span class="tx_org"><span class="tx_num">38,000</span>원
									</span><span class="tx_cur"><span class="tx_num">26,900</span>원
									</span>
								</p>
								<p class="prd_flag">
									<span class="icon_flag sale">세일</span><span
										class="icon_flag gift">증정</span><span
										class="icon_flag delivery">오늘드림</span>
								</p>
								<p class="prd_point_area tx_num">
									<span class="review_point"><span class="point"
										style="width: 96.0%">10점만점에 5.5점</span></span>(999+)
								</p>
								<p class="prd_btn_area">
									<button class="cartBtn" data-ref-goodsNo="A000000160721"
										data-ref-dispCatNo="90000010001" data-ref-itemNo="001">장바구니</button>
									<button class="btn_new_pop goodsList">새창보기</button>
								</p>
							</div>
						</li>
						<li class="flag">
							<div class="prd_info ">
								<a
									href="https://www.oliveyoung.co.kr/store/goods/getGoodsDetail.do?goodsNo=A000000160722&dispCatNo=90000010001&trackingCd=Home_Recommand&curation&egcode&rccode&egrankcode"
									name="Home_Recommand" class="prd_thumb goodsList"
									data-ref-goodsNo="A000000160722"
									data-attr="홈^이상품어때요^★한정기획★리얼베리어 익스트림 로션 150ml 기획 (+50ml+폼50ml)^10"
									data-ref-dispCatNo="90000010001" data-ref-itemNo="001"
									data-trk="null" data-impression="A000000160722^홈_이상품어때요^10"><img
									src="https://image.oliveyoung.co.kr/uploads/images/goods/400/10/0000/0016/A00000016072204ko.jpg?l=ko"
									alt="★한정기획★리얼베리어 익스트림 로션 150ml 기획 (+50ml+폼50ml)"
									onerror="common.errorImg(this);"></a>
								<div class="prd_name">
									<a href="javascript:;" name="Home_Recommand" class="goodsList"
										data-ref-goodsNo="A000000160722"
										data-attr="홈^이상품어때요^★한정기획★리얼베리어 익스트림 로션 150ml 기획 (+50ml+폼50ml)^10"
										data-ref-dispCatNo="90000010001" data-ref-itemNo="001"
										data-trk="null"><span class="tx_brand">리얼베리어</span>
									<p class="tx_name">★한정기획★리얼베리어 익스트림 로션 150ml 기획
											(+50ml+폼50ml)</p></a>
								</div>
								<button class="btn_zzim jeem" data-ref-goodsNo="A000000160722">찜하기</button>
								<p class="prd_price">
									<span class="tx_org"><span class="tx_num">30,000</span>원
									</span><span class="tx_cur"><span class="tx_num">21,900</span>원
									</span>
								</p>
								<p class="prd_flag">
									<span class="icon_flag sale">세일</span><span
										class="icon_flag delivery">오늘드림</span>
								</p>
								<p class="prd_point_area tx_num">
									<span class="review_point"><span class="point"
										style="width: 94.0%">10점만점에 5.5점</span></span>(229)
								</p>
								<p class="prd_btn_area">
									<button class="cartBtn" data-ref-goodsNo="A000000160722"
										data-ref-dispCatNo="90000010001" data-ref-itemNo="001">장바구니</button>
									<button class="btn_new_pop goodsList">새창보기</button>
								</p>
							</div>
						</li>
						<li class="flag">
							<div class="prd_info ">
								<a
									href="https://www.oliveyoung.co.kr/store/goods/getGoodsDetail.do?goodsNo=A000000154906&dispCatNo=90000010001&trackingCd=Home_Recommand&curation&egcode&rccode&egrankcode"
									name="Home_Recommand" class="prd_thumb goodsList"
									data-ref-goodsNo="A000000154906"
									data-attr="홈^이상품어때요^라운드어라운드 그린티 약산성 클렌징폼 250ml+250ml 더블기획^11"
									data-ref-dispCatNo="90000010001" data-ref-itemNo="001"
									data-trk="null" data-impression="A000000154906^홈_이상품어때요^11"><span
									class="thumb_flag best">베스트</span><img
									src="https://image.oliveyoung.co.kr/uploads/images/goods/400/10/0000/0015/A00000015490607ko.jpg?l=ko"
									alt="라운드어라운드 그린티 약산성 클렌징폼 250ml+250ml 더블기획"
									onerror="common.errorImg(this);"></a>
								<div class="prd_name">
									<a href="javascript:;" name="Home_Recommand" class="goodsList"
										data-ref-goodsNo="A000000154906"
										data-attr="홈^이상품어때요^라운드어라운드 그린티 약산성 클렌징폼 250ml+250ml 더블기획^11"
										data-ref-dispCatNo="90000010001" data-ref-itemNo="001"
										data-trk="null"><span class="tx_brand">라운드어라운드</span>
									<p class="tx_name">라운드어라운드 그린티 약산성 클렌징폼 250ml+250ml 더블기획</p></a>
								</div>
								<button class="btn_zzim jeem" data-ref-goodsNo="A000000154906">찜하기</button>
								<p class="prd_price">
									<span class="tx_org"><span class="tx_num">27,000</span>원
									</span><span class="tx_cur"><span class="tx_num">21,400</span>원
									</span>
								</p>
								<p class="prd_flag">
									<span class="icon_flag sale">세일</span><span
										class="icon_flag delivery">오늘드림</span>
								</p>
								<p class="prd_point_area tx_num">
									<span class="review_point"><span class="point"
										style="width: 92.0%">10점만점에 5.5점</span></span>(999+)
								</p>
								<p class="prd_btn_area">
									<button class="cartBtn" data-ref-goodsNo="A000000154906"
										data-ref-dispCatNo="90000010001" data-ref-itemNo="001">장바구니</button>
									<button class="btn_new_pop goodsList">새창보기</button>
								</p>
							</div>
						</li>
						<li class="flag">
							<div class="prd_info ">
								<a
									href="https://www.oliveyoung.co.kr/store/goods/getGoodsDetail.do?goodsNo=A000000158513&dispCatNo=90000010001&trackingCd=Home_Recommand&curation&egcode&rccode&egrankcode"
									name="Home_Recommand" class="prd_thumb goodsList"
									data-ref-goodsNo="A000000158513"
									data-attr="홈^이상품어때요^메이크프렘 클린비건 클렌징밀크 리필기획(200ml+100ml)^12"
									data-ref-dispCatNo="90000010001" data-ref-itemNo="001"
									data-trk="null" data-impression="A000000158513^홈_이상품어때요^12"><span
									class="thumb_flag best">베스트</span><img
									src="https://image.oliveyoung.co.kr/uploads/images/goods/400/10/0000/0015/A00000015851302ko.jpg?l=ko"
									alt="메이크프렘 클린비건 클렌징밀크 리필기획(200ml+100ml)"
									onerror="common.errorImg(this);"></a>
								<div class="prd_name">
									<a href="javascript:;" name="Home_Recommand" class="goodsList"
										data-ref-goodsNo="A000000158513"
										data-attr="홈^이상품어때요^메이크프렘 클린비건 클렌징밀크 리필기획(200ml+100ml)^12"
										data-ref-dispCatNo="90000010001" data-ref-itemNo="001"
										data-trk="null"><span class="tx_brand">메이크프렘</span>
									<p class="tx_name">메이크프렘 클린비건 클렌징밀크 리필기획(200ml+100ml)</p></a>
								</div>
								<button class="btn_zzim jeem" data-ref-goodsNo="A000000158513">찜하기</button>
								<p class="prd_price">
									<span class="tx_org"><span class="tx_num">28,000</span>원
									</span><span class="tx_cur"><span class="tx_num">21,000</span>원
									</span>
								</p>
								<p class="prd_flag">
									<span class="icon_flag sale">세일</span><span
										class="icon_flag gift">증정</span><span
										class="icon_flag delivery">오늘드림</span>
								</p>
								<p class="prd_point_area tx_num">
									<span class="review_point"><span class="point"
										style="width: 96.0%">10점만점에 5.5점</span></span>(296)
								</p>
								<p class="prd_btn_area">
									<button class="cartBtn" data-ref-goodsNo="A000000158513"
										data-ref-dispCatNo="90000010001" data-ref-itemNo="001">장바구니</button>
									<button class="btn_new_pop goodsList">새창보기</button>
								</p>
							</div>
						</li>
					</ul>
				</div> -->
			</div>
			<!-- 이 상품 어때요 end-->
		</div>
		<!-- contents end -->
	</div>
	<!-- container end -->
	<jsp:include page="../default/footer.jsp"></jsp:include>
</body>
</html>