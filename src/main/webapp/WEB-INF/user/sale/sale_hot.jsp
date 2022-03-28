<%@ page language="java" contentType="text/html; charset=UTF-8"
	pageEncoding="UTF-8"%>
<%@ taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core"%>
<%@ taglib prefix="fmt" uri="http://java.sun.com/jsp/jstl/fmt"%>
<%@ taglib prefix="fn" uri="http://java.sun.com/jsp/jstl/functions"%>
<c:set var="path" value="${pageContext.request.contextPath}" />
<!DOCTYPE html>
<html>
<head>
<meta charset="UTF-8">
<title>핫인기세일</title>
<link rel="stylesheet" type="text/css" href="../../css/board.css" />
<link rel="stylesheet" type="text/css" href="../../css/common.css" />
<link rel="stylesheet" type="text/css" href="../../css/contents.css" />
<link rel="stylesheet" type="text/css" href="../../css/curation.css" />
<link rel="stylesheet" type="text/css" href="../../css/global.css" />
<link rel="stylesheet" type="text/css"
	href="../../css/jquery.mCustomScrollbar.css" />
<link rel="stylesheet" type="text/css" href="../../css/pickup.css" />
</head>
<body>
	<jsp:include page="../default/header.jsp"></jsp:include>
	<div id="Container">
		<div class="title-sale">
			<h1>
				세일 <span>핫 세일! 이건 꼭 사야해!</span>
			</h1>
		</div>
		<div class="sale-area">
			<ul class="comm5sTabs">
				<li data-ref-dispcatno="900000100090001" id="hot" class="on">
					<button type="button">핫인기세일</button>
				</li>
				<li data-ref-dispcatno="900000100090002" id="plus" onclick="#">
					<button type="button">증정/하나 더</button>
				</li>
			</ul>
			

			<!-- 상품 리스트 -->
			<div class="TabsConts on">

				<div class="cate_align_box">
					<div class="align_sort">
						<c:if test="${sort==0 }">
							<a class="name_select"></a>
						</c:if>
						<c:if test="${sort==1 }">
							<a class="name_select"></a>
						</c:if>
						<c:if test="${sort==2 }">
							<a class="name_select"></a>
						</c:if>
						<c:if test="${sort==3 }">
							<a class="name_select"></a>
						</c:if>
						<ul>
							<li><a href="sale.do?sort=0" data-prdSoting="01">판매수량순</a></li>
							<li><a href="sale.do?sort=1" data-prdSoting="02">최근등록순</a></li>
							<li><a href="sale.do?sort=2" data-prdSoting="06">낮은 가격순</a></li>
							<li><a href="sale.do?sort=3" data-prdSoting="05">높은 가격순</a></li>
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
						<button class="btn_thumb  active ">컬럼형식으로 보기</button>
						<button class="btn_list  ">리스트형식으로 보기</button>
					</div>
				</div>

				<!-- 카테고리 리스트 / 상품객체 4개씩 넣음 -->
				<c:forEach var="item" items="${rankingProductList}"
					varStatus="status">
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
									class="thumb_flag best">${item.category_goods_info }</span> <!-- 상품이미지 -->
									<img src="${item.category_goods_thum_img}"
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

						<c:if test="${status.count % '4' == '0'}">
					</ul>
					</c:if>
				</c:forEach>
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
			<form id="initForm" name="initForm" method="get" >
				<input type="hidden" id="dispCatNo" 			name="dispCatNo" 			value="900000100090001" />
				<input type="hidden" id="fltDispCatNo" 			name="fltDispCatNo" 		value="" />
				<input type="hidden" id="prdSort" 	            name="prdSort" 	            value="01" />
				<input type="hidden" id="pageIdx" 	            name="pageIdx" 	            value="1" />
				<input type="hidden" id="rowsPerPage" 	        name="rowsPerPage" 	        value="24" />
				<input type="hidden" id="searchTypeSort"        name="searchTypeSort"       value="btn_thumb" />
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