<%@ page language="java" contentType="text/html; charset=utf-8"
   pageEncoding="utf-8"%>
<%@ taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core" %>
<c:set var="path" value="${pageContext.request.contextPath}"/>
<!DOCTYPE html>
<html>
<head>
<meta charset="utf-8">
<title>footer</title>
<link rel="stylesheet" type="text/css" href="${path }/css/board.css" />
<link rel="stylesheet" type="text/css" href="${path }/css/common.css" />
<link rel="stylesheet" type="text/css" href="${path }/css/contents.css" />
<link rel="stylesheet" type="text/css" href="${path }/css/curation.css" />
<link rel="stylesheet" type="text/css" href="${path }/css/global.css" />
<link rel="stylesheet" type="text/css"
   href="${path }/css/jquery.mCustomScrollbar.css" />
<link rel="stylesheet" type="text/css" href="${path }/css/pickup.css" />
</head>
<!-- 상단으로 이동하기 버튼 -->
<a href="#" class="btn_gotop">
  <span class="span_gotop">TOP</span>
</a>

<style>
.btn_gotop {
   display:none;
   position:fixed;
   bottom:30px;
   right:30px;
   z-index:999;
   border:1px solid #ccc;
   outline:none;
   background-color:white;
   color:#333;
   cursor:pointer;
   padding:10px 10px;
}

.btn_gotop:hover {
   background-color:#808080;
   color: white;
}

</style>

<script>
$(window).scroll(function(){
   if ($(this).scrollTop() > 300){
      $('.btn_gotop').show();
   } else{
      $('.btn_gotop').hide();
   }
});
$('.btn_gotop').click(function(){
   $('html, body').animate({scrollTop:0},400);
   return false;
});


</script>
<body>
	<div id="Footer" class="m2105">
		<div class="oneConts">
			<div class="conts">
				<ul class="list-menu">
					<li><a class="brandstory" href="company.do">회사소개</a></li>
					<!-- 회사소개 구현 후 링크 걸기 -->
					<li><a class="recruit" href="">채용안내</a></li>
					<!-- 구현 x -->
					<li><a class="prvsuser" href="">가맹점 개설문의</a></li>
					<!-- 구현 x -->
					<li><a class="cjoyp" href="" target="_blank">상품입점 및 제휴문의</a></li>
					<!-- 구현 x -->
					<li><a class="cyberAudit" href="">사이버 감사실</a></li>
					<!-- 구현 x -->
					<li><a class="faqList" href="">고객센터</a></li>
					<!-- 고객센터 구현 후 링크 걸기 -->
				</ul>
				<div class="sel_family_group">
					<a href="#" class="sel_option" title="상세내용 보기">FY그룹 계열사 바로가기</a>
					<!-- 구현 x -->
					<div class="sel_option_list hide">
						<dl>
							<dt>FY그룹</dt>
							<dd>
								<a href="" target="_blank" title="CJ 주식회사 새창으로 열기">FY주식회사</a>
							</dd>
						</dl>
					</div>
				</div>
			</div>
		</div>
		<div class="twoConts">
			<div class="conts">
				<ul class="list-area">
					<li>
						<p class="logo">
							<a href=""><img
								src="https://fyawsbucket.s3.ap-northeast-2.amazonaws.com/images/foreverlogo.png"
								alt="OLIVEYOUNG"></a>
						</p>
						<!-- href에 메인페이지이동 -->
						<h2>포에버영 주식회사</h2>
						<p>대표이사 : 류종완 | 사업자등록번호 :</p>
						<p>주소 : 단성사 빌딩 402호</p>
						<p>호스팅사업자 : FY 포에버네트웍스</p>
						<p>통신판매업신고번호 :</p>
						<p>
							<a href="jyhzzzk@naver.com" class="email_addr">이메일 :
								jyhzzzk@naver.com</a>
						</p>
					</li>
					<li>
						<ul class="list-link">
							<li><a href="">이용약관</a><a href="">법적고지</a></li>
							<li><a href="">개인정보처리방침</a></li>
							<li><a href="">청소년보호방침</a></li>
							<li><a href="">영상정보처리기기 운영/관리 방침</a></li>
							<li><a href="">이메일무단수집거부</a></li>
						</ul>
					</li>
					<li>
						<h2>포에버영 구매안전 서비스</h2>
					</li>
				</ul>
			</div>
		</div>
		<div class="fourConts">
			<div class="conts">
				<ol>
					<li class="isms">정보보호 관리체계 ISMS 인증획득 <span class="bar">인증범위
							: 온라인 쇼핑몰 운영(포에버영)</span> <span class="bar">유효기간 : 2020.12.02 -
							2023.12.01</span>
					</li>
					<li class="ncsi">2017~2021 국가고객만족도(NCSI) 헬스앤뷰티전문점 업계 최초 5년 연속
						1위​</li>
				</ol>
			</div>
		</div>
		<div class="threeConts">
			<div class="conts">
				<p class="copyright">Copyright ⓒ ForEverYoung. All Rights
					Reserved.</p>
				<div class="sns">
					<h2>OLIVE YOUNG SNS</h2>
					<a class="facebook" href="" title="페이지 이동" target="_blank"><img
						src="https://fyawsbucket.s3.ap-northeast-2.amazonaws.com/mem%26cuimage/iconf_facebook.png"
						alt="페이스북"></a> <a class="insta" href="" title="페이지 이동"
						target="_blank"><img
						src="https://fyawsbucket.s3.ap-northeast-2.amazonaws.com/mem%26cuimage/iconf_instagram.png"
						alt="인스타그램"></a> <a class="youtube" href="" title="페이지 이동"
						target="_blank"><img
						src="https://fyawsbucket.s3.ap-northeast-2.amazonaws.com/mem%26cuimage/iconf_youtube.png"
						alt="유튜브"></a> <a class="kakao" href="" title="페이지 이동"><img
						src="https://fyawsbucket.s3.ap-northeast-2.amazonaws.com/mem%26cuimage/iconf_kakaotalk.png"
						alt="카카오톡"></a>
				</div>
			</div>
		</div>
	</div>
</body>
</html>