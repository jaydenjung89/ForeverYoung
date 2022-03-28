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
<title>Insert title here</title>
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
		<div class="spVisualTit">
			<!-- 오특배너 start -->
			<div
				style="background-image: url(https://fyawsbucket.s3.ap-northeast-2.amazonaws.com/bg_sp_visual.png)">
				<h1>
					오늘의 특가 <span>딱 하루만! 오늘의 특가 찬스</span>
				</h1>
			</div>
		</div>
		<!-- 오특배너 end -->
		<!-- 스페셜 오특 start -->
		<div class="today_specials_inner">
			<div class="spTodayWrap">
				<div class="spTodayTit">
					<div>
						<h2 class="titMove">
							<span>스</span> <span>페</span> <span>셜</span> <span>오</span> <span>특</span>
						</h2>
					</div>
					<!-- 카테고리 리스트 / 상품객체 4개씩 넣음 -->
					<c:forEach var="item" items="${ohTeukProductList}"
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
			</div>
			<!-- spTodayWrap end -->
			<!-- 스페셜오특 end -->
		</div>
		<!-- today_specials_inner end -->
	</div>
	<!-- conainer end -->
	<jsp:include page="../default/footer.jsp"></jsp:include>
</body>
</html>