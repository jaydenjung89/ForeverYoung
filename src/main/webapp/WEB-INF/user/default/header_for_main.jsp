<%@ page language="java" contentType="text/html; charset=utf-8"
   pageEncoding="utf-8"%>
<%@ taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core" %>
<c:set var="path" value="${pageContext.request.contextPath}"/>


<!DOCTYPE html>
<html>
<head>
<meta charset="utf-8">
<title>header</title>

<link rel="stylesheet" type="text/css" href="${path }/css/board.css" />
<link rel="stylesheet" type="text/css" href="${path }/css/common.css" />
<link rel="stylesheet" type="text/css" href="${path }/css/contents.css" />
<link rel="stylesheet" type="text/css" href="${path }/css/curation.css" />
<link rel="stylesheet" type="text/css" href="${path }/css/global.css" />
<link rel="stylesheet" type="text/css"
   href="${path }/css/jquery.mCustomScrollbar.css" />
<link rel="stylesheet" type="text/css" href="${path }/css/pickup.css" />
<script src="http://code.jquery.com/jquery-3.5.1.min.js"></script>
<script src="${path }/js/slick.min.js"></script>
<script>
$(document).ready(function(){
 	$.ajax({
		url:"categoryData.do",
		dataType:"JSON",
		beforeSend:function(xhr){
			xhr.setRequestHeader("Content-type", "application/json");
		},
		success:function(data){
			for(key in data){
				var link="categoryItemPage.do?category_first_serial="+data[key].category_first_serial;
				if(data[key].category_first_serial=="Fa"){
				$(".all_menu_wrap ").append("<li><div class='sub_menu_boxa'><p class='sub_depth'><a href="+link+" id='categorykey'>"+data[key].category_first_name+"</p><ul class="+data[key].category_first_serial+" id='categoryview'>")
				$(".sub_menu_boxa").find("ul."+data[key].category_first_serial).append("<li>");
				}
				if(data[key].category_first_serial=="Fb"||data[key].category_first_serial=="Fc"||data[key].category_first_serial=="Fd"||data[key].category_first_serial=="Fe"||data[key].category_first_serial=="Ff"){
					$(".sub_menu_boxa ").append("<p class=sub_depth><a href="+link+" id='categorykey'>"+data[key].category_first_name+"</p><ul class="+data[key].category_first_serial+" id='categoryview'>")
					$(".sub_menu_boxa").find("ul."+data[key].category_first_serial).append("<li>");
					}
				
				for(second in data[key].data){
					 
					var parentSerial="categoryItemPage2.do?category_first_serial="+data[key].category_first_serial+"&category_second_serial="+data[key].data[second].category_second_serial;
					$(".sub_menu_boxa ul."+data[key].category_first_serial).find("li").append("<a href="+parentSerial+" id='categoryview'>"+data[key].data[second].category_second_name).append("<br></a></li></ul></div></li>")
					
					}
				
				}
			for(key in data){
				var link="categoryItemPage.do?category_first_serial="+data[key].category_first_serial;
				if(data[key].category_first_serial=="Fg"){
				$(".all_menu_wrap ").append("<li><div class='sub_menu_boxb'><p class='sub_depth'><a href="+link+" id='categorykey'>"+data[key].category_first_name+"</p><ul class="+data[key].category_first_serial+" id='categoryview'>")
				$(".sub_menu_boxb").find("ul."+data[key].category_first_serial).append("<li>");
				}
				if(data[key].category_first_serial=="Fh"||data[key].category_first_serial=="Fi"||data[key].category_first_serial=="Fj"||data[key].category_first_serial=="Fk"||data[key].category_first_serial=="Fl"){
					$(".sub_menu_boxb ").append("<p class=sub_depth><a href="+link+" id='categorykey'>"+data[key].category_first_name+"</p><ul class="+data[key].category_first_serial+" id='categoryview'>")
					$(".sub_menu_boxb").find("ul."+data[key].category_first_serial).append("<li>");
					}
				
				for(second in data[key].data){
					 
					var parentSerial="categoryItemPage2.do?category_first_serial="+data[key].category_first_serial+"&category_second_serial="+data[key].data[second].category_second_serial;
					$(".sub_menu_boxb ul."+data[key].category_first_serial).find("li").append("<a href="+parentSerial+" id='categoryview'>"+data[key].data[second].category_second_name).append("<br></a></li></ul></div></li>")
					
					}
				
				}
			for(key in data){
				var link="categoryItemPage.do?category_first_serial="+data[key].category_first_serial;
				if(data[key].category_first_serial=="Fm"){
				$(".all_menu_wrap ").append("<li><div class='sub_menu_boxc'><p class='sub_depth'><a href="+link+" id='categorykey'>"+data[key].category_first_name+"</p><ul class="+data[key].category_first_serial+" id='categoryview'>")
				$(".sub_menu_boxc").find("ul."+data[key].category_first_serial).append("<li>");
				}
				if(data[key].category_first_serial=="Fn"||data[key].category_first_serial=="Fo"||data[key].category_first_serial=="Fp"||data[key].category_first_serial=="Fq"||data[key].category_first_serial=="Fr"){
					$(".sub_menu_boxc ").append("<p class=sub_depth><a href="+link+" id='categorykey'>"+data[key].category_first_name+"</p><ul class="+data[key].category_first_serial+" id='categoryview'>")
					$(".sub_menu_boxc").find("ul."+data[key].category_first_serial).append("<li>");
					}
				
				for(second in data[key].data){
					 
					var parentSerial="categoryItemPage2.do?category_first_serial="+data[key].category_first_serial+"&category_second_serial="+data[key].data[second].category_second_serial;
					$(".sub_menu_boxc ul."+data[key].category_first_serial).find("li").append("<a href="+parentSerial+" id='categoryview'>"+data[key].data[second].category_second_name).append("<br></a></li></ul></div></li>")
					
					}
				
				}
			}
		
	}); 
	$("#btnGnbOpen").click(function(){
		$(this).attr("class", "active");
		$("#gnbAllMenu").attr("class", "layer_all_menu active");
	});

 	$("#gnbWrap").mouseleave(function(){
		$("#btnGnbOpen").attr("class", "");
		$("#gnbAllMenu").attr("class", "layer_all_menu");
		 });    
  
});
</script>
<style>
/* #categoryview{
	display:none;
}
#cgoryview.active{
	display:block;
} */
#Gnb .all_menu_wrap>li .sub_menu_boxa {
	float: left;
	width: 100%;
	min-height: 400px;
	padding: 0 10px 0 30px;
}

