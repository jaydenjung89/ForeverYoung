<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
<%@ taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core" %>

<c:set var="path" value="${pageContext.request.contextPath}"/>	
<!DOCTYPE html>
<html>
<head>
<script src="http://code.jquery.com/jquery-3.5.1.min.js"></script>
<meta charset="UTF-8">
<title>FAQ</title>
<link rel="stylesheet" type="text/css" href="${path }/css/board.css" />
<link rel="stylesheet" type="text/css" href="${path }/css/common.css" />
<link rel="stylesheet" type="text/css" href="${path }/css/contents.css" />
<link rel="stylesheet" type="text/css" href="${path }/css/curation.css" />
<link rel="stylesheet" type="text/css" href="${path }/css/global.css" />
<link rel="stylesheet" type="text/css" href="${path }/css/jquery.mCustomScrollbar.css" />
<link rel="stylesheet" type="text/css" href="${path }/css/pickup.css" />
<link rel="shortcut icon" href="https://fyawsbucket.s3.ap-northeast-2.amazonaws.com/favicon_logo.ico" type="image/x-icon" />
</head>
<style>
  .pageing .pageInfo{
      list-style : none;
      display: inline-block;
    margin: 50px 0 0 100px;      
  }
  .pageing .pageInfo li{
      float: left;
    font-size: 20px;
    margin-left: 18px;
    padding: 7px;
    font-weight: 500;
  }
  .pageing .page_aticle .layout-pagination {
    font-size: 0;
}
.pageing .page_aticle button, .page_aticle input, .page_aticle select, .page_aticle * {
    font-family: noto sans;
    font-weight: 400;
    letter-spacing: 0;
}
.pageing .layout-pagination {
    margin: 60px 0 0;
    text-align: center;
}
.pageing .pageInfo{
      list-style : none;
      display: inline-block;
    margin: 50px 0 0 100px;      
  }
.pageing  .pageInfo li{
      float: left;
    font-size: 20px;
    margin-left: 18px;
    padding: 7px;
    font-weight: 500;
  }
 a:link {color:black; text-decoration: none;}
 a:visited {color:black; text-decoration: none;}
 a:hover {color:black; text-decoration: underline;}
</style>

<script>
$(document).ready(function(){

	$("div.list-customer li").click(function() {
		if($(this).hasClass("open")) {
			$(".conts").children().css("display","none");
			$(this).removeClass();
		}else {
			$(this).addClass("open");
			$(".conts").children().css("display","block");
			
		}
	});
	
	
});

</script>

