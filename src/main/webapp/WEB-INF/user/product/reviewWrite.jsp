<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
<%@ taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core" %>
<%@ taglib prefix="fmt" uri="http://java.sun.com/jsp/jstl/fmt" %>
<%@ taglib uri = "http://java.sun.com/jsp/jstl/functions" prefix = "fn" %>

<c:set var="path" value="${pageContext.request.contextPath}"/>	
<!DOCTYPE html>
<html>
<head>
<script src="http://code.jquery.com/jquery-3.5.1.min.js"></script>
<meta charset="UTF-8">
<title>상품상세페이지</title>
<link rel="stylesheet" type="text/css" href="${path }/css/board.css" />
<link rel="stylesheet" type="text/css" href="${path }/css/common.css" />
<link rel="stylesheet" type="text/css" href="${path }/css/contents.css" />
<link rel="stylesheet" type="text/css" href="${path }/css/curation.css" />
<link rel="stylesheet" type="text/css" href="${path }/css/global.css" />
<link rel="stylesheet" type="text/css" href="${path }/css/jquery.mCustomScrollbar.css" />
<link rel="stylesheet" type="text/css" href="${path }/css/pickup.css" />
<style type="text/css">
#wrap .layer_pop {
	background-color: #fff;
	border: 2px solid #737373
}

#wrap .layer_pop .btn_area {
	overflow: hidden;
	width: 100%;
	height: 25px;
	padding-right: 15px;
	background: #fff;
	line-height: 22px;
	border-top: 1px solid #737373
}

