<%@ page language="java" contentType="text/html; charset=UTF-8" pageEncoding="UTF-8"%>
<%@ taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core" %>
<c:set var="path" value="${pageContext.request.contextPath}"/>
<!DOCTYPE html>
<html>
<head>

<meta charset="utf-8">
<meta http-equiv="X-UA-Compatible" content="IE=edge">
<meta name="viewport" content="width=device-width, initial-scale=1, shrink-to-fit=no">
<meta name="description" content="">
<meta name="author" content="">

<title>SB Admin 2 - Dashboard</title>

<!-- Custom fonts for this template-->
<link href="${path}/vendor/fontawesome-free/css/all.min.css" rel="stylesheet" type="text/css">
<link href="https://fonts.googleapis.com/css?family=Nunito:200,200i,300,300i,400,400i,600,600i,700,700i,800,800i,900,900i" rel="stylesheet">
<link rel="shortcut icon" href="https://fyawsbucket.s3.ap-northeast-2.amazonaws.com/favicon_logo.ico" type="image/x-icon" />
<!-- Custom styles for this template-->
<link href="${path}/css2/sb-admin-2.min.css" rel="stylesheet">
<link href="${path}/css2/dataTables.bootstrap4.min.css" rel="stylesheet">

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

.btn1.btn-dark{background-color : #8f3cab; border-color : ; }

img{
	width : 100%;
}

.table td, .table th {
    padding: .75rem;
    vertical-align: middle !important;
    border-top: 1px solid #e3e6f0;
    text-align: center;
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
	           	 
	           	 <!-- Table -->
	           	<div class = "card shadow mb-4">
	           		<div class = "card-header py-3">
	           			<h3 class = "m-0 font-weight-bold text-primay" style = "margin-top : 20px;">Review List</h3>
	           		</div>
	           		<div class = "card-body">
	           			<div class = "table-responsive">
	           				<div class = "row">
	           					<div class = "col-sm-12">
	           						<table class = "table table-bordered dataTable" id = "dataTable" cellspacing = "0" role = "grid"
	           						aria-describedby = "dataTable_info">
	           							<thead>
	           								<tr role = "row" style = "width : 20px;" >
	           									<th rowspan="1" colspan="1">
	           										Category Number
	           									</th>
	           									<th rowspan="1" colspan="1">
	           										Review Number
	           									</th>
	           									<th rowspan="1" colspan="1">
	           										Product Name
	           									</th>
	           								</tr>
	           							</thead>
	           							<tfoot>
			           						<tr>
			           							<th rowspan = "1">Category Number</th>
					            				<th rowspan = "1">Review Number</th>
					            				<th rowspan = "1">Product Name</th>
			           						</tr>
			           					</tfoot>
			           					<tbody>
			           						<c:forEach var="review" items="${reviewgoodsname }">
			           							<tr>
						            				<td onclick="location.href='getReviewContent.mdo?review_serial=${review.review_serial}'">
										${review.category_goods_serial }<input type="hidden" name="review_serial" value="${review.review_serial}"></td>
						            				<td onclick="location.href='getReviewContent.mdo?review_serial=${review.review_serial}'">${review.review_serial }</td>
						            				<td onclick="location.href='getReviewContent.mdo?review_serial=${review.review_serial}'">${review.category_goods_name }</td>
					            				</tr>
					            			</c:forEach>
	           							</tbody>
	           						</table>
	           					</div>
	           				</div>
	           				
	           				
	           				
	           				<!-- 페이징 처리 구현해야됨-->
	           				<div class = "row">
	           					<div class = "col-sm-12 col-md-5">
	           						<div class = "dataTables_info" id = "dataTable_info" role="status" aria-live="polite">Showing 1 to 10</div>
	           					</div>
	           					<div class = "col-sm-12 col-md-7">
	           						<div class = "dataTables_paginate paging_simple_numbers" id="dataTable_paginate">
	           							<ul class = "pagination">
	           								<li class = "paginate_button page-item previous" id = "dataTable_previous">
	           									<a href = "#" aria-controls="dataTable" data-dt-indx="0" tabindex="0" class="page-link">
	           										Previous
	           									</a>
	           								</li>
	           								<li class = "paginate_button page-item">
	           									<a href="#" aria-controls="dataTable" data-dt-idx="1" tabindex="0" class = "page-link">
	           										1
	           									</a>
	           								</li>
	           								<li class = "paginate_button page-item next" id="dataTable_next">
	           									<a href="#" aria-controls="dataTable" data-dt-idx="7" tabindex="0" class = "page-link">
	           										Next
	           									</a>
	           								</li>
	           							</ul>
	           						</div>
	           					</div>
	           				</div>
	           				<!-- // 페이징 처리 -->
	           				
	           			</div>
	           		</div>
	           	</div>
	           	 <!--// Table -->
	            
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