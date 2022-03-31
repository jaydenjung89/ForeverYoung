<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
<%@ taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core" %>
<%@ taglib prefix="fmt" uri="http://java.sun.com/jsp/jstl/fmt" %>
<%@ taglib uri = "http://java.sun.com/jsp/jstl/functions" prefix = "fn" %>
<!-- 마이페이지 sub 메뉴 -->
<div class = "mypage-lnb">
	<ul>
		<li>
			<h2>마이쇼핑</h2>
			<ul>
				<!-- class 변수명에 on을 추가하면(subMenu on 으로) 
					현재 위치한 페이지를 알려주기 위한 sub메뉴 버튼에 색 다른게 들어옴
					
					자기 페이지에 맞춰서 수정 요망
				-->
				<li class = "subMenu">
					<!-- 마이페이지 카테고리 차례대로 -->
					<a href = "order.do" mymenuid="0101" data-ref-linkurl="#" data-attr = "마이페이지^메뉴^주문/배송 조회">주문/배송조회</a>
				</li>
				<li class = "subMenu">
					<a href = "orderCancelList.do" mymenuid = "0102" data-ref-linkurl = "#" data-attr = "마이페이지^메뉴^취소/반품/교환 내역">취소/반품/교환 내역</a>
				</li>
				<!-- 
				거래증빙서류 기능 구현 안할거임
				<li class = "subMenu">
					<a href = "#" mymenuid="0103" data-ref-linkurl = "#" data-attr = "마이페이지^메뉴^거래증빙서류 확인">거래증빙서류 확인</a>
				</li>
				 -->
			
				<li class = "subMenu">
					<a href = "cartPage.do" mymenuid="0201" data-ref-linkurl="#" data-attr="마이페이지^메뉴^장바구니">장바구니</a>
				</li>
				<!-- 
				<li class = "subMenu">
					<a href = "#" mymenuid="0202" data-ref-linkurl="#" data-attr="마이페이지^메뉴^좋아요">좋아요</a>
				</li>
				<li class = "subMenu">
					<a href = "#" mymenuid="0203" data-ref-linkurl="#" data-attr="마이페이지^메뉴^재입고 알림">재입고 알림</a>
				</li>
				 -->
				
			
			<!-- 
				기프트카드 기능 구현 안할거임
				<li class = "subMenu">
					<a href = "#" mymenuid="0300" data-ref-linkurl = "#" data-attr = "마이페이지^메뉴^기프트카드">기프트카드</a>
				</li>
				 -->
				<!-- 
				<li class = "subMenu">
					<a href = "#" mymenuid="0301" data-ref-linkurl = "#" data-attr = "마이페이지^메뉴^CJ ONE 포인트">CJ ONE포인트</a>
				</li> -->
				
				<!-- 
				<li class = "subMenu">
					<a href = "#" mymenuid="0302" data-ref-linkurl = "#" data-attr = "마이페이지^메뉴^쿠폰">쿠폰</a>
				</li>
				예치금 기능 구현 안할거임
				<li class = "subMenu">
					<a href = "#" mymenuid="0303" data-ref-linkurl = "#" data-attr = "마이페이지^메뉴^예치금">예치금</a>
				</li>
				 -->
				
			</ul>
		</li>
		<li>
			<h2>마이 활동</h2>
			<ul>
				<li class = "subMenu">
					<a href = "oneqmain.do" mymenuid = "0401" data-ref-linkurl = "#" data-attr = "마이페이지^메뉴^1:1문의내역">1:1문의내역</a>
				</li>
				<li class = "subMenu">
                              <a href = "myPageReview.do" mymenuid = "0402" data-ref-linkurl = "#" data-attr = "마이페이지^메뉴^리뷰">
                                 리뷰 
                                 <c:if test="${userId != null}">
                                 <span class = "num_review" id = "_gdasPossibleTotCnt">
                                 
                                 </span>
                                 </c:if>
            
                                 <!-- icon_lnb_new2.png -->
                                 <img src = "https://fyawsbucket.s3.ap-northeast-2.amazonaws.com/icon_lnb_new2.png" class = "new" id = "_newGdasPossible" style = "display : none;" alt = "신규 리뷰 작성">
                              </a>
                           </li>
				<li class = "subMenu">
					<a href = "goodsQnaPage.do" mymenuid = "0403" data-ref-linkurl = "#" data-attr = "마이페이지^메뉴^상품Q&A내역">상품Q&A내역</a>
				</li>
				
				<!-- 
				아래 두 페이지 기능 구현 안함
				<li class = "subMenu">
					<a href = "#" mymenuid = "0404" data-ref-linkurl = "#" data-attr = "마이페이지^메뉴^참여 현황">참여 현황</a>
				</li>
				<li class = "subMenu">
					<a href = "#" mymenuid = "0405" data-ref-linkurl = "#" data-attr = "마이페이지^메뉴^올영체험단 리뷰">올영체험단 리뷰</a>
				</li>
				 -->
			</ul>
		</li>
		<li>
			<h2>마이 정보</h2>
			<ul>
				<li class = "subMenu">
					<a href = "modify1.do" mymenuid = "0501" data-ref-linkurl = "#" data-attr = "마이페이지^메뉴^회원정보 수정">회원정보 수정</a>
				</li>
				<li class = "subMenu">
					<a href = "getDeliveryInfo.do" mymenuid = "0502" data-ref-linkurl = "#" data-attr = "마이페이지^메뉴^배송지/환불계좌">배송지/환불계좌</a>
				</li>
				<!-- 
				<li class = "subMenu">
					<a href = "#" mymenuid = "0503" data-ref-linkurl = "#" data-attr = "마이페이지^메뉴^관심 매장 관리">관심 매장 관리</a>
				</li>
				 -->
				
				<li class = "subMenu">
					<a href = "preUserDelete.do" mymenuid = "0504" data-ref-linkurl = "#" data-attr = "마이페이지^메뉴^회원탈퇴">회원탈퇴</a>
				</li>
			</ul>
		</li>
	</ul>
</div>
<!-- 마이페이지 sub 메뉴 End-->