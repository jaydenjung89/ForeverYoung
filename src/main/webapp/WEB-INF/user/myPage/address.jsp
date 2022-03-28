<%@ page language="java" contentType="text/html; charset=UTF-8"
	pageEncoding="UTF-8"%>
<%@ taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core" %>
<%@ taglib prefix="fmt" uri="http://java.sun.com/jsp/jstl/fmt" %>
<%@ taglib uri = "http://java.sun.com/jsp/jstl/functions" prefix = "fn" %>

<!DOCTYPE html>



					<tr type="exist" id="pickupHide" style="display:table-row;" class="deliveryInf">
						<th scope="row" style="width:100px">배송지명</th>
						
						
						<td style="width:100%" id="dlvpNm_exist_span">${shippingList.user_shipping_place_name }</td>
						
					
						<input type="hidden" id="dlvpNm_exist" name="dlvpNm" value="자택" title="배송지명을 입력해주세요." style="width:200px; border:1px solid #9bce26;" this="배송지명은"/>
					</tr>
					<!-- //기존배송지 클릭시 배송지명 -->
					
					<!-- 기존 배송지 클릭시 받는분 -->
					<tr id="pickupHide1" type="exist" style="display: table-row;" class="deliveryInf">
						<th scope="row" style="width:170px">받는분</th>
						<td style="width:850px" class="imp_data">
							<input type="text" id="rmitNm_exist" name="rmitNm" value="${shippingList.user_shipping_name }" orgvalue="" class="inpH28" title="받는분 이름을 입력해주세요." style="width:200px; border:1px solid #9bce26;" this="받는분 이름은" data-attr="배송지정보^1_받는분">
							
					</tr>
					<!-- //기존 배송지 클릭시 받는분 -->
					<!-- 기존 배송지 클릭시 연락처 -->
					<tr class="sumtr2" id="pickupHide2" type="exist" style="display:table-row;" class="deliveryInf">
						<th scope="row" style="width:170px">연락처</th>
						
							<td style="width:850px" class="imp_data">
							<input type="text" id="user_shipping_phone" name="user_shipping_phone" title="수령하시는 분의 연락처를 입력하세요.(최대 12자 -제외)" style="width:200px; border:1px solid #9bce26;" value="${shippingList.user_shipping_phone }" maxlength="12"/>
							
						</td>
					
					</tr>
					<!-- //기존 배송지 클릭시 연락처 -->
					
					<!-- 기존 배송시 클릭시 주소 -->
					<tr id="pickupHide4" type="exist" style="display: table-row;" class="deliveryInf">
						<th scope="row" style="width:170px">주소</th>
						<td style="width:850px"  class="imp_data">
							<input type="text" id="stnmRmitPostNo_exist" name="rmitPostNo" value="${shippingList.user_shipping_zipcode }" class="inpH28" title="우편번호를 검색해주세요." style="width:90px; border:1px solid #9bce26;" readonly="readonly">
							<input type="hidden" id="rmitPostNo_exist" name="stnmRmitPostNo" value="13173" title="우편번호를 검색해주세요.">
							<button type="button" class="btnSmall wGreen w100" id="search-zipcode-pop_exist_r" data-attr="배송지정보^1_주소">우편번호 찾기</button>
							<div class="addr_box">
												<!-- 도로명주소 -->
												<input type="hidden" id="stnmRmitPostAddr_exist" name="stnmRmitPostAddr" value="${shippingList.user_shipping_address1 }" class="inpH28" title="우편번호를 검색해주세요." readonly="readonly">
												<!-- 옛날 주소 -->
												<input type="hidden" id="rmitBaseAddr_exist" name="rmitPostAddr" value="${shippingList.user_shipping_detail_address }" class="inpH28" title="우편번호를 검색해주세요." readonly="readonly">
												<p class="addr_new">
													<span class="tx_tit">도로명</span>
													:${shippingList.user_shipping_address1 } ${shippingList.user_shipping_detail_address }
													<span class="tx_adr" id="stnmPostAddr_exist" ></span>
												</p>
												
											</div>
											
											<input type="hidden" id="stnmRmitDtlAddr_exist" name="stnmRmitDtlAddr" value="301호" orgvalue="301호" class="inpH28" title="상세주소를 입력해주세요." style="width:500px" this="상세 주소는">
											<input type="hidden" id="rmitDtlAddr_exist" name="rmitDtlAddr" value="301호" orgvalue="301호" class="inpH28" title="상세주소를 입력해주세요." style="width:500px">
											<input type="hidden" id="emdNm_exist" name="emdNm" value="금광동">
											<input type="hidden" id="admrNm_exist" name="admrNm" value="금광2동">
						</td>
					</tr>

					<!-- //기존 배송시 클릭시 주소 -->
					
					