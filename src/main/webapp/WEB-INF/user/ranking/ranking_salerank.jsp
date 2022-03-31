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
	<!-- #Container 아이디  -->
	<div id="Container">
		<!-- Contents -->
		<!-- 해당페이지가 어떤 페이지 인지 소개하는 부분 시작 -->
		<div class="title-best">
			<h1>
				랭킹 <span>오늘의 랭킹! 요즘 가장 핫한 상품</span>
			</h1>
		</div>
		<!-- 해당페이지가 어떤 페이지 인지 소개하는 부분 끝 -->
		<!-- 랭킹에 대한 메뉴 선택 및 상품을 볼 수 있는 부분시작 -->
		<div class="best-area">
			<!-- 세 가지 메뉴를 선택할 수 있도록 리스트 형태로 작성 
			해당 메뉴가 선택되면 data-ref-selected="dispcatno가 들어감",가 생기고,
			li에 class="on"이 생기고::before가 생기고 버튼 속성에 title="선택됨"이 생김.
			페이지 이동은 js.............?...
			-->
			<ul class="comm5sTabs tabN3" data-ref-selected>
				<li data-ref-dispcatno="900000100100001">
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
				<li data-ref-dispcatno="900000100100004" class="on">
					<button type="button"
						onclick="location.href='liverank.do'"
						style="cursor: pointer;">실시간 랭킹</button>
				</li>
			</ul>
			<!--  상단 3가지 메뉴 완료 -->

			
			<!-- common-menu 끝  -->
			<!--  상품 보여주는 부분 시작 -->
			<!-- 카테고리 리스트 / 상품객체 4개씩 넣음 -->
			<c:forEach var="item" items="${rankingProductList}" varStatus="status">
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
								onclick=""> <!-- 베스트 상품 표시 --> <span class="thumb_flag best">${item.category_goods_count }</span>
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

					<c:if test="${status.count % '4' == '0'}">
				</ul>
				</c:if>
			</c:forEach>
		</div>
		<!-- "TabsConts on"끝 -->
	</div>
	<!-- best-area 끝  -->
	<!-- Container 끝 -->
	<jsp:include page="../default/footer.jsp"></jsp:include>
</body>
</html>