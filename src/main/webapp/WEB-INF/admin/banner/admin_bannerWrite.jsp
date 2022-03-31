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

<!-- Custom styles for this template-->
<link href="${path}/css2/sb-admin-2.min.css" rel="stylesheet">
<link rel="shortcut icon" href="https://fyawsbucket.s3.ap-northeast-2.amazonaws.com/favicon_logo.ico" type="image/x-icon" />
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

.card shadow mb-4 {
  position: absolute;
  top: 600%;
  left: 50%;
  transform: translate(-50%,-50%);
}

.form-control{
	width : 100% !important;
}

.card-body{
	width : 100% !important;
}

.container-fluid{
	width : 60% !important;
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
           	
           		<div class = "card shadow mb-4">
           			<!-- banner Title -->
           			<div class = "card-header py-3">
	           			<h3 class = "m-0 font-weight-bold text-primay" style = "margin-top : 20px;">Banner Registration</h3>
	           		</div>
	           		<!--// banner Title -->
	           		
	           		<div class = "card-body">
	           			<div class = "table-responsive">
	           				<div class = "row">
	           					<div class = "col-sm-12">
	           						<!-- form -->
	           						<form action = "admin_bannerInsert.mdo" method = "POST" enctype = "multipart/form-data">
	           							<table class = "table table-bordered dataTable" cellspacing = "0">
		           							<tr>
												<th scope="row" style = "width : 40%">
													<label>Banner Title</label>
												</th>
											</tr>
											<tr>
												<td>
													<input type="text" class = "form-control" name="banner_title" />
												</td>
											</tr>
											<tr>
												<th scope="row">
													<label>Banner Contents</label>
												</th>
											</tr>
											<tr>
												<td>
													<textarea class = "form-control" name="banner_contents"></textarea>
												</td>
											</tr>
											<tr>
												<th scope="row">
													<label>Banner Subcontents</label>
												</th>
											</tr>
											<tr>
												<td>
													<textarea class = "form-control" name="banner_subcontents"></textarea>
												</td>
											</tr>
	           								<tr>
												<th scope="row">
													<label>File Upload</label>
												</th>
											</tr>
											<tr>
												<td>
													<input type="file" name="uploadFile" />
												</td>
											</tr>
	           							
	           							</table>
	           							<!-- button -->
				           				<button type = "reset" class="btn btn-success" value = "초기화하기" style = "margin-left:10px; float : right;">reset</button>
				           				<button type = "submit" class="btn btn-success" value = "등록하기" style = "margin-left:10px; float : right;">submit</button>
	           							<button type = "button" onclick ="location.href='admin_bannerList.mdo'" class="btn btn-success" style = "margin-left:10px; float : right;">목록보기</button>
	           							<!--// button -->
	           						</form>
	           						<!--// form -->
	           						
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
</body>
</html>