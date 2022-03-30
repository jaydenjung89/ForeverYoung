<%@ page language="java" contentType="text/html; charset=UTF-8"
	pageEncoding="UTF-8"%>
<%@ taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core"%>
<c:set var="path" value="${pageContext.request.contextPath}" />
<!DOCTYPE html>
<html>
<head>
<meta charset="UTF-8">
<title>Insert title here</title>
</head>
<body>
<input type="hidden" value="${adminId }" />
	<ul
		class="navbar-nav bg-gradient-primary sidebar sidebar-dark accordion"
		id="accordionSidebar">

		<!-- Sidebar - Brand -->
		<a
			class="sidebar-brand d-flex align-items-center justify-content-center"
			href="main_dashboard.mdo"> <!-- 포에버영 로고 -->
			<div class="sidebar-brand-icon rotate-n-15">
				<i class="fas fa-laugh-wink"></i>
			</div> <!-- 로고 글씨 -->
			<div class="sidebar-brand-text mx-3">foreveryoung</div>
		</a>

		<!-- Divider -->
		<hr class="sidebar-divider my-0">

		<!-- Nav Item - Dashboard -->
		
		<li class="nav-item active"><a class="nav-link" href="main_dashboard.mdo">
				<i class="fas fa-fw fa-tachometer-alt"></i> <span>Dashboard</span>
		</a></li>

		<!-- Divider -->
		<hr class="sidebar-divider" />

		<!-- Heading -->
		<div class="sidebar-heading">메뉴</div>

		<!-- 사이드바 회원관리 -->
		<li class="nav-item"><a class="nav-link collapsed" href="#"
			data-toggle="collapse" data-target="#collapseOne"
			aria-expanded="true" aria-controls="collapseOne"> <i
				class="fas fa-fw fa-cog"></i> <span>회원/관리자</span>
		</a>
			<div id="collapseOne" class="collapse" aria-labelledby="headingOne"
				data-parent="#accordionSidebar">
				<div class="bg-white py-2 collapse-inner rounded">
					<h6 class="collapse-header">회원/관리자</h6>
					<a class="collapse-item" href="${path }/admin_userList.mdo">회원관리</a>
					<a class="collapse-item" href="${path }/admin_List.mdo">관리자관리</a>
				</div>
			</div></li>

		<!-- 사이드바 배너관리 -->
         <li class="nav-item">
            <a class="nav-link collapsed" href="#" data-toggle="collapse" data-target="#collapseThree" aria-expanded="true" aria-controls="collapseThree">
            <i class="fas fa-fw fa-cog"></i> <span>배너관리</span>
         </a>
            <div id="collapseThree" class="collapse" aria-labelledby="headingThree" data-parent="#accordionSidebar">
               <div class="bg-white py-2 collapse-inner rounded">
                  <h6 class="collapse-header">배너관리</h6>
                  <a class="collapse-item" href="/foreveryoung/admin_bannerList.mdo">배너목록</a>
                  <a class="collapse-item" href="/foreveryoung/admin_bannerWrite.mdo">배너등록</a>
               </div>
            </div>
         </li>

		

		<!-- 사이드바 ㄱㅔ시글관리 -->
		<li class="nav-item"><a class="nav-link collapsed" href="#"
			data-toggle="collapse" data-target="#collapseBoard"
			aria-expanded="true" aria-controls="collapseBoard"> <i
				class="fas fa-fw fa-cog"></i> <span>게시글관리</span>
		</a>
			<div id="collapseBoard" class="collapse"
				aria-labelledby="headingFive" data-parent="#accordionSidebar">
				<div class="bg-white py-2 collapse-inner rounded">
					<h6 class="collapse-header">게시글관리</h6>
					<a class="collapse-item" href="${path}/admin_qnaPersonal.mdo">1:1문의</a>
					<a class="collapse-item" href="${path}/admin_faq.mdo">FAQ</a> <a
						class="collapse-item" href="${path}/admin_notice.mdo">공지사항</a>
				</div>
			</div></li>

		
         <li class="nav-item">
            <a class="nav-link collapsed" href="#" data-toggle="collapse" data-target="#collapseSix" aria-expanded="true" aria-controls="collapseSix">
            <i class="fas fa-fw fa-cog"></i> <span>리뷰관리 & QnA관리</span>
         </a>
            <div id="collapseSix" class="collapse" aria-labelledby="headingSix" data-parent="#accordionSidebar">
               <div class="bg-white py-2 collapse-inner rounded">
                  <h6 class="collapse-header">리뷰관리 & QnA관리</h6>
                  <a class="collapse-item" href="getReviewGoodsName.mdo">리뷰관리</a>
                  <a class="collapse-item" href="gqnaList.mdo">QnA 답변대기</a>
                  <a class="collapse-item" href="gqnaListSuc.mdo">QnA 답변완료</a>
               </div>
            </div>
         </li>

		<!-- 사이드바 메뉴관리 -->
		<li class="nav-item"><a class="nav-link collapsed" href="#"
			data-toggle="collapse" data-target="#collapseTwo"
			aria-expanded="true" aria-controls="collapseTwo"> <i
				class="fas fa-fw fa-cog"></i> <span>상품관리</span>
		</a>
			<div id="collapseTwo" class="collapse" aria-labelledby="headingTwo"
				data-parent="#accordionSidebar">
				<div class="bg-white py-2 collapse-inner rounded">
					<h6 class="collapse-header">상품관리</h6>
					<a class="collapse-item" href="admin_product.mdo">상품리스트</a> <a class="collapse-item"
						href="insertGoodsPage.mdo">상품등록</a>
				</div>
			</div></li>
			
		<!— 사이드바 주문관리 —>
         <li class="nav-item">
            <a class="nav-link collapsed" href="#" data-toggle="collapse" data-target="#collapsePages" aria-expanded="true" aria-controls="collapsePages">
            <i class="fas fa-fw fa-cog"></i> <span>주문관리</span>
         </a>
            <div id="collapsePages" class="collapse" aria-labelledby="headingPages" data-parent="#accordionSidebar">
               <div class="bg-white py-2 collapse-inner rounded">
                  <h6 class="collapse-header">주문관리</h6>
                  <a class="collapse-item" href="admin_orderWaitList.mdo">결제완료 목록</a>
                  <a class="collapse-item" href="admin_cancelList.mdo">결제취소 목록</a>
               </div>
            </div>
         </li>
         <!-- 사이드바 약관관리 -->
         <li class="nav-item">
            <a class="nav-link collapsed" href="#" data-toggle="collapse" data-target="#collapseUtilities" aria-expanded="true" aria-controls="collapseUtilities">
            <i class="fas fa-fw fa-cog"></i> <span>약관관리</span>
         </a>
            <div id="collapseUtilities" class="collapse" aria-labelledby="headingUtilities" data-parent="#accordionSidebar">
               <div class="bg-white py-2 collapse-inner rounded">
                  <h6 class="collapse-header">약관관리</h6>
                  <a class="collapse-item" href="insertTerms.mdo">약관등록</a>
                  <a class="collapse-item" href="termslist.mdo">약관목록</a>

               </div>
            </div>
         </li>

		<!-- Divider -->
		<hr class="sidebar-divider">

		<!-- Sidebar Toggler (Sidebar) -->
		<div class="text-center d-none d-md-inline">
			<button class="rounded-circle border-0" id="sidebarToggle"></button>
		</div>

	</ul>
	<!-- Bootstrap core JavaScript-->
	<script src="${path}/vendor/jquery/jquery.min.js"></script>
	<script src="${path}/vendor/bootstrap/js/bootstrap.bundle.min.js"></script>

	<!-- Core plugin JavaScript-->
	<script src="${path}/vendor/jquery-easing/jquery.easing.min.js"></script>

	<!-- Custom scripts for all pages-->
	<script src="${path}/js2/sb-admin-2.min.js"></script>

	<!-- Page level plugins -->
	<script src="${path}/vendor/chart.js/Chart.min.js"></script>

	<!-- Page level custom scripts -->
	<script src="${path}/js2/demo/chart-area-demo.js"></script>
	<script src="${path}/js2/demo/chart-pie-demo.js"></script>
</body>
</html>