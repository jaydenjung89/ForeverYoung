<%@ page language="java" contentType="text/html; charset=UTF-8"
	pageEncoding="UTF-8"%>
<!DOCTYPE html>
<html>
<head>
<meta charset="UTF-8">

<!-- 이거 아님 -->
<title>랭킹 | 올리브영</title>
<link rel="stylesheet" type="text/css" href="css/board.css" />
<link rel="stylesheet" type="text/css" href="css/common.css" />
<link rel="stylesheet" type="text/css" href="css/contents.css" />
<link rel="stylesheet" type="text/css" href="css/curation.css" />
<link rel="stylesheet" type="text/css" href="css/global.css" />
<link rel="stylesheet" type="text/css"
	href="css/jquery.mCustomScrollbar.css" />
<link rel="stylesheet" type="text/css" href="css/pickup.css" />
</head>
<body>
	<jsp:include page="../default/header.jsp"></jsp:include>
	<!-- 리뷰 베스트 전체 페이지 시작 -->
	<div id="Container">
		<!-- 해당 페이지가 어떤 페이지인지 소개하는 부분 -->
		<div class="title-best">
			<h1>
				랭킹 <span>오늘의 랭킹! 요즘 가장 핫한 상품</span>
			</h1>
		</div>
		<!-- 해당 페이지 소개 끝 -->
		<!-- 리뷰 카테고리 선택부터 페이지 끝까지 -->
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
				<li data-ref-dispcatno="900000100100002" class="on">
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
			<!-- 상단의 3가지 메뉴선택 영역 끝 -->
			<!-- 리뷰 베스트의 오늘의 도움 리뷰 제목부터 리뷰 카테고리 영역 시작-->
			<div class="cont_box btn_tip_point">
				<div class="cont_box">
					<h3 class="tit_hn">
						오늘의 도움 리뷰 <a href="#" class="iconq btnTool"> <img
							src="https://fyawsbucket.s3.ap-northeast-2.amazonaws.com/reviewBest/ico_info_15x15.png"
							srcset="" alt>
						</a>
						<div class="boxTooltip"
							style="top: 35.6px; left: 159.1px; display: none;">
							<p class="txt">
								선택하신 카테고리의 제품들 중에 <br> '최근 90일동안 가장 많은 도움이 <br> 돼요'를
								받은 리뷰입니다.
							</p>
						</div>
						<button type="button" class="btnMint_s" onclick="#자바스크립트로 팝업띄우기">도움되는
							리뷰선정 TIP</button>
					</h3>
					<!-- 리뷰 베스트 분류 메뉴 -->
					<div class="common-menu">
						<ul>
							<li class="on">
								<button type="button" data-ref-dispcatno="10000010001"
									title="선택됨">스킨케어</button>
							</li>
							<li>
								<button type="button" data-ref-dispcatno="10000010009">마스크팩</button>
							</li>
							<li>
								<button type="button" data-ref-dispcatno="10000010010">클렌징</button>
							</li>
							<li>
								<button type="button" data-ref-dispcatno="10000010011">선케어</button>
							</li>
							<li>
								<button type="button" data-ref-dispcatno="10000010008">더모
									코스메틱</button>
							</li>
							<!-- 여기까지 한줄 -->
							<li>
								<button type="button" data-ref-dispcatno="10000010002">메이크업</button>
							</li>
							<li>
								<button type="button" data-ref-dispcatno="10000010012">네일</button>
							</li>
							<li>
								<button type="button" data-ref-dispcatno="10000010003">바디케어</button>
							</li>
							<li>
								<button type="button" data-ref-dispcatno="10000010004">헤어케어</button>
							</li>
							<li>
								<button type="button" data-ref-dispcatno="10000010005">향수/디퓨저</button>
							</li>
							<li>
								<button type="button" data-ref-dispcatno="10000010006">미용소품</button>
							</li>
							<!-- 여기까지 한줄 -->
							<li>
								<button type="button" data-ref-dispcatno="10000010007">남성</button>
							</li>
							<li>
								<button type="button" data-ref-dispcatno="10000020003">건강/위생용품</button>
							</li>
							<li>
								<button type="button" data-ref-dispcatno="10000020001">건강식품</button>
							</li>
							<li>
								<button type="button" data-ref-dispcatno="10000020002">푸드</button>
							</li>
							<li>
								<button type="button" data-ref-dispcatno="10000030005">라이프/홈</button>
							</li>
							<li>
								<button type="button" data-ref-dispcatno="10000030003">반려동물</button>
							</li>
							<!-- 여기까지 한줄 -->
							<li>
								<button type="button">베이비</button>
							</li>
						</ul>
						<!-- 리뷰 베스트 카테고리 항목들 -->
					</div>
				</div>
			</div>
			<!-- class="cont_box btn_tip point 끝" -->
			<!-- 리뷰 베스트들 내용  -->
			<div class="TabsConts on">
				<div class="help_review_wrap grid" id="reviewBestList">
					<a href="#자바스크립트로 팝업창띄우기" class="review_items"
						onclick="#해당페이지로 자바스크립트이용해 이동" data-attr="랭킹^리뷰베스트^리뷰1위">
						<div class="img_wrap">
							<img class="thum"
								src="https://fyawsbucket.s3.ap-northeast-2.amazonaws.com/reviewBest/reviewbest1.jpg"
								data-value="11264779" alt> <span class="score_stick">리뷰
								1위</span>
						</div>
						<div class="info_wrap">
							<p class="title"></p>
							<p class="text_wrap none_title">상품에 대한 리뷰내용</p>
						</div>
						<div class="ect_wrap">
							<ul class="ect">
								<li class="help"><img
									src="https://fyawsbucket.s3.ap-northeast-2.amazonaws.com/reviewBest/icon_k_on.png"
									alt> 도움이 돼요 <span>75</span>
							</ul>
						</div>
					</a>
					<!-- 리뷰 1위 영역 -->
				</div>
			</div>
		</div>
		<!-- best-area끝 -->
	</div>
	<!-- Container 끝 -->
	<jsp:include page="../default/footer.jsp"></jsp:include>
</body>
</html>