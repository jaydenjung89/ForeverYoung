<%@ page language="java" contentType="text/html; charset=UTF-8"
	pageEncoding="UTF-8"%>
<%@ taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core" %>	
<!DOCTYPE html>
<html>
<head>
<meta charset="UTF-8">
<title>상품 Q&A</title>
<link rel="stylesheet" type="text/css" href="${path }/css/board.css" />
<link rel="stylesheet" type="text/css" href="${path }/css/common.css" />
<link rel="stylesheet" type="text/css" href="${path }/css/contents.css" />
<link rel="stylesheet" type="text/css" href="${path }/css/curation.css" />
<link rel="stylesheet" type="text/css" href="${path }/css/global.css" />
<link rel="stylesheet" type="text/css" href="${path }/css/jquery.mCustomScrollbar.css" />
<link rel="stylesheet" type="text/css" href="${path }/css/pickup.css" />
</head>
<script type="text/javascript">
function deleteconfirm(){
	if(confirm("정말 삭제하시겠습니까?")==true){
		document.confirmDelete.submit();
	
	}else{
		return;
	}
}
</script>
<body>
	<jsp:include page="../default/header.jsp"></jsp:include>
	<div id="Container">
	
		<!-- #Contents -->
		<div id="Contents">
			<div class="sub_title_area customer">
				<h1>
					Q&A <span> 제품에 해당하는 문의를 해주세요.</span>
				</h1>
			</div>

			

			<!-- 등록 게시판 -->
			<form name="insert" id="cnslRegForm" action="insertGoodsQna.do" method="POST">
				<input type="hidden" name="user_id" value="${userId}">
				<c:if test="${getPersonalQna !=null }">
					<input type="hidden" name="qna_personal_serial" value="${getPersonalQna.qna_personal_serial}"/>
				</c:if>
			<table class="board-write-1s mgT40">
				
				<colgroup>
					<col style="width: 25%;">
					<col style="width: 75%;">
				</colgroup>
			
				<tbody>
				
					<tr>
						<th scope="col"><label for="TypeInquiry">문의유형</label></th>
						<td>
						<c:if test="${goodsqnaboard==null}">
							<select id="cnslLrgCate" name="qna_personal_category" title="문의유형 항목을 선택하세요" style="width: 192px;">							
								
								<option value="상품문의">상품문의</option>
							
							</select>
						</c:if>
						<c:if test="${goodsqnaboard !=null}">
							<select id="cnslLrgCate" name="qna_personal_category" title="문의유형 항목을 선택하세요" style="width: 192px;">							
			
								<option value="상품문의" selected="selected">상품문의</option>
								
							</select>
						</c:if>
						</td>
					</tr>
					
					<!-- 문의상품 -->

					
			
					<tr id="recommFaqList" style="display: table-row;">
						<th scope="col">상품명</th>
						<td>
						<c:forEach var="goodsqna" items="${goodsqnaboard}" varStatus="num">
							<input type="hidden" name="qna_goods_serial" value="${goodsqna.qna_goods_serial}"/> 
							<div class="list-customer">
								<ul class="faq_list">
									<li>
										${goodsqna.qna_goods_name}				
									</li>
								</ul>
							</div>
						
						</c:forEach>
						
						</td>
					</tr>
					
					<!-- 문의내용 -->
					<!-- 문의유형 1,2차를 모두 선택해야 입력 활성화 됨 -->
					<tr class="textarea">
						<th scope="col">
							<label for="InputTextarea">내용</label></th>
						<td>					
						
							<textarea id="InputTextarea" name="qna_personal_content" cols="5" rows="1" placeholder="Q&A 게시판에서는 고객님의 정보 확인이 어려우므로 배송문의 등은 1:1 게시판 이용 부탁드립니다.(250자 이내)" style="width: 98%; height: 280px;"></textarea>
						
						
							
						</td>
					</tr>
					
					
					

				</tbody>
			</table>
			
			<!-- //등록 게시판 -->

			<!-- 1:1문의 등록, 취소 버튼 -->
			
			
			<div class="area1sButton pdT30">
				<input type="submit" id="cnslSubmit" class="btnGreen" value="등록" 
				style="width: 150px; height: 50px; background-color: #9bce26; padding: 11px 0 9px; 
				font-size: 18px; line-height: 30px; border-radius: 5px; color:#fff"/>
				<a href="" onclick="history.go(-1)" id="cnslCancel" class="btnGray">취소</a>
			</div>
			
			
			
		</form>
		</div>
		<!-- //#Contents -->
	</div>
	<jsp:include page="../default/footer.jsp"></jsp:include>
<script>
$("#cnslSubmit").click(function(){
	$("form").attr("action", "insertPersonalQna.do");
});
$("#cnslUpdate").click(function(){
	$("form").attr("action", "updatePersonalQna.do");
});

</script>	
</body>
</html>