#Gnb .all_menu_wrap>li h2+.sub_menu_boxa {
	padding: 0 9px 0 22px
}

#Gnb .all_menu_wrap>li .sub_menu_boxa {
	width: 155px
}

#Gnb .all_menu_wrap .sub_menu_boxa .sub_depth {
	margin-top: 18px
}

#Gnb .all_menu_wrap .sub_menu_boxa .sub_depth:first-child {
	margin-top: 0
}

#Gnb .all_menu_wrap .sub_menu_boxa .sub_depth a {
	color: #000;
	font-weight: 700
}

#Gnb .all_menu_wrap .sub_menu_boxa>ul {
	margin: 7px 0 0
}

#Gnb .all_menu_wrap .sub_menu_boxa>ul>li {
	margin: 3px 0;
}

#Gnb .all_menu_wrap .sub_menu_boxa>ul>li a {
	font-size: 13px;
	color: #888;
	font-weight: 700
}
/***************************************/
#Gnb .all_menu_wrap>li .sub_menu_boxb {
	float: left;
	width: 100%;
	min-height: 400px;
	padding: 0 10px 0 30px;
}

#Gnb .all_menu_wrap>li h2+.sub_menu_boxb {
	padding: 0 9px 0 22px
}

#Gnb .all_menu_wrap>li .sub_menu_boxb {
	width: 155px
}

#Gnb .all_menu_wrap .sub_menu_boxb .sub_depth {
	margin-top: 18px
}

#Gnb .all_menu_wrap .sub_menu_boxb .sub_depth:first-child {
	margin-top: 0
}

#Gnb .all_menu_wrap .sub_menu_boxb .sub_depth a {
	color: #000;
	font-weight: 700
}

