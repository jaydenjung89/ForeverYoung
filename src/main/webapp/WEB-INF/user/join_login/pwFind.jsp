<%@ page language="java" contentType="text/html; charset=UTF-8"
   pageEncoding="UTF-8"%>
<%@ taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core" %>
<%@ taglib uri = "http://java.sun.com/jsp/jstl/functions" prefix = "fn" %>
<c:set var="path" value="${pageContext.request.contextPath}"/>   
<!DOCTYPE html>
<html>
<head>
<script src="http://code.jquery.com/jquery-3.5.1.min.js"></script>
<meta charset="UTF-8">
<title>비밀번호 찾기</title>
<link rel="stylesheet" type="text/css" href="${path }/css/join.css" />
<link rel="shortcut icon" href="https://fyawsbucket.s3.ap-northeast-2.amazonaws.com/favicon_logo.ico" type="image/x-icon" />
<style>
.loginArea .write_form {
	padding-top: 36px
}
.loginArea .write_form .btn_type1 {
	margin-top: 30px
}
.loginArea .write_form {
	padding-top: 26px;
	text-align: center
}
.loginArea .write_form .tit_label {
	display: block;
	padding: 11px 0 7px;
	font-size: 12px;
	line-height: 18px;
	text-align: left
}

.loginArea .write_form .thumb {
	width: 52px;
	height: 60px;
	margin: 10px 0 5px;
}

.loginArea .write_form .desc {
	padding-bottom: 14px;
	font-weight: 700;
	font-size: 20px;
	color: #9bce26;
	line-height: 29px;
}

.loginArea .write_form .info {
	padding-bottom: 30px;
	font-size: 12px;
	color: #333;
	line-height: 18px;
}

.loginArea .write_form .emph {
	letter-spacing: 0
}
.btn_type1, .btn_type2 {
	display: block;
	overflow: hidden;
	width: 130px;
	height: 60px;
	border-radius: 3px;
	font-size: 24px;
	text-align: center;
}

.btn_type1 .txt_type, .btn_type2 .txt_type {
	display: inline-block;
	height: 100%;
	font-weight: 500;
	font-size: 15px;
	color: #fff;
	line-height: 51px;
	text-align: center;

}

.btn_type1 .extra, .btn_type2 .extra {
	opacity: .6
}

.btn_type1 {
	border: 1px solid #9bce26;
	background-color: #a3d278;
}

.btn_type1 .txt_type {
	color: #fff;
}
.btn_type1.btn_disabled {
	border: 1px solid #ddddde;
	background-color: #ddd;
}

.btn_type1.btn_disabled .txt_type {
	opacity: .8
}
.btnGreen1{
    width: 80% !important;

}
button {
    border: 0;
    vertical-align: top;
    color: #666;
}
</style>
</head>
<body>
	<jsp:include page="../default/header.jsp"></jsp:include>
	<div id="Container" class="bgf6">
		<div id="Contents">
			<c:if test="${type=='get' }">
			<div class="loginArea new login">
				<div class="loginTit">
					<h2>비밀번호 찾기</h2>
					<p>포에버영의 다양한 서비스와 혜택을 누리세요.</p>
				</div>
				<form id="formLogin" name="formLogin"  method="post" action="pwFind.do">
					<input type="hidden" id="bSId" name="bSId" value="" /> <input
						type="hidden" id="captchaYn" name="captchaYn" value="N" />

					<div class="loginForm">
						<ul>
						
							<li><label for="name" class="ir">아이디</label> 
							<input id="name" name="user_id" placeholder="아이디를 입력해주세요" type="text"  value
								width="100"  autocomplete="off" title="아이디을 입력해주세요.">
							</li>
							<li><label for="email" class="ir">이메일</label>
								<input id="email" name="user_email" placeholder="이메일을 입력해주세요" type="email" value
								width="100" onkeyup="javascript:login.tryLogin(event);"
								autocomplete="off" title="비밀번호를 입력해 주세요.">
							</li>
						</ul>

						<div class="btnArea">
							<button type="button" class="btnGreen" type="submit" 
								data-attr='로그인^로그인^로그인'>비밀번호 찾기</button>
						</div>

					</div>
				</form>
			
			</div>
			</c:if>
			
			<!-- post방식 -->
			<c:if test="${type=='post' }">
					<c:if test="${sendPassword }">
						<c:if test="${sendEmailSuccess }">
							<div class="loginArea new login">
								<div class="loginTit">
									<h2>비밀번호 찾기</h2>
									<p>포에버영의 다양한 서비스와 혜택을 누리세요.</p>
								</div>
								<div class="write_form find_View">
									<form name="certForm" method="post" action="">
										
										<p class="desc">이메일 확인 후 비밀번호를 재설정해주세요!</p>
										<p class="info">비밀번호는 입력하신 ${userEmail}로 이메일로 전송됩니다.</p>
										<div class="btnArea">
		                                 <button type="button" class="btnGreen btnGreen1"  onclick="location.href='login.do'"
		                                    data-attr='로그인^로그인^로그인'>로그인하기</button>
		                              </div>
									</form>
								</div>
							</div>
						</c:if>
					</c:if>
				
				
				
				<!-- 비밀번호 정보 없음 -->
				<c:if test="${!sendPassword}">
					<div class="loginArea new login">
						<div class="loginTit">
							<h2>비밀번호 찾기</h2>
							<p>포에버영의 다양한 서비스와 혜택을 누리세요.</p>
						</div>
						<div class="write_form find_View">
							<img class="thumb" src="foreveryoung2/images/img_pw_find_email.png" alt="비밀번호찾기 완료">
							<p class="desc">
								고객님꼐서 입력하신 정보가 <br> 정확한지 확인 후 다시 시도해주세요.
							</p>
							<a href="pwFind.do" class="btn_type1"><span class="txt_type">정보 다시 입력하기</span></a>
						</div>
					</div>
				</c:if>
				<!-- 비밀번호 정보 없음 -->
			<!-- 비밀번호 찾기 큰 틀 -->
			</c:if>
		</div>
	</div>
	<script>
	/* 로그인 버튼 클릭 메서드*/
	$(".btnGreen").click(function(){
		//alert("로그인 버튼 작동");
		/* 로그인 메서드 서버 요청*/
		$("#formLogin").attr("action","pwFindProc.do");
		$("#formLogin").submit();
	})
	</script>
<jsp:include page="../default/footer.jsp"></jsp:include>
</body>
</html>