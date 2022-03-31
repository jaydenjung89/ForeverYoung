<%@ page language="java" contentType="text/html; charset=UTF-8"
	pageEncoding="UTF-8"%>
<%@ taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core"%>
<%@ taglib prefix="fmt" uri="http://java.sun.com/jsp/jstl/fmt"%>
<c:set var="path" value="${pageContext.request.contextPath}" />

<!DOCTYPE html>
<html>
<head>

<meta charset="utf-8">
<meta http-equiv="X-UA-Compatible" content="IE=edge">
<meta name="viewport"
	content="width=device-width, initial-scale=1, shrink-to-fit=no">
<meta name="description" content="">
<meta name="author" content="">

<title>ForeverYoung - Admin_Product</title>

<!-- Custom fonts for this template-->
<link href="${path}/vendor/fontawesome-free/css/all.min.css"
	rel="stylesheet" type="text/css">
<link
	href="https://fonts.googleapis.com/css?family=Nunito:200,200i,300,300i,400,400i,600,600i,700,700i,800,800i,900,900i"
	rel="stylesheet">
<link rel="shortcut icon" href="https://fyawsbucket.s3.ap-northeast-2.amazonaws.com/favicon_logo.ico" type="image/x-icon" />
<!-- Custom styles for this template-->
<link href="${path}/css2/sb-admin-2.min.css" rel="stylesheet">
<script type="text/javascript">
	function delete_check(url) {
		var answer = confirm("상품 목록을 삭제하시겠습니까?");
		if (answer == true) {
			location = url;
		}
	}
	function update_check(url) {
		var answer = confirm("상품 목록을 수정하시겠습니까?");
		if (answer == true) {
			location = url;
		}
	}
</script>
<style type="text/css">/* Chart.js */
@
keyframes chartjs-render-animation {
	from {opacity: .99
}

to {
	opacity: 1
}

}
.chartjs-render-monitor {
	animation: chartjs-render-animation 1ms
}

.chartjs-size-monitor, .chartjs-size-monitor-expand,
	.chartjs-size-monitor-shrink {
	position: absolute;
	direction: ltr;
	left: 0;
	top: 0;
	right: 0;
	bottom: 0;
	overflow: hidden;
	pointer-events: none;
	visibility: hidden;
	z-index: -1
}

.chartjs-size-monitor-expand>div {
	position: absolute;
	width: 1000000px;
	height: 1000000px;
	left: 0;
	top: 0
}

.chartjs-size-monitor-shrink>div {
	position: absolute;
	width: 200%;
	height: 200%;
	left: 0;
	top: 0
}
</style>
</head>

