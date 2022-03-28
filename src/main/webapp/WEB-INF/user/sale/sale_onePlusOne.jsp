<%@ page language="java" contentType="text/html; charset=utf-8"
	pageEncoding="utf-8"%>
<%@ taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core" %>
<c:set var="path" value="${pageContext.request.contextPath}"/>
<!DOCTYPE html>
<html>
<head>
<meta charset="utf-8">
<title>세일</title>
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
		<div class="title-sale">
			<h1>
				세일 <span>핫세일! 이건 꼭 사야해!</span>
			</h1>
		</div>
		<div class="sale-area">
			<ul class="comm5sTabs">
				<li data-ref-dispcatno="900000100090001" id="hot"
					onclick="location='sale_hot.do'">
					<button type="button">핫인기세일</button>
				</li>
				<li data-ref-dispacatno="900000100090002" id="plus" class="on"
					onclick="location='sale_onePlusOne.do'">

					<button type="button">증정/하나 더</button>
			</ul>
			<div class="common-menu">
				<ul>
					<li class="on">
						<button type="button" data-ref-dispCatNo="">전체</button>
					</li>
					<!-- 그 외 -->
					<li>
						<button type="button" data-ref-dispCatNo="10000010001">스킨케어</button>
					</li>
					<li>
						<button type="button" data-ref-dispCatNo="10000010009">마스크팩</button>
					</li>
					<li>
						<button type="button" data-ref-dispCatNo="10000010010">클렌징</button>
					</li>
					<li>
						<button type="button" data-ref-dispCatNo="10000010011">선케어</button>
					</li>
					<li>
						<button type="button" data-ref-dispCatNo="10000010008">더모
							코스메틱</button>
					</li>
					<li>
						<button type="button" data-ref-dispCatNo="10000010002">메이크업</button>
					</li>
					<li>
						<button type="button" data-ref-dispCatNo="10000010012">네일</button>
					</li>
					<li>
						<button type="button" data-ref-dispCatNo="10000010003">바디케어</button>
					</li>
					<li>
						<button type="button" data-ref-dispCatNo="10000010004">헤어케어</button>
					</li>
					<li>
						<button type="button" data-ref-dispCatNo="10000010005">향수/디퓨저</button>
					</li>
					<li>
						<button type="button" data-ref-dispCatNo="10000010006">미용소품</button>
					</li>
					<li>
						<button type="button" data-ref-dispCatNo="10000010007">남성</button>
					</li>
					<li>
						<button type="button" data-ref-dispCatNo="10000020003">건강/위생용품</button>
					</li>
					<li>
						<button type="button" data-ref-dispCatNo="10000020001">건강식품</button>
					</li>
					<li>
						<button type="button" data-ref-dispCatNo="10000020002">푸드</button>
					</li>
					<li>
						<button type="button" data-ref-dispCatNo="10000030005">라이프/홈</button>
					</li>
					<li>
						<button type="button" data-ref-dispCatNo="10000030003">반려동물</button>
					</li>
					<li>
						<button type="button" data-ref-dispCatNo="10000030004">베이비</button>
					</li>
					<!-- 그 외 -->

					<!-- 빈 태그일때 class=disabled 추가 -->
					<li class="disabled"></li>

					<li class="disabled"></li>

					<li class="disabled"></li>

					<li class="disabled"></li>

					<li class="disabled"></li>
					<!-- 빈 태그일때 class=disabled 추가 -->

				</ul>
			</div>

			<!-- 서브카테고리 상단 안내화면 -->

			<div class="cura_pord crtBtm" id="curation_wrap_p038">
				<div class="curation_area_p038_lead"></div>
				<div class="loading_box" id="loadingBox_p038" style="display: none;">
					<h4 class="tit_h4">
						<span class="span_tempTitle"></span>
					</h4>
					<p class="txt">고객을 위한 상품 추천중이에요^0^</p>
				</div>
				<div id="goods_cuation_p038">
					<h4 class="tit_h4">
						<span id="recomm_title_p038">지금 주목할 만한 세일 상품</span>
						<button class="moreBtn" id="crt_more_p038">
							<span data-attr="세일^주목할상품^더보기^더보기">더보기</span>
						</button>
					</h4>
					<div class="inner_cont" role="toolbar">
						<ul
							class="curation_basket slide_list slick_slider slick-initialized slick-slider slick-dotted"
							id="curation_ulList_p038">
							<button type="button" data-role="none"
								class="slick-prev slick-arrow" aria-label="Previous"
								role="button" style="display: block;">2/4</button>
							<div aria-live="polite" class="slick-list draggable">
								<div class="slick-track"
									style="opacity: 1; width: 5832px; transform: translate3d(-972px, 0px, 0px);"
									role="listbox">
									<li data-wlog_type="p038"
										class="gtm_sale_lk_list slick-slide slick-cloned"
										data-slick-index="-3" aria-hidden="true" style="width: 324px;"
										tabindex="-1">
										<div class="thum" data-ref-goodsno="A000000160807"
											data-egrank="10" data-egcode="a026_m026"
											data-attr="세일^주목할만한상품^★리뉴얼/NEW★메디힐 티트리 에센셜 마스크 20매입^10"
											data-trk="/Sale_Curation"
											data-impression="A000000160807^세일_주목할만한상품^10"
											data-ref-dispcatno="90000010009" data-ref-itemno="001"
											data-impression-visibility="1">
											<span class="thumb_flag best">베스트</span> <img
												src=https://fyawsbucket.s3.ap-northeast-2.amazonaws.com/sale_images/A00000016080705ko.jpg
												alt="★리뉴얼/NEW★메디힐 티트리 에센셜 마스크 20매입"
												onerror="common.errorImg(this);"
												data-attr="세일^주목할만한상품^★리뉴얼/NEW★메디힐 티트리 에센셜 마스크 20매입^10"
												onclick="">
											<div class="my">
												<button type="button" class="myCart cartBtnRecoBell"
													data-ref-goodsno="A000000160807" name=""
													data-ref-dispcatno="90000010009" data-ref-itemno="001"
													tabindex="-1">
													<span>장바구니</span>
												</button>
												<button type="button" class="mySee btn_zzim"
													data-ref-goodsno="A000000160807" tabindex="-1">
													<span>찜하기전</span>
												</button>
											</div>
										</div> <!-- 상품 상세 페이지로 이동하는 a 태그가 있음 -->
										<div class="info">
											<a href="#" class="a_detail" name="Sale_Curation"
												data-ref-goodsno="A000000160807" data-egrank="10"
												data-egcode="a026_m026"
												data-attr="세일^주목할만한상품^★리뉴얼/NEW★메디힐 티트리 에센셜 마스크 20매입^10"
												data-trk="/Sale_Curation" data-ref-dispcatno="90000010009"
												data-ref-itemno="001" tabindex="-1" onclick=""><dl>
													<dt class="tit">★리뉴얼/NEW★메디힐 티트리 에센셜 마스크 20매입</dt>
													<dd class="price">
														<del>40,000원</del>
														<strong>20,000원</strong>
													</dd>
													<dd class="icon">
														<span class="icon_flag sale">세일</span>
													</dd>
												</dl></a>
										</div>
									</li>
									<li data-wlog_type="p038"
										class="gtm_sale_lk_list slick-slide slick-cloned"
										data-slick-index="-2" aria-hidden="true" style="width: 324px;"
										tabindex="-1">
										<div class="thum" data-ref-goodsno="A000000160734"
											data-egrank="11" data-egcode="a026_m026"
											data-attr="세일^주목할만한상품^★한정수량★홀리 pick★닥터자르트 세라마이딘 크림 50ml 1+1 더블 기획세트(온)^11"
											data-trk="/Sale_Curation"
											data-impression="A000000160734^세일_주목할만한상품^11"
											data-ref-dispcatno="90000010009" data-ref-itemno="001"
											data-impression-visibility="1">
											<span class="thumb_flag best">베스트</span> <img
												src="https://fyawsbucket.s3.ap-northeast-2.amazonaws.com/sale_images/A00000016073403ko.jpg"
												alt="★한정수량★홀리 pick★닥터자르트 세라마이딘 크림 50ml 1+1 더블 기획세트(온)"
												onerror="common.errorImg(this);"
												data-attr="세일^주목할만한상품^★한정수량★홀리 pick★닥터자르트 세라마이딘 크림 50ml 1+1 더블 기획세트(온)^11"
												onclick="">
											<div class="my">
												<button type="button" class="myCart cartBtnRecoBell"
													data-ref-goodsno="A000000160734" name=""
													data-ref-dispcatno="90000010009" data-ref-itemno="001"
													tabindex="-1">
													<span>장바구니</span>
												</button>
												<button type="button" class="mySee btn_zzim"
													data-ref-goodsno="A000000160734" tabindex="-1">
													<span>찜하기전</span>
												</button>
											</div>
										</div>
										<div class="info">
											<a href="#" class="a_detail" name="Sale_Curation"
												data-ref-goodsno="A000000160734" data-egrank="11"
												data-egcode="a026_m026"
												data-attr="세일^주목할만한상품^★한정수량★홀리 pick★닥터자르트 세라마이딘 크림 50ml 1+1 더블 기획세트(온)^11"
												data-trk="/Sale_Curation" data-ref-dispcatno="90000010009"
												data-ref-itemno="001" tabindex="-1" onclick=""><dl>
													<dt class="tit">★한정수량★홀리 pick★닥터자르트 세라마이딘 크림 50ml 1+1
														더블 기획세트(온)</dt>
													<dd class="price">
														<del>40,000원</del>
														<strong>34,200원</strong>
													</dd>
													<dd class="icon">
														<span class="icon_flag sale">세일</span><span
															class="icon_flag coupon">쿠폰</span>
													</dd>
												</dl></a>
										</div>
									</li>
									<li data-wlog_type="p038"
										class="gtm_sale_lk_list slick-slide slick-cloned"
										data-slick-index="-1" aria-hidden="true" style="width: 324px;"
										tabindex="-1">
										<div class="thum" data-ref-goodsno="A000000160790"
											data-egrank="12" data-egcode="a026_m026"
											data-attr="세일^주목할만한상품^★1+1한정기획★아벤느 트릭세라 뉴트리-플루이드 로션 200ml 1+1 기획^12"
											data-trk="/Sale_Curation"
											data-impression="A000000160790^세일_주목할만한상품^12"
											data-ref-dispcatno="90000010009" data-ref-itemno="001"
											data-impression-visibility="1">
											<span class="thumb_flag best">베스트</span> <img
												src="images/A00000016079002ko.jpg"
												alt="★1+1한정기획★아벤느 트릭세라 뉴트리-플루이드 로션 200ml 1+1 기획"
												onerror="common.errorImg(this);"
												data-attr="세일^주목할만한상품^★1+1한정기획★아벤느 트릭세라 뉴트리-플루이드 로션 200ml 1+1 기획^12"
												onclick="">
											<div class="my">
												<button type="button" class="myCart cartBtnRecoBell"
													data-ref-goodsno="A000000160790" name=""
													data-ref-dispcatno="90000010009" data-ref-itemno="001"
													tabindex="-1">
													<span>장바구니</span>
												</button>
												<button type="button" class="mySee btn_zzim"
													data-ref-goodsno="A000000160790" tabindex="-1">
													<span>찜하기전</span>
												</button>
											</div>
										</div>
										<div class="info">
											<a href="" class="a_detail" name="Sale_Curation"
												data-ref-goodsno="A000000160790" data-egrank="12"
												data-egcode="a026_m026"
												data-attr="세일^주목할만한상품^★1+1한정기획★아벤느 트릭세라 뉴트리-플루이드 로션 200ml 1+1 기획^12"
												data-trk="/Sale_Curation" data-ref-dispcatno="90000010009"
												data-ref-itemno="001" tabindex="-1" onclick=""><dl>
													<dt class="tit">★1+1한정기획★아벤느 트릭세라 뉴트리-플루이드 로션 200ml
														1+1 기획</dt>
													<dd class="price">
														<del>33,000원</del>
														<strong>28,000원</strong>
													</dd>
													<dd class="icon">
														<span class="icon_flag sale">세일</span><span
															class="icon_flag gift">증정</span>
													</dd>
												</dl></a>
										</div>
									</li>
									<li data-wlog_type="p038"
										class="gtm_sale_lk_list slick-slide slick-current slick-active"
										data-slick-index="0" aria-hidden="false" style="width: 324px;"
										tabindex="-1" role="option" aria-describedby="slick-slide00">
										<div class="thum" data-ref-goodsno="A000000160602"
											data-egrank="1" data-egcode="a026_m026"
											data-attr="세일^주목할만한상품^★증량기획★스킨푸드 캐롯 카로틴 카밍 워터 패드 기획(60매+20매 증정)^1"
											data-trk="/Sale_Curation"
											data-impression="A000000160602^세일_주목할만한상품^1"
											data-ref-dispcatno="90000010009" data-ref-itemno="001"
											data-impression-visibility="1">
											<span class="thumb_flag best">베스트</span> <img
												src="https://fyawsbucket.s3.ap-northeast-2.amazonaws.com/sale_images/A00000016060201ko.jpg"
												alt="★증량기획★스킨푸드 캐롯 카로틴 카밍 워터 패드 기획(60매+20매 증정)"
												onerror="common.errorImg(this);"
												data-attr="세일^주목할만한상품^★증량기획★스킨푸드 캐롯 카로틴 카밍 워터 패드 기획(60매+20매 증정)^1"
												onclick="">
											<div class="my" style="display: none;">
												<button type="button" class="myCart cartBtnRecoBell"
													data-ref-goodsno="A000000160602" name=""
													data-ref-dispcatno="90000010009" data-ref-itemno="001"
													tabindex="0">
													<span>장바구니</span>
												</button>
												<button type="button" class="mySee btn_zzim"
													data-ref-goodsno="A000000160602" tabindex="0">
													<span>찜하기전</span>
												</button>
											</div>
										</div>
										<div class="info">
											<a href="" class="a_detail" name="Sale_Curation"
												data-ref-goodsno="A000000160602" data-egrank="1"
												data-egcode="a026_m026"
												data-attr="세일^주목할만한상품^★증량기획★스킨푸드 캐롯 카로틴 카밍 워터 패드 기획(60매+20매 증정)^1"
												data-trk="/Sale_Curation" data-ref-dispcatno="90000010009"
												data-ref-itemno="001" tabindex="0" onclick=""><dl>
													<dt class="tit">★증량기획★스킨푸드 캐롯 카로틴 카밍 워터 패드 기획(60매+20매
														증정)</dt>
													<dd class="price">
														<del>26,000원</del>
														<strong>18,200원</strong>
													</dd>
													<dd class="icon">
														<span class="icon_flag sale">세일</span>
													</dd>
												</dl></a>
										</div>
									</li>
									<li data-wlog_type="p038"
										class="gtm_sale_lk_list slick-slide slick-active"
										data-slick-index="1" aria-hidden="false" style="width: 324px;"
										tabindex="-1" role="option" aria-describedby="slick-slide01">
										<div class="thum" data-ref-goodsno="A000000159523"
											data-egrank="2" data-egcode="a026_m026"
											data-attr="세일^주목할만한상품^★어워즈 한정기획★아누아 어성초 77 토너 350ml+앰플30ml^2"
											data-trk="/Sale_Curation"
											data-impression="A000000159523^세일_주목할만한상품^2"
											data-ref-dispcatno="90000010009" data-ref-itemno="001"
											data-impression-visibility="1">
											<span class="thumb_flag best">베스트</span> <img
												src="https://fyawsbucket.s3.ap-northeast-2.amazonaws.com/sale_images/A00000015952303ko.jpg"
												alt="★어워즈 한정기획★아누아 어성초 77 토너 350ml+앰플30ml"
												onerror="common.errorImg(this);"
												data-attr="세일^주목할만한상품^★어워즈 한정기획★아누아 어성초 77 토너 350ml+앰플30ml^2"
												onclick="">
											<div class="my">
												<button type="button" class="myCart cartBtnRecoBell"
													data-ref-goodsno="A000000159523" name=""
													data-ref-dispcatno="90000010009" data-ref-itemno="001"
													tabindex="0">
													<span>장바구니</span>
												</button>
												<button type="button" class="mySee btn_zzim"
													data-ref-goodsno="A000000159523" tabindex="0">
													<span>찜하기전</span>
												</button>
											</div>
										</div>
										<div class="info">
											<a href="" class="a_detail" name="Sale_Curation"
												data-ref-goodsno="A000000159523" data-egrank="2"
												data-egcode="a026_m026"
												data-attr="세일^주목할만한상품^★어워즈 한정기획★아누아 어성초 77 토너 350ml+앰플30ml^2"
												data-trk="/Sale_Curation" data-ref-dispcatno="90000010009"
												data-ref-itemno="001" tabindex="0" onclick=""><dl>
													<dt class="tit">★어워즈 한정기획★아누아 어성초 77 토너 350ml+앰플30ml</dt>
													<dd class="price">
														<del>30,500원</del>
														<strong>22,900원</strong>
													</dd>
													<dd class="icon">
														<span class="icon_flag sale">세일</span><span
															class="icon_flag coupon">쿠폰</span>
													</dd>
												</dl></a>
										</div>
									</li>
								</div>
							</div>
							<button type="button" data-role="none"
								class="slick-next slick-arrow" aria-label="Next" role="button"
								style="display: block;">Next</button>
							<ul class="slick-dots" style="display: block;" role="tablist">
								<li class="slick-active" aria-hidden="false" role="presentation"
									aria-selected="true" arai-controls="navigation00"
									id="slick-slide00">
									<button type="button" data-role="none" role="button"
										tabindex="0">1</button>
								</li>
								<li class="slick-active" aria-hidden="false" role="presentation"
									aria-selected="true" arai-controls="navigation00"
									id="slick-slide00">
									<button type="button" data-role="none" role="button"
										tabindex="0">2</button>
								</li>
								<li class="slick-active" aria-hidden="false" role="presentation"
									aria-selected="true" arai-controls="navigation00"
									id="slick-slide00">
									<button type="button" data-role="none" role="button"
										tabindex="0">3</button>
								</li>
								<li class="slick-active" aria-hidden="false" role="presentation"
									aria-selected="true" arai-controls="navigation00"
									id="slick-slide00">
									<button type="button" data-role="none" role="button"
										tabindex="0">4</button>
								</li>
							</ul>
						</ul>
					</div>
					<input type="hidden" id="recoGoodsYn" value="Y">
				</div>

				<!-- 위에서 말한것처럼 javascript로 더보기를 클릭했을시 팝업창형식으로 상품 더 보여주기 -->

			</div>
			<div class="TabsConts on">
				<p class="cate_info_tx">
					"전체" <span>556</span> "개의 상품이 등록되어 있습니다."
				</p>
				<div class="cate_align_box">
					<div class="align_sort">
						<ul>
							<li class="on"><a href="#" data-prdsoting="01">인기순</a></li>
							<li><a href="#" data-prdsoting="02">최근등록순</a></li>
							<li><a href="#" data-prdsoting="03">판매수량순</a></li>
							<li><a href="#" data-prdsoting="05">낮은 가격순</a></li>
							<li><a href="#" data-prdsoting="06">높은 가격순</a></li>
						</ul>
					</div>
					<div class="count_sort tx_num">
						<span class="tx_view">VIEW</span>
						<ul>
							<li class="on"><a href="#" title="24개씩 보기">24</a></li>
							<li><a href="#" title="36개씩 보기">36</a></li>
							<li><a href="#" title="48개씩 보기">48</a></li>
						</ul>
					</div>
					<div class="type_sort">
						<button class="btn_thumb active">컬럼형식으로 보기</button>
						<button class="btn_list">리스트형식으로 보기</button>
					</div>
				</div>
				<ul class="cate_prd_list gtm_sale_list">
					<li class="flag">
						<div class="prd_info">
							<a href="#" name="Sale_Free" class="prd_thumb goodsList"
								data-ref-goodsno="A000000146635"
								data-attr="세일^세일상품리스트_인기순^에스티 로더 갈색병 세럼 30ML 기획세트^1"
								data-ref-dispcatno="" data-ref-itemno="001" data-trk="/"
								data-impression="A000000146635^세일_세일상품리스트_인기순^1" onclick=""
								data-impression-visibility="1"><span class="thumb_flag best">베스트</span><img
								src="https://fyawsbucket.s3.ap-northeast-2.amazonaws.com/sale_images/A00000014663504ko.jpg" alt="에스티 로더 갈색병 세럼 30ML 기획세트"
								onerror="common.errorImg(this);"></a>
							<div class="prd_name">
								<a href="#" name="Sale_Free" class="goodsList"
									data-ref-goodsno="A000000146635"
									data-attr="세일^세일상품리스트_인기순^에스티 로더 갈색병 세럼 30ML 기획세트^1"
									data-ref-dispcatno="" data-ref-itemno="001" data-trk="/"
									onclick=""><span class="tx_brand">에스티로더</span>
									<p class="tx_name">에스티 로더 갈색병 세럼 30ML 기획세트</p> <span
									class="tx_brand">에스티로더</span>
									<p class="tx_name">에스티 로더 갈색 세럼 30ML 기획세트</p> </a>
							</div>
							<button class="btn_zzim jeem" data-ref-goodsno="A000000146635">
								<span>찜하기 전</span>
							</button>
							<p class="prd_price">
								<span class="tx_org"> <span class="tx_num">106,000</span>
									"원"
								</span> <span class="tx_cur"> <span class="tx_num">89,040</span>
								</span>
							</p>
							<p class="prd_flag">
								<span class="icon_flag sale">세일</span> <span
									class="icon_flag gift">증정</span>
							</p>
							<p class="prd_point_area tx_num">
								<span class="review_point"> <span class="point"
									style="width: 96.0%">10점만점에 5.5점</span>
								</span> "(539)"
							</p>
							<p class="prd_btn_area">
								<button class="cartBtn" data-ref-goodsno="A000000146635"
									data-ref-dispcatno data-ref-itemno="001">장바구니</button>
								<button class="btn_new_pop goodsList">새창보기</button>
							</p>
					</li>
			</div>
			</ul>
		</div>

		<!-- 페이징 처리 -->
		<div class="pageing">
			<strong title="현재 페이지">1</strong> <a href="#" data-page-no="2">2</a>
			<a class="next" href="javacript:void(0)" data-page-no="3">다음
				10페이지</a>
		</div>
	</div>
	</div>

	<!--
		<form id="initForm" name="initForm" method="get">
			<input type="hidden" id="dispCatNo" name="dispCatNo" value="900000100090002">
			<input type="hidden" id="fltDispCatNo" name="fltDispCatNo" value="">
			<input type="hidden" id="prdSort" name="prdSort" value="01">
			<input type="hidden" id="pageIdx" name="pageIdx" value="1">
			<input type="hidden" id="rowsPerPage" name="rowsPerPage" value="24">
			<input type="hidden" id="searchTypeSort" name="searchTypeSort" value="btn_thumb">
		</form>
		  -->

	<div class="laytoast" id="brandOff" style="display: none;">
		<div class="inner">
			<p class="txt_recom txt_01">
				브랜드<br> <em>좋아요</em>
			</p>
		</div>
	</div>

	<div class="laytoast on" id="brandOn" style="display: none;">
		<div class="inner">
			<p class="txt_recom txt_01">
				브랜드<br> <em>좋아요</em>
			</p>
		</div>
	</div>

	<!-- 브랜드 찜 확인 레이어 -->
	<div class="layerAlim brand zzimOn" style="display: none;">
		<!-- zzimOn / zzimOff -->
		<span class="icon"></span>
		<p>
			브랜드<strong>좋아요</strong>
		</p>
	</div>

	<div class="layerAlim brand zzimOff" style="display: none;">
		<!-- zzimOn / zzimOff -->
		<span class="icon"></span>
		<p>
			브랜드<strong>좋아요</strong>
		</p>
	</div>
	<!-- 브랜드 찜 확인 레이어 -->

	<!-- 찜 확인 레이어 -->
	<div class="layerAlim zzimOn wishPrd" style="display: none;">
		<span class="icon"></span>
		<p class="one">
			<strong>좋아요</strong>
		</p>
	</div>
	<!--// 찜 확인 레이어 -->

	<!-- 찜 취소 레이어 -->
	<div class="layerAlim zzimOff wishPrd" style="display: none;">
		<span class="icon"></span>
		<p class="one">
			<strong>좋아요</strong>
		</p>
	</div>

	<!--// 찜 취소 레이어 -->

	<!-- TOP 바로가기 버튼 추가 -->
	<div id="directTop">
		<button>
			<span></span>TOP
		</button>
	</div>
	<jsp:include page="../default/footer.jsp"></jsp:include>
</body>
</html>