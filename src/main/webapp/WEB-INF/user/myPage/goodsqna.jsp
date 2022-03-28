<%@ page language="java" contentType="text/html; charset=UTF-8"
	pageEncoding="UTF-8"%>
<%@ taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core" %>
<%@ taglib prefix="fmt" uri="http://java.sun.com/jsp/jstl/fmt" %>
<%@ taglib prefix="fn" uri="http://java.sun.com/jsp/jstl/functions" %>
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
<script type="text/javascript">
$(document).ready(function(){

	   $("td#openanswer").click(function() {
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
</head>
<body>
<jsp:include page="../default/header.jsp"></jsp:include>
		<div id = "Container">
			<div id = "Contents">
				<div class = "mypage-head rate_04">
					<h1 class = "tit">
						<!-- 마이페이지 메인페이지로 이동 -->
						<a href = "#">마이페이지</a>
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
								<strong class = "name">${userName }</strong>
								님 반갑습니다.
							</p>
							<ul class = "mem_opt">
								<!-- 멤버십 페이지로 이동 -->
								<li id = "membershipBenefit">
									<a href = "#" onclick = "#">멤버십라운지</a>
								</li>
								<!-- 나의 프로필 페이지로 이동 -->
								<li id = "profileModify">
									<a href = "#" onclick = "#">나의 프로필</a>
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
						<div class="title-area">
							<h2 class="tit">상품 Q&A</h2>
						</div>
						<table class="board-list-2s mgT20">
							<caption>상품 Q&A 내역 목록</caption>
							<colgroup>
								<col style="width:367px;">
								<col style="width:272px;">
								<col style="width:150px;">
							</colgroup>
							<thead>
								<tr>
									<th scope="col">상품</th>
									<th scope="col">문의내용</th>
									<th scope="col">답변상태</th>
								</tr>
							</thead>
							<c:forEach var="goodsqna" items="${goodsqnalist}" varStatus="status">
							<tbody class="qna">
								<tr>
									<td id="openanswer" colspan="3" class=""><!-- open으로 열기 -->
								<input type="hidden" name="qna_goods_serial" value="${goodsqna.qna_goods_serial }"/>
							<input type="hidden" name="user_id" value="${userId }"/>
										<div class="question" >
											<div class="area oneDv">
												<a class="thum goodsList" href="#">
													<img src="${goodsqna.category_goods_thum_img }">
												</a>
												<div class="textus">
													<a class="goodsList" href="">
														<span class="tit">${goodsqna.category_goods_brand}</span> 
														<span class="txt">${goodsqna.qna_goods_name}</span>
													</a>
												</div>
											</div>
											<div class="area twoDv">
												<div class="textus">
													<dl class="data">
														<dt>문의일자</dt>
														<dd><fmt:formatDate value="${goodsqna.qna_goods_date }" pattern="yyyy-MM-dd"/></dd>
													</dl>
													<a class="" href="#">
														<span class="txt">${fn:replace(goodsqna.qna_goods_content, "ln", "<br>")}</span>
													</a>
												</div>
											</div>
											<div class="threeDv">
											<c:if test="${goodsqna.qna_goods_answer_date==null }">
												<strong>답변대기</strong>
											</c:if>
											<c:if test="${goodsqna.qna_goods_answer_date!=null }">
												<strong class="comp">답변완료</strong>
											</c:if>	
											</div>
											</div>
											<ul class="conts">
												<li class="question">
													<strong>문의</strong>
													<p>${fn:replace(goodsqna.qna_goods_content, "ln", "<br>")}</p>
													<div class="btn">
														<button type="button" class="ButtonBasic modi" id="modi" name="modi">수정</button>
														<button type="button" class="ButtonBasic delete" id="delete" name="delete">삭제</button>
													</div>
												</li>
												<c:if test="${goodsqna.qna_goods_answer_date!=null }">	
												<li class="answer">
													<strong>답변</strong>
													<span class="ids">운영자</span>
													<span class="day"><fmt:formatDate value="${goodsqna.qna_goods_answer_date }" pattern="yyyy-MM-dd"/></span>
													<p>${fn:replace(goodsqna.qna_goods_answer, "ln", "<br>")}</p>
												</li>
												</c:if>
											</ul>																			
									</td>	
							</tbody>
							</c:forEach>			
						</table>
						<div class="pageing"></div>
						<form id="frmGdasList" name="frmGdasList">
							<input type="hidden" id="goodsNo" name="goodsNo" value>
							<input type="hidden" id="ordNo" name="ordNo" value>
							<input type="hidden" id="gdasCnt" name="gdasCnt" value>
						</form>
					</div>
						
								
						
						
					</div>
					<!-- //리뷰 본문 영역 -->
</div>
<!-- Contents 끝 -->
</div>
<!-- Container 끝 -->
<script>

</script>
<jsp:include page="../default/footer.jsp"></jsp:include>