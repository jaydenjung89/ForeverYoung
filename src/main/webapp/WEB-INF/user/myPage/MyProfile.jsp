<%@ page language="java" contentType="text/html; charset=utf-8"
	pageEncoding="utf-8"%>
<%@ taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core" %>
<c:set var="path" value="${pageContext.request.contextPath}"/>
<!DOCTYPE html>
<html>
<head>
<meta charset="utf-8">
<title>myprofile</title>
<link rel="stylesheet" type="text/css" href="${path }/css/board.css" />
<link rel="stylesheet" type="text/css" href="${path }/css/common.css" />
<link rel="stylesheet" type="text/css" href="${path }/css/contents.css" />
<link rel="stylesheet" type="text/css" href="${path }/css/curation.css" />
<link rel="stylesheet" type="text/css" href="${path }/css/global.css" />
<link rel="stylesheet" type="text/css"
   href="${path }/css/jquery.mCustomScrollbar.css" />
<link rel="stylesheet" type="text/css" href="${path }/css/pickup.css" />
</head>
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
								<strong class = "name">${user.user_name}</strong>
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
						
						<div class = "point-box">
							<ul class = "infor clrfix" id = "pointInfo">
								<!-- 마이페이지의 CJONE포인트 페이지로 이동 -->
								<li id = "cjOnePoingInfo" onclick = "#">
									<span class = "tit">FY ONE 포인트</span>
									<a class = "num" href = "#">
										${userPoint }
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
				
				<!-- 마이페이지 sub 메뉴 -->
				<div class = "mypage-ix">
						<jsp:include page="../default/myPage_Sub_Menu.jsp"></jsp:include>
					<!-- //마이페이지 sub 메뉴 -->
					
					<div class = "mypage-conts">
						<div class = "title-area">
							<h2 class = "tit">나의 프로필</h2>
							<!-- 오늘날짜 기준으로 작성됨 -->
							<p class = "data">2021.08.03 ~ 2022.01.30 기준</p>
						</div>
						<!-- 이벤트로 빠지는 form 태그  -->
						<form id = "addInfoForm" action method = "POST" onkeydown = "return captureReturnKey(event)">
							<div class = "user_info_box clrix">
								<div class = "area_01">
									<!-- 유저 아이디 기입 -->
									<p class = "uid">${user.user_id}</p>
									<dl class = "nick clrfix">
										<dt>닉네임</dt>
										<dd>
											<!-- value 안에 본인 닉네임 -->
											<input type = "hidden" id = "ordNickNm" value = "닉네임">
											<input type = "text" name = "mbrNickNm" id = "mbrNickNm" value = "닉네임" placeholder = "닉네임을 설정해주세요."  onblur = "mypage.profileInfo.nickNmValidationCk('')" onkeyup = "mypage.profileInfo.invalidNickNm()">
											<button type = "button" onclick = "mypage.profileInfo.nickNmDuplicateCk('check');">중복확인</button>
										</dd>
									</dl>
								</div>
								<div class = "area_02">
									<ul class = "info">
										<li class = "icon_01">
											<span class = "txt">리뷰 수</span>
											<span class = "num"> - 건</span>
										</li>
										<li class = "icon_02">
											<span class = "txt">도움 수</span>
											<span class = "num"> - 회</span>
										</li>
										<li class = "icon_03">
											<span class = "txt">점수</span>
											<span class = "num"> - 점</span>
										</li>
										<li class = "icon_04">
											<span class = "txt">랭킹</span>
											<span class = "num"> - 위</span>
										</li>
									</ul>
								</div>
							</div>
							<p class = "stxt_nick txtinfo" style = "display:none"></p>
							<div class = "title-area tpd37">
								<h2 class = "tit">
									나의 피부 컨디션 & 관심카테고리 정보
									<!-- 팝업창 띄워지는 onclick -->
									<a href = "" onclick = "" class = "iconq">
										<img src = "https://fyawsbucket.s3.ap-northeast-2.amazonaws.com/icon_q_18.png">
									</a>
								</h2>
							</div>
							
							<!-- 아래에서 선택한 피부타입과 피부톤이 value 값으로 들어감 -->
							<input type = "hidden" id = "compareType" name = "skin_type1" value = "">
							<input type = "hidden" id = "compareTone" name = "skin_type2" value = "">
							
							<div class = "skin_choice_box">
								<div class = "innerBox">
									<dl class = "type_box verti">
										<dt>어떤 피부타입이세요?</dt>
										<dd>
											<ul class = "radius_box_list clrfix">
												<!-- 코드조회 -->
												<!-- input 태그 안에 checked 와 label 태그 안에 class = "on" 삽입시 선택이 완료됨 -->
												<li>
													<input type = "radio" id = "skin_type1_1" name = "skin_type_1" value = "A01">
													<label for = "skin_type1_1">지성</label>
												</li>
												<li>
													<input type = "radio" id = "skin_type1_2" name = "skin_type_1" value = "A02">
													<label for = "skin_type1_2">건성</label>
												</li>
												<li>
													<input type = "radio" id = "skin_type1_3" name = "skin_type_1" value = "A03">
													<label for = "skin_type1_3">복합성</label>
												</li>
												<li>
													<input type = "radio" id = "skin_type1_4" name = "skin_type_1" value = "A04">
													<label for = "skin_type1_4">민감성</label>
												</li>
												<li>
													<input type = "radio" id = "skin_type1_5" name = "skin_type_1" value = "A05">
													<label for = "skin_type1_5">약건성</label>
												</li>
												<li>
													<input type = "radio" id = "skin_type1_6" name = "skin_type_1" value = "A06">
													<label for = "skin_type1_6">트러블성</label>
												</li>
												<li>
													<input type = "radio" id = "skin_type1_7" name = "skin_type_1" value = "A07">
													<label for = "skin_type1_7">중성</label>
												</li>
											</ul>
										</dd>
									</dl>
								</div>
								<div class = "innerBox">
									<dl class = "type_box verti">
										<dt>어떤 피부톤이세요?</dt>
										<dd>
											<ul class = "radius_box_list clrfix">
												<!-- 코드조회 -->
												<!-- input 태그 안에 checked 와 label 태그 안에 class = "on" 삽입시 선택이 완료됨 -->
												<li>
													<input type = "radio" id = "skin_type2_1" name = "skin_type_2" value = "B01">
													<label for = "skin_type1_1">쿨톤</label>
												</li>
												<li>
													<input type = "radio" id = "skin_type2_2" name = "skin_type_2" value = "B02">
													<label for = "skin_type2_2">웜톤</label>
												</li>
												<li>
													<input type = "radio" id = "skin_type2_3" name = "skin_type_2" value = "B03">
													<label for = "skin_type2_3">봄웜톤</label>
												</li>
												<li>
													<input type = "radio" id = "skin_type2_4" name = "skin_type_2" value = "B04">
													<label for = "skin_type2_4">여름쿨톤</label>
												</li>
												<li>
													<input type = "radio" id = "skin_type2_5" name = "skin_type_2" value = "B05">
													<label for = "skin_type2_5">가을웜톤</label>
												</li>
												<li>
													<input type = "radio" id = "skin_type2_6" name = "skin_type_2" value = "B06">
													<label for = "skin_type2_6">겨울쿨톤</label>
												</li>
											</ul>
										</dd>
									</dl>
								</div>
								<div class = "innerBox">
									<dl class = "type_box verti">
										<dt>
											피부고민이 뭐예요?
											<br>
											<span class = "stxt">(복수선택 가능)</span>
										</dt>
										<dd>
											<ul class = "radius_box_list clrfix">
												<!-- 코드조회 -->
												<!-- input 태그 안에 checked 할시 선택완료 -->
												<!-- checked 사용후 초기화 -->
												<li>
													<input type = "checkbox" id = "skin_type3_1" name = "skin_type_3" value = "C01">
													<label for = "skin_type3_1">잡티</label>
												</li>
												<li>
													<input type = "checkbox" id = "skin_type3_2" name = "skin_type_3" value = "C02">
													<label for = "skin_type3_2">미백</label>
												</li>
												<li>
													<input type = "checkbox" id = "skin_type3_3" name = "skin_type_3" value = "C03">
													<label for = "skin_type3_3">주름</label>
												</li>
												<li>
													<input type = "checkbox" id = "skin_type3_4" name = "skin_type_3" value = "C04">
													<label for = "skin_type3_4">각질</label>
												</li>
												<li>
													<input type = "checkbox" id = "skin_type3_5" name = "skin_type_3" value = "C05">
													<label for = "skin_type3_5">트러블</label>
												</li>
												<li>
													<input type = "checkbox" id = "skin_type3_6" name = "skin_type_3" value = "C06">
													<label for = "skin_type3_6">블랙헤드</label>
												</li>
												<li>
													<input type = "checkbox" id = "skin_type3_7" name = "skin_type_3" value = "C07">
													<label for = "skin_type3_7">피지과다</label>
												</li>
												<li>
													<input type = "checkbox" id = "skin_type3_8" name = "skin_type_3" value = "C08">
													<label for = "skin_type3_8">민감성</label>
												</li>
												<li>
													<input type = "checkbox" id = "skin_type3_9" name = "skin_type_3" value = "C09">
													<label for = "skin_type3_9">모공</label>
												</li>
												<li>
													<input type = "checkbox" id = "skin_type3_10" name = "skin_type_3" value = "C10">
													<label for = "skin_type3_10">탄력</label>
												</li>
												<li>
													<input type = "checkbox" id = "skin_type3_11" name = "skin_type_3" value = "C11">
													<label for = "skin_type3_11">홍조</label>
												</li>
												<li>
													<input type = "checkbox" id = "skin_type3_12" name = "skin_type_3" value = "C12">
													<label for = "skin_type3_12">아토피</label>
												</li>
												<li>
													<input type = "checkbox" id = "skin_type3_13" name = "skin_type_3" value = "C13">
													<label for = "skin_type3_13">다크서클</label>
												</li>
											</ul>
										</dd>
									</dl>
								</div>
								<div class = "innerBox">
									<dl class = "type_box verti">
										<dt>
											나의 관심 카테고리
											<br>
											<span class = "stxt">(중복선택 가능)</span>
										</dt>
										<dd>
											<ul class = "radius_box_list clrfix">
											<!-- input 태그 안에 checked 할시 선택완료 -->
												<li>
													<input type = "checkbox" id = "skin_type4_1" value = "D01" name = "skin_type4">
													<label for = "skin_type4_1">스킨케어</label>
												</li>
												<li>
													<input type = "checkbox" id = "skin_type4_2" value = "D02" name = "skin_type4">
													<label for = "skin_type4_2">마스크팩</label>
												</li>
												<li>
													<input type = "checkbox" id = "skin_type4_3" value = "D03" name = "skin_type4">
													<label for = "skin_type4_3">클렌징</label>
												</li>
												<li>
													<input type = "checkbox" id = "skin_type4_4" value = "D04" name = "skin_type4">
													<label for = "skin_type4_4">선케어</label>
												</li>
												<li>
													<input type = "checkbox" id = "skin_type4_5" value = "D05" name = "skin_type4">
													<label for = "skin_type4_5">더모 코스메틱</label>
												</li>
												<li>
													<input type = "checkbox" id = "skin_type4_6" value = "D06" name = "skin_type4">
													<label for = "skin_type4_6">메이크업</label>
												</li>
												<li>
													<input type = "checkbox" id = "skin_type4_7" value = "D07" name = "skin_type4">
													<label for = "skin_type4_7">네일</label>
												</li>
												<li>
													<input type = "checkbox" id = "skin_type4_8" value = "D08" name = "skin_type4">
													<label for = "skin_type4_8">바디케어</label>
												</li>
												<li>
													<input type = "checkbox" id = "skin_type4_9" value = "D09" name = "skin_type4">
													<label for = "skin_type4_9">헤어케어</label>
												</li>
												<li>
													<input type = "checkbox" id = "skin_type4_10" value = "D10" name = "skin_type4">
													<label for = "skin_type4_10">향수/디퓨저</label>
												</li>
												<li>
													<input type = "checkbox" id = "skin_type4_11" value = "D11" name = "skin_type4">
													<label for = "skin_type4_11">미용소품</label>
												</li>
												<li>
													<input type = "checkbox" id = "skin_type4_12" value = "D12" name = "skin_type4">
													<label for = "skin_type4_12">남성</label>
												</li>
												<li>
													<input type = "checkbox" id = "skin_type4_13" value = "D13" name = "skin_type4">
													<label for = "skin_type4_13">건강/위생용품</label>
												</li>
												<li>
													<input type = "checkbox" id = "skin_type4_14" value = "D14" name = "skin_type4">
													<label for = "skin_type4_14">건강식품</label>
												</li>
												<li>
													<input type = "checkbox" id = "skin_type4_15" value = "D15" name = "skin_type4">
													<label for = "skin_type4_15">푸드</label>
												</li>
												<li>
													<input type = "checkbox" id = "skin_type4_16" value = "D16" name = "skin_type4">
													<label for = "skin_type4_16">라이브/홈</label>
												</li>
												<li>
													<input type = "checkbox" id = "skin_type4_17" value = "D17" name = "skin_type4">
													<label for = "skin_type4_17">반려동물</label>
												</li>
												<li>
													<input type = "checkbox" id = "skin_type4_18" value = "D18" name = "skin_type4">
													<label for = "skin_type4_18">베이비</label>
												</li>
											</ul>
										</dd>
									</dl>
								</div>
								<input type = "hidden" id = "addInfoAgrYnVal" value = "Y" name = "addInfoAgrYn">
								<div class = "title-area tpd50">
									<h2 class = "tit">공개설정</h2>
								</div>
								<input type = "hidden" id = "addInfoOpenYnVal" name = "addInfoOpenYnVal" value = "N">
								<input type = "hidden" id = "curationRedirectUrl" value>
								<ul class = "chkList mgT15">
									<li>
										<input type = "checkbox" id = "addInfoAgrYn" class = "chkSmall" title = "개인화 맞춤화 큐레이션 서비스 이용 동의(선택)" value = "Y" checked>
										<label for = "addInfoAgrYn">개인화 맞춤형 큐레이션 서비스 이용 동의(선택)</label>
									</li>
								</ul>
								<table class = "tbl_agree2 mgT12">
									<caption>회원 맞품형 큐레이션 서비스 이용 동의표</caption>
									<colgroup>
										<col style = "width : 33%;">
										<col style = "width : 33%;">
										<col style = "width : 34%;">
									</colgroup>
									<thead>
										<tr>
											<th scope = "col">수집·이용 목적</th>
											<th scope = "col">수집 항목</th>
											<th scope = "col">보유 및 이용 기간</th>
										</tr>
									</thead>
									<tbody>
										<tr>
											<td>수집 항목 활용 맞춤형 상품 추천, 서비스 추천 등의 안내 및 이를 기반한 마케팅 활동</td>
											<td>
												<em class = "udline">성별, 생년원일, 피부타입, 피부고민, 피부톤, 관심 카테고리, 관심분야, 관심브랜드, 반려동물 보유여부, 반려동물 정보</em>
											</td>
											<td>
												<em class = "udline">회원 탈퇴 후 30일까지 또는 해당 서비스 동의 철회 시까지</em>
											</td>
										</tr>
									</tbody>
								</table>
								<p class = "txt_dg2 mgT10">
									※ 회원은 본 서비스 이용 동의에 대한 거부를 할 수 있으며, 미동의 시 본 서비스에 대한 혜택을 받으실 수 없습니다.
								</p>
								<ul class = "chkList mgT30">
									<li>
										<input type = "checkbox" id = "addInfoOpenYn" name = "addInfoOpenYn" class = "chkSmall" title = "나의 피부 컨디션 & 관심 카테고리 정보 비공개" checked>
										<label for = "addInfoOpenYn">나의 피부 컨디션 & 관심 카테고리 정보 비공개</label>
									</li>
								</ul>
								<p class = "txt_dg2 mgT10">
									※ 비공개로 설정하실 경우 고객님의 피부타입, 피부톤, 피부고민, 성별, 연령대, 관심카테고리 정보가 공개되지 않습니다.
								</p>
								<div class = "area1sButton mgT20">
									<!-- javascript 로 저장시킴 -->
									<a href = "#" class = "btnGreen45 w150" id = "myConditionSaveBtn">저장</a>
								</div>
							</div>
						</form>
						
						<!-- script 있음 -->
						
					</div>
				</div>
			</div>
			
			<!-- script 있음 -->
			
			<div class = "laytoast" id = "brandOff" style = "display:none;">
				<div class = "inner">
					<p class = "txt_recom txt_01">
						브랜드
						<br>
						<em>좋아요</em>
					</p>
				</div>
			</div>
			<div class = "laytoast on" id = "brandOn" style = "display:none;">
				<div class = "inner">
					<p class = "txt_recom txt_01">
						브랜드
						<br>
						<em>좋아요</em>
					</p>
				</div>
			</div>
			
			<!-- 브랜드 찜 확인 레이어 -->
			<div class="layerAlim brand zzimOn" style="display:none;"><!-- zzimOn / zzimOff -->
		 		<span class="icon"></span>
		 		<p>브랜드<strong>좋아요</strong></p>
			</div>
	
			<div class="layerAlim brand zzimOff" style="display:none;"><!-- zzimOn / zzimOff -->
		 		<span class="icon"></span>
		 		<p>브랜드<strong>좋아요</strong></p>
			</div>
			<!-- 브랜드 찜 확인 레이어 -->
		
			<!-- 찜 확인 레이어 -->
			<div class="layerAlim zzimOn wishPrd" style="display:none;">
				<span class="icon"></span>
				<p class="one">
					<strong>좋아요</strong>
				</p>
			</div>
			<!--// 찜 확인 레이어 -->
		
			<!-- 찜 취소 레이어 -->
			<div class="layerAlim zzimOff wishPrd" style="display:none;">
				<span class="icon"></span>
				<p class="one">
					<strong>좋아요</strong>
				</p>
			</div>
			<!--// 찜 취소 레이어 -->
	
			<!-- TOP 바로가기 버튼 추가 -->
			<div id="directTop">
				<button>
				<span></span>TOP</button>
			</div>
			
		</div>
		<jsp:include page="../default/footer.jsp"></jsp:include>
	</body>
</html>