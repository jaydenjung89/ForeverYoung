<%@ page language="java" contentType="text/html; charset=utf-8"
	pageEncoding="utf-8"%>
<%@ taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core" %>
<%@ taglib prefix="fmt" uri="http://java.sun.com/jsp/jstl/fmt" %>
<c:set var="path" value="${pageContext.request.contextPath}"/>
<!DOCTYPE html>
<html>
<head>
<meta charset="utf-8">
<title>1:1문의</title>
<link rel="stylesheet" type="text/css" href="${path }/css/board.css" />
<link rel="stylesheet" type="text/css" href="${path }/css/common.css" />
<link rel="stylesheet" type="text/css" href="${path }/css/contents.css" />
<link rel="stylesheet" type="text/css" href="${path }/css/curation.css" />
<link rel="stylesheet" type="text/css" href="${path }/css/global.css" />
<link rel="stylesheet" type="text/css"
   href="${path }/css/jquery.mCustomScrollbar.css" />
<link rel="stylesheet" type="text/css" href="${path }/css/pickup.css" />
<link rel="shortcut icon" href="https://fyawsbucket.s3.ap-northeast-2.amazonaws.com/favicon_logo.ico" type="image/x-icon" />
</head>
<body>
<jsp:include page="../default/header.jsp"></jsp:include>
	<div id="Container">
		<div id="Contents">
			<div class="sub_title_area customer">
				<h1>고객센터 <span>무엇을 도와드릴까요?</span></h1>
				<button type="button" class="btn_inquiry" id="regForm1on1" onclick="javascript:location.href='oneqwrite.do'">
				1<em>:</em>1 문의하기</button>
			</div>
			<div class="info_area">
				
			</div>
			<ul class="comm1sTabs threeSet customer">
				<li id="tabFaq">
					<a href="FAQ.do">FAQ</a>
				</li>
				<li id="tab1on1" class="on">
					<a href="" title="선택됨">1:1문의</a>
				</li>
				<li id="tabNotice">
					<a href="notice.do">공지사항</a>
				</li>			
			</ul>
		<fieldset class="search-period mgT30"></fieldset>
		<form action="onqwrite.do" method="post">
			<input type="hidden" name="deletePersonalQna" value="delete"/>
			<table class="xans-board-listheader" width="100%" style="table-layout:fixed;">
				<tr class="">
					<th width="8%">번호</th>
					<th width="15%">카테고리</th>
					<th>제목</th>
					<th width="12%">작성자</th>
					<th width="12%">작성일</th>
				</tr>	
			</table>
			<c:forEach var="personalqna" items="${personalqnaboard}" varStatus="num">
			<div class="list-customer onenone m2105">
			<table class="xans-board-listheader" width="100%" style="table-layout:fixed; text-align:center;">
				<tr class="menu">
					<td width="8%">${num.index+1}</td></a>
					<td width="15%">${personalqna.qna_personal_category}</td>
					<c:if test="${personalqna.qna_personal_answer_date == null}">
					<td style="text-align:left" class="stit"><a style="cursor:pointer" onclick="location.href='updatePersonalQnaPage.do?qna_personal_serial=${personalqna.qna_personal_serial}'"><strong style="display: inline-block;
					width: 70px; height: 22px;	margin: 0 20px 0 0; padding: 0 4px; border-radius: 15px; box-sizing: border-box; text-align: center; background: #888; color: #fff;
					font-size: 12px; line-height: 22px">답변대기</strong>${personalqna.qna_personal_title}</a></td>
					</c:if>	
					<c:if test="${personalqna.qna_personal_answer_date != null}">
					<td style="text-align:left" class="stit"><a style="cursor:pointer" onclick="location.href='updatePersonalQnaPage.do?qna_personal_serial=${personalqna.qna_personal_serial}'"><strong style="display: inline-block;
					width: 70px; height: 22px;	margin: 0 20px 0 0; padding: 0 4px; border-radius: 15px; box-sizing: border-box; text-align: center; background: #9bce26; color: #fff;
					font-size: 12px; line-height: 22px">답변완료</strong>${personalqna.qna_personal_title}</a></td>
					</c:if>	
					<td width="12%">${personalqna.user_id}</td>
					<td width="12%"><fmt:formatDate value="${personalqna.qna_personal_date}" pattern="yyyy-MM-dd"/></td> 
				</tr>
				
				<tr>
					<td align="center" colspan="3" class="sub" style="align:center; display:none; width:100%;"> ${personalqna.qna_personal_content}
						<input type="button" class="btnRed" value="삭제" onclick="location.href='deletePersonalQna.do?qna_personal_serial=${personalqna.qna_personal_serial}'"style="align:center; line-height: 24px; width: 70px;">
						<input type="button" class="btnGreen" value="수정" onclick="location.href='updatePersonalQna.do?qna_personal_serial=${personalqna.qna_personal_serial}'"style="align:center; line-height: 24px; width: 70px;">
					</td>
				</tr>
				<tr class="menu"></tr>
			
			</table>
			</div>
			 </c:forEach>
			 	 <c:if test="${empty personalqnaboard}">
			<div class="list-customer onenone m2105">
			<!-- 등록한 문의가 없을 시 -->
			
				<ul>
					<li class="nodata">등록하신 1:1 문의가 없습니다.</li>
				</ul>
			</div>
			</c:if>
			<!-- 페이징 -->
			<div class="pageing">
				<strong title="현재 페이지">1</strong>
			</div>
			<div class="area1sButton pdT30">
				<a href="oneqwrite.do" class="btnGreen">1:1문의하기</a>
			</div>
			</form>
		
		</div>
	</div>
	
	<jsp:include page="../default/footer.jsp"></jsp:include>
<script type="text/javascript">
	$(".menu").click( function() {
		if ($(this).nextAll('tr').find('.sub').is(':visible')) {
			$(this).nextAll('tr').find('.sub').css('display','none');
		} else {
			$(this).nextAll('tr').find('.sub').css('display','table-cell');
		}
	});
</script>
</body>
</html>