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
								현재 등급
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
										N
										<em class = "unit">P</em>
									</a>
								</li>
								<!-- 마이페이지의 쿠폰 페이지로 이동 -->
								<li id = "couponList" onclick = "#">
									<span class = "tit">쿠폰</span>
									<a class = "num" href = "#" data-attr = "마이페이지^쿠폰^쿠폰함이동">
										N
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
					<div class = "mypage-lnb">
						<ul>
							<li>
								<h2>마이쇼핑</h2>
								<ul>
									<!-- class 변수명에 on을 추가하면(subMenu on 으로) 
										현재 위치한 페이지를 알려주기 위한 sub메뉴 버튼에 색 다른게 들어옴
										
										자기 페이지에 맞춰서 수정 요망
									-->
									<li class = "subMenu">
										<!-- 마이페이지 카테고리 차례대로 -->
										<a href = "order&delivery.do" mymenuid="0101" data-ref-linkurl="#" data-attr = "마이페이지^메뉴^주문/배송 조회">주문/배송 조회</a>
									</li>
									<li class = "subMenu">
										<a href = "#" mymenuid = "0102" data-ref-linkurl = "#" data-attr = "마이페이지^메뉴^취소/반품/교환 내역">취소/반품/교환 내역</a>
									</li>
									<!-- 거래증빙서류 기능 구현 안할거임 -->
									<li class = "subMenu">
										<a href = "#" mymenuid="0103" data-ref-linkurl = "#" data-attr = "마이페이지^메뉴^거래증빙서류 확인">거래증빙서류 확인</a>
									</li>
								</ul>
								<ul class = "line">
									<li class = "subMenu">
										<a href = "getCart.do" mymenuid="0201" data-ref-linkurl="#" data-attr="마이페이지^메뉴^장바구니">장바구니</a>
									</li>
									<li class = "subMenu">
										<a href = "#" mymenuid="0202" data-ref-linkurl="#" data-attr="마이페이지^메뉴^좋아요">좋아요</a>
									</li>
									<li class = "subMenu">
										<a href = "#" mymenuid="0203" data-ref-linkurl="#" data-attr="마이페이지^메뉴^재입고 알림">재입고 알림</a>
									</li>
								</ul>
								<ul class = "line">
									<!-- 기프트카드 기능 구현 안할거임 -->
									<li class = "subMenu">
										<a href = "#" mymenuid="0300" data-ref-linkurl = "#" data-attr = "마이페이지^메뉴^기프트카드">기프트카드</a>
									</li>
									<li class = "subMenu">
										<a href = "#" mymenuid="0301" data-ref-linkurl = "#" data-attr = "마이페이지^메뉴^CJ ONE 포인트">CJ ONE포인트</a>
									</li>
									<li class = "subMenu">
										<a href = "#" mymenuid="0302" data-ref-linkurl = "#" data-attr = "마이페이지^메뉴^쿠폰">쿠폰</a>
									</li>
									<!-- 예치금 기능 구현 안할거임 -->
									<li class = "subMenu">
										<a href = "#" mymenuid="0303" data-ref-linkurl = "#" data-attr = "마이페이지^메뉴^예치금">예치금</a>
									</li>
								</ul>
							</li>
							<li>
								<h2>마이 활동</h2>
								<ul>
									<li class = "subMenu">
										<a href = "#" mymenuid = "0401" data-ref-linkurl = "#" data-attr = "마이페이지^메뉴^1:1문의내역">1:1문의내역</a>
									</li>
									<li class = "subMenu">
										<a href = "#" mymenuid = "0402" data-ref-linkurl = "#" data-attr = "마이페이지^메뉴^리뷰">
											리뷰 (
											<span class = "num_review" id = "_gdasPossibleTotCnt">N
											</span>
											)
											<!-- icon_lnb_new2.png -->
											<img src = "https://fyawsbucket.s3.ap-northeast-2.amazonaws.com/icon_lnb_new2.png" class = "new" id = "_newGdasPossible" style = "display : none;" alt = "신규 리뷰 작성">
										</a>
									</li>
									<li class = "subMenu">
										<a href = "#" mymenuid = "0403" data-ref-linkurl = "#" data-attr = "마이페이지^메뉴^상품Q&A내역">상품Q&A내역</a>
									</li>
									<!-- 아래 두 페이지 기능 구현 안함 -->
									<li class = "subMenu">
										<a href = "#" mymenuid = "0404" data-ref-linkurl = "#" data-attr = "마이페이지^메뉴^참여 현황">참여 현황</a>
									</li>
									<li class = "subMenu">
										<a href = "#" mymenuid = "0405" data-ref-linkurl = "#" data-attr = "마이페이지^메뉴^올영체험단 리뷰">올영체험단 리뷰</a>
									</li>
								</ul>
							</li>
							<li>
								<h2>마이 정보</h2>
								<ul>
									<li class = "subMenu">
										<a href = "modify1.do" mymenuid = "0501" data-ref-linkurl = "#" data-attr = "마이페이지^메뉴^회원정보 수정">회원정보 수정</a>
									</li>
									<li class = "subMenu">
										<a href = "#" mymenuid = "0502" data-ref-linkurl = "#" data-attr = "마이페이지^메뉴^배송지/환불계좌">배송지/환불계좌</a>
									</li>
									<li class = "subMenu">
										<a href = "#" mymenuid = "0503" data-ref-linkurl = "#" data-attr = "마이페이지^메뉴^관심 매장 관리">관심 매장 관리</a>
									</li>
									<li class = "subMenu">
										<a href = "preUserDelete.do" mymenuid = "0504" data-ref-linkurl = "#" data-attr = "마이페이지^메뉴^회원탈퇴">회원탈퇴</a>
									</li>
								</ul>
							</li>
						</ul>
					</div>
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