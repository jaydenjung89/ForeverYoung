<%@ page language="java" contentType="text/html; charset=UTF-8" pageEncoding="UTF-8"%>
<%@ taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core" %>
<%@ taglib prefix="fmt" uri="http://java.sun.com/jsp/jstl/fmt" %>
<c:set var="path" value="${pageContext.request.contextPath}"/>
<!DOCTYPE html>
<html>
<head>

<meta charset="utf-8">
<meta http-equiv="X-UA-Compatible" content="IE=edge">
<meta name="viewport" content="width=device-width, initial-scale=1, shrink-to-fit=no">
<meta name="description" content="">
<meta name="author" content="">

<title>약관관리</title>

<!-- Custom fonts for this template-->
<link href="${path}/vendor/fontawesome-free/css/all.min.css" rel="stylesheet" type="text/css">
<link href="https://fonts.googleapis.com/css?family=Nunito:200,200i,300,300i,400,400i,600,600i,700,700i,800,800i,900,900i" rel="stylesheet">
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
		<jsp:include page="../default/sideMenu.jsp"></jsp:include>
		<!-- Content Wrapper -->
		<div id="content-wrapper" class="d-flex flex-column">
			<!-- Main Content -->
			<div id="content">
				<jsp:include page="../default/header.jsp"></jsp:include>
				<!-- Begin Page Content -->
				<div class="container-fluid">
	






					<!-- 여기서부터 작성하세요 -->
					<div class="container-fluid">

						<!-- Page Heading -->
						<h1 class="h3 mb-2 text-gray-800">약관</h1><br>

						<!-- 약관 테이블 -->
						<div class="card shadow mb-4">
							<div class="card-header py-3">
								<h6 class="m-0 font-weight-bold text-primary">약관 목록</h6>
							</div>
							<div class="card-body">
								<div class="table-responsive">
									<div id="dataTable_wrapper"
										class="dataTables_wrapper dt-bootstrap4">
										<div class="row"></div>
										<div class="row">
											<div class="col-sm-12">
												<table class="table table-bordered dataTable" id="dataTable"
													width="100%" cellspacing="0" role="grid"
													aria-describedby="dataTable_info" style="width: 100%;">
													<thead>
														<tr role="row">
															<th class="sorting" tabindex="0" aria-controls="dataTable" rowspan="1" colspan="1" aria-label="Name: activate to sort column ascending"
																style="width: auto;">번호</th>
															<th class="sorting sorting_desc" tabindex="0"
																aria-controls="dataTable" rowspan="1" colspan="1"
																aria-label="Position: activate to sort column ascending"
																style="width: auto;" aria-sort="descending">약관코드</th>
															<th class="sorting" tabindex="0"
																aria-controls="dataTable" rowspan="1" colspan="1"
																aria-label="Office: activate to sort column ascending"
																style="width: auto;">약관제목</th>
															<th class="sorting" tabindex="0"
																aria-controls="dataTable" rowspan="1" colspan="1"
																aria-label="Age: activate to sort column ascending"
																style="width: auto;">약관내용</th>
															<th class="sorting" tabindex="0"
																aria-controls="dataTable" rowspan="1" colspan="1"
																aria-label="Start date: activate to sort column ascending"
																style="width: auto;">약관등록일</th>
														</tr>
													</thead>
													<tfoot>
														<tr>
															<th rowspan="1" colspan="1">번호</th>
															<th rowspan="1" colspan="1">약관코드</th>
															<th rowspan="1" colspan="1">약관제목</th>
															<th rowspan="1" colspan="1">약관내용</th>
															<th rowspan="1" colspan="1">약관등록일</th>																									
														</tr>
													</tfoot>
													<tbody>
														<c:forEach var="termslist" items="${termslist}">
														<tr class="odd">													
															<td class="sorting_1">${termslist.ROWNUM }</td>
															<td class="sorting_1"><a style="cursor: pointer" onclick="location.href='updateTerms.mdo?TERMS_SERIAL=${termslist.TERMS_SERIAL}'">${termslist.TERMS_SERIAL }</a></td>
															<td class="sorting_1"><a style="cursor: pointer" onclick="location.href='updateTerms.mdo?TERMS_SERIAL=${termslist.TERMS_SERIAL}'">${termslist.TERMS_TITLE }</a></td>
															<td class="sorting_1"><a style="cursor: pointer" onclick="location.href='updateTerms.mdo?TERMS_SERIAL=${termslist.TERMS_SERIAL}'">${termslist.TERMS_CONTENTS }</a></td>
															<td class="sorting_1" onclick=""><fmt:formatDate value="${termslist.TERMS_DATE}" pattern="yyyy-MM-dd"/></td>
														</tr>
														</c:forEach>
													</tbody>
												</table>
											</div>
										</div>
										<br>
										
										<div class="row">
											<div class="col-sm-12 col-md-5"></div><br>
																						
											<!-- 페이징 -->
											<div class="col-sm-12 col-md-7">
												<div class="dataTables_paginate paging_simple_numbers" id="dataTable_paginate">
													<ul class="pagination">
														<li class="paginate_button page-item previous disabled" id="dataTable_previous">
															<a href="#" aria-controls="dataTable" data-dt-idx="0" tabindex="0" class="page-link">Previous</a>
														</li>
														<li class="paginate_button page-item active">
															<a href="#" aria-controls="dataTable" data-dt-idx="1" tabindex="0" class="page-link">1</a>
														</li>
														<li class="paginate_button page-item ">
															<a href="#" aria-controls="dataTable" data-dt-idx="2" tabindex="0" class="page-link">2</a>
														</li>
														<li class="paginate_button page-item ">
															<a href="#" aria-controls="dataTable" data-dt-idx="3" tabindex="0" class="page-link">3</a>
														</li>
														<li class="paginate_button page-item ">
															<a href="#" aria-controls="dataTable" data-dt-idx="4" tabindex="0" class="page-link">4</a>
														</li>
														<li class="paginate_button page-item ">
															<a href="#" aria-controls="dataTable" data-dt-idx="5" tabindex="0" class="page-link">5</a>
														</li>
														<li class="paginate_button page-item ">
															<a href="#" aria-controls="dataTable" data-dt-idx="6" tabindex="0" class="page-link">6</a>
														</li>
														<li class="paginate_button page-item next" id="dataTable_next">
															<a href="#" aria-controls="dataTable" data-dt-idx="7" tabindex="0" class="page-link">Next</a>
														</li>
													</ul>
												</div>
											</div>
											<!-- 페이징 끝 -->
											
											
											
										</div>
									</div>
								</div>
							</div>
						</div>

					</div>
					<!-- 여기서부터 작성하세요 끝 -->



					

				</div>
				<!-- /.container-fluid -->
			</div>
			<!-- End of Main Content -->
			<jsp:include page="../default/footer.jsp"></jsp:include>
		</div>
		<!-- End of Content Wrapper -->
	</div>
	<!-- End of Page Wrapper -->
	
	<!-- Bootstrap core JavaScript-->
    <script src="vendor/jquery/jquery.min.js"></script>
    <script src="vendor/bootstrap/js/bootstrap.bundle.min.js"></script>

    <!-- Core plugin JavaScript-->
    <script src="vendor/jquery-easing/jquery.easing.min.js"></script>

    <!-- Custom scripts for all pages-->
    <script src="js/sb-admin-2.min.js"></script>

    <!-- Page level plugins -->
    <script src="vendor/datatables/jquery.dataTables.min.js"></script>
    <script src="vendor/datatables/dataTables.bootstrap4.min.js"></script>

    <!-- Page level custom scripts -->
    <script src="js/demo/datatables-demo.js"></script>
    
</body>
</html>