#Gnb .all_menu_wrap .sub_menu_boxb>ul {
	margin: 7px 0 0
}

#Gnb .all_menu_wrap .sub_menu_boxb>ul>li {
	margin: 3px 0;
}

#Gnb .all_menu_wrap .sub_menu_boxb>ul>li a {
	font-size: 13px;
	color: #888;
	font-weight: 700
}
/*********************************************************/
#Gnb .all_menu_wrap>li .sub_menu_boxc {
	float: left;
	width: 100%;
	min-height: 400px;
	padding: 0 10px 0 30px;
}

#Gnb .all_menu_wrap>li h2+.sub_menu_boxc {
	padding: 0 9px 0 22px
}

#Gnb .all_menu_wrap>li .sub_menu_boxc {
	width: 155px
}

#Gnb .all_menu_wrap .sub_menu_boxc .sub_depth {
	margin-top: 18px
}

#Gnb .all_menu_wrap .sub_menu_boxc .sub_depth:first-child {
	margin-top: 0
}

#Gnb .all_menu_wrap .sub_menu_boxc .sub_depth a {
	color: #000;
	font-weight: 700
}

#Gnb .all_menu_wrap .sub_menu_boxc>ul {
	margin: 7px 0 0
}

#Gnb .all_menu_wrap .sub_menu_boxc>ul>li {
	margin: 3px 0;
}

#Gnb .all_menu_wrap .sub_menu_boxc>ul>li a {
	font-size: 13px;
	color: #888;
	font-weight: 700
}
/************************************************/
#Gnb.gen1 .all_menu_wrap .sub_menu_boxa a {
	display: inline-block;
	border-bottom-color: rgba(0, 0, 0, 0);
}

#Gnb.gen1 .all_menu_wrap .sub_menu_boxa a:hover {
	border-bottom: solid 1px rgba(0, 0, 0, 1);
	transition: all ease 0.3s;
}

#Gnb.gen1 .all_menu_wrap .sub_menu_boxa .sub_depth a {
	position: relative;
	height: 22px;
	padding-right: 15px;
	padding-bottom: 2px;
	font-weight: 700;
	color: #000;
	background:
		url("https://www.oliveyoung.co.kr/pc-static-root/image/comm/arrow_12_21_02.png")
		no-repeat 100% 5px;
	background-size: 5.5px;
}

#Gnb.gen1 .all_menu_wrap .sub_menu_boxa .sub_depth a:after {
	content: "";
	position: absolute;
	left: 0;
	bottom: 0;
	width: 0;
	height: 1px;
	background-color: #000;
	transition: .1s width;
}

#Gnb.gen1 .all_menu_wrap .sub_menu_boxa .sub_depth a:hover:after {
	width: 100%;
}

#Gnb.gen1 .all_menu_wrap .sub_menu_boxa>ul>li a {
	position: relative;
	height: 20px;
	padding-bottom: 2px;
	font-weight: 700;
	font-size: 13px;
	color: #888;
}

#Gnb.gen1 .all_menu_wrap .sub_menu_boxa>ul>li a:after {
	content: "";
	position: absolute;
	left: 0;
	bottom: 0;
	width: 0;
	height: 1px;
	background-color: #000;
	transition: .1s width;
}

#Gnb.gen1 .all_menu_wrap .sub_menu_boxa>ul>li a:hover {
	color: #333;
	border-bottom: solid 1px rgba(136, 136, 136, 1);
}

#Gnb.gen1 .all_menu_wrap .sub_menu_boxa>ul>li a:hover:after {
	width: 100%;
}
/********************************************************************/
#Gnb.gen1 .all_menu_wrap .sub_menu_boxb a {
	display: inline-block;
	border-bottom-color: rgba(0, 0, 0, 0);
}

#Gnb.gen1 .all_menu_wrap .sub_menu_boxb a:hover {
	border-bottom: solid 1px rgba(0, 0, 0, 1);
	transition: all ease 0.3s;
}

#Gnb.gen1 .all_menu_wrap .sub_menu_boxb .sub_depth a {
	position: relative;
	height: 22px;
	padding-right: 15px;
	padding-bottom: 2px;
	font-weight: 700;
	color: #000;
	background:
		url("https://www.oliveyoung.co.kr/pc-static-root/image/comm/arrow_12_21_02.png")
		no-repeat 100% 5px;
	background-size: 5.5px;
}

