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
<script src="http://code.jquery.com/jquery-3.5.1.min.js"></script>
<title>약관 수정</title>

<!-- Custom fonts for this template-->
<link href="${path}/vendor/fontawesome-free/css/all.min.css" rel="stylesheet" type="text/css">
<link href="https://fonts.googleapis.com/css?family=Nunito:200,200i,300,300i,400,400i,600,600i,700,700i,800,800i,900,900i" rel="stylesheet">
<link rel="shortcut icon" href="https://fyawsbucket.s3.ap-northeast-2.amazonaws.com/favicon_logo.ico" type="image/x-icon" />
<!-- Custom styles for this template-->
<link href="${path}/css2/sb-admin-2.min.css" rel="stylesheet">
<script type="text/javascript">


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
           			<div class = "card-header py-3">
	           			<h3 class = "m-0 font-weight-bold text-primay" style = "margin-top : 20px;">약관 수정</h3>
	           		</div>
	           		
	           		<div class = "card-body">
	           			<div class = "table-responsive">
	           				<div class = "row">
	           					<div class = "col-sm-12">
	           						<!-- form -->
	           						<form action = "updateTermsProc.mdo" method = "POST">
	           							<table class = "table table-bordered dataTable" cellspacing = "0">
		           							<tr>
												<th scope="row" style = "width : 40%">
													<label>약관코드</label>
												</th>
											</tr>
											<tr>
												<td>
													<input type="text" class = "form-control" name="TERMS_SERIAL" value="${terms.TERMS_SERIAL }" readonly>
												</td>
											</tr>
											<tr>
												<th scope="row">
													<label>약관제목</label>
												</th>
											</tr>
											<tr>
												<td>
													<textarea class = "form-control" name="TERMS_TITLE">${terms.TERMS_TITLE }</textarea>
												</td>
											</tr>
											<tr>
												<th scope="row">
													<label>약관내용</label>
												</th>
											</tr>
											<tr>
												<td>
													<textarea class = "form-control" name="TERMS_CONTENTS">${terms.TERMS_CONTENTS }</textarea>
												</td>
											</tr>	           								
	           							</table>
	           							
	           							<!-- button -->
										<button type = "submit" class="btn btn-success" style = "margin-left:10px; float : right;">수정하기</button>
										<button type = "submit" class="btn btn-success" onclick="javascript: form.action='deleteTermsProc.mdo';" style = "margin-left:10px; float : right;">삭제하기</button>					
	           							
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