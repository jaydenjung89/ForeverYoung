<%@ page language="java" contentType="text/html; charset=UTF-8" pageEncoding="UTF-8"%>
<%@ taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core" %>
<%@ taglib prefix="fmt" uri="http://java.sun.com/jsp/jstl/fmt" %>
<%@ taglib prefix="fn" uri="http://java.sun.com/jsp/jstl/functions" %>
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
	           			<h3 class = "m-0 font-weight-bold text-primay" style = "margin-top : 20px;">Inquiries about products</h3>
	           		</div>
	           		<div class = "card-body">
	           			<div class = "table-responsive">
	           				<div class = "row">
	           					<div class = "col-sm-12">
	           						<table class = "table table-bordered dataTable" id = "dataTable" cellspacing = "0" role = "grid"
	           						aria-describedby = "dataTable_info">
	           							<thead>
	           								<tr role = "row" >
	           									<th rowspan="1" colspan="1" style = "width : 5%">
	           										<label>Number</label>
	           									</th>
	           									<th rowspan="1" colspan="1" style = "width : 15%">
	           										<label>Product</label>
	           									</th>
	           									<th rowspan="1" colspan="1" style = "width : 10%">
	           										<label>User_Id</label>
	           									</th>
	           									<th rowspan="1" colspan="1" style = "width : 15%">
	           										<label>Title</label>
	           									</th>
	           									<th rowspan="1" colspan="1" style = "width : 35%">
	           										<label>Content</label>
	           									</th>
	           									<th rowspan="1" colspan="1" style = "width : 10%">
	           										<label>Date</label>
	           									</th>
	           									<th rowspan="1" colspan="1" style = "width : 20%">
	           										<label>Confirmation of answer</label>
	           									</th>
	           									
	           								</tr>
	           							</thead>
	           							<tfoot>
			           						<tr>
			           							<th rowspan = "1" style = "width : 5%">Number</th>
					            				<th rowspan = "1" style = "width : 15%">Product</th>
					            				<th rowspan = "1" style = "width : 10%">User_Id</th>
					            				<th rowspan = "1" style = "width : 15%">Title</th>
					            				<th rowspan = "1" style = "width : 35%">Content</th>
					            				<th rowspan = "1" style = "width : 10%">Date</th>
					            				<th rowspan = "1" style = "width : 20%">Confirmation of answer</th>
					            				
			           						</tr>
			           					</tfoot>
			           					<tbody>
			           						<c:forEach var="ListSuc" items="${gqnaListSuc}">
												<tr>
													<td>${ListSuc.qna_goods_serial}</td>
													<td>${ListSuc.category_goods_name }</td>
													<td style = "width : 5%;">${ListSuc.user_id}</td>
													<td>${ListSuc.qna_goods_title}</td>
													<td>${fn:replace(ListSuc.qna_goods_content ,"ln","<br>")}</td>
													<td><fmt:formatDate value="${ListSuc.qna_goods_date}" pattern="yyyy-MM-dd"/></td>
													<td>
														<input type="button" value="답변확인"  class="btn btn-success" onclick="location.href='checkAnswer.mdo?qna_goods_serial=${ListSuc.qna_goods_serial}'" />
													</td>
													
												</tr>
											</c:forEach>
	           							</tbody>
	           						</table>
	           					</div>
	           				</div>
	           			</div>
	           		</div>
	           	</div>
	           				
            </div>
            <!-- /.container-fluid -->
         </div>
         <!-- End of Main Content -->
         <jsp:include page="../default/footer.jsp"></jsp:include>
      </div>
      <!-- End of Content Wrapper -->
   </div>
   <!-- End of Page Wrapper -->
   
   <script>
   		function delete_check(url){
   			var answer = confirm("게시글을 삭제하시겠습니까?");
   			if(answer == true){
   				location.href = url;
   			}
   		}
   </script>
</body>
</html>