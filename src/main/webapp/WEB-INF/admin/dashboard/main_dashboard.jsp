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

<title>매출현황</title>

<link rel="shortcut icon" href="https://fyawsbucket.s3.ap-northeast-2.amazonaws.com/favicon_logo.ico" type="image/x-icon" />
<!-- Custom styles for this template-->
<link href="${path}/css2/sb-admin-2.min.css" rel="stylesheet">
<style type="text/css">/* Chart.js */
/* @ */
/* keyframes chartjs-render-animation {
	from {opacity: .99
} */

/* to {
	opacity: 1
}
 */
}
/* .chartjs-render-monitor {
	animation: chartjs-render-animation 1ms
}
 */
/* .chartjs-size-monitor, .chartjs-size-monitor-expand,
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
} */
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
<script type="text/javascript">
$(document).ready(function(){
    function alignModal(){
        var modalDialog = $(this).find(".modal-dialog");
        
        // Applying the top margin on modal dialog to align it vertically center
        modalDialog.css("margin-top", Math.max(0, ($(window).height() - modalDialog.height()) / 2));
        modalDialog.css("margin-left", Math.max(0, ($(window).height() - modalDialog.height()) / 0.35));
    }
    // Align modal when it is displayed
    $(".modal").on("shown.bs.modal", alignModal);
    
    // Align modal when user resize the window
    $(window).on("resize", function(){
        $(".modal:visible").each(alignModal);
    });   
});
</script>
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

					<!-- Page Heading -->
					<div
						class="d-sm-flex align-items-center justify-content-between mb-4">
						<h1 class="h3 mb-0 text-gray-800">Dashboard</h1>
						<a href="#"
							class="d-none d-sm-inline-block btn btn-sm btn-primary shadow-sm"><i
							class="fas fa-download fa-sm text-white-50"></i> Generate Report</a>
					</div>

					<!-- Content Row -->
					<div class="row">

						<!-- 일 매출 -->
						<div class="col-xl-3 col-md-6 mb-4">
							<div class="card border-left-primary shadow h-100 py-2">
								<div class="card-body">
									<div class="row no-gutters align-items-center">
										<div class="col mr-2">
											<div
												class="text-xs font-weight-bold text-primary text-uppercase mb-1">
												일매출</div>

											<c:forEach var="getTodaySales" items="${getTodaySales}">
												<div class="h5 mb-0 font-weight-bold text-gray-800">${getTodaySales.PRICE1}원</div>
											</c:forEach>
										</div>

										<div class="col-auto">
											<i class="fas fa-dollar-sign fa-2x text-gray-300"></i>
										</div>


									</div>
								</div>
							</div>
						</div>
						
						<!-- 월 매출 -->
						<div class="col-xl-3 col-md-6 mb-4">
							<div class="card border-left-primary shadow h-100 py-2">
								<div class="card-body">
									<div class="row no-gutters align-items-center">
										<div class="col mr-2">
											<div
												class="text-xs font-weight-bold text-primary text-uppercase mb-1">
												월 매출</div>

											<div class="h5 mb-0 font-weight-bold text-gray-800">${monthprice12}원</div>
										</div>

										<div class="col-auto">
											<i class="fas fa-dollar-sign fa-2x text-gray-300"></i>
										</div>


									</div>
								</div>
							</div>
						</div>
						
						<!-- 연 매출 -->
						<div class="col-xl-3 col-md-6 mb-4">
							<div class="card border-left-primary shadow h-100 py-2">
								<div class="card-body">
									<div class="row no-gutters align-items-center">
										<div class="col mr-2">
											<div
												class="text-xs font-weight-bold text-primary text-uppercase mb-1">
												연 매출</div>
											<c:forEach var="monthSalesList" items="${monthSalesList}">
												<c:set var="total" value="${total + monthSalesList.PRICE}" />
											</c:forEach>
											<div class="h5 mb-0 font-weight-bold text-gray-800">
											<fmt:formatNumber var="tot" value="${total}" maxFractionDigits="3"/>
												<c:out value="${tot}"></c:out>
												원
											</div>

										</div>

										<div class="col-auto">
											<i class="fas fa-dollar-sign fa-2x text-gray-300"></i>
										</div>


									</div>
								</div>
							</div>
						</div>




						<!-- 상품별 매출현황 엑셀 -->
						<div class="col-xl-3 col-md-6 mb-4">
							<div class="card border-left-success shadow h-100 py-2">
								<div class="card-body">
									<div class="row no-gutters align-items-center">
										<div class="col mr-2">
											<div
												class="text-xs font-weight-bold text-success text-uppercase mb-1">
												상품별 매출현황</div>
											<div class="h5 mb-0 font-weight-bold text-gray-800"></div>
										</div>

										<div class="col-auto">
											<button type="button" data-bs-toggle="modal"
												data-bs-target="#myModal" data-toggle="modal"
												data-target="#exampleModalCenter"
												style="background-color: transparent; border: none;">
												<i class="fas fa-calendar fa-2x text-gray-300"></i>
											</button>
										</div>

										<div class="modal" id="myModal">
											<form name="" action="monthExcel.mdo"
												enctype="multipart/form-data">
												<div class="modal-dialog">
													<div class="modal-content" style="width: 200%;">
														<div class="modal-header"
															style="background-color: #BF5656 !important;">
															<h5 class="modal-title">상품별 매출현황</h5>
															<button type="button" class="btn-close"
																data-bs-dismiss="modal"></button>
														</div>
														<div class="modal-body">
															<table class="table" style="text-align: center;">
																<thead style="font-size: 13px;">
																	<tr>
																		<th style="margin: auto">주문날짜</th>
																		<th style="margin: auto">대분류</th>
																		<th style="margin: auto">중분류</th>
																		<th style="margin: auto">소분류</th>
																		<th style="margin: auto">브랜드명</th>
																		<th style="margin: auto">상품명</th>
																		<th style="margin: auto">상품가격</th>
																		<th style="margin: auto">주문건수</th>
																		<th style="margin: auto">매출</th>
																	</tr>
																</thead>
																<tbody style="font-size: 12px;">
																	<c:forEach var="salesList" items="${salesList}"
																		varStatus="status">
																		<tr>
																			<td style="margin: auto">${salesList.DATE1 }</td>
																			<td style="margin: auto">${salesList.CATEGORY_FIRST_NAME }</td>
																			<td style="margin: auto">${salesList.CATEGORY_SECOND_NAME }</td>
																			<td style="margin: auto">${salesList.CATEGORY_THIRD_NAME }</td>
																			<td style="margin: auto">${salesList.CATEGORY_GOODS_BRAND }</td>
																			<td style="margin: auto">${salesList.CATEGORY_GOODS_NAME }</td>
																			<td style="margin: auto">${salesList.ORDER_GOODS_PRICE }원</td>
																			<td style="margin: auto">${salesList.ORDER_GOODS_COUNT }건</td>
																			<td style="margin: auto">${salesList.PRICE }원</td>
																		</tr>
																	</c:forEach>
																</tbody>
															</table>
														</div>

														<div class="modal-footer">
															<button type="submit" class="btn btn-outline-success"
																style="float-left: -60px;">Excel</button>
														</div>
													</div>
												</div>
											</form>
										</div>


									</div>
								</div>
							</div>
						</div>

					</div>

					<!-- Content Row -->
					<div class="row">

						<!-- Area Chart -->
						<div class="col-xl-6 col-lg-4">
							<div class="card shadow mb-4">
								<div class="card-header py-3">
									<h6 class="m-0 font-weight-bold text-primary">일별 매출현황</h6>
								</div>
								<div class="card-body">
									<div class="chart-area">
										<div class="chartjs-size-monitor">
											<div class="chartjs-size-monitor-expand">
												<div class=""></div>
											</div>
											<div class="chartjs-size-monitor-shrink">
												<div class=""></div>
											</div>
										</div>
										<canvas id="myAreaChart"
											style="display: block; height: 320px; width: 782px;"
											width="977" height="400" class="chartjs-render-monitor"></canvas>
									</div>
								</div>
							</div>
						</div>

						<!-- Bar Chart -->
						<div class="col-xl-6 col-lg-4">
							<div class="card shadow mb-4">
								<div class="card-header py-3">
									<h6 class="m-0 font-weight-bold text-primary">월별 매출현황</h6>
								</div>
								<div class="card-body">
									<div class="chart-bar">
										<div class="chartjs-size-monitor">
											<div class="chartjs-size-monitor-expand">
												<div class=""></div>
											</div>
											<!-- <div class="chartjs-size-monitor-shrink">
												<div class=""></div>
											</div> -->
										</div>
										<canvas id="myBarChart" width="977" height="400"
											style="display: block; height: 320px; width: 782px;"
											class="chartjs-render-monitor"></canvas>
									</div>
									<hr>
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


	<script src="${path}/vendor/jquery/jquery.min.js"></script>
	<script src="${path}/vendor/bootstrap/js/bootstrap.bundle.min.js"></script>
	<script src="${path}/vendor/jquery-easing/jquery.easing.min.js"></script>
	<script src="${path}/js2/sb-admin-2.min.js"></script>
	<script src="${path}/vendor/chart.js/Chart.min.js"></script>
	<script src="${path}/js2/demo/chart-pie-demo.js"></script>
	<script src="${path}/js2/demo/chart-area-demo.js"></script>
	<%-- <script src="${path}/js2/demo/chart-bar-demo.js"></script> --%>

	<script type="text/javascript">
