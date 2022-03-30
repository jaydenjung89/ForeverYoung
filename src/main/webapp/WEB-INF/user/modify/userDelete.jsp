<%@ page language="java" contentType="text/html; charset=utf-8"
	pageEncoding="utf-8"%>
<%@ taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core" %>
<c:set var="path" value="${pageContext.request.contextPath}"/>
<!DOCTYPE html>
<html>
<head>
<meta charset="utf-8">
<title>회원탈퇴</title>
<link rel="stylesheet" type="text/css" href="${path }/css/board.css" />
<link rel="stylesheet" type="text/css" href="${path }/css/common.css" />
<link rel="stylesheet" type="text/css" href="${path }/css/contents.css" />
<link rel="stylesheet" type="text/css" href="${path }/css/curation.css" />
<link rel="stylesheet" type="text/css" href="${path }/css/global.css" />
<link rel="stylesheet" type="text/css"
   href="${path }/css/jquery.mCustomScrollbar.css" />
<link rel="stylesheet" type="text/css" href="${path }/css/pickup.css" />
</head>
<script type="text/javascript">
function deleteconfirm(){
	if(confirm("정말 탈퇴하시겠습니까?")==true){
		document.confirmWithdraw.submit();
	
	}else{
		return;
	}
}
</script>
<body>
	<jsp:include page="../default/header.jsp"></jsp:include>
		<div id = "Container">
			<div id = "Contents">
				<div class = "mypage-head rate_04">
					<h1 class = "tit">
						<!-- 마이페이지 메인페이지로 이동 -->
						<a href = "MyPageMain.do">마이페이지</a>
					</h1>
					<div class = "grd-box">
						<div class = "info_user clrfix">
							<div class = "thum">
								<span class = "bg"></span>
								<!-- my_picture_base.jpg -->
								<img src = "https://fyawsbucket.s3.ap-northeast-2.amazonaws.com/my_picture_base.jpg">
							</div>
							<p class = "txt">
								<!-- 등급변경시 바꿔줘야함 -->
								${userMember }
								<!-- 기본정보페이지의 이름에서 가져오는걸로 추정됨. -->
								<strong class = "name">${user.user_name} 고객</strong>
								님 반갑습니다.
							</p>
							
							<ul class = "mem_opt">
								<!-- 멤버십 페이지로 이동 -->
								<li id = "membershipBenefit">
									<a href = "membership.do" onclick = "#">멤버십라운지</a>
								</li>
								<!-- 나의 프로필 페이지로 이동 -->
								<li id = "profileModify">
									<a href = "MyProfile.do" onclick = "#">나의 프로필</a>
								</li>
							</ul>
						</div>
						<div class = "point-box ">
							<ul class = "infor clrfix" id = "pointInfo">
								<!-- 마이페이지의 CJONE포인트 페이지로 이동 -->
								<li id = "cjOnePoingInfo" onclick = "#">
									<span class = "tit">FY ONE 포인트</span>
									<a class = "num" href = "#">
										${userPoint}
										<em class = "unit">P</em>
									</a>
								</li>
								<!-- 마이페이지의 쿠폰 페이지로 이동 -->
								<li id = "couponList" onclick = "#">
									<span class = "tit">쿠폰</span>
									<a class = "num" href = "#" data-attr = "마이페이지^쿠폰^쿠폰함이동">
										0
										<em class = "unit">개</em>
									</a>
								</li>
								<!-- 마이페이지의 예치금부분인데 우리는 기능 구현 안할거임 -->
								<li id = "depositList" onclick = "#">
									<span class = "tit">예치금</span>
									<a class = "num" href = "#">
										0
										<em class = "unit">원</em>
									</a>
								</li>
							</ul>
						</div>
					</div>
				</div>
				<div class = "mypage-ix">
					<!-- 마이페이지 sub 메뉴 -->
					<jsp:include page="../default/myPage_Sub_Menu.jsp"></jsp:include>
					<!-- 마이페이지 sub 메뉴 End-->
					<div class="mypage-conts">
						<div class="title-area">
							<h2 class="tit">회원탈퇴</h2>
						</div>
						<p class="common3s-text">
							<strong>회원 탈퇴(이용약관 동의 철회)시 아래 내용을 확인해주세요.</strong>
						</p>
						<ul class="secess-area">
							<li>포에버영 이용약관 동의 철회 시 고객님께서 보유하셨던 쿠폰은 모두 삭제되며, 재가입 시 복원이 불가능합니다.</li>
							<li>포에버영 이용약관 동의 철회 시에는 포에버영 서비스만 이용할 수 없게 되며, FY ONE 웹사이트를 포함한 다른 FY ONE 제휴 브랜드의 웹사이트 서비스는 이용하실 수 있습니다.</li>
							<li>포에버영 이용약관 동의 철회 시에도 FY 멤버십 서비스 및 타 제휴 브랜드의 이용을 위해 회원님의 개인정보 및 거래정보는 FY ONE 회원 탈퇴 시까지 보존됩니다.</li>
							<li>포에버영 이용약관 동의를 철회한 후에라도 해당 약관에 다시 동의하시면 서비스를 이용할 수 있습니다.</li>
							<li>진행 중인 전자상거래 이용내역(결제/배송/교환/반품 중인 상태)이 있거나 고객상담 및 이용하신 서비스가 완료되지 않은 경우 서비스 철회 하실 수 없습니다.</li>
						</ul>
						<p class="common2s-text">올리브영 회원 탈퇴(이용약관 동의 철회)를 하시겠습니까?</p>
						<div class="area1sButton mgT10">
						<form name="confirmWithdraw"  action="userDelete.do">
							<button class="btnGreen" type="button" onclick="deleteconfirm()" >회원 탈퇴</button>
						</form>
						</div>		
					</div>
				</div>	
				
		</div>
	</div>
	<jsp:include page="../default/footer.jsp"></jsp:include>
</body>
</html>