<%@ page language="java" contentType="text/html; charset=UTF-8"
	pageEncoding="UTF-8"%>
<%@ taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core" %>
<c:set var="path" value="${pageContext.request.contextPath}"/>	
<!DOCTYPE html>
<html>
<head>
<script src="http://code.jquery.com/jquery-3.5.1.min.js"></script>
<script src="//t1.daumcdn.net/mapjsapi/bundle/postcode/prod/postcode.v2.js"></script>
<meta charset="UTF-8">
<title>modify2</title>
<link rel="stylesheet" type="text/css" href="${path }/css/join.css" />
<link rel="shortcut icon" href="https://fyawsbucket.s3.ap-northeast-2.amazonaws.com/favicon_logo.ico" type="image/x-icon" />
</head>

<script type="text/javascript">
function validateEmail(email){
	var emailReg = /^(([^<>()\[\]\.,;:\s@\"]+(\.[^<>()\[\]\.,;:\s@\"]+)*)|(\".+\"))@(([^<>()[\]\.,;:\s@\"]+\.)+[^<>()[\]\.,;:\s@\"]{2,})$/i;
	return emailReg.test(email);
}
function formUpdateSubmit(){
	var year = $("#birth_year").val();
	var mon = $("#birth_month").val();
	var day = $("#birth_day").val();
	$("#totalbirth").val(year+mon+day);
	
	
	if(document.frmMember.user_new_pw.value==""){
		alert("비밀번호를 입력하세요.");
		document.frmMember.user_new_pw.focus();
		return;
	}
	
	if(document.frmMember.user_new_pw_check.value==""){
		alert("비밀번호 확인을 입력하세요.");
		document.frmMember.user_new_pw_check.focus();
		return;
	}
	
	if(document.frmMember.user_new_pw.value != document.frmMember.user_new_pw_check.value){
		alert("비밀번호가 일치하지 않습니다.");
		document.frmMember.user_new_pw_check.focus();
		return;
	}
	
	if(document.frmMember.user_name.value==""){
		alert("이름을 입력하세요.");
		document.frmMember.user_name.focus();
		return;
	}
	
	if(document.frmMember.user_email.value==""){
		alert("이메일을 입력하세요.");
		document.frmMember.user_email.focus();
		return;
	}
	
	if(document.frmMember.user_phone.value==""){
		alert("전화번호를 입력하세요.");
		document.frmMember.user_phone.focus();
		return;
	} 
	
	
	
	document.frmMember.submit();
} 

</script>

<script>
function zip(){
	   var myAddress;
	   var myAddress2;
	   var myZipcode;
	   new daum.Postcode({
	      oncomplete:function(data){
	         myAddress=data.address;
	         myAddress2=data.address2;
	         myZipcode=data.zonecode;
	         $(".user_zipcode").val(myZipcode);
	         $(".user_address1").val(myAddress);
	         $(".user_address2").val(myAddress2);
	      }
	   }).open();
	}
</script>

<body class="member-join" oncontextmenu="return false" ondragstart="return false" onselectstart="return !disableSelection" style="">
	<jsp:include page="../default/header.jsp"></jsp:include>
	<div id=wrap>
		<div id="container">
			<div id="main">
				<div id="content">
					<div class="tit_page">
						<h2 class="tit">회원정보수정</h2>
					</div>
					
					<div class="page_aticle">
						<div class="type_form member_join ">
							<form id="form" name="frmMember" action="updateProc.do" method="post" onsubmit="formUpdateSubmit()" novalidate="">
								<input type="hidden" name="mode" value="joinMember">
								<input type="hidden" name="check_mobile" value="">
								<input type="hidden" name="auth_finish_code" value="">
								<input type="hidden" name="rncheck" value="">
								<input type="hidden" name="dupeinfo" value="">
								<input type="hidden" name="pakey" value="">
								<input type="hidden" name="foreigner" value="">
								<input type="hidden" name="passwordSkin" value="Y">
								<input type="hidden" name="private2" value="">
								<input type="hidden" name="private3" value="">
								<input type="hidden" name="return_url" value="">
								<p class="page_sub">
									
								</p>
								
								<table class="tbl_comm">
									<tbody>
										<!-- 아이디 -->
										<tr class="fst">
											<th>아이디</th>
											<td>
												<input type="text" name="user_id" value="${user.user_id}"  maxlength="16" required="" fld_esssential="" option="regId" label="아이디" placeholder=readonly="">
											
																								
                                 			</td>
										</tr>

										<!-- 새 비밀번호 -->
										<tr>
											<th>새 비밀번호</th>
											<td>
												<input type="password" name="user_new_pw" id="user_new_pw" required="" fld_esssential="" option="regPass" label="비밀번호" maxlength="16" class="reg_pw" placeholder="새 비밀번호를 입력해주세요">								
											</td>
										</tr>

										<!-- 새 비밀번호 확인-->
										<tr class="member_pwd">
											<th>새 비밀번호 확인</th>
											<td>
												<input type="password" name="user_new_pw_check" id="user_new_pw_check" required="" fld_esssential="" option="regPass" label="비밀번호" maxlength="16" class="confirm_pw" placeholder="비밀번호를 한번 더 입력해주세요">							
											</td>
										</tr>

										<!-- 이름 -->
										<tr>
											<th>이름</th>
											<td>
												<input type="text" name="user_name" value="${user.user_name }" required="" fld_esssential="" label="이름" placeholder="이름을 입력해주세요.">
											</td>
										</tr>

										<!-- 이메일 -->
										<tr>
											<th>이메일</th>
											<td>
												<input type="text" name="user_email" value="${user.user_email }" data-email="" size="30" required="" fld_esssential="" option="regEmail" label="이메일" placeholder="예: foreveryoung@fy.com">
												<input type="hidden" name="chk_email" required="" fld_esssential="" label="이메일중복체크">
													<a href="" onclick="#" style="text-decoration: none" class="btn default">중복확인</a>
											</td>
										</tr>

										<!-- 휴대폰 -->
										<tr class="field_phone">
											<th>휴대폰</th>
											<td>
												<div class="phone_num">
													<input type="text" value="${user.user_phone}" pattern="[0-9]*" name="user_phone" placeholder="숫자만 입력해주세요" class="inp">
													<input type="hidden" name="mobile[]" id="mobile0" value="222" required="" fld_esssential="" option="regNum" label="휴대폰">
													<input type="hidden" name="mobile[]" id="mobile1" value="2222" required="" fld_esssential="" option="regNum" label="휴대폰">
													<input type="hidden" name="mobile[]" id="mobile2" value="2222" required="" fld_esssential="" option="regNum" label="휴대폰">

													<button id="btn_cert" class="btn default disabled" type="button">인증번호 받기</button>
												</div>

												<div id="codeNum" class="code_num">
													<input type="text" name="auth_code" id="auth_code" value=""
														size="6" maxlength="6" pattern="[0-9]*" label="인증번호 확인"
														disabled="" class="inp_confirm"
														oninput="if(value.length>6)value=value.slice(0,6);$(this).val($(this).val().replace(/[^0-9]/g,''));">
													<button id="btn_cert_confirm" class="btn default"
														type="button">인증번호 확인</button>

													<p id="countdown" class="count_down"></p>
												</div>

												<p class="txt_guide">
													<span class="txt txt_case1"></span>
												</p>
											</td>
										</tr>
										
										

										<!--  주소 입력란 -->
										<tr>
											<th>
												주소 
												<span class="ico">
													*
													<span class="screen_out">필수항목</span>
												</span>
											</th>

											<td class="field_address">
												<input type="hidden" name="zonecode" id="zonecode" size="5" value="">
												<input type="hidden" name="zipcode[]" id="zipcode0" size="3" value="">
												<input type="hidden" name="zipcode[]" id="zipcode1" size="3" value="">
												<input type="hidden" name="deliPoli" id="deliPoli" size="1" value="">
												<input type="hidden" id="baseAddressType" name="base_address_type" value="">

												<div id="selectAddress">
													<input type="text" name="user_address1" id="addr" value="" readonly="readonly" label="주소">
													<input type="hidden" name="address" id="address" value="" required="" readonly="readonly" label="주소">
													<input type="hidden" name="road_address" id="road_address" required="" value="" label="주소">
												</div>
												<div id="addressSearch" class="search" onclick="zip()">
													<span id="addressNo" class="address_no" data-text="재검색">주소검색</span>
												</div>

												<div id="selectAddressSub">
													<input type="text" name="user_address2" id="address_sub"
														value="" class="byteTotext" placeholder="나머지 주소를 입력해주세요">
													<p id="delivery"></p>
												</div>
												
												<p class="txt_guide">
													<span class="txt txt_case1">
														배송지에 따라 상품 정보가 달라질 수 있습니다.
													</span>
												</p>
											</td>
										</tr>
										<tr>
											<th></th>
											<td>
												<div class="hid">
													우편번호&nbsp;&nbsp;
													<input id="user_zipcode" type="text" class = "user_zipcode" name="user_zipcode" maxlength="6" value="${userData.user_zipcode }"  />
												</div>
											</td>

										</tr>
										<tr>
											<th></th>
											<td>
												<div class="hid">
													주소&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;
													<input id="user_address1" type="text" class = "user_address1" name="user_address1" value="${userData.user_address1 }"/>
												</div>
											</td>
										</tr>
										<tr>
											<th></th>
											<td>
												<div class="hid">
													상세주소&nbsp;&nbsp;
													<input id="user_address2" type="text" class = "user_address2" name="user_address2" value="${userData.user_address2 }" />
												</div>
											</td>
										</tr>
										<!--  //주소 입력란 -->



										<!--  성별 선택 -->
										<tr class="select_sex">
											<th>성별</th>
											<td>
												<label class="">
													<input type="radio" name="user_gender" value="1"<c:if test="${userData.user_gender eq 'true' }">checked</c:if>><span class="ico"></span>남자
												</label>
												<label class="">
													<input type="radio" name="user_gender" value="0"<c:if test="${userData.user_gender eq 'false' }">checked</c:if>><span class="ico"></span>여자
												</label>																																								
											</td>
										</tr>

										<!--  생년월일 -->
										<tr class="birth field_birth">
											<th>생년월일</th>

											<td>
												<div class="birth_day">
													<!--  년도 입력 부분 -->
													<input type="text" name="birth_year" id="birth_year"
														pattern="[0-9]*" value="${userData.user_year}" label="생년월일" size="4"
														maxlength="4" placeholder="YYYY"> <span	class="bar"></span>
													<!--  월 입력 부분 -->
													<input type="text" name="birth[]" id="birth_month"
														pattern="[0-9]*" value="${userData.user_month }" label="생년월일" size="2"
														maxlength="2" placeholder="MM"> <span class="bar"></span>
													<!--  일 입력 부분 -->
													<input type="text" name="birth[]" id="birth_day"
														pattern="[0-9]*" value="${userData.user_day }" label="생년월일" size="2"
														maxlength="2" placeholder="DD"> <input id="totalbirth" type="hidden" name="user_birth" />
												</div>

												<p class="txt_guide">
													<span class="txt bad"></span>
												</p>
											</td>
										</tr>

									</tbody>
								</table>
								
								<div id="#" class="form_footer">
									<button type="button" class="btn active btn_join"
										onclick="formUpdateSubmit()">정보수정</button>
								</div>
								
								
								
							</form>
						</div>
					</div>
				</div>
			</div>
		</div>
	</div>
	<jsp:include page="../default/footer.jsp"></jsp:include>
</body>
</html>