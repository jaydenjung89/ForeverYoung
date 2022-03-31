<%@ page language="java" contentType="text/html; charset=UTF-8"
	pageEncoding="UTF-8"%>
<!DOCTYPE html>
<html>
<head>
<meta charset="UTF-8">
<title>랭킹 | 올리브영</title>
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
	<div id="Container">
		<div class="title-best">
			<h1>
				랭킹 <span>오늘의 랭킹 ! 요즘 가장 핫한 상품</span>
			</h1>
		</div>
		<!-- title-best 끝 -->

		<div class="best-area">
			<!-- 3가지 메뉴 탭 -->
			<ul class="comm5sTabs tabN3" data-ref-selected>
				<li data-ref-dispcatno="900000100100001" class="on">
					<!--  ::before -->
					<button type="button" title="선택됨"
						onclick="location.href='ranking.do'"
						style="cursor: pointer;">판매랭킹</button>
				</li>
				<li data-ref-dispcatno="900000100100002">
					<button type="button"
						onclick="location.href='reviewbest.do'"
						style="cursor: pointer;">리뷰 베스트</button>
				</li>
				<li data-ref-dispcatno="900000100100004">
					<button type="button"
						onclick="location.href='liverank.do'"
						style="cursor: pointer;">실시간 랭킹</button>
				</li>
			</ul>
			<div class="best_liveSm">
				<h3 class="tab_subTtl" id="live_stream_text">라이브스트리밍! 지금 다른
					고객님이 보고있어요</h3>
				<ul class="liveSm_tab">
					<li class="on" data-type="view"><a href="#javascript">실시간
							View</a></li>
					<li data-type="order"><a href="#javascript">실시간 구매</a> <!-- ::after  -->
					</li>
					<!-- ::after  -->
				</ul>
				<div class="liveSm_sl">
					<ul class="liveSm_slList slick-initialized slick-slider">
						<button type="button" data-role="none"
							class="slick-prev slick-arrow" aria-label="Previous"
							role="button" aria-disabled="false" style="display: block;">Previous</button>
						<div aria-live="polite" class="slick-list draggable">
							<div class="slick-track" role="listbox"
								style="opacity: 1; width: 18975px; transform: translated3d(-17940px, 0px, 0px);">
								<!-- 일시정지버튼누르면 style,width,transform이 계속 유지, 재생버튼이 눌리면 style, width, transform를 계속 다시 읽어옴 -->
								<!-- ::before -->
								<li style="width: 330px;" class="slick-slide"
									data-slick-index="0" aria-hidden="true" tabindex="-1"
									role="option" aria-describedby="slick-slide20"><a href="#"
									class="a_detail" data-ref-goodsno="A000000154540"
									data-ref-dispcatno data-ref-itemno="889704190022"
									data-attr="랭킹^실시간랭킹_view^원씽 병풀추출물 150ml " data-trk="/"
									onclick="#javascript" name="Best_Liverank_Liveview"
									tabindex="-1">
										<div class="img">
											<!-- ::before -->
											<img
												src="https://fyawsbucket.s3.ap-northeast-2.amazonaws.com/liveRank/A00000015454001ko.jpg"
												alt="원씽 병풀추출물 150ml" onerror="common.errorImg(this);">
										</div>
										<div class="infoBox">
											<div class="rating">
												<span class="point">4.7</span> <span class="text">원씽
													병풀추출물 150ml </span>
											</div>
											<div class="viewArea">
												<span> <span class="viewNum">5</span> 명
												</span>
											</div>
										</div>
								</a></li>
								<!-- 두번째 상품  -->
								<li style="width: 330px;" class="slick-slide"
									data-slick-index="0" aria-hidden="true" tabindex="-1"
									role="option" aria-describedby="slick-slide20"><a href="#"
									class="a_detail" data-ref-goodsno="A000000154540"
									data-ref-dispcatno data-ref-itemno="889704190022"
									data-attr="랭킹^실시간랭킹_view^원씽 병풀추출물 150ml " data-trk="/"
									onclick="#javascript" name="Best_Liverank_Liveview"
									tabindex="-1">
										<div class="img">
											<!-- ::before -->
											<img
												src="https://fyawsbucket.s3.ap-northeast-2.amazonaws.com/liveRank/A00000015454001ko.jpg"
												alt="원씽 병풀추출물 150ml" onerror="common.errorImg(this);">
										</div>
										<div class="infoBox">
											<div class="rating">
												<span class="point">4.7</span> <span class="text">원씽
													병풀추출물 150ml </span>
											</div>
											<div class="viewArea">
												<span> <span class="viewNum">5</span> 명
												</span>
											</div>
										</div>
								</a></li>
								<!-- 세번쨰 상품부분 -->
								<li style="width: 330px;" class="slick-slide"
									data-slick-index="0" aria-hidden="true" tabindex="-1"
									role="option" aria-describedby="slick-slide20"><a href="#"
									class="a_detail" data-ref-goodsno="A000000154540"
									data-ref-dispcatno data-ref-itemno="889704190022"
									data-attr="랭킹^실시간랭킹_view^원씽 병풀추출물 150ml " data-trk="/"
									onclick="#javascript" name="Best_Liverank_Liveview"
									tabindex="-1">
										<div class="img">
											<!-- ::before -->
											<img
												src="https://fyawsbucket.s3.ap-northeast-2.amazonaws.com/liveRank/A00000015454001ko.jpg"
												alt="원씽 병풀추출물 150ml" onerror="common.errorImg(this);">
										</div>
										<div class="infoBox">
											<div class="rating">
												<span class="point">4.7</span> <span class="text">원씽
													병풀추출물 150ml </span>
											</div>
											<div class="viewArea">
												<span> <span class="viewNum">5</span> 명
												</span>
											</div>
										</div>
								</a></li>
							</div>
						</div>
						<button type="button" data-role="none"
							class="slick-next slick-arrow slick-disabled" aria-label="Next"
							role="button" style="display: block;" aria-disabled="true">Next</button>
					</ul>
				</div>
				<div class="liveSm_option">
					<button class="liveSm_refresh" onclick="#javascript">
						<span>새로고침</span>
					</button>
					<div class="liveSm_btnArea stop">
						<button class="liveSmBtn liveSm_stop" onclick="#javascript"></button>
						<button class="liveSmBtn liveSm_start"></button>
					</div>
				</div>
			</div>
			<!-- class="best_liveSm" 끝 -->

			<div class="common-menu">
				<h3 class="tab_subTtl">
					최근 본 카테고리 실시간 랭킹
					<button class="refreshBtn"
						onclick="#javascript:common.wlog('best_livecategory_update');">
						<span class="refreshTxt"> <span id="span_second">10</span>
							초 뒤 업데이트
						</span>
					</button>
				</h3>
				<ul id="ul_cateTag">
					<li data-order-no="1" class="on">
						<button type="button" class="btn_cateTag"
							data-ref-dispcatno="10000010001">스킨케어</button>
					</li>
					<li data-order-no="2">
						<button type="button" class="btn_cateTag"
							data-ref-dispcatno="10000010005">향수/디퓨저</button>
					</li>
					<li data-order-no="3">
						<button type="button" class="btn_cateTag"
							data-ref-dispcatno="10000010009">마스크팩</button>
					</li>
					<li data-order-no="4">
						<button type="button" class="btn_cateTag"
							data-ref-dispcatno="10000010003">바디케어</button>
					</li>
					<li data-order-no="5">
						<button type="button" class="btn_cateTag"
							data-ref-dispcatno="10000010008">더모 코스메틱</button>
					</li>
					<li data-order-no="6">
						<button type="button" class="btn_cateTag"
							data-ref-dispcatno="10000010002">메이크업</button>
					</li>
					<li data-order-no="7">
						<button type="button" class="btn_cateTag"
							data-ref-dispcatno="10000010010">클렌징</button>
					</li>
					<li data-order-no="8">
						<button type="button" class="btn_cateTag"
							data-ref-dispcatno="10000010007">남성</button>
					</li>
					<li data-order-no="9">
						<button type="button" class="btn_cateTag"
							data-ref-dispcatno="10000010006">미용소품</button>
					</li>
					<li data-order-no="10">
						<button type="button" class="btn_cateTag"
							data-ref-dispcatno="10000010004">헤어케어</button>
					</li>
					<li data-order-no="11">
						<button type="button" class="btn_cateTag"
							data-ref-dispcatno="10000020003">건강/위생용품</button>
					</li>
					<li data-order-no="12">
						<button type="button" class="btn_cateTag"
							data-ref-dispcatno="10000030005">라이프/홈</button>
					</li>
					<li data-order-no="13">
						<button type="button" class="btn_cateTag"
							data-ref-dispcatno="10000010011">선케어</button>
					</li>
					<li data-order-no="14">
						<button type="button" class="btn_cateTag"
							data-ref-dispcatno="10000020001">건강식품</button>
					</li>
					<li class="disabled">
						<button type="button">&nbsp;</button>
					</li>
					<li class="disabled">
						<button type="button">&nbsp;</button>
					</li>
					<li class="disabled">
						<button type="button">&nbsp;</button>
					</li>
					<li class="disabled">
						<button type="button">&nbsp;</button>
					</li>
				</ul>
			</div>
			<!-- common_menu 끝 -->
			<div class="TabsConts on" id="div_cateRankList">
				<!-- 상품 4개가 들어오는 한줄 -->
				<ul class="cate_prd_list">
					<!-- 1단형일 경우 클래스 list_type 추가 -->
					<!-- 1위 상품 -->
					<li class="flag">
						<div class="prd_info">
							<a href="#javascript" name="BestLiverank_Cat_10000010001_1"
								class="prd_thumb a_detail" data-ref-goodsno="A000000160584"
								data-egrank="1" data-rank="1" data-egcode="null"
								data-attr="랭킹^최근본카테고리실시간랭킹^소본 그린 시카 더마 리페어 크림 40ml" data-trk="/"
								data-ref-dispcatno data-ref-itemno="001"
								onclick="#javascript로상품정보불러오기"> <span
								class="thumb_flag best">01</span> <img
								src="https://fyawsbucket.s3.ap-northeast-2.amazonaws.com/liveRank/A00000016058402ko.jpg"
								alt="소본 그린 시카 더마 리페어 크림 40ml" onerror="common.errorImg(this);">
							</a>
							<div class="prd_name">
								<a href="#javascript" class="a_detail"
									data-ref-goodsno="A000000160584" data-egrank="1"
									data-egcode="null"
									data-attr="랭킹^최근본카테고리실시간랭킹^소본 그린 시카 더마 리페어 크림 40ml"
									data-trk="/" data-ref-dispcatno data-ref-itemno="001"
									onclick="#javascript" name="Best_Liverank_Cat_100000010001_1">
									<div class="viewArea">
										<span> <span class="viewNum">419</span> 명이 보고있어요
										</span>
									</div> <span class="tx_brand">소본</span>
									<p class="tx_name">소본 그린 시카 더마 리페어 크림 40ml</p>
								</a>
							</div>
							<button class="btn_zzim jeem" data-ref-goodsno="A000000160584"
								onclick="#javascript:common.wlog('best_live_category_tag_1_like');"
								data-rccode="pc_live_03_c">
								<span>찜하기전</span>
							</button>
							<p class="prd_price">
								<span class="tx_org"> <span class="tx_num">26,000</span>
									원
								</span> <span class="tx_cur"> <span class="tx_num">23,400</span>
									원
								</span>
							</p>
							<span class="icon_flag sale">세일</span> <span
								class="icon_flag delivery">오늘드림</span>
							<p class="prd_point_area tx_num">
								<span class="review_point"> <span class="point"
									style="width: 49.0%">10점만점에 5.5점</span>
								</span> (146)
							</p>
							<p class="prd_btn_area">
								<button class="cartBtn" data-ref-goodsno="A000000160584"
									data-ref-dispcatno="" data-ref-itemno="001">장바구니</button>
								<button class="btn_new_pop goodsList">새창보기</button>
							</p>
						</div>
					</li>
					<!-- 상품 1 끝 -->
					<!-- 상품 2 시작 -->
					<li class="">
						<div class="prd_info">
							<a href="#javascript" name="BestLiverank_Cat_10000010001_2"
								class="prd_thumb a_detail" data-ref-goodsno="A000000154991"
								data-egrank="2" data-rank="2" data-egcode="null"
								data-attr="랭킹^최근본카테고리실시간랭킹^가히 김고은 멀티밤" data-trk="/"
								data-ref-dispcatno data-ref-itemno="001"
								onclick="#javascript로상품정보불러오기"> <span
								class="thumb_flag best">02</span> <img
								src="https://fyawsbucket.s3.ap-northeast-2.amazonaws.com/liveRank/A00000015499111ko.png"
								alt="가히 김고은 멀티밤" onerror="common.errorImg(this);">
							</a>
							<div class="prd_name">
								<a href="#javascript" class="a_detail"
									data-ref-goodsno="A000000154991" data-egrank="2"
									data-egcode="null" data-attr="랭킹^최근본카테고리실시간랭킹^가히 김고은 멀티밤"
									data-trk="/" data-ref-dispcatno data-ref-itemno="001"
									onclick="#javascript" name="Best_Liverank_Cat_100000010001_2">
									<div class="viewArea">
										<span> <span class="viewNum">287</span> 명이 보고있어요
										</span>
									</div> <span class="tx_brand">가히</span>
									<p class="tx_name">가히 김고은 멀티밤</p>
								</a>
							</div>
							<button class="btn_zzim jeem" data-ref-goodsno="A000000154991"
								onclick="#javascript:common.wlog('best_live_category_tag_1_like');"
								data-rccode="pc_live_03_c">
								<span>찜하기전</span>
							</button>
							<p class="prd_price">
								<span class="tx_org"> <span class="tx_num">37,800</span>
									원
								</span> <span class="tx_cur"> <span class="tx_num">29,400</span>
									원
								</span>
							</p>
							<span class="icon_flag sale">세일</span> <span
								class="icon_flag delivery">오늘드림</span>
							<p class="prd_point_area tx_num">
								<span class="review_point"> <span class="point"
									style="width: 49.0%">10점만점에 5.5점</span>
								</span> (999+)
							</p>
							<p class="prd_btn_area">
								<button class="cartBtn" data-ref-goodsno="A000000154991"
									data-ref-dispcatno="" data-ref-itemno="001">장바구니</button>
								<button class="btn_new_pop goodsList">새창보기</button>
							</p>
						</div>
					</li>
					<!-- 상품 2 끝 -->
					<!--  상품 3 시작 -->
					<li class="">
						<div class="prd_info">
							<a href="#javascript" name="BestLiverank_Cat_10000010001_3"
								class="prd_thumb a_detail" data-ref-goodsno="A000000159783"
								data-egrank="3" data-rank="3" data-egcode="null"
								data-attr="랭킹^최근본카테고리실시간랭킹^★올리브영 단독기획★토니모리 원더 세라마이드 모찌 토너 기획세트 (500ml+100ml)"
								data-trk="/" data-ref-dispcatno data-ref-itemno="001"
								onclick="#javascript로상품정보불러오기"> <span
								class="thumb_flag best">03</span> <img
								src="https://fyawsbucket.s3.ap-northeast-2.amazonaws.com/liveRank/A00000015978319ko.jpg"
								alt="★올리브영 단독기획★토니모리 원더 세라마이드 모찌 토너 기획세트 (500ml+100ml)"
								onerror="common.errorImg(this);">
							</a>
							<div class="prd_name">
								<a href="#javascript" class="a_detail"
									data-ref-goodsno="A00000015978319" data-egrank="3"
									data-egcode="null"
									data-attr="랭킹^최근본카테고리실시간랭킹^★올리브영 단독기획★토니모리 원더 세라마이드 모찌 토너 기획세트 (500ml+100ml)"
									data-trk="/" data-ref-dispcatno data-ref-itemno="001"
									onclick="#javascript" name="Best_Liverank_Cat_100000010001_3">
									<div class="viewArea">
										<span> <span class="viewNum">211</span> 명이 보고있어요
										</span>
									</div> <span class="tx_brand">토니모리</span>
									<p class="tx_name">★올리브영 단독기획★토니모리 원더 세라마이드 모찌 토너 기획세트
										(500ml+100ml)</p>
								</a>
							</div>
							<button class="btn_zzim jeem" data-ref-goodsno="A00000015978319"
								onclick="#javascript:common.wlog('best_live_category_tag_1_like');"
								data-rccode="pc_live_03_c">
								<span>찜하기전</span>
							</button>
							<p class="prd_price">
								<span class="tx_cur"> <span class="tx_num">11,900</span>
									원
								</span>
							</p>
							<span class="icon_flag gift">증정</span> <span
								class="icon_flag delivery">오늘드림</span>
							<p class="prd_point_area tx_num">
								<span class="review_point"> <span class="point"
									style="width: 48.0%">10점만점에 5.5점</span>
								</span> (71)
							</p>
							<p class="prd_btn_area">
								<button class="cartBtn" data-ref-goodsno="A00000015978319"
									data-ref-dispcatno="" data-ref-itemno="001">장바구니</button>
								<button class="btn_new_pop goodsList">새창보기</button>
							</p>
						</div>
					</li>
					<!-- 상품 3끝 -->
					<!--  상품 4 시작 -->
					<li class="">
						<div class="prd_info">
							<a href="#javascript" name="BestLiverank_Cat_10000010001_4"
								class="prd_thumb a_detail" data-ref-goodsno="A000000160721"
								data-egrank="4" data-rank="4" data-egcode="null"
								data-attr="랭킹^최근본카테고리실시간랭킹^★최초1+1기획★리얼베리어 익스트림 크림 50ml 기획 (+50ml+폼50ml)"
								data-trk="/" data-ref-dispcatno data-ref-itemno="001"
								onclick="#javascript로상품정보불러오기"> <span
								class="thumb_flag best">04</span> <img
								src="https://fyawsbucket.s3.ap-northeast-2.amazonaws.com/liveRank/A00000016072107ko.jpg"
								alt="★최초1+1기획★리얼베리어 익스트림 크림 50ml 기획 (+50ml+폼50ml)"
								onerror="common.errorImg(this);">
							</a>
							<div class="prd_name">
								<a href="#javascript" class="a_detail"
									data-ref-goodsno="A00000016072107" data-egrank="4"
									data-egcode="null"
									data-attr="랭킹^최근본카테고리실시간랭킹^★최초1+1기획★리얼베리어 익스트림 크림 50ml 기획 (+50ml+폼50ml)"
									data-trk="/" data-ref-dispcatno data-ref-itemno="001"
									onclick="#javascript" name="Best_Liverank_Cat_100000010001_4">
									<div class="viewArea">
										<span> <span class="viewNum">168</span> 명이 보고있어요
										</span>
									</div> <span class="tx_brand">리얼베리어</span>
									<p class="tx_name">★최초1+1기획★리얼베리어 익스트림 크림 50ml 기획
										(+50ml+폼50ml)</p>
								</a>
							</div>
							<button class="btn_zzim jeem" data-ref-goodsno="A00000016072107"
								onclick="#javascript:common.wlog('best_live_category_tag_1_like');"
								data-rccode="pc_live_03_c">
								<span>찜하기전</span>
							</button>
							<p class="prd_price">
								<span class="tx_org"> <span class="tx_num"> 38,000
								</span> 원
								</span> <span class="tx_cur"> <span class="tx_num">24,800</span>
									원
								</span>
							</p>
							<span class="icon_flag sale">세일</span> <span
								class="icon_flag coupon">쿠폰</span> <span class="icon_flag gift">증정</span>
							<span class="icon_flag delivery">오늘드림</span>
							<p class="prd_point_area tx_num">
								<span class="review_point"> <span class="point"
									style="width: 49.0%">10점만점에 5.5점</span>
								</span> (999+)
							</p>
							<p class="prd_btn_area">
								<button class="cartBtn" data-ref-goodsno="A00000016072107"
									data-ref-dispcatno="" data-ref-itemno="001">장바구니</button>
								<button class="btn_new_pop goodsList">새창보기</button>
							</p>
						</div>
					</li>
					<!-- 상품 4 끝 -->
				</ul>
			</div>
			<!-- TabsConts on 끝 -->
		</div>
		<!-- best-area 끝 -->
		<!-- Container 끝 -->
	</div>
	<jsp:include page="../default/footer.jsp"></jsp:include>
</body>
</html>