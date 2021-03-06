<%@ page language="java" contentType="text/html; charset=UTF-8"
	pageEncoding="UTF-8"%>
<%@ taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core"%>
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
<link rel="shortcut icon" href="https://fyawsbucket.s3.ap-northeast-2.amazonaws.com/favicon_logo.ico" type="image/x-icon" />
<!-- Custom fonts for this template-->
<link href="${path}/vendor/fontawesome-free/css/all.min.css"
	rel="stylesheet" type="text/css">
<link
	href="https://fonts.googleapis.com/css?family=Nunito:200,200i,300,300i,400,400i,600,600i,700,700i,800,800i,900,900i"
	rel="stylesheet">
<script src="https://cdnjs.cloudflare.com/ajax/libs/font-awesome/5.15.3/js/all.min.js" crossorigin="anonymous"></script>
<!-- Custom styles for this template-->
<link href="${path}/css2/sb-admin-2.min.css" rel="stylesheet">
<script type="text/javascript">
	function delete_check(url) {
		var answer = confirm("회원 계정을 삭제하시겠습니까?");
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
.btn-danger {
    
    
    background-image: linear-gradient(to bottom,#d9534f 0,#c12e2a 100%);
    
    background-repeat: repeat-x;
    border-color: #b92c28;
}
.btn-danger, .btn-default, .btn-info, .btn-primary, .btn-success, .btn-warning {
    text-shadow: 0 -1px 0 rgb(0 0 0 / 20%);
    
    box-shadow: inset 0 1px 0 rgb(255 255 255 / 15%), 0 1px 1px rgb(0 0 0 / 8%);
}
 .btn-sm {
    padding: 5px 10px;
    font-size: 12px;
    line-height: 1.5;
    border-radius: 3px;
}
.btn-danger {
    color: #fff;
    background-color: #d9534f;
    
}
</style>
</head>

<body id="page-top">

	<!-- Page Wrapper -->
	<div id="wrapper">

		<!-- Sidebar -->
		<jsp:include page="../default/sideMenu.jsp"></jsp:include>
		<!-- End of Sidebar -->

		<!-- Content Wrapper -->
		<div id="content-wrapper" class="d-flex flex-column">

			<!-- Main Content -->
			<div id="content">

				<!-- Topbar -->
				<jsp:include page="../default/header.jsp"></jsp:include>
				<!-- End of Topbar -->

				<!-- 여기만 수정해서 사용 -->
				<h4>회원목록</h4>
				<div class="table-responsive">
					<table class="table table-striped table-sm"
						style="text-align: center">
						<thead>
							<tr>
								<th scope="col">회원번호</th>
								<th scope="col">아이디</th>
								<th scope="col">이름</th>
								<th scope="col">번호</th>
								<th scope="col">회원등급</th>
								<th scope="col">최근로그인</th>
								<th scope="col">포인트</th>
								<th scope="col">총구매금액</th>
								<th scope="col">회원상태</th>
								<th scope="col">정지/활성화</th>
							</tr>
						</thead>
						<tfoot>
							<tr>
								<th scope="col">회원번호</th>
								<th scope="col">아이디</th>
								<th scope="col">이름</th>
								<th scope="col">번호</th>
								<th scope="col">회원등급</th>
								<th scope="col">최근로그인</th>
								<th scope="col">포인트</th>
								<th scope="col">총구매금액</th>
								<th scope="col">회원상태</th>
								<th scope="col">정지/활성화</th>
							</tr>
						</tfoot>
						<tbody>
							<c:forEach var="user" items="${userList }" varStatus="i">
								<tr>
									<td>${user.rownum }</td>
									<td>${user.user_id }</td>
									<td>${user.user_name }</td>
									<td>${user.user_phone }</td>
									<td>${user.user_membership_name }</td>
									<td>${user.user_last_login }</td>
									<td>${user.user_point }</td>
									<td>${user.user_total_purchase }</td>
									<c:if test="${user.user_status==0}">
									<td id="0">정상</td>
									</c:if>
									<c:if test="${user.user_status==1}">
									<td id="1">정지</td>
									</c:if>
									<td><input type="hidden" value="${user.user_serial }" name="user_serial" id="user_serial">
										<input type="hidden" value="${user.user_id }" name="user_id" id="user_id">
										<c:if test="${user.user_status==0 }">
											
											<button type="button" class="btn btn-sm btn-danger" id="user_status" value="${user.user_status }" >정지</button>
										</c:if>
										
										
										<c:if test="${user.user_status==1 }">
										
										<button type="button" class="btn btn-sm btn-success" id="user_status" value="0" >활성화</button>
										</c:if>
										<%-- <input type="button" value="삭제" onclick="javascirpt:delete_check('deleteUser.mdo?user_id=${user.user_id}')" /> --%>
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
	<jsp:include page="../default/footer.jsp"></jsp:include>
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
<script type="text/javascript">
$(function(){
	$(document).on('click', '.btn.btn-sm.btn-danger, .btn.btn-sm.btn-success', function(){
			var id = $(this).parent().siblings('td').eq(1).text();
			var status = $(this).parent().siblings('td').eq(8).attr('id');
			
		    if(confirm('회원의 상태를 수정하시겠습니까?')) {
		    	if(status == 0) {
		    		status = 1;
		    		$.ajax({
						type:"POST",
						url:"updateUser.mdo",
						dataType : "json",
						data : {"user_id" : id, "user_status" : status},
						success: function(result) {
							if(result != 0){
								alert("회원 상태 변경을 성공하였습니다.")
								location.reload();
							}else {
								alert("회원 상태 변경을 실패했습니다.")
								location.reload();
							}
						}
					})
		    	}else if(status ==1){
		    		status = 0;
		    		$.ajax({
						type:"POST",
						url:"updateUser.mdo",
						dataType : "json",
						data : {"user_id" : id, "user_status" : status},
						success: function(result) {
							if(result != 0){
								alert("회원 상태 변경을 성공하였습니다.")
								location.reload();
							}else {
								alert("회원 상태 변경을 실패했습니다.")
								location.reload();
							}
						}
					})
		    	}
		    	
			
			} 
	})
});
</script>
</body>
</html>