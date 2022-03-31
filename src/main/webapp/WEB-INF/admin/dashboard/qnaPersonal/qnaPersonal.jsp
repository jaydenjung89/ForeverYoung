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

<title>ForeverYoung - Admin_Dashboard</title>

<!-- Custom fonts for this template-->
<link href="${path}/vendor/fontawesome-free/css/all.min.css"
	rel="stylesheet" type="text/css">
<link
	href="https://fonts.googleapis.com/css?family=Nunito:200,200i,300,300i,400,400i,600,600i,700,700i,800,800i,900,900i"
	rel="stylesheet">
<link rel="shortcut icon" href="https://fyawsbucket.s3.ap-northeast-2.amazonaws.com/favicon_logo.ico" type="image/x-icon" />
<!-- Custom styles for this template-->
<link href="${path}/css2/sb-admin-2.min.css" rel="stylesheet">
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
				<div class="card-body">
					<h2>1:1문의</h2>
					<div class="table-responsive">
						<div id="dataTable_wrapper"
							class="dataTables_wrapper dt-bootstrap4">
							<div class="row">
								<div class="col-sm-12 col-md-6">
									<div class="dataTables_length" id="dataTable_length">
										<label>Show <select name="dataTable_length"
											aria-controls="dataTable"
											class="custom-select custom-select-sm form-control form-control-sm"><option
													value="10">10</option>
												<option value="25">25</option>
												<option value="50">50</option>
												<option value="100">100</option></select> 문의목록
										</label>
									</div>
								</div>
								<div class="col-sm-12 col-md-6">
									<div id="dataTable_filter" class="dataTables_filter">
										<label>검색:<input type="search"
											class="form-control form-control-sm" placeholder=""
											aria-controls="dataTable"></label>
									</div>
								</div>
							</div>
							<div class="row">
								<div class="col-sm-12">
									<table class="table table-bordered dataTable" id="dataTable"
										width="100%" cellspacing="0" role="grid"
										aria-describedby="dataTable_info" style="width: 100%;">
										<thead>
											<tr role="row" align="center">
												<th class="sorting sorting_asc" tabindex="0"
													aria-controls="dataTable" rowspan="1" colspan="1"
													aria-label="Name: activate to sort column descending"
													style="width: 30px;" aria-sort="ascending">번호</th>
												<th class="sorting" tabindex="0" aria-controls="dataTable"
													rowspan="1" colspan="1"
													aria-label="Position: activate to sort column ascending"
													style="width: 40px;">문의종류</th>
												<th class="sorting" tabindex="0" aria-controls="dataTable"
													rowspan="1" colspan="1"
													aria-label="Office: activate to sort column ascending"
													style="width: 40px;">작성자</th>
												<th class="sorting" tabindex="0" aria-controls="dataTable"
													rowspan="1" colspan="1"
													aria-label="Age: activate to sort column ascending"
													style="width: 150px;">제목</th>
												<th class="sorting" tabindex="0" aria-controls="dataTable"
													rowspan="1" colspan="1"
													aria-label="Start date: activate to sort column ascending"
													style="width: 60px;">문의일</th>
												<th class="sorting" tabindex="0" aria-controls="dataTable"
													rowspan="1" colspan="1"
													aria-label="Salary: activate to sort column ascending"
													style="width: 60px;">답변일</th>
											</tr>
										</thead>
										<tfoot>
											<tr align="center">
												<th rowspan="1" colspan="1">번호</th>
												<th rowspan="1" colspan="1">문의종류</th>
												<th rowspan="1" colspan="1">작성자</th>
												<th rowspan="1" colspan="1">제목</th>
												<th rowspan="1" colspan="1">문의일</th>
												<th rowspan="1" colspan="1">답변일</th>
											</tr>
										</tfoot>
										<tbody>
											<c:forEach var="qnaPersonal" items="${qnaPersonalList }">
												<tr class="odd" role="row" >
													<td class="sorting_1"><input type="text"
														style="width: 30px; height: 100%; border: none;"
														value="${qnaPersonal.qna_personal_serial }"
														readonly="readonly"></td>
													<td ><input type="text"
														style="width: 100%; height: 100%; border: none;"
														value="${qnaPersonal.qna_personal_category }"
														readonly="readonly"></td>
													<td><input type="text"
														style="width: 100%; height: 100%; border: none;"
														value="${qnaPersonal.user_id}(${qnaPersonal.user_name })"
														readonly="readonly"></td>
													<td onclick="location.href='admin_qnaPersonalWrite.mdo?qna_personal_serial=${qnaPersonal.qna_personal_serial}'"><input type="text"
														style="width: 100%; height: 100%; border: none;"
														value="${qnaPersonal.qna_personal_title }"
														readonly="readonly"></td>
													<td><input type="text"
														style="width: 100%; height: 100%; border: none;"
														value=<fmt:formatDate
															value="${qnaPersonal.qna_personal_date }" pattern="yyyy-MM-dd" />
														readonly="readonly"></td>
													<td><input type="text"
														style="width: 100%; height: 100%; border: none;"
														value=<fmt:formatDate
															value="${qnaPersonal.qna_personal_answer_date }" pattern="yyyy-MM-dd" />
														답변대기></td>
												</tr>
											</c:forEach>
										</tbody>
									</table>
								</div>
							</div>
							<div class="row">
								<div class="col-sm-12 col-md-5">
									<div class="dataTables_info" id="dataTable_info" role="status"
										aria-live="polite">Showing 1 to 10 of 57 entries</div>
								</div>
								<div class="col-sm-12 col-md-7">
									<div class="dataTables_paginate paging_simple_numbers"
										id="dataTable_paginate">
										<ul class="pagination">
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
											<li class="paginate_button page-item next"
												id="dataTable_next"><a href="#"
												aria-controls="dataTable" data-dt-idx="7" tabindex="0"
												class="page-link">Next</a></li>
										</ul>
									</div>
								</div>
							</div>
						</div>
					</div>
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