<body id="page-top">

	<!-- Page Wrapper -->
	<div id="wrapper">

		<!-- Sidebar -->
		<jsp:include page="../../default/sideMenu.jsp"></jsp:include>
		<!-- End of Sidebar -->

		<!-- Content Wrapper -->
		<div id="content-wrapper" class="d-flex flex-column">

			<!-- Main Content -->
			<div id="content">

				<!-- Topbar -->
				<jsp:include page="../../default/header.jsp"></jsp:include>
				<!-- End of Topbar -->

				<!-- 여기만 수정해서 사용 -->
				<h4>상품 리스트</h4>
				<div class="table-responsive">
					<table class="table table-striped table-sm"
						style="text-align: center">
						<thead>
							<tr>
								<th scope="col">번호</th>
								<th scope="col">1차 카테고리</th>
								<th scope="col">2차 카테고리</th>
								<th scope="col">3차 카테고리</th>
								<th scope="col">브랜드명</th>
								<th scope="col">상품명</th>
							</tr>
						</thead>
						<tfoot>
							<tr>
								<th scope="col">번호</th>
								<th scope="col">1차 카테고리</th>
								<th scope="col">2차 카테고리</th>
								<th scope="col">3차 카테고리</th>
								<th scope="col">브랜드명</th>
								<th scope="col">상품명</th>
							</tr>
						</tfoot>
						<tbody>
							<c:forEach var="goods" items="${goodsList }">
								<tr>
									<td>${goods.rownum }</td>
									<td>${goods.category_first_serial }</td>
									<td>${goods.category_second_serial }</td>
									<td>${goods.category_third_serial }</td>
									<td>${goods.category_goods_brand }</td>
									<td>${goods.category_goods_name }</td>
									<td><input type="hidden" value="${goods.category_goods_serial }"
										name="category_goods_serial" id="category_goods_serial"><input
										type="button" value="수정"
										onclick="javascirpt:update_check('updateGoodsPage.mdo?category_goods_serial=${goods.category_goods_serial}')" />
									</td>
									<td><input type="hidden" value="${goods.category_goods_serial }"
										name="category_goods_serial" id="category_goods_serial"><input
										type="button" value="삭제"
										onclick="javascirpt:delete_check('deleteGoods.mdo?category_goods_serial=${goods.category_goods_serial}')" />
									</td>
								</tr>
							</c:forEach>
						</tbody>
					</table>
					<ul class="pagination" style= text-align: center;>
						<li class="paginate_button page-item previous disabled"
							id="dataTable_previous"><a href="#"
							aria-controls="dataTable" data-dt-idx="0" tabindex="0"
							class="page-link">Previous</a></li>
						<li class="paginate_button page-item active"><a href="#"
							aria-controls="dataTable" data-dt-idx="1" tabindex="0"
							class="page-link">1</a></li>
						<li class="paginate_button page-item "><a href="#"
							aria-controls="dataTable" data-dt-idx="2" tabindex="0"
							class="page-link">2</a></li>
						<li class="paginate_button page-item "><a href="#"
							aria-controls="dataTable" data-dt-idx="3" tabindex="0"
							class="page-link">3</a></li>
						<li class="paginate_button page-item "><a href="#"
							aria-controls="dataTable" data-dt-idx="4" tabindex="0"
							class="page-link">4</a></li>
						<li class="paginate_button page-item "><a href="#"
							aria-controls="dataTable" data-dt-idx="5" tabindex="0"
							class="page-link">5</a></li>
						<li class="paginate_button page-item "><a href="#"
							aria-controls="dataTable" data-dt-idx="6" tabindex="0"
							class="page-link">6</a></li>
						<li class="paginate_button page-item next" id="dataTable_next"><a
							href="#" aria-controls="dataTable" data-dt-idx="7" tabindex="0"
							class="page-link">Next</a></li>
					</ul>
				</div>
				<!-- 여기만 수정해서 사용 -->

			</div>
		</div>
		<!-- /.container-fluid -->
	</div>
	<!-- End of Main Content -->

	<!-- Footer -->
	<jsp:include page="../../default/footer.jsp"></jsp:include>
	<!-- End of Footer -->

	<!-- Scroll to Top Button-->
	<a class="scroll-to-top rounded" href="#page-top"> <i
		class="fas fa-angle-up"></i>
	</a>

	<!-- Logout Modal-->
	<div class="modal fade" id="logoutModal" tabindex="-1" role="dialog"
		aria-labelledby="exampleModalLabel" aria-hidden="true">
		<div class="modal-dialog" role="document">
			<div class="modal-content">
				<div class="modal-header">
					<h5 class="modal-title" id="exampleModalLabel">Ready to Leave?</h5>
					<button class="close" type="button" data-dismiss="modal"
						aria-label="Close">
						<span aria-hidden="true">×</span>
					</button>
				</div>
				<div class="modal-body">Select "Logout" below if you are ready
					to end your current session.</div>
				<div class="modal-footer">
					<button class="btn btn-secondary" type="button"
						data-dismiss="modal">Cancel</button>
					<a class="btn btn-primary" href="login.html">Logout</a>
				</div>
			</div>
		</div>
	</div>
	<script>
		$(".odd").click(
				function() {
					if ($(this).nextAll("tr").find(".sub").is(":visible")) {
						$(this).nextAll("tr").find(".sub").css("display",
								"none");
					} else {
						$(this).nextAll("tr").find(".sub").css("display",
								"table-cell");
					}
				})
	</script>
</body>
</html>