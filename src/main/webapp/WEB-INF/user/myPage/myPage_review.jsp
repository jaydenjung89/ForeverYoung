<%@ page language="java" contentType="text/html; charset=UTF-8"
	pageEncoding="UTF-8"%>
<%@ taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core" %>
<%@ taglib prefix="fmt" uri="http://java.sun.com/jsp/jstl/fmt" %>
<c:set var="path" value="${pageContext.request.contextPath}"/>
<!DOCTYPE html>
<html>
<head>
<meta charset="UTF-8">
<title>ForeverYoung</title>
<script src="http://code.jquery.com/jquery-3.5.1.min.js"></script>
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
		<div id = "Container">
			<div id = "Contents">
				<div class = "mypage-head rate_04">
					<h1 class = "tit">
						<!-- 마이페이지 메인페이지로 이동 -->
						<a href = "MyPageMain.do">마이페이지</a>
					</h1>
					<div class = "grd-box">
						<div class = "info_user clrfix">
							<div class = "thum">
								<span class = "bg"></span>
								<!-- my_picture_base.jpg -->
								<img src = "https://fyawsbucket.s3.ap-northeast-2.amazonaws.com/my_picture_base.jpg">
							</div>
							<p class = "txt">
								<!-- 등급변경시 바꿔줘야함 -->
								${userMember }
								<!-- 기본정보페이지의 이름에서 가져오는걸로 추정됨. -->
								<strong class = "name">${user.user_name }</strong>
								님 반갑습니다.
							</p>
							<ul class = "mem_opt">
								<!-- 멤버십 페이지로 이동 -->
								<li id = "membershipBenefit">
									<a href = "membership.do" onclick = "#">멤버십라운지</a>
								</li>
								<!-- 나의 프로필 페이지로 이동 -->
								<li id = "profileModify">
									<a href = "MyProfile.do" onclick = "#">나의 프로필</a>
								</li>
							</ul>
						</div>
						<div class = "point-box ">
							<ul class = "infor clrfix" id = "pointInfo">
								<!-- 마이페이지의 CJONE포인트 페이지로 이동 -->
								<li id = "cjOnePoingInfo" onclick = "#">
									<span class = "tit">CJ ONE 포인트</span>
									<a class = "num" href = "#">
										${userPoint }
										<em class = "unit">P</em>
									</a>
								</li>
								<!-- 마이페이지의 쿠폰 페이지로 이동 -->
								<li id = "couponList" onclick = "#">
									<span class = "tit">쿠폰</span>
									<a class = "num" href = "#" data-attr = "마이페이지^쿠폰^쿠폰함이동">
										0
										<em class = "unit">개</em>
									</a>
								</li>
								<!-- 마이페이지의 예치금부분인데 우리는 기능 구현 안할거임 -->
								<li id = "depositList" onclick = "#">
									<span class = "tit">예치금</span>
									<a class = "num" href = "#">
										0
										<em class = "unit">원</em>
									</a>
								</li>
							</ul>
						</div>
					</div>
				</div>
				<div class = "mypage-ix">
					
					<!-- 마이페이지 sub 메뉴 -->
					<jsp:include page="../default/myPage_Sub_Menu.jsp"></jsp:include>
					<!-- 마이페이지 sub 메뉴 End-->
					
					<!-- 리뷰 본문 영역 -->
					<div class="mypage-conts">
						<div class="title-area linezero">
							<h2 class="tit">리뷰</h2>
						</div>
						<ul class="comm1sTabs mgzero">
							<li class="on" title="선택됨" id="beforeRc">
								<a   href="#reviewBeforeList" data-attr="리뷰^리뷰&_SortingTab^리뷰 작성"><div id="beforeR">리뷰 작성</div></a>
							</li>
							<li class="" id="afterRc">
								<a href="#reviewAfterList"    data-attr="리뷰^리뷰_SortingTab^나의 리뷰"><div id="afterR">나의 리뷰</div></a>
							</li>
						</ul>
						
							<!-- 작성가능한 리뷰 영역 -->
						<div id="viewBeforeList" class="before_view" style="display:block;">
									<ul class="dot_list">
										<li>
											리뷰는 배송 완료 후 90일 이내 작성 가능합니다.(매장구매는 결제완료 시)
										</li>
										<li>
											매장에서 구매한 상품에 대한 리뷰 작성은 CJ ONE 포인트 적립시 가능합니다.
										</li>
										<li>
											포에버영 리뷰 정책에 반하는 리뷰의 경우, 사전 고지 없이 블라인드 처리 될 수 있습니다.
										</li>
										<li>
											리뷰등록 4 일 후 건당 최대 CJ ONE 1,000P 지급됩니다. 상세내용은 아래 표를 참조하세요.
										</li>
									</ul>
									<ul class="reviewReward">
										<li>
											<p class="dt">상세리뷰</p>
											<div class="flexbox">
												<div>
													<p class="fc">25~299자</p>
													<p class="pt">100P</p>
												</div>
												<div>
													<p class="fc colorR">300자 이상</p>
													<p class="pt">500P</p>
												</div>
											</div>
										</li>
										<li>
											<p class="dt">얼리 리뷰</p>
											<p class="fc">(상품의 1~10번째 상세 리뷰)</p>
											<p class="pt">1,000P</p>
										</li>
										<li>
											<p class="dt">별점 리뷰</p>
											<p class="fc">(상세 리뷰 작성 제한 상품 한정)</p>
											<p class="pt">10P</p>
										</li>
									</ul>
									<ul class="rr_dang_list">
										<li>
											<span class="colorR">탑리뷰어는 리뷰 등록 포인트 X2배 지급</span>
											(최대 2,000P 탑리뷰어로 선정된 기간 작성한 리뷰 대상)
										</li>
										<li>※ 상세 리뷰 작성 제한 제품: 성인용품 / 의료기기</li>
										<li>※ 모든 리뷰 작성 포인트는 중복 지급되지 않으며, 최대 혜택 기준 지급</li>
										
									</ul>
							
									<input type="hidden" id="gdasSort" name="gdasSort" value="recent">
							
									<div class="reviewN2_list_title">
										<div class="list_title">
											<p>
											작성 가능 리뷰 건수
											<span>${count }</span>
											건
											</p>
										</div>
										<div class="btn_list_toggle_wrap">
											<button class="btn_list_toggle on" data-attr="리뷰^작성가능리뷰필터^최근 구매 상품순">최근 구매 상품순</button>
											<button class="btn_list_toggle" onclick="" data-attr="리뷰^작성가능리뷰필터^이전 구매 상품순">이전 구매 상품순</button>
										</div>
									</div>
								
						<c:choose>
							<c:when test="${!empty review }">
								<c:forEach var="review" items="${review }">		
									<table class="board-list-2s mgT20 new">
										<caption>상품, 작성기간, 리뷰 작성으로 이루어진 리뷰 목록 표</caption>
										<colgroup>
											<col style="width:62%;">
											<col style="width:21%;">
											<col style="width:17%;">
										</colgroup>
										<thead>
											<tr>
												<th scope="col">상품</th>
												<th scope="col">작성기간</th>
												<th scope="col">리뷰 작성</th>
											</tr>
										</thead>
										<!-- 리뷰 작성가능한 품목 리스트 -->
										<%--	<c:choose>
												<c:when test="${!empty review }">
													<c:forEach var="review" items="${review }">
													 --%>
															<tbody id="tbGdast">
																<tr>
															<td class="subject">
																<div class="area">
																	<a class="thum" href="#" data-attr="리뷰^리뷰상품^상품클릭">
																		<img src="${review.category_goods_thum_img }" alt="" onerror="common.errorImg(this);">
																	</a>
																	<div class="textus">
																		<dl class="data">
																			<dt>주문일자</dt>
																			<dd><fmt:formatDate value="${review.order_date}" pattern="yy-MM-dd" /></dd>
																		</dl>
																		<a href="" data-attr="리뷰^리뷰상품^상품클릭">
																			<span class="tit">${review.category_goods_brand }</span>
																			<span class="txt oneline">${review.category_goods_name }</span>
																			<%--<p class="txt_option">
																				<em>옵션</em>
																				[단품] 21호 라이트베이지
																			</p>
																			--%>
																		</a>
																	</div>
																</div>
															</td>
															<td class="col777">
																<strong></strong>
															</td>
															<td data-ord-no="${review.order_serial }" data-goods-no="${review.category_goods_serial }">
																	<input type="hidden" name="user_id" value="${goods.user_id }" >
																	<input type="hidden" name="category_goods_serial" value="${review.category_goods_serial }">
																	<input type="hidden" name="category_first_serial" value="${review.category_first_serial }">
																	<input type="hidden" name="category_second_serial" value="${review.category_second_serial }">
																	<input type="hidden" name="category_third_serial" value="${review.category_third_serial }">
																<button type="button" class="BtnWrite" data-put-mbr-yn="Y" data-gdas-sct-cd="10" data-gdas-seq data-ord-no="" data-goods-no="" data-gdas-tp-cd="00" data-item-no="002" data-item-nm="[단품] 21호 라이트베이지" data-lgc-goods-no="" data-ord-goods-seq="2" data-ord-con-yn="N" data-thnl-path-nm="" data-oper-dt data-str-no data-origin-bizpl-cd data-pos-no data-receipt-no data-brnd-nm data-prgs-stat-cd="20" 
																data-used1mn-gdas-yn="N" onclick="location.href='reviewWrite.do?order_details_serial=${review.order_details_serial}'" data-attr="리뷰^작성버튼^리뷰 작성">리뷰 작성</button>
															</td>
														</tr>
													</tbody>
													<!-- 리뷰 작성가능한 품목 리스트 -->	
									</table>
								</c:forEach>
							</c:when>
						</c:choose>
					</div>
					<!-- 작성가능한 리뷰 영역 -->
							
					<!-- 작성완료한 리뷰영역 -->		
					<div id="viewAfterList" class="after_view" style="display:none;">
							
									<!-- 작성한 리뷰 있을 때 화면 -->
									<ul class="dot_list">
										<li>
											리뷰 정책 위반으로 블라인드된 리뷰는 상품상세페이지 리뷰목록에 노출되지 않습니다.
											<br>
											블라인드 리뷰 운영정책을 확인해주세요.
										</li>
									</ul>
									<div class="con_txt">
										<h3 class="tit">
											누적 리뷰 건수
											<span>${rcount }</span>
											건
										</h3>
									</div>
								
					<c:choose>
								<c:when test="${!empty reviewComplete }">
								<c:forEach var="reviewComplete" items="${reviewComplete }">
									<table class="board-list-2s mgT20 new">
										<caption>상품, 리뷰로 이루어진 리뷰 목록 표</caption>
										<colgroup>
											<col style="width:50%;">
											<col style="width:40%;">
											<col style="width:10%;">
										</colgroup>
										<thead>
											<tr>
												<th scope="col">상품</th>
												<th scope="col" colspan="2">리뷰</th>
											</tr>
										</thead>
										<tbody>
											<tr>
												<td class="subject">
													<div class="area">
														<div class="area">
															<a class="thum" href="" data-attr="리뷰^리뷰상품^상품클릭">
																<img src="${reviewComplete.category_goods_thum_img }" alt="" onerror="common.errorImg(this);">
															</a>
															<div class="textus">
																<dl class="data">
																	<dt>구매일자</dt>
																	<dd><fmt:formatDate value="${reviewComplete.order_date}" pattern="yy-MM-dd" /></dd>
																</dl>
																<a class href="itemPage.do?category_goods_serial=${ reviewComplete.category_goods_serial}" data-attr="리뷰^리뷰상품^상품클릭">
																	<span class="tit">${reviewComplete.category_goods_brand }</span>
																	<span class="txt oneline">${ reviewComplete.category_goods_name}</span>
																</a>
															</div>
														</div>
													</div>
												</td>
												<td class="subject">
													<div class="area">
														<div class="textus" style="width:90%;">
															<dl class="data">
																<dt>작성일자</dt>
																<dd><fmt:formatDate value="${reviewComplete.review_date}" pattern="yy-MM-dd" /></dd>
															</dl>
															<span class="link" ></span>
														</div>
													</div>
												</td>
												<td>
													<button type="button" class="btnMints" onclick="location.href='reviewWrite.do?review_serial=${reviewComplete.review_serial }&category_goods_serial=${reviewComplete.category_goods_serial}'">리뷰수정</button>
												
												</td>
											</tr>
										</tbody>
									
									</table>
									</c:forEach>
									</c:when>
								</c:choose>
							</div>
							<!-- 작성완료한 리뷰영역 -->
						</div>
						
								
						<div class="pageing"></div>
						<form id="frmGdasList" name="frmGdasList">
							<input type="hidden" id="goodsNo" name="goodsNo" value>
							<input type="hidden" id="ordNo" name="ordNo" value>
							<input type="hidden" id="gdasCnt" name="gdasCnt" value>
						</form>
						
					</div>
					<!-- //리뷰 본문 영역 -->
</div>
<!-- Contents 끝 -->
</div>
<!-- Container 끝 -->
<script>
$("#beforeR").click(function() {    
	 var b = document.getElementById("viewAfterList");
	 var a = document.getElementById("viewBeforeList");
	 if(a.style.display == 'none'){
		 a.style.display = 'block';
		 b.style.display = 'none';
	 }
	 document.getElementById("beforeRc").className = "on";
	 document.getElementById("afterRc").className = "";
});

$("#afterR").click(function() {
	var b = document.getElementById("viewAfterList");
		var a = document.getElementById("viewBeforeList");
	    if(b.style.display == 'none'){
			 b.style.display = 'block';
		 	 a.style.display = 'none';
	 }
    document.getElementById("afterRc").className = "on";
    document.getElementById("beforeRc").className = "";
});
</script>
<jsp:include page="../default/footer.jsp"></jsp:include>