#Gnb.gen1 .all_menu_wrap .sub_menu_boxb .sub_depth a:after {
	content: "";
	position: absolute;
	left: 0;
	bottom: 0;
	width: 0;
	height: 1px;
	background-color: #000;
	transition: .1s width;
}

#Gnb.gen1 .all_menu_wrap .sub_menu_boxb .sub_depth a:hover:after {
	width: 100%;
}

#Gnb.gen1 .all_menu_wrap .sub_menu_boxb>ul>li a {
	position: relative;
	height: 20px;
	padding-bottom: 2px;
	font-weight: 700;
	font-size: 13px;
	color: #888;
}

#Gnb.gen1 .all_menu_wrap .sub_menu_boxb>ul>li a:after {
	content: "";
	position: absolute;
	left: 0;
	bottom: 0;
	width: 0;
	height: 1px;
	background-color: #000;
	transition: .1s width;
}

#Gnb.gen1 .all_menu_wrap .sub_menu_boxb>ul>li a:hover {
	color: #333;
	border-bottom: solid 1px rgba(136, 136, 136, 1);
}

#Gnb.gen1 .all_menu_wrap .sub_menu_boxb>ul>li a:hover:after {
	width: 100%;
}
/***************************************************************/
#Gnb.gen1 .all_menu_wrap .sub_menu_boxc a {
	display: inline-block;
	border-bottom-color: rgba(0, 0, 0, 0);
}

#Gnb.gen1 .all_menu_wrap .sub_menu_boxc a:hover {
	border-bottom: solid 1px rgba(0, 0, 0, 1);
	transition: all ease 0.3s;
}

#Gnb.gen1 .all_menu_wrap .sub_menu_boxc .sub_depth a {
	position: relative;
	height: 22px;
	padding-right: 15px;
	padding-bottom: 2px;
	font-weight: 700;
	color: #000;
	background:
		url("https://www.oliveyoung.co.kr/pc-static-root/image/comm/arrow_12_21_02.png")
		no-repeat 100% 5px;
	background-size: 5.5px;
}

#Gnb.gen1 .all_menu_wrap .sub_menu_boxc .sub_depth a:after {
	content: "";
	position: absolute;
	left: 0;
	bottom: 0;
	width: 0;
	height: 1px;
	background-color: #000;
	transition: .1s width;
}

#Gnb.gen1 .all_menu_wrap .sub_menu_boxc .sub_depth a:hover:after {
	width: 100%;
}

#Gnb.gen1 .all_menu_wrap .sub_menu_boxc>ul>li a {
	position: relative;
	height: 20px;
	padding-bottom: 2px;
	font-weight: 700;
	font-size: 13px;
	color: #888;
}

#Gnb.gen1 .all_menu_wrap .sub_menu_boxc>ul>li a:after {
	content: "";
	position: absolute;
	left: 0;
	bottom: 0;
	width: 0;
	height: 1px;
	background-color: #000;
	transition: .1s width;
}

#Gnb.gen1 .all_menu_wrap .sub_menu_boxc>ul>li a:hover {
	color: #333;
	border-bottom: solid 1px rgba(136, 136, 136, 1);
}

