<%@ page language="java" contentType="text/html; charset=UTF-8"
	pageEncoding="UTF-8"%>
<%@ taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core"%>
<c:set var="path" value="${pageContext.request.contextPath}" />
<!DOCTYPE html>
<html>
<head>
<meta charset="UTF-8">
<meta name="viewport" content="width=device-width, initial-scale=1">
<title>admin</title>
<link rel="canonical"
	href="https://getbootstrap.com/docs/5.1/examples/dashboard/">
<!-- Bootstrap core CSS -->
<link href="${path }/css_admin/bootstrap.min.css" rel="stylesheet">
<!-- 제이쿼리 -->
<script
	src="https://ajax.googleapis.com/ajax/libs/jquery/3.3.1/jquery.min.js"></script>
<link rel="shortcut icon" href="https://fyawsbucket.s3.ap-northeast-2.amazonaws.com/favicon_logo.ico" type="image/x-icon" />
<link rel="apple-touch-icon"
	href="/docs/5.1/assets/img/favicons/apple-touch-icon.png"
	sizes="180x180">
<link rel="icon" href="/docs/5.1/assets/img/favicons/favicon-32x32.png"
	sizes="32x32" type="image/png">
<link rel="icon" href="/docs/5.1/assets/img/favicons/favicon-16x16.png"
	sizes="16x16" type="image/png">
<link rel="manifest" href="/docs/5.1/assets/img/favicons/manifest.json">
<link rel="mask-icon"
	href="/docs/5.1/assets/img/favicons/safari-pinned-tab.svg"
	color="#7952b3">
<link rel="icon" href="/docs/5.1/assets/img/favicons/favicon.ico">
<meta name="theme-color" content="#7952b3">
<style>
.bd-placeholder-img {
	font-size: 1.125rem;
	text-anchor: middle;
	-webkit-user-select: none;
	-moz-user-select: none;
	user-select: none;
}

@media ( min-width : 768px) {
	.bd-placeholder-img-lg {
		font-size: 3.5rem;
	}
}
</style>
</head>
<body>
	<!-- dont touch -->
	<jsp:include page="../default/header.jsp"></jsp:include>
	<div class="container-fluid">
		<div class="row">
			<jsp:include page="../default/sideMenu.jsp"></jsp:include>
			<main class="col-md-9 ms-sm-auto col-lg-10 px-md-4">
				<div
					class="d-flex justify-content-between flex-wrap flex-md-nowrap align-items-center pt-3 pb-2 mb-3 border-bottom">
					<h1 class="h2">마케팅관리</h1>
					<div class="btn-toolbar mb-2 mb-md-0">
						<div class="btn-group me-2">
							<!-- <button type="button" class="btn btn-sm btn-outline-secondary">Share</button>
							<button type="button" class="btn btn-sm btn-outline-secondary">Export</button> -->
						</div>
						<!-- <button type="button"
							class="btn btn-sm btn-outline-secondary dropdown-toggle">
							<span data-feather="calendar"></span> This week
						</button> -->
					</div>
				</div>
				<!-- dont touch -->

				<!-- 여기만 수정해서 사용 -->
				<h1 class="mt-4">마케팅 관리</h1>
				<ol class="breadcrumb mb-4">
					<li class="breadcrumb-item">배너</li>
					<li class="breadcrumb-item active">목록</li>
				</ol>

				<div class="card mb-4">
					<div class="card-header">
						<div class="col three">
							<div style="font-size: 25px; color: #5f0080; font-weight: bold;">
								배너목록 <a href="admin_bannerWrite.mdo" class="btn1 btn-dark"
									style="float: right;">배너 등록</a>
							</div>
						</div>
					</div>
					<div class="card-body">
						<table id="datatablesSimple">
							<thead>
								<tr>
									<th>번호</th>
									<th>배너이름</th>
									<th>배너내용</th>
									<th width="1000">배너이미지</th>
								</tr>
							</thead>
							<tfoot>
								<tr>
									<th>번호</th>
									<th>배너이름</th>
									<th>배너내용</th>
									<th width="1000">배너이미지</th>
								</tr>
							</tfoot>
							<tbody>
								<c:forEach var="banner" items="${bannerList }">
									<tr>
										<td
											onclick="location.href='admin_banner.mdo?banner_serial=${banner.banner_serial}'">${banner.banner_serial }</td>
										<td
											onclick="location.href='admin_banner.mdo?banner_serial=${banner.banner_serial}'">${banner.banner_title }</td>
										<td
											onclick="location.href='admin_banner.mdo?banner_serial=${banner.banner_serial}'">${banner.banner_contents }</td>
										<td
											onclick="location.href='admin_banner.mdo?banner_serial=${banner.banner_serial}'"><img
											src="${banner.banner_filepath }" height="150" width="1000"></td>
									</tr>
								</c:forEach>
							</tbody>
						</table>
					</div>
				</div>
				<!-- 여기만 수정해서 사용 -->

			</main>
		</div>
	</div>
	<!-- dont touch -->
	<script src="${path }/css_admin/js/bootstrap.bundle.min.js"></script>
	<script
		src="https://cdn.jsdelivr.net/npm/feather-icons@4.28.0/dist/feather.min.js"></script>
	<script
		src="https://cdn.jsdelivr.net/npm/chart.js@2.9.4/dist/Chart.min.js"></script>
	<script src="dashboard.js"></script>
	<jsp:include page="../default/footer.jsp"></jsp:include>
	<!-- dont touch -->
</body>
</html>