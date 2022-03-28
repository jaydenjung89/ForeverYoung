<%@ page language="java" contentType="text/html; charset=UTF-8"
	pageEncoding="UTF-8"%>
<%@ taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core"%>
<%@ taglib prefix="fmt" uri="http://java.sun.com/jsp/jstl/fmt"%>
<%@ taglib prefix="fn" uri="http://java.sun.com/jsp/jstl/functions"%>
<c:set var="path" value="${pageContext.request.contextPath}" />
<!DOCTYPE html>
<html>
<head>
<meta charset="utf-8">
<title>1차 상품 디테일</title>
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
		<!-- #Contents -->
		<div id="Contents">
			<!-- 카테고리 메인 -->
			<div class="ct-main">
				<!-- 화면 왼쪽 사이드 menu -->
				<div class="ct-menu">
					<p class="ct-heading">${categoryFirst.category_first_name}</p>
					<ul class="list">
						<c:forEach var="categorySecond" items="${categorySecond}">
							<c:if
								test="${secondSerial != categorySecond.category_second_serial}">
								<li><a
									href="categoryItemPage2.do?category_first_serial=${categoryFirst.category_first_serial}&category_second_serial=${categorySecond.category_second_serial }"
									onclick=""> <span>${categorySecond.category_second_name }</span></a></li>
							</c:if>
						</c:forEach>


					</ul>
				</div>
				<!-- 화면 왼쪽 사이드 menu 끝 -->
				<!-- content -->
				<div class="ct-content-wrapper">

					<!-- 원배너 -->
					<div class="ct-content bg-white">
						<div class="ct-theme">
							<p class="ct-tit"></p>
							<div class="inner slick-initialized slick-slider" id="ctTheme">
								<div aria-live="polite" class="slick-list draggable">
									<div class="slick-track" role="listbox"
										style="opacity: 1; width: 785px; transform: translate3d(0px, 0px, 0px);">

										<!-- 원배너 객체 -->
										<div class="slick-slide slick-current slick-active"
											data-slick-index="0" aria-hidden="false"
											style="width: 157px;" tabindex="-1" role="option"
											aria-describedby="slick-slide20">
											<a
												href="#"
												onclick="#"
												data-attr="카테고리관^스킨케어_원배너^P1^1" data-trk="Drawer/"
												tabindex="0"> <span class="img"> <img
													src="https://fyawsbucket.s3.ap-northeast-2.amazonaws.com/SkinCare/9221719820535899559.png"
													alt="P1" onerror="common.errorCrcImg(this);">
											</span> <!-- 원배너 제목 -->
												<p>사계절보습</p>
											</a>
										</div>

										<div class="slick-slide slick-active" data-slick-index="1"
											aria-hidden="false" style="width: 157px;" tabindex="-1"
											role="option" aria-describedby="slick-slide21">
											<a
												href="https://www.oliveyoung.co.kr/store/display/getMCategoryList.do?dispCatNo=1000001000100090002&amp;trackingCd=Cat10000010001_Planshop3_PROD"
												onclick="categoryShop.detail.setBindWlogEvent('cbanner', '2');"
												data-attr="카테고리관^스킨케어_원배너^크림^2" data-trk="Drawer/"
												tabindex="0"> <span class="img"> <img
													src="https://fyawsbucket.s3.ap-northeast-2.amazonaws.com/SkinCare/7936779363285348815.png"
													alt="크림" onerror="common.errorCrcImg(this);">
											</span>
												<p>크림</p>
											</a>
										</div>

										<div class="slick-slide slick-active" data-slick-index="2"
											aria-hidden="false" style="width: 157px;" tabindex="-1"
											role="option" aria-describedby="slick-slide22">
											<a
												href="https://www.oliveyoung.co.kr/store/display/getMCategoryList.do?dispCatNo=1000001000100090001&amp;trackingCd=Cat10000010001_Planshop3_PROD"
												onclick="categoryShop.detail.setBindWlogEvent('cbanner', '3');"
												data-attr="카테고리관^스킨케어_원배너^에센스/세럼^3" data-trk="Drawer/"
												tabindex="0"> <span class="img"> <img
													src="https://fyawsbucket.s3.ap-northeast-2.amazonaws.com/SkinCare/4523549765944832954.png"
													alt="에센스/세럼" onerror="common.errorCrcImg(this);">
											</span>
												<p>에센스/세럼</p>
											</a>
										</div>

										<div class="slick-slide slick-active" data-slick-index="3"
											aria-hidden="false" style="width: 157px;" tabindex="-1"
											role="option" aria-describedby="slick-slide23">
											<a
												href="https://www.oliveyoung.co.kr/store/display/getMCategoryList.do?dispCatNo=1000001000100080001&amp;trackingCd=Cat10000010001_Planshop3_PROD"
												onclick="categoryShop.detail.setBindWlogEvent('cbanner', '4');"
												data-attr="카테고리관^스킨케어_원배너^스킨/토너^4" data-trk="Drawer/"
												tabindex="0"> <span class="img"> <img
													src="https://fyawsbucket.s3.ap-northeast-2.amazonaws.com/SkinCare/2104490587800168432.png"
													alt="스킨/토너" onerror="common.errorCrcImg(this);">
											</span>
												<p>스킨/토너</p>
											</a>
										</div>

										<div class="slick-slide slick-active" data-slick-index="4"
											aria-hidden="false" style="width: 157px;" tabindex="-1"
											role="option" aria-describedby="slick-slide24">
											<a
												href="https://www.oliveyoung.co.kr/store/planshop/getPlanShopDetail.do?dispCatNo=500000101790092&amp;trackingCd=Cat10000010001_Planshop3_PROD"
												onclick="categoryShop.detail.setBindWlogEvent('cbanner', '5');"
												data-attr="카테고리관^스킨케어_원배너^클린뷰티 Vol.2^5" data-trk="Drawer/"
												tabindex="0"> <span class="img"> <img
													src="https://fyawsbucket.s3.ap-northeast-2.amazonaws.com/SkinCare/5418771115077521675.jpg"
													alt="클린뷰티 Vol.2" onerror="common.errorCrcImg(this);">
											</span>
												<p>클린뷰티</p>
											</a>
										</div>

									</div>
								</div>
							</div>
						</div>
					</div>
					<!-- // 원배너 -->

					<!-- 롤링 대배너 -->
					<div class="ct-content bg-white">
						<div class="ct-top-banner type2">
							<div class="banner-list slick-initialized slick-slider">
								<div aria-live="polite" class="slick-list draggable">
									<div class="slick-track" role="listbox"
										style="opacity: 1; width: 1580px;">

										<!--  첫번재 대배너 -->
										<div class="img slick-slide" data-slick-index="0"
											aria-hidden="true"
											style="width: 790px; position: relative; left: 0px; top: 0px; z-index: 998; opacity: 0; transition: opacity 500ms ease 0s;"
											tabindex="-1" role="option" aria-describedby="slick-slide00">
											<a
												href="https://www.oliveyoung.co.kr/store/planshop/getPlanShopDetail.do?dispCatNo=500000102170049&amp;trackingCd=Cat10000010001_Planshop1_1_PROD"
												onclick="javascript:categoryShop.detail.setBindWlogEvent('rlbanner', '1');"
												data-attr="카테고리관^스킨케어_롤링배너^화제의 멀티밤 듀오^1" data-trk="Drawer/"
												tabindex="-1"> <img
												src="https://fyawsbucket.s3.ap-northeast-2.amazonaws.com/SkinCare/4591675362620476410.jpg"
												alt="화제의 멀티밤 듀오"> <!-- 대배너 안에 문구작성 영역 -->
												<div class="banner-detail">
													<div class="txt">
														<p class="copy">화제의 멀티밤 듀오</p>
														<p class="sub-copy">바르는 뷰티, 가히</p>
													</div>
												</div>
											</a>
										</div>
										<!--  첫번재 대배너 끝 -->

										<div class="img slick-slide slick-current slick-active"
											data-slick-index="1" aria-hidden="false"
											style="width: 790px; position: relative; left: -790px; top: 0px; z-index: 999; opacity: 1;"
											tabindex="-1" role="option" aria-describedby="slick-slide01">
											<a
												href="#"
												onclick="javascript:categoryShop.detail.setBindWlogEvent('rlbanner', '2');"
												data-attr="카테고리관^스킨케어_롤링배너^환절기시즌 피부고민^2" data-trk="Drawer/"
												tabindex="0"> <img
												src="https://fyawsbucket.s3.ap-northeast-2.amazonaws.com/SkinCare/2960575911171355522.jpg"
												alt="환절기시즌 피부고민">
												<div class="banner-detail">
													<div class="txt">
														<p class="copy">환절기시즌 피부고민</p>
														<p class="sub-copy">진정&amp;탄력 특가</p>
													</div>
												</div>
											</a>
										</div>

									</div>
								</div>
							</div>

							<!--  페이지 처리 -->
							<div class="paging" style="display: block;">
								<button class="prev slick-arrow" style="display: block;">이전</button>
								<span class="num"> <span class="current">2</span> <span
									class="total">2</span>
								</span>
								<button class="next slick-arrow" style="display: block;">다음</button>
								<button class="btn-autoplay pause">
									<span>정지</span>
								</button>
								<button class="btn-autoplay play" style="display: none">
									<span>재생</span>
								</button>
							</div>
						</div>
					</div>
					<!-- // 롤링 대배너 -->

					<!-- 롤링띠배너 -->
					<div class="ct-content bg-gray ct-banner">
						<div class="ct-content-banner">
							<!--  띠배너 -->
							<div class="slide_list">
								<div class="slide">
									<a href="#"
										onclick="categoryShop.detail.setBindWlogEvent('rtbanner', '1');"
										data-attr="카테고리관^스킨케어_롤링띠배너^ ^1" data-trk="Drawer/"> <img
										src="https://fyawsbucket.s3.ap-northeast-2.amazonaws.com/SkinCare/728750836665582735.jpg"
										alt=" "> <span> </span>
									</a>
								</div>
							</div>
						</div>
					</div>
					<!-- // 롤링띠배너 -->

					<!-- 상품(운영) / 첫번째 상품리스트 영역 -->
					<div class="ct-content bg-white">
						<div class="ct-curation">

							<!-- 카테고리 정렬방식 선택 영역 끝 -->

							<!-- 카테고리 리스트 / 상품객체 4개씩 넣음 -->

							<c:forEach var="item" items="${categoryProductList}" varStatus="status">

								<!-- 부가정보수집 -->
								<ul class="cate_prd_list gtm_cate_list">

									<!-- 상품 객체 -->
									<li criteo-goods="${item.category_goods_serial}" class="flag"
										data-index="0"><input type="hidden" class=""
										value="${item.category_goods_serial}" />
										<div class="prd_info ">
											<!-- 상품 바로가기 링크 -->
											<a
												href="itemPage.do?category_first_serial=${item.category_first_serial}&category_second_serial=${item.category_second_serial}&category_third_serial=${item.category_third_serial}&category_goods_serial=${item.category_goods_serial}"
												name="" class="prd_thumb goodsList" data-ref-goodsno=""
												onclick=""> <!-- 베스트 상품 표시 --> <span
												class="thumb_flag best">${item.category_goods_info }</span>
												<!-- 상품이미지 --> <img src="${item.category_goods_thum_img}"
												onerror="common.errorImg(this);"> <c:if
													test="${item.goods_detail_stock_quantity=='0'}">
													<span class="status_flag soldout"></span>
												</c:if>
											</a>

											<!-- 상품설명 -->
											<div class="prd_name">
												<a
													href="categoryItemPage2.do?category_goods_serial=${item.category_goods_serial}"
													class="goodsList" onclick=""> <!-- 브랜드 이름 --> <span
													class="tx_brand">${item.category_goods_brand}</span> <!-- 상품이름 -->
													<p class="tx_name">${item.category_goods_name}</p>
												</a>
											</div>

											<!-- 찜하기 버튼 -->
											<button class="btn_zzim jeem">
												<span>찜하기전</span>
											</button>

											<!-- 상품가격 -->
											<p class="prd_price">
												<!-- 상품정가 -->
												<fmt:formatNumber type="number" maxFractionDigits="3"
													value="${item.goods_last_price }" var="lastPrice" />
												<span class="tx_org"><span class="tx_num">${item.goods_detail_price}</span>원
												</span>
												<!-- 상품현재가 -->
												<span class="tx_cur"><span class="tx_num">${lastPrice}</span>원
												</span>
											</p>

											<!-- 프로모션 -->
											<p class="prd_flag">
												<span class="icon_flag sale">세일</span>
											</p>

										</div></li>
									<!-- 상품객체 끝 -->

									<c:if test="${status.count % '3' == '0'}">
								</ul>
								</c:if>
							</c:forEach>

						</div>
					</div>
				</div>
			</div>
		</div>
		<!-- 상품(운영) / 첫번째 상품리스트 영역 끝 -->
	</div>
	<!-- // content -->

	</div>
	<!-- // 카테고리 메인 -->

	</div>
	<!-- //#Contents -->
	</div>
	<jsp:include page="../default/footer.jsp"></jsp:include>
</body>
</html>