#wrap .layer_pop .btn_area a {
	display: block;
	padding: 0 10px;
	float: right;
	color: #404040
}
#header, #container, #content {
	position: relative
}
article, aside, details, figcaption, figure, footer, header, hgroup,
	main, menu, nav, section, summary {
	display: block
}
#main {
	border-bottom: 1px solid #f7f7f7
}
#content {
	min-width: 1050px;
	padding-bottom: 120px
}
#content {
	padding-bottom: 0
}
 .link a {
	position: absolute;
	right: 9px;
	top: -20px;
	padding-right: 15px;
	background: url(https://res.kurly.com/pc/ico/1806/ico_question.png)
		no-repeat 100% 4px;
	font-size: 12px;
	color: #949296;
	line-height: 20px
}
.section_write .layer_type  {
	overflow: hidden;
	position: absolute;
	right: 9px;
	top: -30px;
	padding-right: 15px;
	background: url(https://res.kurly.com/pc/ico/1806/ico_question.png)
		no-repeat 100% 4px;
	font-size: 12px;
	color: #949296;
	line-height: 20px
}

.section_write .layer {
	display: none;
	position: absolute;
	right: 0;
	top: -30px;
	width: 400px;
	height: 374px;
	padding: 20px;
	background-color: #fff;
	box-shadow: 0 0 20px 0 #dddfe1
}

.section_write .tit_layer {
	font-size: 16px;
	font-weight: 700;
	color: #666;
	line-height: 24px
}

.section_write .desc_layer {
	padding-top: 20px;
	font-size: 14px;
	color: #666;
	line-height: 22px
}

.section_write .list_layer {
	padding-top: 22px
}

.section_write .list_layer li {
	font-size: 14px;
	color: #666;
	line-height: 22px
}

.section_write .layer .btn_ok {
	display: block;
	width: 150px;
	height: 34px;
	margin: 14px auto 0;
	border: 0;
	background-color: #5f0080;
	font-size: 14px;
	color: #fff;
	line-height: 32px;
	letter-spacing: -.3px
}

.section_write .layer .btn_close {
	position: absolute;
	right: 20px;
	top: 20px;
	width: 17px;
	height: 17px;
	border: 0;
	background: url(https://res.kurly.com/pc/ico/1806/ico_layer_close.png)
		no-repeat 0 0
}

.section_write .goods_info {
	overflow: hidden;
	padding: 20px 15px;
	border-top: 2px solid #9bce26
}

.section_write .goods_info .thumb {
	float: left;
	width: 80px;
	margin-right: 25px;

}
.section_write .goods_info .thumb img{
	
    width: 85px;
    height: 85px;
}

.section_write .goods_info .desc {
	display: table;
	height: 104px;
	vertical-align: middle
}
.section_write .goods_info .desc .inner_desc {
	display: table-cell;
	vertical-align: middle
}

.section_write .goods_info .name_desc {
	font-size: 12px;
	font-weight: 700;
	color: #666;
	line-height: 18px
}

.section_write .goods_info .name_main {
	padding-top: 4px;
	font-size: 16px;
	color: #000;
	line-height: 24px
}

.section_write .write_board .tbl {
	border-bottom: 1px solid #dddfe1
}

.section_write .write_board th {
	border-top: 1px solid #dddfe1;
	background-color: #f7f7f7;
	font-size: 12px;
	color: #666
}

.section_write .write_board td {
	padding: 10px 0 10px 10px;
	border-top: 1px solid #dddfe1
}

.section_write .write_board .inp {
	width: 100%;
	height: 34px;
	padding: 0 10px;
	border: 1px solid #dddfe1;
	font-size: 12px;
	color: #000;
	line-height: 18px;
	outline: none
}

.section_write .write_board .inp.on {
	border: 1px solid #9bce26
}

.section_write .write_board .field_cmt {
	padding: 8px 10px 9px;
	border: 1px solid #dddfe1
}

.section_write .write_board .field_cmt.on {
	border: 1px solid #9bce26
}

.section_write .write_board textarea {
	overflow: hidden;
	width: 100%;
	min-height: 202px;
	border: 0;
	resize: none;
	font-size: 12px;
	color: #000;
	line-height: 18px;
	outline: none
}

.section_write .write_board .txt_count {
	font-size: 12px;
	color: #9bce26;
	line-height: 18px;
	text-align: right
}

.section_write .write_board .photo_add {
	padding-right: 100px
}

.section_write .write_board .photo_add:after {
	content: "";
	display: block;
	overflow: hidden;
	clear: both
}

.section_write .write_board .item_photo {
	display: none;
	position: relative;
	float: left;
	padding: 10px 20px 10px 0
}

.section_write .write_board .item_photo input[type=checkbox] {
	position: absolute;
	z-index: -1;
	left: 50%;
	top: 50%;
	opacity: 0
}

.section_write .write_board .photo {
	display: block;
	width: 80px;
	height: 80px;
	background-repeat: no-repeat;
	background-position: 50% 50%;
	background-size: cover
}

.section_write .write_board .btn_delete {
	position: absolute;
	right: 5px;
	top: -5px;
	width: 30px;
	height: 30px;
	border: 0;
	background: url(https://res.kurly.com/pc/ico/1806/ico_thumb_delete.png)
		no-repeat 50% 50%
}

.section_write .write_board .inner_photo input[type=file] {
	position: absolute;
	z-index: -1;
	left: 0;
	top: 0;
	width: 100%;
	height: 100%;
	font-size: 0;
	text-indent: -9999px;
	opacity: 0
}

.section_write .write_board .btn_upload {
	position: relative;
	float: left;
	width: 80px;
	height: 80px;
	margin: 10px 0;
	border: 1px solid #dddfe1;
	background: url(https://res.kurly.com/pc/ico/1806/img_add_thumb.png)
		no-repeat 50% 50%
}

.section_write .write_board .file_upload {
	position: absolute;
	left: 0;
	top: 0;
	width: 100%;
	height: 100%;
	font-size: 0;
	line-height: 0;
	text-indent: -9999px;
	opacity: 0;
	cursor: pointer
}

.section_write .write_board .file_count {
	position: relative
}

.section_write .write_board .file_count .txt_count {
	position: absolute;
	right: 11px;
	top: 0
}

.section_write .write_board .photo_notice {
	padding-bottom: 10px;
	font-size: 12px;
	color: #666;
	line-height: 18px
}

.section_write .link_inquire {
	padding: 20px 0 50px;
	font-size: 12px;
	color: #9bce26;
	line-height: 18px
}

.section_write .link_inquire a {
	padding: 0 9px 0 5px;
	background: url(https://res.kurly.com/pc/ico/1806/ico_arrow_6x10.png)
		no-repeat 100% 4px;
	font-weight: 700;
	color: #9bce26
}

.section_write .btn_reg {
	display: block;
	width: 200px;
	height: 48px;
	margin: 0 auto;
	border: 1px solid #9bce26;
	background-color: #9bce26;
	font-size: 14px;
	color: #fff;
	line-height: 46px
}

.section_write .btn_reg.btn_disabled {
	border: 1px solid #dddfe1;
	background-color: #fff;
	color: #dddfe1
}
.page_aticle {
	width: 1050px;
	top: 5%;
	transform: translateY(-5%);
	margin-left: -110px;
	
}

.page_aticle button, .page_aticle input, .page_aticle select,
	.page_aticle * {
	font-family: noto sans;
	font-weight: 400;
	letter-spacing: 0
}

.page_aticle fieldset {
	padding: 0;
	margin: 0;
	border: 0
}

.page_aticle caption, .page_aticle legend {
	display: none
}

.page_aticle.aticle_type2 {
	padding-top: 65px
}

.page_aticle.aticle_type2:after {
	content: "";
	display: block;
	overflow: hidden;
	width: 100%;
	clear: both
}

.page_aticle.aticle_type2 .page_section {
	float: right;
	width: 820px
}
.page_aticle .head_aticle {
	padding: 5px 0 34px
}

.page_aticle .head_aticle .tit {
	height: 36px;
	font-weight: 700;
	font-size: 24px;
	line-height: 36px;
	color: #333;
	letter-spacing: -.5px
}

.page_aticle .head_aticle .tit_sub {
	padding-left: 11px;
	font-size: 14px;
	color: #999;
	line-height: 20px;
	letter-spacing: -.3px;
	vertical-align: 3px
}

.page_aticle .head_section.fst {
	padding-top: 0
}

.page_aticle .head_section .tit {
	font-weight: 700;
	font-size: 16px;
	color: gray;
	line-height: 24px
}

.page_aticle .head_section .txt_sub {
	padding-left: 24px;
	font-size: 12px;
	color: #777;
	letter-spacing: -.2px
}

.page_aticle .head_type2 {
	overflow: hidden;
	width: 100%
}

.page_aticle .head_type2 .tit {
	float: left;
	font-size: 16px;
	color: gray
}

.page_aticle .head_type2 .desc {
	float: left;
	padding: 1px 0 0 19px;
	font-size: 13px;
	color: #939393
}

.page_aticle .no_data {
	padding: 50px 0;
	font-size: 13px;
	color: #757575;
	text-align: center
}

.page_aticle .list_type1 li {
	overflow: hidden;
	width: 100%
}

.page_aticle .list_type1 .ico {
	float: left;
	margin: 4px 3px 0 0
}

.page_aticle .list_type1 .txt {
	overflow: hidden;
	font-size: 14px;
	color: #333;
	line-height: 22px;
	letter-spacing: -.3px
}

.page_aticle .tbl {
	width: 100%
}

.page_aticle .tbl th, .page_aticle .tbl td {
	word-break: break-all
}

.page_aticle .tbl_type1 th {
	padding: 20px 0;
	border-top: 2px solid #333;
	font-weight: 700;
	font-size: 14px;
	line-height: 20px;
	color: #333;
	letter-spacing: -.5px
}

.page_aticle .tbl_type1 td {
	border-top: 1px solid #f4f4f4
}

.page_aticle .tbl_type1 tr:first-child td {
	border-top: 1px solid #333
}

.page_aticle .tbl_type2 {
	border-top: 2px solid #333;
	border-bottom: 1px solid #f4f4f4
}

.page_aticle .layout-pagination {
	font-size: 0
}

.page_aticle .layout-pagination a:hover {
	background-color: #f7f7f7
}

.page_aticle .layout-pagination a, .page_aticle .layout-pagination strong
	{
	font-weight: 700;
	font-size: 12px
}

.page_aticle .layout-pagination a {
	cursor: pointer
}

.page_aticle .layout-pagination-button:first-child {
	border-left: 0
}

.page_aticle .layout-pagination-first-page:first-child {
	border-left: 1px solid #ddd
}
.section_write .layer .btn_ok {
	display: block;
	width: 150px;
	height: 34px;
	margin: 14px auto 0;
	border: 0;
	background-color: #999;
	font-size: 14px;
	color: #fff;
	line-height: 32px;
	letter-spacing: -.3px
}
.section_write .btn_reg {
	display: block;
	width: 200px;
	height: 48px;
	margin: 0 auto;
	border: 1px solid #9bce26;
	background-color: #9bce26;
	font-size: 14px;
	color: #fff;
	line-height: 46px
}

.section_write .btn_reg.btn_disabled {
	border: 1px solid #dddfe1;
	background-color: #fff;
	color: #dddfe1
}
 .btn_area {
    text-align: center;
    margin-bottom: 40px;
}
 .btn_area .color1 {
    background-color: #fff;
    color: #999;
    border-color: #999;
}
.btn_area button {  
    display: inline-block;
    width: 170px;
    height: 50px;
    border-radius: 5px;
    line-height: 50px;
    border: 1px solid #999;
    font-size: 16px;
}
button {
    text-align: center;
    color: #fff;
}
button, input[type=submit] {
    border: 0;
    padding: 0;
    box-shadow: none;
    cursor: pointer;
}
button, input[type=submit] {
    font-family: Montserrat,-apple-system,NotoSansCJKkr,AppleSDGothicNeo,Roboto,sans-serif;
    font-weight: 700;
}
.btn_area .color2 {
    background-color: #9bce26;
    color: #fff;
    border-color: #9bce26;
}
 .btn_area button+button {
    margin-left: 3px;
}

</style>
</head>
<jsp:include page="../default/header.jsp" />
<body>
	
	
	<!-- 공지사항 시작 -->
	 <div id="Container">
		<!-- 공지사항 영역 전체 -->
		<div id="Contents"> 
			<!-- 고객센터 헤드라인부분 -->
			<div class="sub_title_area customer">
				<!-- ::before -->
				<h1>
					상품후기
					<span></span>
				</h1>
				<!-- ::after -->
			</div>
			<!-- //고객센터 헤드라인부분 끝-->
			 
			<%--<div id="wrap" class=""> --%>
				<%--<div id="container">  --%>
					<%--<div id="main">
						<div id="content"> --%>
			 
			 
			 
							<div class="page_aticle aticle_type2">
								<div class="page_aticle aticle_type2">
									<div class="page_section section_write">
										<div class="head_aticle">
											<h2 class="tit">후기 작성</h2>
										</div>
										<div class="head_section layer_type">
												<span class="link"><a href="#none">작성 시 유의 사항</a>
												</span>
												<div class="layer">
													<h4 class="tit_layer">후기 작성 시 유의사항</h4>
													<p class="desc_layer">
														포에버영은 믿을 수 있는 후기문화를 함께 만들어 가고자<br> 합니다. 따라서 후기 내용이 아래에 해당하는 경우에는 검토 후 <br> 비공개 조치될 수 있습니다.
													</p>
													<ul class="list-layer">
														<li>1. 욕설, 비난 등 럽체나 타인에게 불쾌한 내용을 작성한 경우</li>
														<li>2. 해당 상품과 무관한 내용이나 동일 문자의 반복 등 부적합한<br> 내용을 작성한 경우 </li>
														<li>3. 상품의 기능이나 효과 등에 오해의 소지가 있는 내용을<br> 작성한 경우</li>
														<li>4. 저작권,초상권 등 타인의 권리를 침해하는 이미지를 사용한<br> 경우</li>
													</ul>
													<button type="button" class="btn_ok">확인</button>
													<button type="button" class="btn_close">
														<span class="screen_out">레이어 딛기</span>
													</button>
												</div>
										</div>
							
										<form id="reviewForm" action="reviewProc.do" method="post">
											<%-- 로그인한 사용자가 해당상품을 구매했는지 안했는지가 중요 --%>
											<input type="hidden" name="user_id" value="${goods.user_id }" >
											<c:if test="${goods != null }">
												<input type="hidden" name="category_goods_serial" value="${goods.category_goods_serial }">
												<input type="hidden" name="category_first_serial" value="${goods.category_first_serial }">
												<input type="hidden" name="category_second_serial" value="${goods.category_second_serial }">
												<input type="hidden" name="category_third_serial" value="${goods.category_third_serial }">
												
											</c:if>
											<c:if test="${goods == null }">
												<input type="hidden" name="category_goods_serial" value="${update.category_goods_serial }">
												<input type="hidden" name="review_serial" value="${update.review_serial }">
												
											</c:if>
											<c:if test="${goods != null }">
												<input type="hidden" name="order_details_serial" value="${goods.order_details_serial }">
											</c:if>
											<div class="write_board">
												<!-- 상품 정보 -->
												<div class="goods_info">
														<%--상품 이미지 --%>
													<div class="thumb">
													<c:choose>
													<c:when test="${goods.category_goods_thum_img ne null }">
														<img src="${goods.category_goods_thum_img}" onerror="" alt="상품 이미지">
													</c:when>
													<c:otherwise>
														<img src="${update.category_goods_thum_img }" onerror="" alt="상품 이미지">
													</c:otherwise>
													</c:choose>
						 						</div>
												<%-- //상품 이미지 --%>
												<%--상품 브랜드및 이름 --%>
												<c:if test="${ goods != null}">
												<div class="desc">
													<div class="inner_desc">
														<div class="name_desc">${goods.category_goods_brand }</div>
														<div class="name_main">${goods.category_goods_name }</div>
													</div>
												</div>
												</c:if>
												<c:if test="${ update != null}">
												<div class="desc">
													<div class="inner_desc">
														<div class="name_desc">${update.category_goods_brand }</div>
														<div class="name_main">${update.category_goods_name }</div>
													</div>
												</div>
												</c:if>
												<%--//상품 브랜드및 이름 --%>
											</div>
											<!-- //상품 정보 -->	
											<!-- 후기 작성 입력 부분 -->
											<table class="tbl">
												<caption style="display:none;">후기 작성 입력상자</caption>
												<colgroup>
													<col style="width:110px;">
													<col style="width:auto">
												</colgroup>
												<tbody>
													<tr>
														<th>제목</th>
														<td><input type="text" name="review_title" placeholder="제목을 입력해주세요." class="inp" value="${update.review_title }"></td>
													</tr>
													<tr>
														<th>후기작성</th>
														<td>
															<div class="field_cmt">
																<textarea id="fieldCmt" name="review_content" cols="100" rows="10" placeholder="자세한 후기는 다른 고객의 구매에 많은 도움이 되며, 오해의 소지가 있는 내용을 작성시 검토 후 비공개 조치될 수 있습니다. 반품/환불 문의는 1:1문의로 가능합니다.">${update.review_content }</textarea>
																<p class="txt_count">
																	<span class="num">0</span>자 /최소 10자
																</p>
															</div>
														</td>
													</tr>
													<tr>
														<th>사진등록</th>
														<td>
															<div class="photo_add">
																<div class="inner_photo">
																	<div class="item_photo" id="photoZone" style="display:block;"><img src="${update.review_image_main }"></div>
																	<span class="" id="thisPoto"></span>
																</div>
																<label for="image"></label>
																<input type="file" name="image" class="btn_upload" onchange="setThumbnail(event)">
															</div>
															
															<div class="file_count">
																<p class="txt_count">
																	<span class="num">0</span>장 / 최대 8장
																</p>
															</div>
															<p class="photo_notice">구매한 상품이 아니거나 캡쳐 사진을 첨부할 경우, 통보없이 삭제 및 적립 혜택이 취소됩니다.</p> 
														</td>
													</tr>
												</tbody>
											</table>
											<p class="link_inquire">
												혹시 상품에 문제가 있으셨나요><a href="#">1:1문의하기</a>
											</p>
											<c:if test="${empty update }">
												<button type="submit" id="btnSubmit" class="btn_reg">등록하기</button>
											</c:if>
											<c:if test="${!empty update }">
												<div class="btn_area">
													<input type="hidden" id="review_serial2" value="${update.review_serial }">
													<button type="button" class="btn color1" id="btnGdasDel">삭제</button>
													<button type="button" class="btn color2" id="btnGdasReg">리뷰 수정 하기</button>
												</div>
											</c:if>
											<!-- //후기 작성 입력 부분 -->
										</div>
									</form>
								</div>
							</div>
				<%--	</div> --%>
					<%--</div>
				</div> --%>
			< </div> 
		
		<!-- //공지사항 영역 전체 끝 -->
		</div>  
	<!-- //공지사항 끝 -->
	</div> 

<jsp:include page="../default/footer.jsp"></jsp:include>
<script>
	
	$("#btnGdasReg").click(function(){
		$("#reviewForm").attr("action","reviewUpdate.do");
		$("#reviewForm").submit();
	});

		$("#btnGdasDel").click(function(){
			if(confirm('정말로 삭제하시겠습니까? 삭제한 리뷰는 복구가 불가능합니다!')){
				var review_serial2 = $("#review_serial2").val();
				$.ajax({
					type:"post",
					url: "reviewDelete.do",
					data : {review_serial2 : review_serial2},
					async: false,
					
					success : function(data){
						if(data == 1) {
							location.href="myPageReview.do";
						}
					}
				})
				
			}
		
	});
	
	</script>
</body>

</html>