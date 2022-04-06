<%@ page language="java" contentType="text/html; charset=UTF-8"
	pageEncoding="UTF-8"%>
<%@ taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core" %>
<c:set var="path" value="${pageContext.request.contextPath}"/>	
<!DOCTYPE html>
<html>
<head>
<script src="http://code.jquery.com/jquery-3.5.1.min.js"></script>
<meta charset="UTF-8">
<title>회원가입</title>
<link rel="stylesheet" type="text/css" href="${path }/css/join.css?after" />
<link rel="shortcut icon" href="https://fyawsbucket.s3.ap-northeast-2.amazonaws.com/favicon_logo.ico" type="image/x-icon" />
<script src="//t1.daumcdn.net/mapjsapi/bundle/postcode/prod/postcode.v2.js"></script>
<style>
.hid{
	display:none;
}
</style>
</head>

<script type="text/javascript">

function div_show(){
	$("div.layer layer_agreement");		//팝업 보여지는 div 
	$("#pop_cont").show();				//팝업 div 보여지기
	$("#dim").css("display","block"); 	//뒷배경
	$("body").css("overflow","hidden"); //스크롤
}
function div_hide(){
	$("#pop_cont").hide();
	$("body").css("overflow","auto");
	$("#dim").css("display","none");
}

function div_show1(){
	$("div.layer layer_agreement");		//팝업 보여지는 div 
	$("#pop_cont1").show();				//팝업 div 보여지기
	$("#dim").css("display","block"); 	//뒷배경
	$("body").css("overflow","hidden"); //스크롤
}
function div_hide1(){
	$("#pop_cont1").hide();
	$("body").css("overflow","auto");
	$("#dim").css("display","none");
}

function zip(){
	var myAddress;
	var myZipcode;
	new daum.Postcode({
		oncomplete:function(data){
			myAddress=data.address;
			myZipcode=data.zonecode;
			$("#zip").val(myZipcode)
			$("#addr1").val(myAddress);
			$(".hid").attr("class",".addressShow");
		}
	}).open();
}
//체크박스 전체 선택
$(document).on("click", "#check_all", function () {
    $(this).parents(".check_view").find('label').find('input').prop("checked", $(this).is(":checked"));
});