var ctx = document.getElementById("myBarChart");
var myBarChart = new Chart(ctx, {
  type: 'bar',
  data: {
    labels: ["January", "February", "March", "April", "May", "June", "July", "August", "September", "October", "November", "December"],
    datasets: [{
      label: "Revenue",
      backgroundColor: "#4e73df",
      hoverBackgroundColor: "#2e59d9",
      borderColor: "#4e73df",
      data: [${monthprice0},${monthprice1},${monthprice2},${monthprice3},${monthprice4},${monthprice5},${monthprice6},${monthprice7}
      ,${monthprice8},${monthprice9},${monthprice10},${monthprice11}],
    }],
  },
  options: {
    maintainAspectRatio: false,
    layout: {
      padding: {
        left: 10,
        right: 25,
        top: 25,
        bottom: 0
      }
    },
    scales: {
      xAxes: [{
        time: {
          unit: 'month'
        },
        gridLines: {
          display: false,
          drawBorder: false
        },
        ticks: {
          maxTicksLimit: 12
        },
        maxBarThickness: 25,
      }],
      yAxes: [{
        ticks: {
          min: 0,
          max: 1000000,
          maxTicksLimit: 5,
          padding: 10,
          // Include a dollar sign in the ticks
          callback: function(value, index, values) {
            return '$' + number_format(value);
          }
        },
        gridLines: {
          color: "rgb(234, 236, 244)",
          zeroLineColor: "rgb(234, 236, 244)",
          drawBorder: false,
          borderDash: [2],
          zeroLineBorderDash: [2]
        }
      }],
    },
    legend: {
      display: false
    },
    tooltips: {
      titleMarginBottom: 10,
      titleFontColor: '#6e707e',
      titleFontSize: 14,
      backgroundColor: "rgb(255,255,255)",
      bodyFontColor: "#858796",
      borderColor: '#dddfeb',
      borderWidth: 1,
      xPadding: 15,
      yPadding: 15,
      displayColors: false,
      caretPadding: 10,
      callbacks: {
        label: function(tooltipItem, chart) {
          var datasetLabel = chart.datasets[tooltipItem.datasetIndex].label || '';
          return datasetLabel + ': $' + number_format(tooltipItem.yLabel);
        }
      }
    },
  }
});



