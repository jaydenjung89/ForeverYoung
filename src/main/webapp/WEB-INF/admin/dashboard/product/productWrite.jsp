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
function formGoodsSubmit() {
	/* if(document.goodsForm.category_goods_name.value==""){
		alert("상품명을 입력하세요.");
		document.goodsForm.category_goods_name.focus();
		return;
	}
	if(document.goodsForm.category_goods_name_subtext.value==""){
		alert("상품명 설명을 입력하세요.");
		document.goodsForm.category_goods_name_subtext.focus();
		return;
	}
	if(document.goodsForm.category_goods_unit.value==""){
		alert("상품 단위를 입력하세요.");
		document.goodsForm.category_goods_unit.focus();
		return;
	}
	if(document.goodsForm.category_goods_weight.value==""){
		alert("상품 무게를 입력하세요.");
		document.goodsForm.category_goods_weight.focus();
		return;
	}
	if(document.goodsForm.category_goods_origin.value==""){
		alert("원산지를 입력하세요.");
		document.goodsForm.category_goods_origin.focus();
		return;
	}
	if(document.goodsForm.category_goods_detail_name1.value==""){
		alert("상품 정보 제목을 입력하세요.");
		document.goodsForm.category_goods_detail_name1.focus();
		return;
	}
	if(document.goodsForm.category_goods_detail_name2.value==""){
		alert("상품 정보 소제목을 입력하세요.");
		document.goodsForm.category_goods_detail_name2.focus();
		return;
	}
	if(document.goodsForm.category_goods_detail_name_subtext.value==""){
		alert("상품 정보 설명을 입력하세요.");
		document.goodsForm.category_goods_detail_name_subtext.focus();
		return;
	}
	if(document.goodsForm.goodsImage1.value==""){
		alert("썸네일 이미지를 등록하세요.");
		document.goodsForm.goodsImage1.focus();
		return;
	}
	if(document.goodsForm.goodsImage2.value==""){
		alert("상품 정보 상단 이미지를 등록하세요.");
		document.goodsForm.goodsImage2.focus();
		return;
	}
	if(document.goodsForm.goodsImage3.value==""){
		alert("상품 정보 메인 이미지를 등록하세요.");
		document.goodsForm.goodsImage3.focus();
		return;
	} */
	document.goodsForm.submit();
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

				<!-- 여기만 수정해서 사용하세요!! -->
				<h4>상품 정보</h4>

				<div class="card mb-4">
					
					<div class="card-body">
						<form action="updateGoods.mdo" name="goodsForm"
							method="GET" enctype="multipart/form-data">
							<input type="hidden" name="category_goods_serial" value="${category_goods_serial } " />
							<table class="type02">
								<tr>
									<th scope="row">카테고리</th>
									<td colspan="1">
									<b>1차</b> 
									<input type="text" value="${getProduct.category_first_serial }" readonly="readonly" />
									 &nbsp;&nbsp;&nbsp; 
									<b>2차</b> 
									<input type="text" value="${getProduct.category_second_serial }" readonly="readonly" /> 
									&nbsp;&nbsp;&nbsp; 
									<b>3차</b> 
									<input type="text" value="${getProduct.category_third_serial }" readonly="readonly" />
									</td>
								</tr>
								<tr>
									<th scope="row">브랜드명</th>
									<td colspan="2"><input type="text" value="${getProduct.category_goods_brand }"
										name="category_goods_brand" style="width: 200px; height: 100%"
										placeholder="브랜드명"></td>
								</tr>

								<tr>
									<th scope="row">상품명</th>
									<td colspan="5"><input type="text" style="width:100%;"
										name="category_goods_name" id="category_goods_name"
										value="${getProduct.category_goods_name }"></td>
								</tr>

								<tr>
									<th scope="row">판매수량</th>
									<td><input type="text" name="category_goods_count"
										value="${getProduct.category_goods_count }"></td>

									<th scope="row">상품유형</th>
									<td><input type="text" name="category_goods_info"
										value="${getProduct.category_goods_info }"></td>

									<th scope="row">상품가격</th>
									<td><input type="text" name="goods_detail_price"
										value="${getProductDetail.goods_detail_price }"></td>
								</tr>

								<tr>
									<th scope="row">상품상태</th>
									<td><input type="text" name="goods_detail_status"
										value="${getProductDetail.goods_detail_status }"></td>

									<th scope="row">할인율</th>
									<td><input type="text" name="goods_detail_discountrate"
									value="${getProductDetail.goods_detail_discountrate }"></td>

									<th scope="row">할인가격</th>
									<td><input type="text" name="category_goods_last_price"
									value="${getProductDetail.goods_last_price }"></td>
								</tr>

								<tr>
									<th scope="row">메인이미지</th>
									<td colspan="5">
									<input type="hidden" value="${getProduct.category_goods_main_img }" name="category_goods_main_img" id="category_goods_main_img" />
									<img src="${getProduct.category_goods_main_img }" style="width: 200px"
											name="category_goods_main_img" />\
									<input type="text" name="category_goods_main_img" style="width: 1000px"
									value="${getProduct.category_goods_main_img }">
									<!-- <input type="file" name="category_goods_main_img" /> -->
									</td>
								</tr>

								<tr>
									<th scope="row">썸네일이미지</th>
									<td colspan="5">
									<input type="hidden" value="${getProduct.category_goods_thum_img }" name="category_goods_thum_img" id="category_goods_thum_img" />
									<img src="${getProduct.category_goods_thum_img }" style="width: 200px"
											name="category_goods_thum_img" />
									<input type="text" name="category_goods_detail" style="width: 1000px"
									value="${getProduct.category_goods_thum_img }">
									<!-- <input type="file" name="category_goods_thum_img" /> -->
									</td>
								</tr>

								<tr>
									<th scope="row">상품세부이미지</th>
									<td colspan="5">
									<input type="text" name="category_goods_detail" style="width: 1000px"
									value="${getProductDetail.category_goods_detail }">
									<!-- <input type="file" name="category_goods_detail" /> -->
									</td>
								</tr>

							</table>
							<br>
							<div style="margin-left: 10px">
								<input type="button" value="수정하기" onclick="formGoodsSubmit()" />
								<input type="button" value="목록보기"
									onclick="location.href='admin_product.mdo'"
									style="margin-right: 10px;" />
							</div>
						</form>

					</div>
				</div>
				<!-- 여기만 수정해서 사용하세요!! -->

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
</body>
</html>