<body>
	<jsp:include page="../default/header.jsp"></jsp:include> 
	<!-- 본문 영역 시작 -->
	<div id="Container">
		<div id="Contents" class="m2105">
			<!-- 고객센터 제목 부분 -->
			<div class="sub_title_area customer">
				<h1>고객센터
					<span>무엇을 도와드릴까요?</span>
				</h1>
			</div>
			<!-- //고객센터 제목 부분 -->
			<!-- FAQ, 1:1문의, 공지사항 선택하는 탭부분시작 -->
			<ul class="comm1sTabs threeSet customer">
				<li id="tabFaq" class="on">
					<a href="FAQ.do">FAQ</a>
				</li>
				<li id="tab1on1">
					<a href="oneqmain.do">1:1문의</a>
				</li>
				<li id="tabNotice">
					<!-- ::before -->
					<a href="notice.do" title="선택됨">공지사항</a>
				</li>
			</ul>
			<!-- //FAQ, 1:1문의, 공지사항 선택하는 탭부분끝 -->
			<!-- 검색 영역 -->
			<form id="sForm" name="sForm">
				<fieldset class="search-faq">
					<legend>FAQ 검색</legend>
					<div class="input" id="sch_field2">
						<input type="text" id="inqTitNm" name="inqTitNm" title="질문 키워드를 입력해주세요." placeholder="질문 키워드를 입력해주세요." value>
						<a href="javascript:;" class="btn_sch_del">
							<span class="blind">검색어 삭제</span>
						</a>
						<input type="submit" id="searchFaq" value="검색">
					</div>
				</fieldset>
				<input type="hidden" id="faqLrclCd" name="faqLrclCd" value="99">
				<input type="hidden" id="faqMdclCd" name="faqMdclCd" value=>
				<input type="hidden" id="tagYn" name="tagYn" value=>
			</form>
			<!-- //검색 영역 -->
			<!-- 자주 묻는 사항 출력 부분 -->
			<div id="TabsOpenArea">
				<!-- 탭 영역 4개 -->
				<%-- <div class="area-customer commsTabDiv">
					<ul class="comm2sTabs">
						<!-- 온라인몰 탭 -->
						<li data-cd="200">
							<button type="button" class="icon_tab02">온라인몰</button>
							<ul class="twoTabs twoTabsIdx200">
								<li class="on">
									<button type="button" title="선택됨">전체</button>
								</li>
								<li data-cd="201">
									<button type="button">회원/멤버십</button>
								</li>
								<li data-cd="202">
									<button type="button">주문/결제</button>
								</li>
								<li data-cd="203">
									<button type="button">배송문의</button>
								</li>
								<li data-cd="204">
									<button type="button">취소/교환/한불</button>
								</li>
								<li data-cd="205">
									<button type="button">이벤트</button>
								</li>
								<li data-cd="206">
									<button type="button">사이트 이용 오류/개선</button>
								</li>
							</ul>
						</li>
						<!-- //온라인몰 탭 -->
						<!-- 오늘드림 탭 -->
						<li data-cd="300">
							<button type="button" class="icon_tab03">오늘드림</button>
							<ul class="twoTabs twoTabsIdx300">
								<li class="on">
									<button type="button" title="선택됨">전체</button>
								</li>
								<li class="301">
									<button type="button">주문/결제</button>
								</li>
								<li class="302">
									<button type="button">배송문의</button>
								</li>
								<li class="303">
									<button type="button">취소/교환/한불</button>
								</li>
								<li class="304">
									<button type="button">이벤트</button>
								</li>
							</ul>
						</li>
						<!-- //오늘드림 탭 -->
						<!-- 매장 탭-->
						<li data-cd="400">
							<button type="button" class="icon_tab04">매장</button>
							<ul class="twoTabs twoTabsIdx400">
								<li class="on">
									<button type="button" title="선택됨">전체</button>
								</li>
								<li class="401">
									<button type="button">결제/교환/환불</button>
								</li>
								<li class="402">
									<button type="button">매장문의</button>
								</li>
								<li class="403">
									<button type="button">취소/교환/한불</button>
								</li>
								<li class="404">
									<button type="button">서비스 제안/개선</button>
								</li>
							</ul>
						</li>
						<!-- //매장 탭 -->
					</ul>
					<div></div>
				</div> 
				<!-- //탭 영역 4개 -->
				--%>
				<!-- faq리스트 출력 영역 -->
				<div class="TabsConts tote on">
					<div class="list-customer">
						<ul>
							<c:forEach var="faqList" items="${faqList }">
							<!-- 질문 일 영역 -->
							<li>
								<a  role="button" class="tit" title="답변 내용보기" data-attr="고객센터^FAQ_TOP10_TOP10^[픽업]픽업 서비스가 궁금해요">
									<strong>${faqList.faq_serial_num }</strong>
									<span class="txt_bold">${faqList.faq_title}</span>
								</a>
								<c:if test="${ ! empty faqList}">
								<ul class="conts">
									<li class="question">
										<div class="pdzero">
											${faqList.faq_content }
										</div>
										<p class="faq_txt_good">
											답변이 도움이 되었나요?
											<button class="btn_faq_good" id="btn_faq_good_245" onclick="faq.list.setFaqTagList('245'); return false;">
												<span>도움이 되었어요</span>
											</button>
										</p>
										<input type="hidden" id="faqTagType245" name="faqTagType245" value>
									</li>
								</ul>
								</c:if>
							</li>
							</c:forEach>
							<!-- //질문 일 영역 -->
						</ul>
					</div>
				</div>
				<!-- //faq리스트 출력 영역 -->
				<!-- 페이징 처리 -->
				<div class="pageing">
					<div class="layout-pagination">
											
												<c:if test="${pagination.prev}">
													
														<a class="page-link" href="#" onClick="fn_prev('${pagination.page}', '${pagination.range}', '${pagination.rangeSize}')">이전 </a>
													
												</c:if>
												<c:forEach begin="${pagination.startPage}" end="${pagination.endPage}" var="idx">
													<c:out value="${pagination.page == idx ? 'active' : ''}"/>
														<a class="page-link" href="#" onClick="fn_pagination('${idx}', '${pagination.range}', '${pagination.rangeSize}')"> ${idx} </a>
													
												</c:forEach>
												<c:if test="${pagination.next}">
													
														<a class="page-link" href="#" onClick="fn_next('${pagination.range}', '${pagination.range}', '${pagination.rangeSize}')">다음</a>
													
												</c:if>
											</div>
										</div>
						
						
					
						<form id="moveForm" method="get">
						<input type="hidden" name="pageNum" value="${pagination.page}">
						<input type="hidden" name="amount" value="${pagination.range}">
						</form>
						<%--
						<strong title="현재 페이지">1</strong>
						<a href="javascript:void(0);" data-page-no="2">2</a>
						 --%>
					</div>
				
				<script type="text/javascript">
				
				function fn_prev(page,range,rangeSize) {
					var page = ((range-2) * rangeSize) + 1;
					
					var range = range - 1;
					
					var url= "${pageContext.request.contextPath}/FAQ.do";
					
					url = url + "?page=" + page;
					
					url = url + "&range=" + range;
					
					location.href= url;
				}
				
				//페이지 번호클릭
				function fn_pagination(page, range,rangeSize,searchType, keyword) {
							var url = "${pageContext.request.contextPath}/FAQ.do";
							url = url + "?page=" + page;
							url = url + "&range=" + range;
							location.href = url;
				}
				
				//다음 버튼 이벤트
				function fn_next(page,range,rangeSize) {
					var page = parseInt((range * rangeSize)) + 1;
					
					
					var range = parseInt(range) + 1;
					
					var url= "${pageContext.request.contextPath}/FAQ.do";
					
					url = url + "?page=" + page;
					
					url = url + "&range=" + range;
					
					location.href= url;
				}

			</script>
				
				<!-- //페이징 처리 -->
				<!-- 문의 전화 영역 -->
				<div class="phone-banner">
					<div class="deposits">
						<strong>매장</strong>
						<em>1577-4887</em>
						<span>평일 09:00 ~ 18:00</span>
					</div>
					<div class="online">
						<strong>온라인몰</strong>
						<em>1522-0882</em>
						<span>평일 09:00 ~ 18:00</span>
					</div>
				</div>
				<!-- //문의 전화 영역 -->
			</div>
			<!-- //자주 묻는 사항 출력 부분 -->
		</div>
	</div>
		<jsp:include page="../default/footer.jsp"></jsp:include> 
</body>
</html>