// 체크박스 개별 선택
$(document).on("click", ".normal", function() {
    var is_checked = true;
   
    $(".check_view .normal").each(function(){
        is_checked = is_checked && $(this).is(":checked");
    });

    $("#check_all").prop("checked", is_checked);
});
function validateEmail(email){
	var emailReg = /^(([^<>()\[\]\.,;:\s@\"]+(\.[^<>()\[\]\.,;:\s@\"]+)*)|(\".+\"))@(([^<>()[\]\.,;:\s@\"]+\.)+[^<>()[\]\.,;:\s@\"]{2,})$/i;
	return emailReg.test(email);
}
function formJoinSubmit(){
	   //판별문
	   var year = $("#birth_year").val();
	   var mon = $("#birth_month").val();
	   var day = $("#birth_day").val();
	   $("#totalbirth").val(year+mon+day);
	   
	   if(document.frmMember.user_id.value==""){
	      alert("아이디를 입력하세요.");
	      document.frmMember.user_id.focus();
	      return;
	   }
	   if(document.frmMember.user_password.value==""){
	      alert("비밀번호를 입력하세요.");
	      document.frmMember.user_password.focus();
	      return;
	   }
	   if(document.frmMember.user_pw_check.value==""){
	      alert("비밀번호 확인을 입력하세요.");
	      document.frmMember.user_pw_check.focus();
	      return;
	   }
	   if(document.frmMember.user_password.value!=document.frmMember.user_pw_check.value){
	      alert("비밀번호를 다시 확인해 주세요.");
	      document.frmMember.user_pw_check.focus();
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
	   if(!validateEmail(document.frmMember.user_email.value)){
	      alert("올바른 이메일을 입력해 주세요.");
	      document.regForm.email.focus();
	      return;
	   }
	   if(${!KakaoJoin}){
	      if(document.frmMember.chk_email.value=="불가능"){
	         alert("중복된 이메일은 사용할 수 없습니다.");
	         document.frmMember.user_email.focus();
	         return;
	      }
	   }
	   if(document.frmMember.user_phone.value==""){
	      alert("전화번호를 입력하세요.");
	      document.frmMember.user_phone.focus();
	      return;
	   }
	   if($('input:checkbox[id="check_y1"]').is(":checked") != true || $('input:checkbox[id="check_y2"]').is(":checked") != true ){
		      alert("약관을 동의해주세요.");
		      return;
		   }
	   if(document.frmMember.okCerCheck.value=="불가능"){
	      alert("문자 인증을 해주세요.");
	      return;
	   } 
	   if(document.frmMember.user_zipcode.value==""){
	      alert("주소를 입력하세요.");
	      document.frmMember.user_zipcode.focus();
	      return;
	   }
	   if(document.frmMember.user_birth.value==""){
	      alert("생년월일을 입력하세요.");
	      document.frmMember.user_birth.focus();
	      return;
	   }
	   if(document.frmMember.birth_year.value>2030){
	      alert("생년월일을 다시 확인해주세요.");
	      document.frmMember.user_year.focus();
	      return;
	   }
	   if(document.frmMember.birth_month.value>12){
	      alert("생년월일을 다시 확인해주세요.");
	      document.frmMember.user_month.focus();
	      return;
	   }
	   if(document.frmMember.birth_month.value==2){
	      if(document.frmMember.birth_day.value>29){
	         alert("생년월일을 다시 확인해주세요.");
	         document.frmMember.user_day.focus();
	         return;
	      }
	   }
	   if(document.frmMember.birth_day.value>31){
	      alert("생년월일을 다시 확인해주세요.");
	      document.frmMember.user_day.focus();
	      return;
	   }

	   document.frmMember.submit();
	}

function chkId(){
	var id=document.frmMember.user_id.value;
	$.ajax({
		url:"idCheck.do?user_id="+id,
		datatype:"json",
		success:function(res){
			const data=JSON.parse(res);
			alert(data.message);
			$("#posibledId").val(data.usedId);
		}
	})
}
function chkEmail(){
	var email=document.frmMember.user_email.value;
	$.ajax({
		url:"emailCheck.do?user_email="+email,
		datatype:"json",
		success:function(res){
			const data=JSON.parse(res);
			alert(data.message);
			$("#posibleEmail").val(data.usedEmail);
		}
	})
}
function smsResponse(){
	   alert("인증번호를 발송했습니다.");
	   var phone = document.frmMember.user_phone.value;
	   $.ajax({
	      url:"smsCheck.do?user_phone="+phone,
	      datatype:"json",
	      success:function(res){
	         const data = JSON.parse(res);
	         $("#checkNum").val(data.checkNum);
	         $(".phoneHid").attr("class","addressShow");
	      }
	   });
	      
	   $(".phoneHid").attr("class","addressShow");
	}
	function certCheck(){
	   var smsCheck = $("#smsCheck").val();
	   var checkNum = $("#checkNum").val();
	   if(smsCheck != checkNum || smsCheck == null){
	      alert("인증에 실패했습니다. 다시 입력해주세요.");
	      $("#okCerCheck").val("불가능");
	   }
	   else{
	      alert("인증이 성공적으로 되었습니다.");
	      $("#okCerCheck").val("가능");
	   }   
	}
</script>

<body class="member-join" oncontextmenu="return false"
	ondragstart="return false" onselectstart="return !disableSelection"
	style="">
	<jsp:include page="../default/header.jsp"></jsp:include>
	<div id=wrap>
		<div id="container">
			<div id="main">
				<div id="content">
					<div class="tit_page">
						<h2 class="tit">회원가입</h2>
					</div>
					<div class="page_aticle">
						<div class="type_form member_join ">
							<form id="form" name="frmMember" method="post"
								action="joinProc.do" onsubmit=""
								novalidate="">
								<input type="hidden" name="mode" value="joinMember"> <input
									type="hidden" name="check_mobile" value=""> <input
									type="hidden" name="auth_finish_code" value=""> <input
									type="hidden" name="rncheck" value=""> <input
									type="hidden" name="dupeinfo" value=""> <input
									type="hidden" name="pakey" value=""> <input
									type="hidden" name="foreigner" value=""> <input
									type="hidden" name="passwordSkin" value="Y"> <input
									type="hidden" name="private2" value=""> <input
									type="hidden" name="private3" value=""> <input
									type="hidden" name="return_url" value="">
								<p class="page_sub">
									<span class="ico">*</span>필수입력사항
								</p>
								<table class="tbl_comm">
									<tbody>
										<!--  아이디 입력란 -->
										<tr class="fst">
											<th>아이디 <span class="ico">*<span
													class="screen_out">필수항목</span></span>
											</th>
											<td><input type="text" name="user_id" value="${kakaoId }" maxlength="16" required="" fld_esssential="" option="regId"
												label="아이디" placeholder="6자 이상의 영문 혹은 영문과 숫자를 조합"> <input
												type="hidden" name="chk_id" required="" fld_esssential="" label="아이디중복체크" value="">
												<input id="posibledId" type="hidden" name="chk_id" required="" fld_esssential="" label="아이디중복체크" value=""> <a class="btn default"
												href="javascript:chkId()" style="text-decoration: none">중복확인</a>

												<!-- <p class="txt_guide square" style="display: block;">
												<span class="txt txt_case1">
												6자 이상의 영문 혹은 영문과 숫자를 조합
												</span>
												<span class="txt txt_case2">
												아이디 중복확인
												</span>
											</p> --></td>
										</tr>

										<!--  비밀번호 입력란 -->
										<tr>
											<th>비밀번호 <span class="ico">*<span
													class="screen_out">필수항목</span></span>
											</th>
											<td><input type="password" name="user_password" required=""
												fld_esssential="" option="regPass" label="비밀번호"
												maxlength="16" class="reg_pw" placeholder="비밀번호를 입력해주세요">

												<p class="txt_guide square">
													<span class="txt txt_case1">10자 이상 입력</span> <span
														class="txt txt_case2">영문/숫자/특수문자(공백 제외)만 허용하며, 2개
														이상 조합</span> <span class="txt txt_case3">동일한 숫자 3개 이상 연속
														사용 불가</span>
												</p></td>
										</tr>

										<!--  비밀번호재확인 입력란 -->
										<tr class="member_pwd">
											<th>비밀번호확인 <span class="ico">*<span
													class="screen_out">필수항목</span></span>
											</th>
											<td><input type="password" name="user_pw_check" required=""
												fld_esssential="" option="regPass" label="비밀번호"
												maxlength="16" class="confirm_pw"
												placeholder="비밀번호를 한번 더 입력해주세요">

												<p class="txt_guide square">
													<span class="txt txt_case1">동일한 비밀번호를 입력해주세요.</span>
												</p></td>
										</tr>



										<!-- 이름 입력란 -->
										<tr>
											<th>이름 <span class="ico">*<span
													class="screen_out">필수항목</span></span>
											</th>

											<td><input type="text" name="user_name" value="${kakaoNickName }" required=""
												fld_esssential="" label="이름" placeholder="이름을 입력해주세요">
											</td>
										</tr>

										<!--  이메일 입력란 -->
                              <tr>
                                 <th>이메일 <span class="ico">*<span
                                       class="screen_out">필수항목</span></span>
                                 </th>

                                 <td><c:if test="${KakaoJoin==null }">
                                       <input type="text" name="user_email" value="" data-email=""
                                          size="30" required="" fld_esssential="" option="regEmail"
                                          label="이메일" placeholder="예: foreveryoung@fy.com">
                                       <input type="hidden" name="chk_email" required=""
                                          fld_esssential="" label="이메일중복체크">
                                       <a href="javascript:void(0)" onclick="chkEmail()"
                                          style="text-decoration: none" class="btn default">중복확인</a>
                                    </c:if> <c:if test="${KakaoJoin}">
                                       <input type="text" name="user_email" value="${kakaoEmail }"
                                          data-email="" size="30" label="이메일" readonly="readonly">
                                    </c:if></td>
                              </tr>

										<!-- 휴대폰 입력란 -->
                              <tr class="field_phone">
                                 <th>휴대폰 <span class="ico">*<span
                                       class="screen_out">필수항목</span></span>
                                 </th>

                                 <td>
                                    <div class="phone_num">
                                       <input type="text" value="" pattern="[0-9]*"
                                          name="user_phone" placeholder="숫자만 입력해주세요" class="inp">
                                       <input type="hidden" name="mobile[]" id="mobile0"
                                          value="222" required="" fld_esssential="" option="regNum"
                                          label="휴대폰"> <input type="hidden" name="mobile[]"
                                          id="mobile1" value="2222" required="" fld_esssential=""
                                          option="regNum" label="휴대폰"> <input type="hidden"
                                          name="mobile[]" id="mobile2" value="2222" required=""
                                          fld_esssential="" option="regNum" label="휴대폰">

                                       <button id="btn_cert" class="btn default enabled"
                                          onclick="smsResponse()" type="button">인증번호 받기</button>
                                    </div>

                                    <p class="txt_guide">
                                       <span class="txt txt_case1"></span>
                                    </p>
                                 </td>
                              </tr>
                              <tr>
                                 <th></th>
                                 <td>
                                    <div class="phoneHid">
                                       <input id="smsCheck" type="text" name="smsCheck" size="6"
                                          maxlength="6" value="" />
                                       <button id="btn_cert2" class="btn default enabled"
                                          onclick="certCheck()" type="button">인증번호 확인</button>
                                       <input type="hidden" id="posiblePhone" /> <input
                                          type="hidden" id="checkNum" /> <input type="hidden"
                                          id="okCerCheck" value="불가능" />
                                    </div>
                                 </td>

                              </tr>

										<!--  주소 입력란 -->
										<tr>
											<th>주소 <span class="ico">*<span class="screen_out">필수항목</span></span></th>

											<td class="field_address">
												<a href="#none" id="addressSearch" class="search" onclick="zip()">
													<span id="addressNo" class="address_no" data-text="재검색">주소검색</span>
												
												</a>
												<div id="selectAddressSub">
													<input type="text" name="address_sub" id="address_sub"
														value="" class="byteTotext" placeholder="나머지 주소를 입력해주세요">
													<p id="delivery"></p>
												</div>
												<p class="txt_guide">
													<span class="txt txt_case1">배송지에 따라 상품 정보가 달라질 수
														있습니다.</span>
												</p></td>
										</tr>
										<tr>
											<th></th>
											<td>
												<div class="hid">
													우편번호&nbsp;&nbsp;
													<input id="zip" type="text" name="user_zipcode" maxlength="6" value=""/>
												</div>
											</td>
										</tr>
										<tr>
											<th></th>
											<td>
												<div class="hid">
													주소&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;
													<input id="addr1" type="text" name="user_address1" value="" />
												</div>
											</td>
										</tr>
										<tr>
											<th></th>
											<td>
												<div class="hid">
													상세주소&nbsp;&nbsp;
													<input id="addr2" type="text" name="user_address2" value="" />
												</div>
											</td>
										</tr>
										<!--  성별 선택 -->
										<tr class="select_sex">
											<th>성별</th>

											<td><label class=""> 
												<input type="radio"	name="user_gender" value="1"><span class="ico"></span>남자
											</label> <label class="">
												<input type="radio" name="user_gender" value="0"><span class="ico"></span>여자
											</label> </td>
										</tr>

										<!--  생년월일 -->
										<tr class="birth field_birth">
											<th>생년월일</th>

											<td>
												<div class="birth_day">
													<!--  년도 입력 부분 -->
													<input type="text" name="birth_year" id="birth_year"
														pattern="[0-9]*" value="" label="생년월일" size="4"
														maxlength="4" placeholder="YYYY"> <span
														class="bar"></span>
													<!--  월 입력 부분 -->
													<input type="text" name="birth[]" id="birth_month"
														pattern="[0-9]*" value="" label="생년월일" size="2"
														maxlength="2" placeholder="MM"> <span class="bar"></span>
													<!--  일 입력 부분 -->
													<input type="text" name="birth[]" id="birth_day"
														pattern="[0-9]*" value="" label="생년월일" size="2"
														maxlength="2" placeholder="DD">
													<input id="totalbirth" type="hidden" name="user_birth"/>	
												</div>

												<p class="txt_guide">
													<span class="txt bad"></span>
												</p>
											</td>
										</tr>

										<!--  추가 입력사항, 추후 삭제할수도 있음 -->
										<!-- 								<tr class="route" id="selectRecommend">
										<th>추가입력 사항</th>
							
										<td>
											<div class="group_radio">
												<span class="radio_wrapper">
													<label for="recommendId">
														<input type="radio" name="recommend" id="recommendId" label="추천인아이디">
														<span class="ico"></span>추천인 아이디
													</label>
												</span>
												
												<span class="radio_wrapper">
													<label for="eventName">
														<input type="radio" name="recommend" id="eventName" label="참여이벤트명">
														<span class="ico"></span>참여 이벤트명
													</label>
												</span>
											</div>
								
											<div class="input_wrapper">
												<input type="text" name="recommid" value="" class="inp" placeholder="추천인 아이디를 입력해주세요.">
											
												<p class="txt_guide">
												추천인 아이디와 참여 이벤트명 중 하나만 선택 가능합니다. <br> 가입 이후, 수정이 불가합니다. <br>
												대소문자 및 띄어쓰기에 유의해주세요.
												</p>
											</div>
										</td>
									</tr> -->


									<!-- 약관동의 시작 -->
										<tr class="reg_agree">
											<th>이용약관동의 <span class="ico">*<span
													class="screen_out">필수항목</span></span>
											</th>

											<td>
												<div class="check_view">
													<label class="check_agree label_all_check label_block" for="check_all">
														<input type="checkbox" id="check_all"> <span class="ico"></span>전체 동의합니다.
													</label>
													
													<label class="check_agree label_block" for="check_y1">
														<input type="checkbox" id="check_y1" name="check_y1" class="normal" value=>
														<span class="ico"></span>이용약관 동의<span class="sub">(필수)</span>
														<a href="javascript:div_show()" id="viewterms1" style="color: rgb(63, 186, 72); float: right">약관보기</a>
													</label>
													
													<label class="check_agree label_block" for="check_y2">
														<input type="checkbox" id="check_y2" name="check_y2" class="normal" value=>
														<span class="ico"></span>개인정보 수집, 이용 동의<span class="sub">(필수)</span>
														<a href="javascript:div_show1()" id="viewterms2" style="color: rgb(63, 186, 72); float: right">약관보기</a>
													</label>
													
													<label class="check_agree label_block" for="check_y3">
														<input type="checkbox" id="check_y3" name="check_y3" class="normal" value=>
														<span class="ico"></span>본인은 만 14세 이상입니다.<span class="sub">(필수)</span>
													</label>
												</div>
												
												
												<!-- 첫번째 약관보기 클릭했을때 -->
												<div class="layer layer_agreement" id="pop_cont" style="display: none; margin-top: -299px;">
													<div class="inner_layer">
														<h4 class="tit_layer">
															이용약관 동의<span class="sub">(필수)</span>
														</h4>
														<div id="serviceView" class="box_tbl">
															<div class="box_type">
																<!-- <h3 class="box_tit">
																	<a class="btn_view" href="#none">총칙</a>
																</h3> -->
																<div class="box_view">
																	<div class="txt_view">제1조(목적)
 이 약관은 포에버영 회사(전자상거래 사업자)가 운영하는 포에버영 사이버 포에버영(이하 “포에버영”이라 한다)에서 제공하는 인터넷 관련 서비스(이하 “서비스”라 한다)를 이용함에 있어 사이버 포에버영과 이용자의 권리?의무 및 책임사항을 규정함을 목적으로 합니다.
  
 ※「PC통신, 무선 등을 이용하는 전자상거래에 대해서도 그 성질에 반하지 않는 한 이 약관을 준용합니다」
  
 제2조(정의)
 ①“포에버영” 이란 포에버영 회사가 재화 또는 용역(이하 “재화등”이라 함)을 이용자에게 제공하기 위하여 컴퓨터등 정보통신설비를 이용하여 재화등을 거래할 수 있도록 설정한 가상의 영업장을 말하며, 아울러 사이버포에버영을 운영하는 사업자의 의미로도 사용합니다.
  
 ②“이용자”란 “포에버영”에 접속하여 이 약관에 따라 “포에버영”이 제공하는 서비스를 받는 회원 및 비회원을 말합니다.
  
 ③ ‘회원’이라 함은 “포에버영”에 개인정보를 제공하여 회원등록을 한 자로서, “포에버영”의 정보를 지속적으로 제공받으며, “포에버영”이 제공하는 서비스를 계속적으로 이용할 수 있는 자를 말합니다.
  
 ④ ‘비회원’이라 함은 회원에 가입하지 않고 “포에버영”이 제공하는 서비스를 이용하는 자를 말합니다.</div>
																</div>
															</div>
														</div>

														<button type="button" class="btn_ok" onclick="javascript:div_hide();">확인</button>
														<button type="button" class="btn_close">
															<span class="screen_out">레이어 닫기</span>
														</button>
													</div>
												</div>
												
												
												<!-- 두번째 약관보기 클릭했을때 -->
												<div class="layer layer_essential" id="pop_cont1" style="display: none; margin-top: -299px;">
													<div class="inner_layer">
														<div class="in_layer">
															<h4 class="tit_layer">
																개인정보 수집, 이용 동의<span class="sub">(필수)</span>
															</h4>
															<div id="serviceView" class="box_tbl">
															<div class="box_type">
																<!-- <h3 class="box_tit">
																	<a class="btn_view" href="#none">총칙</a>
																</h3> -->
																<div class="box_view">
																	<div class="txt_view">이용자가 제공한 모든 정보는 다음의 목적을 위해 활용하며, 하기 목적 이외의 용도로는 사용되지 않습니다.
 ① 개인정보 수집 항목 및 수집·이용 목적
  가) 수집 항목 (필수항목)
 - 성명(국문), 주민등록번호, 주소, 전화번호(자택, 휴대전화), 사진, 이메일, 나이, 재학정보, 병역사항,
 외국어 점수, 가족관계, 재산정도, 수상내역, 사회활동, 타 장학금 수혜현황, 요식업 종사 현황 등 지원
 신청서에 기재된 정보 또는 신청자가 제공한 정보
  나) 수집 및 이용 목적
 - 포에버영 연락 및 자격확인
 - 포에버영 자원관리
  ② 개인정보 보유 및 이용기간
  - 수집·이용 동의일로부터 개인정보의 수집·이용목적을 달성할 때까지
  ③ 동의거부관리
  - 귀하께서는 본 안내에 따른 개인정보 수집, 이용에 대하여 동의를 거부하실 권리가 있습니다. 다만,
 귀하가 개인정보의 수집/이용에 동의를 거부하시는 경우에 불이익이 발생할 수 있음을 알려드립니다.</div>
																</div>
															</div>
															</div>
															
														</div>
														<button type="button" class="btn_ok" onclick="javascript:div_hide1();">
															<span class="txt_type">확인</span>
														</button>
														<button type="button" class="btn_close">
															<span class="screen_out">레이어 닫기</span>
														</button>
													</div>
													<button type="button" class="btn_close">
														<span class="screen_out">레이어 닫기</span>
													</button>
												</div>

											</td>
										</tr>
									</tbody>
								</table>
								<div id="formSubmit" class="form_footer">
									<button type="button" class="btn active btn_join" onClick="formJoinSubmit()" >가입하기</button>
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