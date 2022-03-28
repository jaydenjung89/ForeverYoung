<%@ page language="java" contentType="text/html; charset=utf-8"
    pageEncoding="utf-8"%>
<!DOCTYPE html>
<html>
<head>
<meta charset="utf-8">
<title>회사소개</title>
<link rel="stylesheet" type="text/css" href="../../css/board.css" />
<link rel="stylesheet" type="text/css" href="../../css/common.css" />
<link rel="stylesheet" type="text/css" href="../../css/contents.css" />
<link rel="stylesheet" type="text/css" href="../../css/curation.css" />
<link rel="stylesheet" type="text/css" href="../../css/global.css" />
<link rel="stylesheet" type="text/css" href="../../css/jquery.mCustomScrollbar.css" />
<link rel="stylesheet" type="text/css" href="../../css/pickup.css" />
</head>
<body>
<jsp:include page="../default/header.jsp"></jsp:include>
<!-- #Container -->
	<div id="Container">
		<!-- #Contents -->
		<div class="title-business"><h2>회사소개</h2></div>
	
		<ul class="businessTabs three">
			<li class="on"><a href="company.jsp" title="선택됨">브랜드 소개</a></li>
			<li class="hidde"><a href="#">새소식</a></li>
			<li><a href="#">지속가능경영</a></li>
			<li><a href="#">채용안내</a></li>
		</ul>

		<ul class="companyTabs">
			<li class="on"><a href="company.jsp" title="선택됨">연락처 및 약도</a></li>
			<li><a href="">브랜드 스토리</a></li>
			<li><a href="">CEO 메시지</a></li>
			<li><a href="">포에버영 히스토리</a></li>
		</ul>
		<div class="company-map">
			<div class="area-map">
				<div class="map" id="map" style="height:480px;"></div>
			</div>
			<h3>FY포에버영 주식회사</h3>
			<ul>
				<li><span>주소</span>서울특별시 종로구 돈화문로 26 단성사 4층</li>
				<li><span>연락처</span>0000-0000</li>
				<li><span>FAX</span>4층 : (02)0000-0000  </li>
			</ul>
			<h3>찾아오시는 방법</h3>
			<ul>
				<li><span>지하철</span>3호선 종로 3가역 1분</li>
				<li><span>버스</span></li>
				<li><span>자가용</span>인근 유료주차장 이용 (외부차량 주차가 어려우므로 가급적 대중교통을 이용 바랍니다.)</li>
			</ul>
		</div>
	</div>
	<!-- //#Container -->
<body>
	<!-- 지도를 표시할 div 입니다 -->
	<div id="map"></div>

	<script type="text/javascript"
		src="//dapi.kakao.com/v2/maps/sdk.js?appkey=991c7a1a6e24f35b8a0cbed2630c0bbd"></script>
	<script>
		var mapContainer = document.getElementById('map'), // 지도를 표시할 div 
		mapOption = {
			center : new kakao.maps.LatLng(37.571067541987865, 126.992467997689), // 지도의 중심좌표
			level : 3
		// 지도의 확대 레벨
		};

		// 지도를 표시할 div와  지도 옵션으로  지도를 생성합니다
		var map = new kakao.maps.Map(mapContainer, mapOption);
		
		// 마커가 표시될 위치입니다 
		var markerPosition  = new kakao.maps.LatLng(37.571067541987865, 126.992467997689); 

		// 마커를 생성합니다
		var marker = new kakao.maps.Marker({
		    position: markerPosition
		});

		// 마커가 지도 위에 표시되도록 설정합니다
		marker.setMap(map);

		// 아래 코드는 지도 위의 마커를 제거하는 코드입니다
		// marker.setMap(null);  
		
		
	</script>
<jsp:include page="../default/footer.jsp"></jsp:include>
</body>
</html>