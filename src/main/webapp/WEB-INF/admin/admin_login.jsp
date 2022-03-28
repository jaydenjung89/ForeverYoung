<%@ page language="java" contentType="text/html; charset=utf-8"
	pageEncoding="utf-8"%>
<%@ taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core"%>
<c:set var="path" value="${pageContext.request.contextPath}" />
<!DOCTYPE html>
<html>
<head>
<meta charset="utf-8">
<title>로그인</title>
<link rel="stylesheet" type="text/css" href="${path }/css/board.css" />
<link rel="stylesheet" type="text/css" href="${path }/css/common.css" />
<link rel="stylesheet" type="text/css" href="${path }/css/contents.css" />
<link rel="stylesheet" type="text/css" href="${path }/css/curation.css" />
<link rel="stylesheet" type="text/css" href="${path }/css/global.css" />
<link rel="stylesheet" type="text/css"
	href="${path }/css/jquery.mCustomScrollbar.css" />
<link rel="stylesheet" type="text/css" href="${path }/css/pickup.css" />
<script type="text/javascript">
//로그인버튼 클릭이벤트
function adminLoginSubmit(){

	if (document.frmMember.admin_id.value == "") {
		alert("아이디를 입력하세요.");
		document.frmMember.admin_id.focus();
		return;
	}
	else if (document.frmMember.admin_pw.value == "") {
		alert("비밀번호 입력하세요");
		document.frmMember.admin_pw.focus();
		return;
	}
	else{
		document.frmMember.submit();
	}
}
</script>
<style>
.btn_kakao {
	border: 1px solid;
	background-color: #F8DF00;
}

.btn_kakao .kakao_type {
	color: #000000;
	display: inline-block;
	height: 100%;
	font-weight: 500;
	font-size: 16px;
	line-height: 51px;
	text-align: right;
	padding: 0px;
}

.kakaoLogo {
	float: left;
	width: 50px;
	height: 50px;
	overflow: hidden;
	margin-left: 0px;
	margin-top: 2px;
	margin-right: 0px;
}

.kakaoLogo img {
	object-fit: cover;
}
</style>
</head>
<body>
	<div id="Container" class="bgf6">
		<div id="Contents">
			<div class="loginArea new login">
				<div class="loginTit">
					<h2>관리자 로그인</h2>
					<p>관리자 아이디로 로그인해주세요.</p>
				</div>
				<form id="formLogin" name="frmMember" action="loginProc.mdo" method="post">
					<input type="hidden" id="bSId" name="bSId" value="" /> <input
						type="hidden" id="captchaYn" name="captchaYn" value="N" />
					<div class="loginForm">
						<ul>
							<li><label for="loginId" class="ir">아이디를 입력해 주세요.</label> <input
								type="text" id="loginId" placeholder="회원 아이디 입력" name="admin_id"
								width="100" value="" autocomplete="off" title="아이디를 입력해 주세요." style="border:1px solid #9bce26;"></li>
							<li><label for="password" class="ir">비밀번호를 입력해 주세요.</label><br>
								<input type="password" value="" id="admin_pw"
								placeholder="비밀번호 (8-12자 영문자+숫자+특수문자)" name="admin_pw"
								width="100" onkeyup=""
								autocomplete="off" title="비밀번호를 입력해 주세요." style="border:1px solid #9bce26;"></li>
						</ul>

						<div class="linkChk">
							<div class="save">
								<input type="checkbox" id="chk01" name="saveLoginIdYn"
									title="아이디 저장 선택" value="Y" checked="checked"><label
									for="chk01">아이디 저장</label> <input type="hidden"
									name="loginFormYn" value="Y" />
							</div>
						</div>
						<div class="btnArea">
							<button type="button" class="btnGreen"
								onclick="javascript:adminLoginSubmit()">로그인</button>
						</div>

						<div class="info">
							<img src="https://fyawsbucket.s3.ap-northeast-2.amazonaws.com/images/foreverlogo.png" alt="올리브영" style="width:100%" />
							
						</div>
						<div class="info"><br /><br /></div>
					</div>
				</form>
			</div>
		</div>
	</div>
</body>
</html>