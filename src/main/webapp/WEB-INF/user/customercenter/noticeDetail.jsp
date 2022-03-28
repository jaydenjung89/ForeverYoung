<%@ page language="java" contentType="text/html; charset=UTF-8"
	pageEncoding="UTF-8"%>
<%@ taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core" %>
<%@ taglib prefix="fmt" uri="http://java.sun.com/jsp/jstl/fmt" %>
<%
	request.setAttribute("notice_serial","1");
%>
<c:set var="path" value="${pageContext.request.contextPath}"/>	
<!DOCTYPE html>
<html>
<head>
<script src="http://code.jquery.com/jquery-3.5.1.min.js"></script>
<meta charset="UTF-8">
<title>notice</title>
<link rel="stylesheet" type="text/css" href="${path }/css/board.css" />
<link rel="stylesheet" type="text/css" href="${path }/css/common.css" />
<link rel="stylesheet" type="text/css" href="${path }/css/contents.css" />
<link rel="stylesheet" type="text/css" href="${path }/css/curation.css" />
<link rel="stylesheet" type="text/css" href="${path }/css/global.css" />
<link rel="stylesheet" type="text/css" href="${path }/css/jquery.mCustomScrollbar.css" />
<link rel="stylesheet" type="text/css" href="${path }/css/pickup.css" />
<style>
.layout-wrapper {
    position: relative;
    width: 1050px;
    height: 100%;
    margin: 0 auto;
}
.xans-myshop-couponserial {
    padding-bottom: 20px;
}
div {
    display: block;
}
table {
    border-collapse: collapse;
    border-spacing: 0;
}
table {
    width: 100%;
    margin-inline-start: auto;
    margin-inline-end: auto;
    -webkit-border-horizontal-spacing: 0px;
    -webkit-border-vertical-spacing: 0px;
}

table {
    display: table;
    border-collapse: separate;
    box-sizing: border-box;
    text-indent: initial;
    border-spacing: 2px;
    border-color: grey;
}
tbody {
    display: table-row-group;
    vertical-align: middle;
    border-color: inherit;
}
tr {
    display: table-row;
    vertical-align: inherit;
    border-color: inherit;
}
div, th, td, li, dt, dd, p {
    word-break: break-all;
}
td, th {
    padding: 0;
}
td {
    display: table-cell;
    vertical-align: inherit;
}
.boardView {
    table-layout: fixed;
    border-top: 2px solid #333;
    border-bottom: 1px solid #f4f4f4;
    color: #333;
    line-height: 180%;
    margin-top: 20px;
}
table{
    width: 100%;
}
.boardView th {
    width: 130px;
    padding: 13px 0 13px 20px;
    background-color: #f7f5f8;
    border-top: 1px solid #f4f4f4;
    text-align: left;
}
th {
    display: table-cell;
    vertical-align: inherit;
    font-weight: bold;
    text-align: -internal-center;
}
.boardView td {
    width: auto;
    padding: 13px 0 13px 23px;
    border-top: 1px solid #f4f4f4;
}
.boardView tr.etcArea td {
    padding: 0;
    border: 0;
}
.boardView td {
    width: auto;
    padding: 13px 0 13px 23px;
    border-top: 1px solid #f4f4f4;
}
.boardView tr.etcArea ul {
    position: relative;
    z-index: 1;
    overflow: hidden;
    width: 100%;
    border-top: 1px solid #f4f4f4;
}
ol, ul {
    list-style-type: none;
}
ul {
    display: block;
    list-style-type: disc;
    margin-block-start: 1em;
    margin-block-end: 1em;
    margin-inline-start: 0px;
    margin-inline-end: 0px;
    padding-inline-start: 40px;
}
.boardView tr.etcArea ul li {
    float: left;
}
li {
    display: list-item;
    text-align: -webkit-match-parent;
}
.boardView tr.etcArea ul .th {
    float: left;
    padding: 13px 0 13px 20px;
    width: 130px;
    background-color: #f7f5f8;
}
b, strong {
    font-weight: 700;
}
.boardView tr.etcArea ul .td {
    float: left;
    padding: 13px 0 13px 20px;
    width: 180px;
}
.xans-element-.xans-myshop.xans-myshop-couponserial .eng {
    display: none;
}
/*td{
    text-align: -webkit-right;
}
*/
td {
    display: table-cell;
    vertical-align: inherit;
}
.xans-element-.xans-myshop.xans-myshop-couponserial td#contents .board_view_content {
    line-height: 25px;
}

