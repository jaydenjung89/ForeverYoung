<%@ page language="java" contentType="text/html; charset=UTF-8"
	pageEncoding="UTF-8"%>
<%@ taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core" %>
<%@ taglib prefix="fmt" uri="http://java.sun.com/jsp/jstl/fmt" %>
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
<link rel="shortcut icon" href="https://fyawsbucket.s3.ap-northeast-2.amazonaws.com/favicon_logo.ico" type="image/x-icon" />
<style>
.page_aticle.aticle_type2 .page_section {
    float: right;
    width: 820px;
}
.page_aticle.aticle_type2 {
    padding-top: 65px;
}
.page_aticle {
    width: 1050px;
    margin: 0 auto;
}
div, th, td, li, dt, dd, p {
    word-break: break-all;
}

div {
    display: block;
}

.page_aticle button, .page_aticle input, .page_aticle select, .page_aticle * {
    font-family: noto sans;
    font-weight: 400;
    letter-spacing: 0;
}
*, *:after, *:before {
    -webkit-box-sizing: border-box;
    -moz-box-sizing: border-box;
    box-sizing: border-box;
    margin: 0;
    padding: 0;
}

form {
    display: block;
    margin-top: 0em;
}
.notice .layout-pagination{margin: 0}
.eng2{color: #939393}
.xans-board-listheader{font-size:12px}
            


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
td, th {
    padding: 0;
}

td {
    display: table-cell;
    vertical-align: inherit;
}

.xans-myshop-couponserial {
    padding-bottom: 20px;
}

.xans-board-listheader.jh {
    border-bottom: 1px solid #f4f4f4;
}
.xans-board-listheader {
    font-size: 12px;
}
.xans-board-listheader {
    border-top: 2px solid #522772;
    font-size: 13px;
    line-height: 140%;
}

thead {
    display: table-header-group;
    vertical-align: middle;
    border-color: inherit;
}

.xans-board-listheader th {
    padding: 20px 0;
    vertical-align: middle;
    font-size: 12px;
}

tbody {
    display: table-row-group;
    vertical-align: middle;
    border-color: inherit;
}
.xans-board-listheader tbody tr:first-child td {
    border-top: 1px solid #333;
}
.xans-board-listheader.jh tr td {
    padding: 20px 0;
}
.xans-board-listheader tr td {
    padding: 12px;
    border-top: 1px solid #f4f4f4;
    text-align: center;
    vertical-align: middle;
    word-wrap: break-word;
}
.xans-board-listheader td a {
    color: #555;
}
a {
    background-color: transparent;
    text-decoration: none;
    color: inherit;
}
/*a:-webkit-any-link {
    color: -webkit-link;
    cursor: pointer;
    text-decoration: underline;
}
*/
</style>
</head>
<body>
	<jsp:include page="../default/header.jsp"></jsp:include> 
	
	<!-- ???????????? ?????? -->
	<div id="Container">
		<!-- ???????????? ?????? ?????? -->
		<div id="Contents">
			<!-- ???????????? ?????????????????? -->
			<div class="sub_title_area customer">
				<!-- ::before -->
				<h1>
					????????????
					<span>????????? ???????????????????</span>
				</h1>
				<!-- ::after -->
			</div>
			<!-- //???????????? ?????????????????? ???-->
			<!-- FAQ, 1:1??????, ???????????? ???????????? ??????????????? -->
			<ul class="comm1sTabs threeSet customer">
				<li id="tabFaq">
					<a href="FAQ.do">FAQ</a>
				</li>
				<li id="tab1on1">
					<a href="oneqmain.do">1:1??????</a>
				</li>
				<li id="tabNotice" class="on">
					<!-- ::before -->
					<a href="getNotice.do" title="?????????">????????????</a>
				</li>
			</ul>
			<!-- //FAQ, 1:1??????, ???????????? ???????????? ???????????? -->
			
			<!-- ????????? ?????? ??? ???????????? ?????? ?????? -->
			<!-- <div id="TabsOpenArea">  -->
			<div class="page_aticle aticle type2">
				<div class="page_section">
				<!-- ????????? ?????? ?????? -->
				<form name="frmList"  onsubmit="" >
					<input type="hidden" name="id" value="notice">
					
					<table width="100%" align="center" cellpadding="0" cellspacing="0">
						<tbody>
							<tr>
								<td>
									<div class="xans-element- xans-myshop xans-myshop-couponserial ">
										<table width="100%" class="xans-board-listheader jh" cellpadding="0" cellspacing="0">
											<thead>
												<tr>
													<th>??????</th>
													<th>??????</th>
													<th>?????????</th>
													<th>?????????</th>
													<th>??????</th>
												</tr>
											</thead>
											<tbody>
												<c:forEach var="board" items="${board }">
													<!-- ????????? 1 ?????? -->
													<tr>
													
														<!-- ?????? -->
														<td width="50" nowrap align="center"><c:out value="${board.notice_serial }"></c:out> </td>
														<!-- ?????? -->
														<td style="padding-left:10px;text-align:left; color:##9bce26">
															<a href="notice_detail.do?notice_serial=${board.notice_serial }">
																<b><c:out value="${board.notice_title }"></c:out></b>
															</a>
															<b> </b>
														</td>
														<!-- ????????? -->
														<td width="100" nowrap align="center" ><c:out value="${board.notice_id }"></c:out></td>
														<!-- ????????? -->
														<td width="100" nowrap align="center" class="eng2"><fmt:formatDate value="${board.notice_date }" pattern="yy-MM-dd" /></td>
														<!-- ?????? -->
														<td width="30" nowrap align="center" class="eng2"><c:out value="${board.notice_hit }"></c:out></td>
													</tr>
												</c:forEach>
												<!-- //????????? 1??? -->
												<!-- ????????? 2 ?????? -->
												<!--  <tr>
													
													<td width="50" nowrap align="center"> 1133 </td>
													
													<td style="padding-left:10px;text-align:left; color:#9bce26">
														<a href="/foreveryoung/notice_detail.do">
															<b>???????????? ???????????? ????????????????????? ?????? ?????? ?????? ??????</b>
														</a>
														<b> </b>
													</td>
													
													<td width="100" nowrap align="center" >ForeverYoung</td>
													
													<td width="100" nowrap align="center" class="eng2">2022-02-20</td>
													
													<td width="30" nowrap align="center" class="eng2">30000</td>
												</tr>
												-->
												<!-- //????????? 2 ??? -->
											</tbody>
										</table>
										
										
										<!-- ????????? ???????????? ?????? ?????? -->
										<div class="pageing">
											<strong title="?????? ?????????">1</strong>
											<a href="javascript:void(0);" data-page-no="2">2</a>
											<a href="javascript:void(0);" data-page-no="3">3</a>
											<a href="javascript:void(0);" data-page-no="4">4</a>
										</div>
										<!-- ??????, 2???????????? ????????????  
											<a href="javascript:void(0);" data-page-no="1">1</a>
											<strong title="?????? ?????????">2</strong>
											<a href="javascript:void(0);" data-page-no="3">3</a>
											<a href="javascript:void(0);" data-page-no="4">4</a>
			    							??? ??????!
										-->
										<!-- //????????? ???????????? ?????? ??? -->
									</div>
								</td>
							</tr>
						</tbody>
					
					</table>
				</form>
				<!--//????????? ??? -->
			</div>
		</div>
		</div>	
	</div>
	
	<jsp:include page="../default/footer.jsp"></jsp:include> 
</body>
</html>