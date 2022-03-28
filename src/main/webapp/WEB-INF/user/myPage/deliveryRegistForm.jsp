<%@ page language="java" contentType="text/html; charset=utf-8"
	pageEncoding="utf-8"%>
<%@ taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core" %>
<c:set var="path" value="${pageContext.request.contextPath}"/>
<!DOCTYPE html>
<html>
<head>
<meta charset="utf-8">
<title>배송지/환불계좌</title>
<link rel="stylesheet" type="text/css" href="${path }/css/board.css" />
<link rel="stylesheet" type="text/css" href="${path }/css/common.css" />
<link rel="stylesheet" type="text/css" href="${path }/css/contents.css" />
<link rel="stylesheet" type="text/css" href="${path }/css/curation.css" />
<link rel="stylesheet" type="text/css" href="${path }/css/global.css" />
<link rel="stylesheet" type="text/css"
   href="${path }/css/jquery.mCustomScrollbar.css" />
<link rel="stylesheet" type="text/css" href="${path }/css/pickup.css" />
<script src="//t1.daumcdn.net/mapjsapi/bundle/postcode/prod/postcode.v2.js"></script>
<script>
function zip(){
	var myAddress;
	var myZipcode;
	new daum.Postcode({
		oncomplete:function(data){
			myAddress=data.address;
			myZipcode=data.zonecode;
			$("#user_shipping_zipcode").val(myZipcode);
			$("#user_shipping_address1").val(myAddress);
		}
	}).open();
}
</script>
</head>