//Area Chart Example
var ctx = document.getElementById("myAreaChart");
var myLineChart = new Chart(ctx, {
  type: 'line',
  data: {
    labels: [String("${day6}"), String("${day5}"), String("${day4}"), String("${day3}"), String("${day2}"), String("${day1}"), String("${day0}")],
    datasets: [{
      label: "Earnings",
      lineTension: 0.3,
      backgroundColor: "rgba(78, 115, 223, 0.05)",
      borderColor: "rgba(78, 115, 223, 1)",
      pointRadius: 3,
      pointBackgroundColor: "rgba(78, 115, 223, 1)",
      pointBorderColor: "rgba(78, 115, 223, 1)",
      pointHoverRadius: 3,
      pointHoverBackgroundColor: "rgba(78, 115, 223, 1)",
      pointHoverBorderColor: "rgba(78, 115, 223, 1)",
      pointHitRadius: 10,
      pointBorderWidth: 2,
      data: [${dayprice6}, ${dayprice5}, ${dayprice4},${dayprice3},${dayprice2},${dayprice1},${dayprice0}],
    }],
  },
  options: {
    maintainAspectRatio: false,
    layout: {
      padding: {
        left: 10,
        right: 25,
        top: 25,
        bottom: 0
      }
    },
    scales: {
      xAxes: [{
        time: {
          unit: 'date'
        },
        gridLines: {
          display: false,
          drawBorder: false
        },
        ticks: {
          maxTicksLimit: 7
        }
      }],
      yAxes: [{
        ticks: {
          maxTicksLimit: 5,
          padding: 10,
          // Include a dollar sign in the ticks
          callback: function(value, index, values) {
            return '$' + number_format(value);
          }
        },
        gridLines: {
          color: "rgb(234, 236, 244)",
          zeroLineColor: "rgb(234, 236, 244)",
          drawBorder: false,
          borderDash: [2],
          zeroLineBorderDash: [2]
        }
      }],
    },
    legend: {
      display: false
    },
    tooltips: {
      backgroundColor: "rgb(255,255,255)",
      bodyFontColor: "#858796",
      titleMarginBottom: 10,
      titleFontColor: '#6e707e',
      titleFontSize: 14,
      borderColor: '#dddfeb',
      borderWidth: 1,
      xPadding: 15,
      yPadding: 15,
      displayColors: false,
      intersect: false,
      mode: 'index',
      caretPadding: 10,
      callbacks: {
        label: function(tooltipItem, chart) {
          var datasetLabel = chart.datasets[tooltipItem.datasetIndex].label || '';
          return datasetLabel + ': $' + number_format(tooltipItem.yLabel);
        }
      }
    }
  }
});

</script>
<script src="https://cdn.jsdelivr.net/npm/bootstrap@5.1.3/dist/js/bootstrap.bundle.min.js" crossorigin="anonymous"></script>
</body>
</html>