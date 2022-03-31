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
				<h1 class="mt-4">1:1문의</h1>
				<ol class="breadcrumb mb-4">

				</ol>
				<div class="card mb-4">
					<div class="card-header">
						<div class="col three">
							<div style="font-size: 25px; color: #5f0080; font-weight: bold;">
								1:1문의 내용</div>
						</div>
					</div>
					<div class="card-body">
						<!-- 메인작업 -->
						<table class="type02">
							<tr>
								<th scope="row">문의종류</th>
								<td><input type="text"
									style="width: 100%; height: 100%; border: none;"
									value="${qnaPersonal.qna_personal_category }"
									readonly="readonly"></td>

								<th scope="row">작성자</th>
								<td><input type="text"
									style="width: 100%; height: 100%; border: none;"
									value="${qnaPersonal.user_id}(${qnaPersonal.user_name })"
									readonly="readonly"></td>
							</tr>

							<tr>
								<th scope="row">제목</th>
								<td><input type="text"
									style="width: 100%; height: 100%; border: none;"
									value="${qnaPersonal.qna_personal_title }" readonly="readonly"></td>

								<th scope="row">문의일</th>
								<td height="40px"><input type="text"
									style="width: 100%; height: 100%; border: none;"
									value="<fmt:formatDate value="${qnaPersonal.qna_personal_date }" pattern="yyyy-MM-dd"/>"
									readonly="readonly"></td>
							</tr>

							<tr>
								<th scope="row">내용</th>
								<td colspan="3">
									<%-- <c:if
										test="${qnaPersonal.qna_personal_image1 != null}">
										<img alt="1:1문의 이미지" src="${qnaPersonal.qna_personal_image1}"
											width="40%" height="60%">
									</c:if> <c:if test="${qnaPersonal.qna_personal_image2 != null}">
										<img alt="1:1문의 이미지" src="${qnaPersonal.qna_personal_image2}"
											width="40%" height="60%">
									</c:if> --%> <textarea readonly="readonly" style="width: 500px"
										rows="10%">${qnaPersonal.qna_personal_content }</textarea>
								</td>
							</tr>
						</table>
					</div>

					<div class="card-header">
						<div class="col three">
							<div style="font-size: 25px; color: #5f0080; font-weight: bold;">
								1:1문의 답변</div>
						</div>
					</div>
					<div class="card-body">
						<!-- 메인작업 -->
						<form action="admin_qnaPersonalUpdate.mdo" method="POST"
							id="subForm" class="subForm" name="subForm">
							<table class="type02">
								<tr>
									<th scope="row" style="margin-right: 100px">제목</th>
									<td><input type="text"
										style="width: 100%; height: 100%; border: none;"
										name="qna_personal_answer_title"
										id="qna_personal_answer_title"
										value="${qnaPersonal.qna_personal_answer_title }"></td>
								</tr>
								<tr style="margin-right: 100px">
									<th scope="row">답변내용</th>
									<td colspan="3">
									<textarea name="qna_personal_answer" style="width: 500px" rows="10%">${qnaPersonal.qna_personal_answer }</textarea>
									
									</td>
								</tr>
							</table>
							<input type="hidden" name="qna_personal_serial"
								id="qna_personal_serial"
								value="${qnaPersonal.qna_personal_serial }"> <input
								type="hidden" name="order_details_order_serial"
								value="${qnaPersonal.order_details_order_serial}"
								id="order_details_order_serial"> <input type="submit"
								value="답변 등록하기" style="margin-left: 10px" />
							<c:if test="${qnaPersonal.qna_personal_category == '환불문의'}">
								<input type="button" value="환불요청 처리" id="refund" />
							</c:if>
							<c:if test="${qnaPersonal.qna_personal_category == '반품문의'}">
								<input type="button" value="반품요청 처리" id="return" />
							</c:if>
							<c:if test="${qnaPersonal.qna_personal_category == '취소문의'}">
								<input type="button" value="취소요청 처리" id="cancle" />
							</c:if>
							<input type="button" value="1:1문의글 목록보기"
								onclick="location.href='admin_qnaPersonal.mdo'" />
						</form>
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
		<script type="text/javascript">
		$(document).on("click", "#refund", function() {
			var checkBtn = $(this);
			var tr = checkBtn.closest("#subForm");
			var serial1 = tr.find("#qna_personal_serial").val();
			/* var serial2 = tr.find("#order_details_order_serial").val(); */
			var title = tr.find("#qna_personal_answer_title").val();
			var content = tr.find("#qna_personal_answer").val();
			var answerDate = tr.find("#qna_personal_answer_date").val();

			if (document.subForm.qna_personal_answer_title.value == "") {
				alert("답변 제목을 입력하세요.");
				document.subForm.qna_personal_answer_title.focus();
				return;
			}
			if (document.subForm.qna_personal_answer.value == "") {
				alert("답변 내용을 입력하세요.");
				document.subForm.qna_personal_answer.focus();
				return;
			}

			/* if (confirm(serial2 + ' 주문건을 환불요청으로 처리하시겠습니까?')) { */
				$
						.ajax({
							type : 'post',
							url : 'admin_qnaPersonalUpdate.mdo',
							dataType : 'text',
							data : {
								"qna_personal_serial" : serial1,
								"qna_personal_answer_title" : title,
								"qna_personal_answer" : content,
								/* "order_details_order_serial" : serial2 */
								"qna_personal_answer_date" : answerDate
							},
							success : function(result) {
								if (result) {
									alert("배송 상태 수정을 성공 하였습니다.")
									window.location.href = "admin_qnaPersonal.mdo";
								} else {
									alert("배송 상태 수정을 실패 하였습니다.")
									location.reload();
								}
							}
						});
			/* } */
		});
		/* $(document)
				.on(
						"click",
						"#return",
						function() {
							var checkBtn = $(this);
							var tr = checkBtn.closest("#subForm");
							var serial1 = tr.find("#qna_personal_serial").val();
							var title = tr.find("#qna_personal_answer_title")
									.val();
							var content = tr.find("#qna_personal_answer").val();
							var answerDate = tr.find("#qna_personal_answer_date").val();

							if (document.subForm.qna_personal_answer_title.value == "") {
								alert("답변 제목을 입력하세요.");
								document.subForm.qna_personal_answer_title
										.focus();
								return;
							}
							if (document.subForm.qna_personal_answer.value == "") {
								alert("답변 내용을 입력하세요.");
								document.subForm.qna_personal_answer.focus();
								return;
							}

							if (confirm(serial2 + ' 주문건을 반품요청으로 처리하시겠습니까?')) {
								$
										.ajax({
											type : 'post',
											url : 'admin_qnaPersonalUpdate.mdo',
											dataType : 'text',
											data : {
												"qna_personal_serial" : serial1,
												"qna_personal_answer_title" : title,
												"qna_personal_answer" : content,
												"qna_personal_answer_date" : answerDate
											},
											success : function(result) {
												if (result) {
													alert("배송 상태 수정을 성공 하였습니다.")
													window.location.href = "admin_qnaPersonal.mdo";
												} else {
													alert("배송 상태 수정을 실패 하였습니다.")
													location.reload();
												}
											}
										});
							}
						});

		$(document)
				.on(
						"click",
						"#cancle",
						function() {
							var checkBtn = $(this);
							var tr = checkBtn.closest("#subForm");
							var serial1 = tr.find("#qna_personal_serial").val();
							var title = tr.find("#qna_personal_answer_title")
									.val();
							var content = tr.find("#qna_personal_answer").val();
							var answerDate = tr.find("#qna_personal_answer_date").val();
							if (document.subForm.qna_personal_answer_title.value == "") {
								alert("답변 제목을 입력하세요.");
								document.subForm.qna_personal_answer_title
										.focus();
								return;
							}
							if (document.subForm.qna_personal_answer.value == "") {
								alert("답변 내용을 입력하세요.");
								document.subForm.qna_personal_answer.focus();
								return;
							}

							if (confirm(serial2 + ' 주문건을 취소요청으로 처리하시겠습니까?')) {
								$
										.ajax({
											type : 'post',
											url : 'admin_qnaPersonalUpdate.mdo',
											dataType : 'text',
											data : {
												"qna_personal_serial" : serial1,
												"qna_personal_answer_title" : title,
												"qna_personal_answer" : content,
												"qna_personal_answer_date" : answerDate
											},
											success : function(result) {
												if (result) {
													alert("배송 상태 수정을 성공 하였습니다.")
													window.location.href = "admin_qnaPersonal.mdo";
												} else {
													alert("배송 상태 수정을 실패 하였습니다.")
													location.reload();
												}
											}
										});
							}
						}); */
	</script>
</body>
</html>