<%@ page language="java" contentType="text/html; charset=UTF-8"
	pageEncoding="UTF-8"%>
<%@ taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core" %>
<c:set var="path" value="${pageContext.request.contextPath}"/>	
<!DOCTYPE html>
<html>
<head>
<script src="http://code.jquery.com/jquery-3.5.1.min.js"></script>
<meta charset="UTF-8">
<title>modify1</title>
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
<script type="text/javascript">
function formCheck(){
	if(document.confirmForm.user_id.value==""){
		alert("아이디를 입력하세요.");
		document.confirmForm.user_id.focus();
		return;
	}
	if(document.confirmForm.user_password.value==""){
		alert("비밀번호를 입력하세요.");
		document.confirmForm.user_password.focus();
		return;
	}
	document.confirmForm.submit();
}	
</script>
<body class=>
	<jsp:include page="../default/header.jsp"></jsp:include>
	<div id="Container" class="bgf6">
		<div id="Contents">
			<div class="loginArea new login">
				<div class="loginTit">
					<h2>개인 정보 수정</h2>
					<p>회원 정보 수정을 위해 아이디와 비밀번호를 입력해주세요.</p>
				</div>
				<form id="formLogin" name="confirmForm" action="modify2.do" method="post">
					<input type="hidden" id="bSId" name="bSId" value="" /> <input
						type="hidden" id="captchaYn" name="captchaYn" value="N" />

					<div class="loginForm">
						<ul>
							<li><label for="loginId" class="ir">아이디를 입력해 주세요.</label> <input
								type="text" id="loginId" placeholder="회원 아이디 입력" name="user_id"
								width="100" value="${user.user_id}" autocomplete="off" title="아이디를 입력해 주세요.">
							</li>
							<li><label for="password" class="ir">비밀번호를 입력해 주세요.</label>
								<input type="password" value="" id="password"
								placeholder="비밀번호 (8-12자 영문자+숫자+특수문자)" name="user_password"
								width="100" onkeyup="javascript:login.tryLogin(event);"
								autocomplete="off" title="비밀번호를 입력해 주세요."></li>
						</ul>

						
						<div class="btnArea">
							<button type="button" class="btnGreen" onclick="formCheck()"
								data-attr='로그인^로그인^로그인'>확인</button>
						</div>

						

						
					</div>
				</form>
			</div>
		</div>
	</div>
	<jsp:include page="../default/footer.jsp"></jsp:include>
</body>
</html>