element.style {
    padding-top: 10px;
}
a {
    background-color: transparent;
    text-decoration: none;
    color: inherit;
}
a:-webkit-any-link {
    color: -webkit-link;
    cursor: pointer;
    /*text-decoration: underline;*/
}
.bhs_button.yb {
    background-color: #795b8f;
    color: #fff;
}
.bhs_button {
    width: 150px;
    display: inline-block;
    line-height: 40px;
    text-align: center;
    background-color: #795b8f;
    border: 1px solid #5f0080;
    color: #fff;
    font-size: 15px;
    float: right;
    margin-left: 2px;
    font-size: 13px;
}
.xans-board-movement {
    border-top: 2px solid #333;
    border-bottom: 2px solid #333;
    margin: 20px 0;
}
.xans-board-movement li {
    overflow: hidden;
    padding: 0 20px;
    border-bottom: 1px solid #f4f4f4;
    line-height: 140%;
    color: #333;
}
li {
    display: list-item;
    text-align: -webkit-match-parent;
}
.xans-board-movement li a, .xans-board-movement li strong {
    float: left;
    padding: 10px;
}
.xans-board-movement li strong {
    width: 6%;
    padding-left: 15px;
    border-right: 1px solid #f4f4f4;
    font-weight: 400;
    background: url(https://res.kurly.com/pc/etc/old/images/board/ico_move_prev.gif) no-repeat 0 15px;
}
b, strong {
    font-weight: 700;
}
.xans-board-movement li a, .xans-board-movement li strong {
    float: left;
    padding: 10px;
}
.xans-board-movement li.next {
    border: 0;
}
.xans-board-movement li {
    overflow: hidden;
    padding: 0 20px;
    border-bottom: 1px solid #f4f4f4;
    line-height: 140%;
    color: #333;
}
.xans-board-movement li.next strong {
    background: url(https://res.kurly.com/pc/etc/old/images/board/ico_move_next.gif) no-repeat 0 15px;
}
.xans-board-movement li a, .xans-board-movement li strong {
    float: left;
    padding: 10px;
}
.xans-board-movement li strong {
    width: 6%;
    padding-left: 15px;
    border-right: 1px solid #f4f4f4;
    font-weight: 400;
    background: url(https://res.kurly.com/pc/etc/old/images/board/ico_move_prev.gif) no-repeat 0 15px;
}
colgroup {
    display: table-column-group;
}
col {
    width: 100px;
    text-align: -webkit-right;
    background-color: rgb(247, 247, 247);
}

col {
    display: table-column;
}
p {
    display: block;
    margin-block-start: 1em;
    margin-block-end: 1em;
    margin-inline-start: 0px;
    margin-inline-end: 0px;
}
</style>
</head>
<body>
	<jsp:include page="../default/header.jsp"></jsp:include>
<div id="Container">
		<div id="Contents">
			<div class="sub_title_area customer">
				<h1>고객센터 <span>무엇을 도와드릴까요?</span></h1>
			</div>

			<ul class="comm1sTabs threeSet customer">
				<li id="tabFaq"><a href="javascript:common.faq.getFaqList('99');">FAQ</a></li>
				<li id="tab1on1"><a href="javascript:common.link.moveQnaList();">1:1문의</a></li>
				<li id="tabNotice" class="on"><a href="javascript:counsel.NoticeDetail.goList();">공지사항</a></li>
			</ul>

			<!-- 게시글 상세내용 시작 -->
			<div class="layout-wrapper">
				<div class="xans-element- xans-myshop xans-myshop-couponserial ">
					<table width="100%" align="center" cellpadding="0" cellspacing="0">
						<tbody>
							<tr>
								<td>
									<table width="100%">
										<tbody>
											<!-- 제목,작성자,작성일 조회수 부분 -->
											<tr>
												<td>
													<table class="boardView" width="100%">
														<tbody>
															<tr>
																<th scope="row" style="border:none;">제목</th>
																<td>${board.notice_title }</td>
															</tr>
															<tr>
																<th scope="row">작성자</th>
																<td>${board.notice_id }</td>
															</tr>
															<tr class="etcArea">
																<td colspan="2">
																	<ul>
																		<li class="date ">
																			<strong class="th">작성일</strong>
																			<span class="td"><fmt:formatDate value="${board.notice_date }" pattern="yy-MM-dd" /></span>
																		</li>
																		<li class="hit ">
																			<strong class="th">조회수</strong>
																			<span class="td">${board.notice_hit }</span>
																		</li>
																	</ul>
																</td>
															</tr>
														</tbody>
													</table>
												</td>
											</tr>
											<!--// 제목,작성자,작성일 조회수 부분 끝-->
											<tr>
												<td align="right" class="eng" style="padding:5px;"> </td>
											</tr>
											<tr>
												<td style="padding:10px;" height="200" valign="top" id="contents">
													<table width="100%" style="table-layout:fixed">
														<!-- 게시글 작성된 부분 -->
														<tbody>
															<tr>
																<!-- id...? -->	
																<td class="board_view_content" style="word-wrap:break-word;word-break:break-all" id="contents_1318" valign="top"><div>
																	<span style="font-family: Arial; font-size: 12px; white-space: pre-wrap; background-color: rgb(255, 255, 255);">
																	</span>
																	</div>
																	<div>${board.notice_content } 
																		
																		<span style="font-family: Arial; font-size: 12px; white-space: pre-wrap; background-color: rgb(255, 255, 255);"><br></span>
																	</div>
																	<!-- <div class="contEditor">
																		안녕하세요, 올리브영입니다.<br>
																		<br>
																		올리브영 명지대점 리로케이션으로 인한 영업 중단 안내 드립니다.<br>
																		<br>
																		2022년 2월 22일 (화) 22시 30분까지 영업 후, 2022년 2월 28일 (월) 리로케이션 오픈 예정입니다<br>
																		<br>
																		더 나은 모습으로 찾아 뵙겠습니다.<br>
																		<br>
																		□ 인근 매장 (교환, 환불 가능) : 가재울뉴타운점
																	</div>
																	 -->
																</td>
															</tr>
														</tbody>
														<!-- //게시글 작성된 부분 끝-->
													</table>
												</td>
											</tr>
											<tr>
												<td height="1" bgcolor="#f4f4f4"></td>
											</tr>
										</tbody>
									</table>
									<br>
									<!-- 목록 버튼 시작-->
									<table width="100%" style="table-layout:fixed" cellpadding="0" cellspacing="0">
										<tbody>
											<tr>
												<td align="center" style="padding-top:10px;">
													<table width="100%">
														<tbody>
															<tr>
																<td align="right">
																	<a href="/foreveryoung/notice.do">
																		<span class="bhs_button yb" style="float:none;">목록</span>
																	</a>
																</td>
															</tr>
														</tbody>
													</table>
												</td>
											</tr>
										</tbody>
									</table>
									<!-- // 목록 버튼 끝 -->
									<!-- 이전글 다음글 시작 -->
									<div class="xans-element- xans-board xans-board-movement-1002 xans-board-movement xans-board-1002 ">
										<ul>
											<li class="prev ">
												<strong>이전글</strong>
												<a href="#"></a>
												<a href="#">
													올리브영 온라인몰 시스템 점검 공지(2/22)
												</a>
											</li>
											<li class="next ">
												<strong>다음글</strong>
												<a href="#"></a>
												<a href="#">
													올리브영 울산대로점 리뉴얼로 인한 영업 중단 안내
												</a>
											</li>
										</ul>
									</div>
									<!-- //이전글 다음글 끝 -->
									<br>
									<table width="100%" cellpadding="5" cellspacing="0">
										<colgroup>
											<col width="100" align="right" bgcolor="#f7f7f7">
											<col style="padding-left:10px">
										</colgroup>
									</table>
									<p>
										<br>
										<!-- 
										<textarea id="examC_1318" style="display:none;width:100%;height:300px">"<div style="font-variant-numeric: normal; font-variant-east-asian: normal; font-stretch: normal; line-height: normal; margin: 0px;"><font face="Font" style="font-variant-numeric: normal; font-variant-east-asian: normal; font-stretch: normal; line-height: normal; margin: 0px;">고객님, 안녕하세요.</font></div><div style="font-variant-numeric: normal; font-variant-east-asian: normal; font-stretch: normal; line-height: normal; margin: 0px;"><font face="Font" style="font-variant-numeric: normal; font-variant-east-asian: normal; font-stretch: normal; line-height: normal; margin: 0px;"><br></font></div><div style="font-variant-numeric: normal; font-variant-east-asian: normal; font-stretch: normal; line-height: normal; margin: 0px;"><font style="font-variant-numeric: normal; font-variant-east-asian: normal; font-stretch: normal; line-height: normal; margin: 0px;"><span style="font-variant-numeric: normal; font-variant-east-asian: normal; font-stretch: normal; line-height: normal; margin: 0px;"><b style="font-family: Font;">"</b></span></font><span style="font-variant-numeric: normal; font-variant-east-asian: normal; font-stretch: normal; line-height: normal; margin: 0px;"><span style="font-weight: bold; font-family: Font;">[잘크톤] 멀티쑥쑥 츄어블정 포도맛 외 4건</span><font face="Font"><b>"&nbsp;</b></font></span><font face="Font">가격을 조정하게 되어 안내드립니다.&nbsp;</font></div><div style="font-variant-numeric: normal; font-variant-east-asian: normal; font-stretch: normal; line-height: normal; margin: 0px;"><font face="Font" color="#222222" style="font-variant-numeric: normal; font-variant-east-asian: normal; font-stretch: normal; line-height: normal; margin: 0px;"><br style="font-variant-numeric: normal; font-variant-east-asian: normal; font-stretch: normal; line-height: normal; margin: 0px;"></font></div><div style="font-variant-numeric: normal; font-variant-east-asian: normal; font-stretch: normal; line-height: normal; margin: 0px;"><font color="#222222" style="font-variant-numeric: normal; font-variant-east-asian: normal; font-stretch: normal; line-height: normal; margin: 0px;"><b># 가격인상 요인</b></font></div><div style="font-variant-numeric: normal; font-variant-east-asian: normal; font-stretch: normal; line-height: normal; margin: 0px;"><font color="#222222"><b>-&nbsp;원재료가격인상으로 인한 변경</b></font></div><div style="font-variant-numeric: normal; font-variant-east-asian: normal; font-stretch: normal; line-height: normal; margin: 0px;"><font color="#222222"><b><br></b></font></div><div style="font-variant-numeric: normal; font-variant-east-asian: normal; font-stretch: normal; line-height: normal; margin: 0px;"><div style="font-variant-numeric: normal; font-variant-east-asian: normal; font-stretch: normal; line-height: normal; margin: 0px;"><div style="font-variant-numeric: normal; font-variant-east-asian: normal; font-stretch: normal; line-height: normal; margin: 0px;">위의 사유로 공급가가 상승됨에 따라, 컬리에서도 부득이하게 일정부분 가격조정을 하게 된 점 양해 부탁드립니다.</div></div><div style="font-variant-numeric: normal; font-variant-east-asian: normal; font-stretch: normal; line-height: normal; margin: 0px;"><font face="Font" color="#222222" style="font-variant-numeric: normal; font-variant-east-asian: normal; font-stretch: normal; line-height: normal; margin: 0px;"><br></font></div><div><span style="font-variant-numeric: normal; font-variant-east-asian: normal; font-weight: 700; font-stretch: normal; line-height: normal;"><font face="Font"># 가격 조정시점</font></span></div><div><b style="font-family: Font;">&nbsp;- 2022년 2월 16일 (수) 오전 11시~</b></div><div><img src="data:image/png;base64,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…"</textarea>
										 -->
									</p>
								</td>
							</tr>
						</tbody>
					</table>		
				</div>
			</div>
			
			
		</div>
		
	</div>
	<jsp:include page="../default/footer.jsp"></jsp:include>
</body>
</html>