<body>
	<jsp:include page="../default/header.jsp"></jsp:include>
		<div id = "Container">
			<div id = "Contents">
				<div class = "mypage-head rate_04">
					<h1 class = "tit">
						<!-- 마이페이지 메인페이지로 이동 -->
						<a href = "#">마이페이지</a>
					</h1>
					<div class = "grd-box">
						<div class = "info_user clrfix">
							<div class = "thum">
								<span class = "bg"></span>
								<!-- my_picture_base.jpg -->
								<img src = "https://fyawsbucket.s3.ap-northeast-2.amazonaws.com/my_picture_base.jpg">
							</div>
							<p class = "txt">
								<!-- 등급변경시 바꿔줘야함 -->
								${userMember }
								<!-- 기본정보페이지의 이름에서 가져오는걸로 추정됨. -->
								<strong class = "name">${user.user_name} 고객</strong>
								님 반갑습니다.
							</p>
							
							<ul class = "mem_opt">
								<!-- 멤버십 페이지로 이동 -->
								<li id = "membershipBenefit">
									<a href = "membership.do" onclick = "#">멤버십라운지</a>
								</li>
								<!-- 나의 프로필 페이지로 이동 -->
								<li id = "profileModify">
									<a href = "MyProfile.do" onclick = "#">나의 프로필</a>
								</li>
							</ul>
						</div>
						<div class = "point-box ">
							<ul class = "infor clrfix" id = "pointInfo">
								<!-- 마이페이지의 CJONE포인트 페이지로 이동 -->
								<li id = "cjOnePoingInfo" onclick = "#">
									<span class = "tit">FY ONE 포인트</span>
									<a class = "num" href = "#">
										${userPoint }
										<em class = "unit">P</em>
									</a>
								</li>
								<!-- 마이페이지의 쿠폰 페이지로 이동 -->
								<li id = "couponList" onclick = "#">
									<span class = "tit">쿠폰</span>
									<a class = "num" href = "#" data-attr = "마이페이지^쿠폰^쿠폰함이동">
										0
										<em class = "unit">개</em>
									</a>
								</li>
								<!-- 마이페이지의 예치금부분인데 우리는 기능 구현 안할거임 -->
								<li id = "depositList" onclick = "#">
									<span class = "tit">예치금</span>
									<a class = "num" href = "#">
										0
										<em class = "unit">원</em>
									</a>
								</li>
							</ul>
						</div>
					</div>
				</div>
				<div class = "mypage-ix">
					<!-- 마이페이지 sub 메뉴 -->
					<jsp:include page="../default/myPage_Sub_Menu.jsp"></jsp:include>
					<!-- 마이페이지 sub 메뉴 End-->
					
					<div class="mypage-conts">
						<form name="form" method="post">
							
							<input type="hidden" id="user_id" name="user_id" value="${userId}"/>
							<c:if test="${getShipping!=null }">
								<input type="hidden" id="user_shipping_serial" name="user_shipping_serial" value="${getShipping.user_shipping_serial }"/>
							</c:if>
							<div class="title-area linezero">
								<h2 class="tit">배송지/환불계좌</h2>
							</div>
							<ul class="comm1sTabs mgzero">
								<li class="on">
									<a href="#">배송지</a>
								</li>
								<li>
									<a href="#">환불계좌</a>
								</li>	
							</ul>
							<h3 class="sub-title3">배송지 등록</h3>
							<table class="board-write-2s">
								<caption>배송지/환불계좌 등록</caption>
								<colgroup>
									<col style="width:25%;">
									<col style="width:75%;">
								</colgroup>
								<tbody>
									<tr>
										<th scope="row">
											<label for="AddressChoice">배송지명</label>
										</th>
										<c:if test="${getShipping==null }">
										<td class="star">
											<input type="text" id="user_shipping_place_name" name="user_shipping_place_name" title="배송지를 입력하세요" placeholder="최대 10자" style="width:200px;" value="" maxlength="10"/>
											<input type="checkbox" id="check" name="address_default" value="">
											<label for="base-dlvp-yn-check">기본 배송지 설정</label>
										</td>
										</c:if>
										<c:if test="${getShipping!=null}">
										<td class="star">
											<input type="text" id="user_shipping_place_name" name="user_shipping_place_name" title="배송지를 입력하세요" placeholder="최대 10자" style="width:200px;" value="${getShipping.user_shipping_place_name }" maxlength="10"/>
											<input type="checkbox" id="check" name="address_default" value="${getShipping.address_default }">
											<label for="base-dlvp-yn-check">기본 배송지 설정</label>
										</td>
										</c:if>
									</tr>
									<tr>
										<th scope="row">
											<label for="Recipient">받는 분</label>
										</th>
										<c:if test="${getShipping==null }">
										<td class="star">				
											<input type="text" id="user_shipping_name" name="user_shipping_name" title="물품을 수령할 수신자를 입력하세요." placeholder="최대 10자" style="width:200px;" value="" maxlength="10"/>
										</td>
										</c:if>
										<c:if test="${getShipping!=null }">
										<td class="star">				
											<input type="text" id="user_shipping_name" name="user_shipping_name" title="물품을 수령할 수신자를 입력하세요." placeholder="최대 10자" style="width:200px;" value="${getShipping.user_shipping_name }" maxlength="10"/>
										</td>
										</c:if>
									</tr>
									<tr>
										<th scope="row">
											<label for="PhoneNumber">연락처</label>
										</th>
										<c:if test="${getShipping==null }">
										<td class="star">
											<input type="text" id="user_shipping_phone" name="user_shipping_phone" title="수령하시는 분의 연락처를 입력하세요." placeholder="최대 12자 -제외" style="width:200px;" value="" maxlength="12"/>
										</td>
										</c:if>
										<c:if test="${getShipping!=null }">
										<td class="star">
											<input type="text" id="user_shipping_phone" name="user_shipping_phone" title="수령하시는 분의 연락처를 입력하세요." placeholder="최대 12자 -제외" style="width:200px;" value="${getShipping.user_shipping_phone }" maxlength="12"/>
										</td>
										</c:if>
									</tr>
									<tr class="addr">		
										<th scope="row">
											<label for>주소</label>
										</th>
										<c:if test="${getShipping==null }">
										<td class="star">
											<input type="text" id="user_shipping_zipcode" name="user_shipping_zipcode" readonly="readonly" title="주소를 선택하여 입력하세요." value="" style="width:90px;"/>
											<button type="button" class="btnPost" id="search-zipcode-pop" onclick="zip()">우편번호</button>
											<input type=text id="user_shipping_address1" name="user_shipping_address1" style="width:500px;" value="" placeholder="주소를 선택하여 입력하세요."/>
											<input type="text" id="user_shipping_detail_address" name="user_shipping_detail_address" value="" title="상세주소를 입력하세요." placeholder="상세주소를 입력하세요." style="width:500px;" maxlength="50"/>
										</td>
										</c:if>
										<c:if test="${getShipping!=null }">
										<td class="star">
											<input type="text" id="user_shipping_zipcode" name="user_shipping_zipcode" readonly="readonly" title="주소를 선택하여 입력하세요." value="${getShipping.user_shipping_zipcode }" style="width:90px;"/>
											<button type="button" class="btnPost" id="search-zipcode-pop" onclick="zip()">우편번호</button>
											<input type=text id="user_shipping_address1" name="user_shipping_address1" style="width:500px;" value="${getShipping.user_shipping_address1 }" placeholder="주소를 선택하여 입력하세요."/>
											<input type="text" id="user_shipping_detail_address" name="user_shipping_detail_address" value="${getShipping.user_shipping_detail_address }" title="상세주소를 입력하세요." placeholder="상세주소를 입력하세요." style="width:500px;" maxlength="50"/>
										</td>
										</c:if>
									</tr>					
								</tbody>
							</table>
							<div class="area1sButton mgT20">
							<c:if test="${getShipping==null }">
								 <input type="submit" id="cnslSubmit" class="btnGreen" value="등록" onclick="javascript:form.action='getOrderForminsert.do';"
				style="width: 150px; height: 50px; background-color: #9bce26; padding: 11px 0 9px; 
				font-size: 18px; line-height: 30px; border-radius: 5px; color:#fff"/>
							</c:if>
							
							<c:if test="${getShipping!=null }">
								 <input type="submit" id="cnslUpdate" class="" onclick="javascript:form.action='getOrderFormupdate.do';" value="수정" style="width: 150px; 
				height: 50px; background-color: #00c4b5; padding: 11px 0 9px; 
				font-size: 18px; line-height: 30px; border-radius: 5px; color:#fff" />

							</c:if> 
							
                      			 <a href="getDeliveryInfo.do" class="btnGray">취소</a>
                     </div>
                  </form>
               </div>
               
               
            </div>   
         </div>
      </div>
   <jsp:include page="../default/footer.jsp"></jsp:include>
   <script>
 
   </script>
</body>
</html>