#Gnb.gen1 .all_menu_wrap .sub_menu_boxc>ul>li a:hover:after {
	width: 100%;
}
</style>
</head>
<body>
	<div id="Header">
		<div class="top_util">
			<ul class="menu_list" id="menu_list_header">
				<c:if test="${user==null }">
					<li class="join"><a href="join.do">????????????</a></li>
				<!-- ???????????? ????????? ?????? -->
					<li class="login"><a href="login.do">?????????</a></li>
				<!-- ????????? ????????? ?????? -->
				<li class="cart"><a href="login.do">????????????</a></li>
				<!-- ???????????? ????????? ?????? -->
				<li class="order"><a href="login.do">????????????</a></li>
				<!-- ???????????? ????????? ?????? -->
				</c:if>
				<c:if test="${user!=null}">
					<li class="logout"><strong>${userMember}&nbsp;${userName }</strong>
						<a href="logoutProc.do" >????????????</a>
					<li class="mypage"><a href="MyPageMain.do">???????????????</a>
						
				<!-- ????????? ????????? ?????? -->
				<li class="cart"><a href="cartPage.do">????????????</a></li>
				<!-- ???????????? ????????? ?????? -->
				<li class="order"><a href="order.do">????????????</a></li>
				<!-- ???????????? ????????? ?????? -->
				</c:if>
				<li class="customer"><a href="FAQ.do">????????????</a></li>
				<!-- ???????????? ????????? ?????? -->
				<li class="store"><a href="#">????????????</a></li>
				<!-- ???????????? ????????? ?????? -->
			</ul>
		</div>
		<div class="header_inner">
			<h1>
				<a href="main.do"><img src="https://fyawsbucket.s3.ap-northeast-2.amazonaws.com/images/foreverlogo.png" alt="????????????" /></a>
			</h1>
			<!-- ????????? -->
         <div class="search_box" id="w_search_box">
            <input type="hidden" name="chkButton" id="chkButton" value="" />
            <div id="side_search" class="gnb_search">
               <form action="searchItemPage.do">
                  <input name="searchKeyword" type="text" id="sword"
                     class="inp_search" value="${searchKeyword }" required label="?????????"
                     placeholder="???????????? ??????????????????."> 
                  <div class="init">
                  </div>
                  <button id="searchSubmit">??????</button>
               </form>
            </div>
            <!-- ????????? ????????? ?????? -->
            <div class="search_layer">
               <div class="layer_inner">
                  <!-- ???????????? ?????? -->
                  <div class="auto_search_cont">
                     <div class="brand_area" id="ark_brand"></div>
                     <div class="auto_list" id="ark_w" style="display: none;"></div>
                  </div>
                  <!-- ???????????? ?????? end -->
                  <!-- ??????????????? -->
                  <!-- <a href="#" class="on search_tab tab01" id="searchRecent">??????
                     ?????????</a>
                  <div class="search_tab_cont" id="recent_cont">
                     <ul id="mykeyword">
                        <li id="mk0">
                           <a href="#" onclick=""></a>
                           <button onclick="">????????? ??????</button>
                        </li>
                        <li id="mk1">
                           <a href="#" onclick=""></a>
                           <button onclick="">????????? ??????</button>
                        </li>
                     </ul>
                     <div class="search_set_area">
                        <a href="#" class="sch_all_del" onclick="">?????? ??????</a> <a href="#"
                           class="sch_save">????????? ?????? ??????</a>
                     </div>
                  </div> -->
                  <!-- ??????????????? end -->
                  <a href="#" class="search_tab tab02" id="searchPop">????????? ?????????</a>
                  <!-- SCP?????? -->
                  <div class="scp_cont" id="scp_cont_id">
                     <h3>?????? ?????? ??????</h3>
                     <div class="scp_slide">
                        <div
                           class="FadeDot banner_wrap slick-initialized slick-slider slick-dotted"
                           role="toolbar">
                           <button type="button" data-role="none"
                              class="slick-prev slick-arrow slick-disabled"
                              aria-label="Previous" role="button" aria-disabled="true"
                              style="display: inline-block;">Previous</button>
                           <div aria-live="polite" class="slick-list draggable">
                              <div class="slick-track" style="opacity: 1; width: 780px;"
                                 role="listbox">
                                 <div
                                    class="moveGoodBtn slick-slide slick-current slick-active"
                                    data-slick-index="0" aria-hidden="false"
                                    style="width: 260px; position: relative; left: 0px; top: 0px; z-index: 999; opacity: 1;"
                                    tabindex="-1" role="option" aria-describedby="slick-slide00">
                                    <a href="#" data="/" tabindex="0">
                                       <div class="scp_thumb">
                                          <img
                                             src="https://fyawsbucket.s3.ap-northeast-2.amazonaws.com/images/A00000012922803ko.jpg"
                                             alt="" />
                                       </div>
                                       <div class="scp_txt">
                                          <span class="brand">????????????</span> <span class="tit">????????????
                                             ????????????????????????????????????????????????(30mL*2)</span> <span class="price"> <span
                                             class="sale_pr"> "25,000" <em>???</em>
                                          </span> " 9,900" <em>???</em>
                                          </span>
                                       </div> <input type="hidden" name="goodsNo" value="A000000129228"
                                       tabindex="0"> <input type="hidden" name="idxNo"
                                       value="0" tabindex="0">
                                    </a>
                                 </div>
                              </div>
                           </div>
                           <button type="button" data-role="none"
                              class="slick-next slick-arrow" aria-label="Next" role="button"
                              style="display: block;" aria-disabled="false">Next</button>
                           <ul class="slick-dots" style="display: block;" role="tablist">
                              <li class="slick-active" aria-hidden="false"
                                 role="presentation" aria-selected="true"
                                 aria-controls="navigation00" id="slick-slide00">
                                 <button type="button" data-role="none" role="button"
                                    tabindex="0">1</button>
                              </li>
                              <li aria-hidden="true" role="presentation"
                                 aria-selected="false" aria-controls="navigation01"
                                 id="slick-slide01">
                                 <button type="button" data-role="none" role="button"
                                    tabindex="0">2</button>
                              </li>
                              <li aria-hidden="true" role="presentation"
                                 aria-selected="false" aria-controls="navigation02"
                                 id="slick-slide02">
                                 <button type="button" data-role="none" role="button"
                                    tabindex="0">3</button>
                              </li>
                           </ul>
                        </div>
                     </div>
                  </div>
                  <!-- SCP?????? end -->
               </div>
            </div>
            <!-- ????????? ????????? ?????? end -->
         </div>
         <!-- ????????? end -->
			<!-- ????????? ?????? ??? ?????? ??????????????? ??? ????????? -->
			<ul class="mymenu_area">
				<li class="store"><a href="#" class="mymenu_layer"
					title="?????? ???????????? ??????????????? ??????/??????">?????? ????????????</a>
					<div class="alim_box">
						<p class="store_desc">
							"????????? ???????????? ????????? "<br /> "?????? ???????????? ?????? ??? ??? ????????????."
						</p>
						<button class="mymenu_btn" onclick="">?????????</button>
						<!-- ????????? ????????? ?????? -->
					</div></li>
				<li class="recent"><a href="" class="mymenu_layer"
					title="?????? ??? ?????? ??????????????? ??????/??????">?????? ??? ??????</a>
					<div class="recent_prd_box" style="min-height: 510px;">
						<p class="recent_tit">
							"?????? " <span>0</span> "??? "
						</p>
						<div class="no_data" style="display: none;">?????? ??? ????????? ????????????.</div>
					</div></li>
			</ul>
			<!-- ????????? ?????? ??? ?????? ??????????????? ??? ????????? end -->
		</div>
		<div class="header_design_area"></div>
	</div>
	<!-- gnb -->
	<div id="Gnb" class="main gen1">
		<div id="gnbWrap">
			<a href="#" id="btnGnbOpen" class=""> ???????????? </a>
			<!-- ?????? ???????????? ????????? -->
			<div class="layer_all_menu" id="gnbAllMenu">
				<ul class="all_menu_wrap">
			
				</ul>
			</div>
			<!-- ?????? ???????????? ????????? end-->
			<!-- gnb menu -->
			<ul class="gnb_menu_list">
				<li style><a href="ohTeuk.do"> <span>??????</span>
				</a></li>
				<li style><a href="brandNew.do"> <span>??????</span>
				</a></li>
				<li style><a href="ranking.do"> <span>??????</span>
				</a></li>
				<li style><a href="#"> <span>???????????????</span>
				</a></li>
				<li style><a href="#"> <span>?????????</span>
				</a></li>
				<li style><a href="sale.do"> <span>??????</span>
				</a></li>
				<li style><a href="#"> <span>???????????????</span>
				</a></li>
				<li style><a href="membership.do"> <span>?????????/??????</span>
				</a></li>
				<li style><a href="#"> <span>?????????</span>
				</a></li>
			</ul>
			<!-- gnb menu end-->
		</div>
		<!-- gnbWrap end -->
		
	</div>
	<!-- gnb end -->
</body>
</html>
