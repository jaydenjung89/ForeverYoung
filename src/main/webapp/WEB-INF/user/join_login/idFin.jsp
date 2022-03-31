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
<title>회원가입</title>
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
	background-color: #9bce26;
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
					<h2>아이디 찾기</h2>
					<p>포에버영의 다양한 서비스와 혜택을 누리세요.</p>
				</div>
				<form id="formLogin" name="formLogin"  method="post" action="idFind.do">
					<input type="hidden" id="bSId" name="bSId" value="" /> <input
						type="hidden" id="captchaYn" name="captchaYn" value="N" />

					<div class="loginForm">
						<ul>
							<li><label for="name" class="ir">이름</label> 
							<input id="name" name="user_name" placeholder="이름을 입력해주세요" type="text"  value
								width="100"  autocomplete="off" title="이름을 입력해주세요.">
							</li>
							<li><label for="email" class="ir">이메일</label>
								<input id="email" name="user_email" placeholder="이메일을 입력해주세요" type="email" value
								width="100" onkeyup="javascript:login.tryLogin(event);"
								autocomplete="off" title="비밀번호를 입력해 주세요.">
							</li>
						</ul>

						<div class="btnArea">
							<button type="button" class="btnGreen" type="submit" 
								data-attr='로그인^로그인^로그인'>아이디 찾기</button>
						</div>

					</div>
				</form>
			</div>
			</c:if>
			<!-- 아이디 찾기 성공 -->
			<c:if test="${type=='post' }">
				<c:if test="${findId != null }">
					<div class="loginArea new login">
						<div class="loginTit">
							<h2>아이디 찾기</h2>
							<p>포에버영의 다양한 서비스와 혜택을 누리세요.</p>
						</div>
						<%-- 
						<!-- -여기서부터 찐 마컬 -->
						<div class="css-140915z e1lv8394">
							<div class="css-6mht10 e1lv8393">
								<div class="css-1ymrnwr e1lv8392">
									고객님의 포에버영 계정을 찾았습니다.
									<div class="css-1jlgal3 e1lv8391">아이디 확인 후 로그인해 주세요.</div>
								</div>
								<ul class="css-14o5m2r ewnnxio4">
									<li class="css-1qp8f6i ewnnxio3">
										<img class="css-ate73y e1raycba0" src="data:image/svg+xml;base64,PHN2ZyB3aWR0aD0iNDAiIGhlaWdodD0iNDAiIHhtbG5zPSJodHRwOi8vd3d3LnczLm9yZy8yMDAwL3N2ZyI+CiAgICA8ZyBmaWxsPSJub25lIiBmaWxsLXJ1bGU9ImV2ZW5vZGQiPgogICAgICAgIDxjaXJjbGUgZmlsbD0iI0Y1RjVGNSIgY3g9IjIwIiBjeT0iMjAiIHI9IjIwIi8+CiAgICAgICAgPHBhdGggZD0iTTIwIDE5YzQuNjUzIDAgOC41IDMuNDc2IDguNSA3LjcyIDAgLjQzLS4zNDYuNzgtLjc3My43OEgxMi4yNzNhLjc3Ni43NzYgMCAwIDEtLjc3My0uNzhjMC00LjI4NSAzLjgyNC03LjcyIDguNS03Ljcyem0wLTguNWEzLjQgMy40IDAgMSAxIDAgNi44IDMuNCAzLjQgMCAwIDEgMC02Ljh6IiBzdHJva2U9IiNDQ0MiIGZpbGw9IiNDQ0MiLz4KICAgIDwvZz4KPC9zdmc+Cg=="
										alt="정보보기">
										<div class="css-yzpdz ewnnxio2">
											<c:if test="${fn:length(findId)>=4 }">
												<div class="css-1kkr6j1 ewnnxio1">아이디 : ${fn:substring(findId,0,fn:length(findId)-3) }***</div>
												<div class="css-1081952 ewnnxio0">가입일 : 2022.02.21</div>
											</c:if>
											<c:if test="${fn:length(findId)<4 }">
												<div class="css-1kkr6j1 ewnnxio1">아이디 : ${fn:substring(findId,0,fn:length(findId)/2) }***</div>
												<div class="css-1081952 ewnnxio0">가입일 : 2022.02.21</div>
											</c:if>
										</div>
									</li>
								</ul>
								<div class="css-gyfngb e1lv8390">
									<button class="css-qsvy0v e4nu7ef2" type="button">
										<span class="css-1dqhxzp e4nu7ef1">아이디 전체 보기</span>
									</button>
									<button class="css-hwhn8c e4nu7ef2" type="button">
										<span class="css-1dqhxzp e4nu7ef1">로그인</span>
									</button>
								</div>
							</div>
						
						</div>
						--%>
						
						
						<div class="write_form find_view">
							<p class="desc">고객님의 <br>아이디 찾기가 완료되었습니다!</p>
							<c:if test="${fn:length(findId)>=4 }">
									<p class="info">아이디 : ${fn:substring(findId,0,fn:length(findId)-3) }***</p>
							</c:if>
							<c:if test="${fn:length(findId)<4 }">
									<p class="info">아이디 : ${fn:substring(findId,0,fn:length(findId)/2) }***</p>
							</c:if>
							<div class="btnArea">
		                     <button type="button" class="btnGreen btnGreen1"  onclick="location.href='login.do'"
		                        data-attr='로그인^로그인^로그인'>로그인하기</button>
		                     </div>
						</div>
						
					</div>
				</c:if>
			<!-- //아이디찾기 성공 -->
			
			<!-- 아이디 찾기 실패 -->
				<c:if test="${findId == null }">
					<div class="loginArea new login">
						<div class="loginTit">
							<h2>아이디 찾기</h2>
							<p>포에버영의 다양한 서비스와 혜택을 누리세요.</p>
						</div>
						<div class="write_form find_view">
							<p class="desc">고객님꼐서 입력하신 정보가 <br>정확한지 확인 후 다시 시도해주세요.</p>
							<div class="btnArea">
		                     <button type="button" class="btnGreen btnGreen1" onclick="location.href='idFind.do'"
		                        data-attr='로그인^로그인^로그인'>아이디 다시 찾기</button>
		                     </div>
						</div>
					</div>
				</c:if>
			<!-- //아이디찾기 실패 -->
			</c:if>
		</div>
	</div>
	<script>
	/* 로그인 버튼 클릭 메서드*/
	$(".btnGreen").click(function(){
		//alert("로그인 버튼 작동");
		/* 로그인 메서드 서버 요청*/
		$("#formLogin").attr("action","idFindProc.do");
		$("#formLogin").submit();
	})
	</script>
	<jsp:include page="../default/footer.jsp"></jsp:include>
</body>
</html>