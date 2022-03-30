<%@ page language="java" contentType="text/html; charset=UTF-8"
	pageEncoding="UTF-8"%>
<%@ taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core" %>	
<!DOCTYPE html>
<html>
<head>
<meta charset="UTF-8">
<title>1:1 문의</title>
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
					고객센터 <span>무엇을 도와드릴까요?</span>
				</h1>
			</div>

			<!-- FAQ, Qna, 공지사항 탭 선택 메뉴 -->
			<ul class="comm1sTabs threeSet customer">
				<li id="tabFaq"><a href="FAQ.do">FAQ</a></li>
				<li id="tab1on1" class="on"><a href="#" title="선택됨">1:1문의</a></li>
				<li id="tabNotice"><a href="#">공지사항</a></li>
			</ul>

			<!-- 등록 게시판 -->
			<form name="insert" id="cnslRegForm" action="insertPersonalQna.do" method="POST" enctype = "multipart/form-data">
				<input type="hidden" name="user_id" value="${user.user_id}">
				<input type="hidden" name="user_name" value="${user.user_name}">
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
						<c:if test="${getPersonalQna==null}">
							<select id="cnslLrgCate" name="qna_personal_category" title="문의유형 항목을 선택하세요" style="width: 192px;">							
								<option value="">선택해주세요</option>
								<option value="온라인몰">온라인몰</option>
								<option value="오늘드림">오늘드림</option>
								<option value="배송지연/불만">배송지연/불만</option>
								<option value="반품문의">반품문의</option>
								<option value="환불문의">환불문의</option>
								<option value="주문결제문의">주문결제문의</option>
								<option value="회원정보문의">회원정보문의</option>
								<option value="취소문의">취소문의</option>
								<option value="교환문의">교환문의</option>
								<option value="상품정보문의">상품정보문의</option>
								<option value="기타문의">기타문의</option>
							</select>
						</c:if>
						<c:if test="${getPersonalQna !=null}">
							<select id="cnslLrgCate" name="qna_personal_category" title="문의유형 항목을 선택하세요" style="width: 192px;">							
								<option value="온라인몰" <c:if test="${getPersonalQna.qna_personal_category eq '온라인몰'}">selected="selected"</c:if>>온라인몰</option>
								<option value="오늘드림" <c:if test="${getPersonalQna.qna_personal_category eq '오늘드림'}">selected="selected"</c:if>>오늘드림</option>
								<option value="배송지연/불만" <c:if test="${getPersonalQna.qna_personal_category eq '배송지연/불만'}">selected="selected"</c:if>>배송지연/불만</option>
								<option value="반품문의" <c:if test="${getPersonalQna.qna_personal_category eq '반품문의'}">selected="selected"</c:if>>반품문의</option>
								<option value="환불문의" <c:if test="${getPersonalQna.qna_personal_category eq '환불문의'}">selected="selected"</c:if>>환불문의</option>
								<option value="주문결제문의" <c:if test="${getPersonalQna.qna_personal_category eq '주문결제문의'}">selected="selected"</c:if>>주문결제문의</option>
								<option value="회원정보문의" <c:if test="${getPersonalQna.qna_personal_category eq '회원정보문의'}">selected="selected"</c:if>>회원정보문의</option>
								<option value="취소문의" <c:if test="${getPersonalQna.qna_personal_category eq '취소문의'}">selected="selected"</c:if>>취소문의</option>
								<option value="교환문의" <c:if test="${getPersonalQna.qna_personal_category eq '교환문의'}">selected="selected"</c:if>>교환문의</option>
								<option value="상품정보문의" <c:if test="${getPersonalQna.qna_personal_category eq '상품정보문의'}">selected="selected"</c:if>>상품정보문의</option>
								<option value="기타문의" <c:if test="${getPersonalQna.qna_personal_category eq '기타문의'}">selected="selected"</c:if>>기타문의</option>
							</select>
						</c:if>
						</td>
					</tr>
					
					<!-- 문의상품 -->

					
					<!-- 혹시 이게 궁금하세요? -->
					<!-- 문의유형 1차 선택시 활성화됨 -->
					<tr id="recommFaqList" style="display: table-row;">
						<th scope="col">제목</th>
						<td>
						<c:if test="${getPersonalQna==null }">
							<div class="list-customer">
								<ul class="faq_list">
									<li>
										<input type="text" name="qna_personal_title" style="width:98%" value="" placeholder="제목을 입력해주세요."/>
									</li>
								</ul>
							</div>
						</c:if>	
						<c:if test="${getPersonalQna!=null }">
							<div class="list-customer">
								<ul class="faq_list">
									<li>
										<input type="text" name="qna_personal_title" style="width:98%" value="${getPersonalQna.qna_personal_title}"/>
									</li>
								</ul>
							</div>
						</c:if>	
						</td>
					</tr>
					
					<!-- 문의내용 -->
					<!-- 문의유형 1,2차를 모두 선택해야 입력 활성화 됨 -->
					<tr class="textarea">
						<th scope="col">
							<label for="InputTextarea">내용</label></th>
						<td>					
						<c:if test="${getPersonalQna==null}">
							<textarea id="InputTextarea" name="qna_personal_content" cols="5" rows="1" placeholder="문의내용을 입력해주세요.(2000자 이내)" style="width: 98%; height: 280px;"></textarea>
						</c:if>
						<c:if test="${getPersonalQna!=null}">
							<textarea id="InputTextarea" name="qna_personal_content" cols="5" rows="1" placeholder="문의내용을 입력해주세요.(2000자 이내)" style="width: 98%; height: 280px;">${getPersonalQna.qna_personal_content}</textarea>
						</c:if>	
							<!-- 첨부파일 올리기 -->
							<label for="inputFile">
								<!-- <button type="button" name = "uploadFile" id="btnFile" class="file">첨부파일</button> -->
								<input type = "file" name = "uploadFile" value = "첨부파일" />
							</label> 
							
							<input type="file" id="inputFile" name="uploadFile" class="btnFileAdd" value="첨부파일" title="첨부파일 선택" style="display: none;">
							<!-- <input type="file" id="inputFile" name="cnslFile" class="btnFileAdd" value="첨부파일" title="첨부파일 선택" style="display: none;"> -->
							<input type="hidden" name="fileName" id="cnslFileName" value="">
							<span id="fileName" class="file" style="display: none;"><span></span>
								<!-- 첨부파일 삭제버튼 -->
								<button type="button" id="btnFileDelete" class="ButtonDelete">삭제</button></span>
							<span class="txt">5MB 이하의 이미지 파일 (JPG, PNG, GIF) 1개를 첨부하실 수 있습니다.</span>
						</td>
					</tr>
					
					
					<!-- 답변등록알림(선택) -->
					<tr class="notice">
						<th scope="col">답변등록 알림(선택)</th>
						<c:if test="${getPersonalQna==null}">
						<td>
							<ul>
								<li>
									<!-- SMS 체크 여부 -->
									<input type="checkbox" id="NoticeSms" value="Y" name="smsRcvYn" class="chkSmall" checked="checked">
									<label for="NoticeSms">SMS</label>
									<input type="text" class="sms" name="qna_personal_phone" value="${user.user_phone }" maxlength="11" placeholder="-없이 휴대폰번호 입력해주세요.(11자리)" style="width: 300px;">
								</li>
									
								<li>
									<!-- 이메일 체크 여부 -->
									<input type="checkbox" id="NoticeEmail" name="emailRcvYn" value="Y" class="chkSmall">
									<label for="NoticeEmail">E-mail</label>
									<input type="text" class="email" name="qna_personal_email" placeholder="email주소 입력 해 주세요." style="width: 300px;" value="${user.user_email }">
								</li>
							</ul>
						</td>
						</c:if>
						<c:if test="${getPersonalQna!=null}">
						<td>
							<ul>
								<li>
									<!-- SMS 체크 여부 -->
									<input type="checkbox" id="NoticeSms" value="Y" name="smsRcvYn" class="chkSmall" checked="checked">
									<label for="NoticeSms">SMS</label>
									<input type="text" class="sms" name="qna_personal_phone" value="${getPersonalQna.qna_personal_phone }" maxlength="11" placeholder="-없이 휴대폰번호 입력해주세요.(11자리)" style="width: 300px;">
								</li>
									
								<li>
									<!-- 이메일 체크 여부 -->
									<input type="checkbox" id="NoticeEmail" name="emailRcvYn" value="Y" class="chkSmall">
									<label for="NoticeEmail">E-mail</label>
									<input type="text" class="email" name="qna_personal_email" placeholder="email주소 입력 해 주세요." style="width: 300px;" value="${getPersonalQna.qna_personal_email }">
								</li>
							</ul>
						</td>
						</c:if>
					</tr>

				</tbody>
			</table>
			
			<!-- //등록 게시판 -->

			<!-- 1:1문의 등록, 취소 버튼 -->
			<c:if test="${getPersonalQna==null }">
			<div class="area1sButton pdT30">
				<input type="submit" id="cnslSubmit" class="btnGreen" value="등록" 
				style="width: 150px; height: 50px; background-color: #9bce26; padding: 11px 0 9px; 
				font-size: 18px; line-height: 30px; border-radius: 5px; color:#fff"/>
				<a href="oneqmain.do" id="cnslCancel" class="btnGray">취소</a>
			</div>
			</c:if>
			<c:if test="${getPersonalQna!=null }">
			<div class="area1sButton pdT30">
				<input type="submit" id="cnslUpdate" class="" formaction="updatePersonalQna.do" formmethod="POST" value="수정" style="width: 150px; 
				height: 50px; background-color: #00c4b5; padding: 11px 0 9px; 
				font-size: 18px; line-height: 30px; border-radius: 5px; color:#fff" />
				<input type="submit" name="confirmDelete" id="cnslDelete" class="" formaction="deletePersonalQna.do"formmethod="POST"  value="삭제" onClick="deleteconfirm()" style="width: 150px; 
				height: 50px; background-color: #f27370; padding: 11px 0 9px; 
				font-size: 18px; line-height: 30px; border-radius: 5px; color:#fff" />
				<a href="oneqmain.do" id="cnslCancel" class="btnGray">취소</a>
			</div>
			</c:if>
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