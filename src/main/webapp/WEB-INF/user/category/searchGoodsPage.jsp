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
	$(document).ready(function() {
		$("#viewcate").hover(function() {
			$(this).attr("class", "active")
		});
		$("#viewcate").mouseleave(function() {
			$(this).attr("class", "")
		});
		$("#cateview2").hover(function() {
			$(this).attr("class", "active")
		});
		$("#cateview2").mouseleave(function() {
			$(this).attr("class", "")
		});
		$("#cateview3").hover(function() {
			$(this).attr("class", "active")
		});
		$("#cateview3").mouseleave(function() {
			$(this).attr("class", "")
		});
	});
</script>
</head>
<body>
	<jsp:include page="../default/header.jsp"></jsp:include>
	<div id="Container">

		<div id="Contents">

			<form name="search" id="sword" action="searchItemPage.do"
				method="get">
				<input type="hidden" name="searched" value="Y">
				<!-- 20210805 오타 키워드 정타 키워드 변경 알림 S -->
				<div id="suggestKeywordWrap"></div>
				<!-- 20210805 오타 키워드 정타 키워드 변경 알림 E -->

				<!-- 검색어오류 영역 추가 (2017-01-13 추가)  -->
				<div class="searchResultArea">
					<p class="resultTxt">
						<strong>${searchKeyword }</strong>검색결과 (전체 <span>${fn:length(searchList) }</span>개의
						상품)
					</p>
					<div class="searchWrap">
						<div class="check_today"></div>
						<input type="text" title="결과 내 검색창" placeholder="결과 내 검색"
							id="reChk"> <input type="submit" value="검색" title="검색"
							onclick="return reSearch()">
					</div>
				</div>
				<!--// 검색어오류 영역 추가 -->
				<!-- 연관검색어 -->
				<!-- <div class="relatedSearch" style="display: none;">
					<div class="tit">
						<span>연관검색어</span>
					</div>
					<div class="link" id="recommend"></div>
					<button class="btn_more">더보기</button>
				</div> -->
				<!-- //연관검색어 -->

			</form>

			<p class="cate_info_tx">
				전체<span>${fn:length(searchList) }</span>개의 상품이 등록되어 있습니다.
			</p>
			<!-- 소분류 카테고리에 선택한 브랜드상품이 몇개 등록되어있는지 알려주는 영역-->
			<p class="cate_info_tx"></p>

			<!-- 카테고리 정렬방식 선택 영역 -->
			<div class="cate_align_box">

				<!-- 인기순, 가격, 등록 별로 선택하는 영역 -->
				<div class="align_sort">
					<ul>

						<li class=""><a href="javascript:;" data-prdsoting="01">인기순</a></li>

						<li class="on"><a href="" data-prdsoting="02">최근등록순</a></li>
						<li><a href="javascript:;" data-prdsoting="03">판매수량순</a></li>
						<li><a href="javascript:;" data-prdsoting="05">낮은 가격순</a></li>
						<li><a href="javascript:;" data-prdsoting="06">높은 가격순</a></li>
					</ul>
				</div>

				<!-- 보여질 상품갯수를 선택하는 영역-->
				<div class="count_sort tx_num">
					<span class="tx_view">VIEW</span>
					<ul>
						<li class="on"><a href="javascript:;" title="24개씩 보기">24</a></li>
						<li><a href="javascript:;" title="36개씩 보기">36</a></li>
						<li><a href="javascript:;" title="48개씩 보기">48</a></li>
					</ul>
				</div>

				<!-- 보여질 타입을 선택하는 영역 ex)컬럼형, 리스트형-->
				<div class="type_sort">
					<button class="btn_thumb  active" data-view-cnt="4">컬럼형식으로
						보기</button>
					<button class="btn_list" data-view-cnt="1">리스트형식으로 보기</button>
				</div>

			</div>
			<!-- 카테고리 정렬방식 선택 영역 끝 -->

			<!-- 카테고리 리스트 / 상품객체 4개씩 넣음 -->

			<c:forEach var="item" items="${searchList}" varStatus="status">

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
								onclick=""> <!-- 베스트 상품 표시 --> <span class="thumb_flag best">${item.category_goods_info }</span>
								<!-- 상품이미지 --> <img src="${item.category_goods_thum_img}"
								onerror="common.errorImg(this);"> <c:if
									test="${item.goods_detail_stock_quantity=='0'}">
									<span class="status_flag soldout">다떨어짐ㅅㅂ</span>
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
		<!-- Contents 끝 -->

		<!-- 페이징 처리 -->
		<div class="pageing">
			<!-- 현재 페이지 -->
			<strong title="현재 페이지">1</strong>
			<!-- 2번 페이지로 이동 -->
			<a href="javascript:void(0);" data-page-no="2">2</a> <a
				href="javascript:void(0);" data-page-no="3">3</a> <a
				href="javascript:void(0);" data-page-no="4">4</a> <a
				href="javascript:void(0);" data-page-no="5">5</a> <a
				href="javascript:void(0);" data-page-no="6">6</a> <a
				href="javascript:void(0);" data-page-no="7">7</a> <a
				href="javascript:void(0);" data-page-no="8">8</a> <a
				href="javascript:void(0);" data-page-no="9">9</a> <a
				href="javascript:void(0);" data-page-no="10">10</a> <a class="next"
				href="javascript:void(0);" data-page-no="11">다음 10 페이지</a>

		</div>
		<!-- 페이징 처리 끝 -->

	</div>
</body>
</html>