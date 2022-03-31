<%@ page language="java" contentType="text/html; charset=UTF-8"
	pageEncoding="UTF-8"%>
<%@ taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core"%>
<%@ taglib prefix="fmt" uri="http://java.sun.com/jsp/jstl/fmt"%>
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
<link rel="shortcut icon" href="https://fyawsbucket.s3.ap-northeast-2.amazonaws.com/favicon_logo.ico" type="image/x-icon" />
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

			<!-- 카테고리 페이지 위치 -->
			<div class="page_location">
				<a href="main.do" class="loc_home">홈</a>
				<ul class="loc_history">
					<li class="" id="viewcate"><a href="#" class="cate_y">${categoryFirst.category_first_name}</a>
						<div class="history_cate_box" style="width: 242px;">
							<ul>
								<c:forEach var="categoryFirst" items="${categoryFirstList}">
									<c:if
										test="${firstSerial==categoryFirst.category_first_serial}">
										<li><a class="on"
											href="categoryItemPage.do?category_first_serial=${categoryFirst.category_first_serial}">${categoryFirst.category_first_name}</a></li>
									</c:if>
									<c:if
										test="${firstSerial !=categoryFirst.category_first_serial}">
										<li><a class=""
											href="categoryItemPage.do?category_first_serial=${categoryFirst.category_first_serial}">${categoryFirst.category_first_name}</a></li>
									</c:if>
								</c:forEach>
							</ul>
						</div></li>

					<!-- 소분류 선택 -->
					<li class="" id="cateview2"><c:forEach var="categorySecond"
							items="${categorySecond}">

							<c:if
								test="${secondSerial == categorySecond.category_second_serial}">
								<a
									href="categoryItemPage2.do?category_first_serial=${categoryFirst.category_first_serial}&category_second_serial=${categorySecond.category_second_serial}"
									class="cate_y"> ${categorySecond.category_second_name }</a>
							</c:if>
						</c:forEach> <!-- 소분류 리스트들 -->

						<div class="history_cate_box" style="width: 122px;">
							<ul>
								<c:forEach var="categorySecond" items="${categorySecond}">
									<c:if
										test="${secondSerial == categorySecond.category_second_serial}">
										<li><a
											href="categoryItemPage2.do?category_first_serial=${categoryFirst.category_first_serial}&category_second_serial=${categorySecond.category_second_serial}"
											class="on">${categorySecond.category_second_name }</a></li>
									</c:if>
									<c:if
										test="${secondSerial != categorySecond.category_second_serial}">
										<li><a
											href="categoryItemPage2.do?category_first_serial=${categoryFirst.category_first_serial}&category_second_serial=${categorySecond.category_second_serial}"
											class="">${categorySecond.category_second_name }</a></li>

									</c:if>
								</c:forEach>
							</ul>
						</div></li>
					<li class="" id="cateview3"><c:forEach var="categorySecond"
							items="${categorySecond}">
							<c:if
								test="${secondSerial == categorySecond.category_second_serial}">
								<c:if test="${thirdSerial !=null}">
									<c:forEach var="categoryThird" items="${categoryThird}">
										<c:if
											test="${thirdSerial==categoryThird.category_third_serial }">
											<a
												href="categoryItemPage2.do?category_first_serial=${categoryFirst.category_first_serial}&category_second_serial=${categorySecond.category_second_serial}&category_third_serial=${categoryThird.category_third_serial}"
												class="cate_y">${categoryThird.category_third_name}</a>
										</c:if>
									</c:forEach>
								</c:if>
							</c:if>
						</c:forEach>

						<div class="history_cate_box" style="width: 122px;">
							<ul>
								<c:forEach var="categorySecond" items="${categorySecond}">
									<c:if
										test="${secondSerial == categorySecond.category_second_serial}">
										<c:if test="${thirdSerial !=null}">
											<c:forEach var="categoryThird" items="${categoryThird}">
												<c:if
													test="${thirdSerial==categoryThird.category_third_serial }">
													<li><a class="on"
														href="categoryItemPage2.do?category_first_serial=${categoryFirst.category_first_serial}&category_second_serial=${categorySecond.category_second_serial}&category_third_serial=${categoryThird.category_third_serial}">${categoryThird.category_third_name}</a></li>
												</c:if>
												<c:if
													test="${thirdSerial !=categoryThird.category_third_serial }">
													<li><a class=""
														href="categoryItemPage2.do?category_first_serial=${categoryFirst.category_first_serial}&category_second_serial=${categorySecond.category_second_serial}&category_third_serial=${categoryThird.category_third_serial}">${categoryThird.category_third_name}</a></li>
												</c:if>
											</c:forEach>
										</c:if>
									</c:if>
								</c:forEach>
							</ul>
						</div></li>

				</ul>
			</div>

			<!-- 소분류 제목 -->
			<div class="titBox">
				<c:forEach var="categorySecond" items="${categorySecond}">
					<c:if
						test="${secondSerial == categorySecond.category_second_serial}">
						<c:if test="${thirdSerial == null}">
							<h1>${categorySecond.category_second_name }</h1>
						</c:if>
						<c:forEach var="categoryThird" items="${categoryThird}">

							<c:if test="${thirdSerial ==categoryThird.category_third_serial}">
								<h1>${categoryThird.category_third_name }</h1>
							</c:if>
						</c:forEach>
					</c:if>
				</c:forEach>
			</div>

			<!-- 소분류 상세 카테고리 리스트 -->
			<ul class="cate_list_box">
				<c:forEach var="categorySecond" items="${categorySecond}">
					<c:if
						test="${secondSerial == categorySecond.category_second_serial}">
						<li class=""><a
							href="categoryItemPage2.do?category_first_serial=${categoryFirst.category_first_serial}&category_second_serial=${categorySecond.category_second_serial}"
							class=""> 전체</a></li>
						<c:forEach var="categoryThird" items="${categoryThird}">

							<c:if
								test="${thirdSerial == categoryThird.category_third_serial }">
								<li class="on"><a
									href="categoryItemPage2.do?category_first_serial=${categoryFirst.category_first_serial}&category_second_serial=${categorySecond.category_second_serial}&category_third_serial=${categoryThird.category_third_serial}">${categoryThird.category_third_name}</a>
								</li>
							</c:if>


							<c:if
								test="${thirdSerial != categoryThird.category_third_serial }">
								<li class=""><a
									href="categoryItemPage2.do?category_first_serial=${categoryFirst.category_first_serial}&category_second_serial=${categorySecond.category_second_serial}&category_third_serial=${categoryThird.category_third_serial}"
									class="">${categoryThird.category_third_name}</a></li>
							</c:if>

						</c:forEach>
					</c:if>
				</c:forEach>
				<li>&nbsp;</li>
			</ul>

			<!-- 소분류 카테고리에 선택한 브랜드상품이 몇개 등록되어있는지 알려주는 영역-->
			<p class="cate_info_tx">
				<c:forEach var="categorySecond" items="${categorySecond}">
					<c:if
						test="${secondSerial == categorySecond.category_second_serial}">
						<c:if test="${thirdSerial == null}">
				${categorySecond.category_second_name} 카테고리에 <span>${itemCount}</span>개의 상품이 등록되어 있습니다.
			</c:if>
						<c:forEach var="categoryThird" items="${categoryThird}">

							<c:if test="${thirdSerial ==categoryThird.category_third_serial}">
				${categoryThird.category_third_name} 카테고리에 <span>${itemCount}</span>개의 상품이 등록되어 있습니다.
			</c:if>
						</c:forEach>
					</c:if>
				</c:forEach>

			</p>

			<!-- 카테고리 정렬방식 선택 영역 -->
			<div class="cate_align_box">

				<!-- 인기순, 가격, 등록 별로 선택하는 영역 -->
				<div class="align_sort">
				
					<ul>
					<c:if test="${thirdSerial == null }">
						<li><a href="categoryItemPage2.do?category_first_serial=${firstSerial}&category_second_serial=${secondSerial}&sort=0" data-prdSoting="01">판매수량순</a></li>
						<li><a href="categoryItemPage2.do?category_first_serial=${firstSerial}&category_second_serial=${secondSerial}&sort=1" data-prdSoting="02">최근등록순</a></li>
						<li><a href="categoryItemPage2.do?category_first_serial=${firstSerial}&category_second_serial=${secondSerial}&sort=2" data-prdSoting="06">낮은 가격순</a></li>
						<li><a href="categoryItemPage2.do?category_first_serial=${firstSerial}&category_second_serial=${secondSerial}&sort=3" data-prdSoting="05">높은 가격순</a></li>		
					</c:if>
					<c:if test="${thirdSerial != null }">
						<li><a href="categoryItemPage2.do?category_first_serial=${firstSerial}&category_second_serial=${secondSerial}&category_third_serial=${thirdSerial}&sort=0" data-prdSoting="01">판매수량순</a></li>
						<li><a href="categoryItemPage2.do?category_first_serial=${firstSerial}&category_second_serial=${secondSerial}&category_third_serial=${thirdSerial}&sort=1" data-prdSoting="02">최근등록순</a></li>
						<li><a href="categoryItemPage2.do?category_first_serial=${firstSerial}&category_second_serial=${secondSerial}&category_third_serial=${thirdSerial}&sort=2" data-prdSoting="06">낮은 가격순</a></li>
						<li><a href="categoryItemPage2.do?category_first_serial=${firstSerial}&category_second_serial=${secondSerial}&category_third_serial=${thirdSerial}&sort=3" data-prdSoting="05">높은 가격순</a></li>
					</c:if>
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
			<!-- 부가정보수집 -->
			<c:forEach var="item" items="${categoryProductList}" varStatus="num">
				<!-- 상품 객체 -->
				<ul class="cate_prd_list gtm_cate_list">
					<li criteo-goods="${item.category_goods_serial}" class="flag"
						data-index="${num.index}"><input type="hidden" class=""
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
									<span class="status_flag soldout">일시품절</span>
								</c:if>
							</a>

							<!-- 상품설명 -->
							<div class="prd_name">
								<a
									href="itemPage.do?category_first_serial=${item.category_first_serial}&category_second_serial=${item.category_second_serial}&category_third_serial=${item.category_third_serial}&category_goods_serial=${item.category_goods_serial}"
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
					<c:if test="${num.count % '4'=='0' }">
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
	<jsp:include page="../default/footer.jsp"></jsp:include>
</body>
</html>