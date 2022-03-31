<%@ page language="java" contentType="text/html; charset=utf-8"
	pageEncoding="utf-8"%>
<%@ taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core" %>
<c:set var="path" value="${pageContext.request.contextPath}"/>
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
<script src="https://developers.kakao.com/sdk/js/kakao.min.js"></script>
<script src="http://code.jquery.com/jquery-3.5.1.min.js"></script>
<script type="text/javascript">
Kakao.init('67055c8929df758b1f3f3de481c22151');
console.log(Kakao.isInitialized());
function KakaoLogin(){
   var kakaoOk=null;
   window.Kakao.Auth.login({
      success:(auth)=>{
         console.log("정상적으로 로그인 되었습니다.",auth)
         window.Kakao.API.request({
            url:'/v2/user/me',
            success:(res)=>{
               const kakao_account=res.id;
               console.log(kakao_account);
               console.log(res);
               console.log(res.kakao_account.email);
               console.log(res.kakao_account.profile.nickname);
               document.kakaoForm.kakaoId.value=res.id;
               document.kakaoForm.kakaoEmail.value=res.kakao_account.email;
               document.kakaoForm.kakaoNickName.value=res.kakao_account.profile.nickname;
               document.kakaoForm.submit();
            }
         });
      },
      fail:(err)=>{
         console.error(err)
      }
   });
}
</script>

<script>
$(document).ready(function(){
   
   $('.btnGreen').on('click',function(){
      var userid = $("#loginId").val();
      var userPw = $("#password").val();
      
      $.ajax({
         type: "POST",
         url : "loginProc.do",
         data : {
         "userid" : userid , "userPw": userPw},
         success : function(data){
            if(data == "false") {
               alert("아이디 혹은 비밀번호를 확인해주세요!");
                location.href="login.do";

            }else if(data=="true"){
               location.href="main.do";
            }
         }
      });   
   
   });   
   
});
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
	<jsp:include page="../default/header.jsp"></jsp:include>
	<div id="Container" class="bgf6">
		<div id="Contents">
		<form id="kakaoForm" name="kakaoForm" action="kakaoLogin.do"
            method="post">
            <input id="kakaoId" type="hidden" name="kakaoId"> <input
               id="kakaoEmail" type="hidden" name="kakaoEmail"> <input
               id="kakaoNickName" type="hidden" name="kakaoNickName">
         </form>
			<div class="loginArea new login">
				<div class="loginTit">
					<h2>로그인</h2>
					<p>포에버영의 다양한 서비스와 혜택을 누리세요.</p>
				</div>
				<form id="formLogin" name="formLogin" action="/foreveryoung/loginProc.do" method="post">
					<input type="hidden" id="bSId" name="bSId" value="" /> <input
						type="hidden" id="captchaYn" name="captchaYn" value="N" />

					<div class="loginForm">
						<ul>
							<li><label for="loginId" class="ir">아이디를 입력해 주세요.</label> <input
								type="text" id="loginId" placeholder="회원 아이디 입력" name="user_id"
								width="100" value="" autocomplete="off" title="아이디를 입력해 주세요." style="border:1px solid #9bce26;">
							</li>
							<br>
							<li><label for="password" class="ir">비밀번호를 입력해 주세요.</label>
								<input type="password" value="" id="password"
								placeholder="비밀번호 (8-12자 영문자+숫자+특수문자)" name="user_password"
								width="100" onkeyup="javascript:login.tryLogin(event);"
								autocomplete="off" title="비밀번호를 입력해 주세요." style="border:1px solid #9bce26;"></li>
						</ul>

						<div class="linkChk">
							<div class="save">
								<input type="checkbox" id="chk01" name="saveLoginIdYn"
									title="아이디 저장 선택" value="Y" checked="checked"><label
									for="chk01">아이디 저장</label> <input type="hidden"
									name="loginFormYn" value="Y" />
							</div>
							<div class="link">
                        <a href="idFind.do" onClick="">아이디 찾기</a> <a
                           href="pwFind.do" onClick="">비밀번호 찾기</a>
                     </div>
						</div>
						<div class="btnArea">
	                     <button type="button" class="btnGreen" 
	                        data-attr='로그인^로그인^로그인'>로그인</button>
	                  </div>

						<!-- 카카오 로그인 -->
                  <div class="fast_login clrfix">
                     <p class="txt">카카오로 포에버영 간편하게 시작하기</p>
                     <div class="area">
                        <a href="#" onclick="KakaoLogin()" class="btnlogin kakao" data-attr='로그인^카카오로그인^카카오 로그인'><span
                           class="icon">카카오로 시작하기</span></a>
                        <!-- <a href="https://kauth.kakao.com/oauth/authorize?client_id=da632f4a87a4c64df37b0001430ff544&redirect_uri=http://localhost:8080/foreveryoung/kakao/callback&response_type=code" 
                              class="btnlogin kakao"
                           data-attr='로그인^카카오로그인^카카오 로그인'><span class="icon">카카오로
                              시작하기</span></a> -->
                     </div>
                  </div>
                  <!-- 카카오 로그인 end-->
						<div class="info">
							<p>가입하시면 포에버영의 다양한 서비스를 이용하실 수 있습니다.</p>
							<a href="join.do"
								class="btnCjone" id="memberJoin"
								data-attr='로그인^회원가입^cjone통합회원가입'>포에버영 회원가입</a>
						</div>
					</div>
				</form>
			</div>
		</div>
	</div>
	<jsp:include page="../default/footer.jsp"></jsp:include>
</body>
</html>