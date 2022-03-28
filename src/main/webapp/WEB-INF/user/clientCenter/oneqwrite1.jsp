<%@ page language="java" contentType="text/html; charset=UTF-8"
   pageEncoding="UTF-8"%>
<%@ taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core" %>
<%@ taglib prefix="fmt" uri="http://java.sun.com/jsp/jstl/fmt" %>
<!DOCTYPE html>
<html>
<head>
<meta charset="UTF-8">
<title>1:1 문의</title>
<link rel="stylesheet" type="text/css" href="${path }/css/board.css" />
<link rel="stylesheet" type="text/css" href="${path }/css/common.css" />
<link rel="stylesheet" type="text/css" href="${path }/css/contents.css" />
<link rel="stylesheet" type="text/css" href="${path }/css/curation.css" />
<link rel="stylesheet" type="text/css" href="${path }/css/global.css" />
<link rel="stylesheet" type="text/css" href="${path }/css/jquery.mCustomScrollbar.css" />
<link rel="stylesheet" type="text/css" href="${path }/css/pickup.css" />
</head>
<style>
*, *:after, *:before {
    -webkit-box-sizing: border-box;
    -moz-box-sizing: border-box;
    box-sizing: border-box;
    margin: 0;
    padding: 0;
}

body, input, select, textarea, button {
    font-family: noto sans,malgun gothic,AppleGothic,dotum;
    line-height: 1;
    letter-spacing: -.05em;
    color: #4c4c4c;
    font-size: 12px;
    max-width: 100%;
}

div {
    display: block;
}

div, th, td, li, dt, dd, p {
    word-break: break-all;
}

.page_aticle button, .page_aticle input, .page_aticle select, .page_aticle * {
    font-family: noto sans;
    font-weight: 400;
    letter-spacing: 0;
}

.page_aticle.aticle_type2 .page_section {
    float: right;
    width: 820px;
}

.page_aticle .head_aticle {
    padding: 5px 0 34px;
}

h2 {
    display: block;
    font-size: 1.5em;
    margin-block-start: 0.83em;
    margin-block-end: 0.83em;
    margin-inline-start: 0px;
    margin-inline-end: 0px;
    font-weight: bold;
}

form {
    display: block;
    margin-top: 0em;
}

input {
    -webkit-writing-mode: horizontal-tb !important;
    font-style: ;
    font-variant-ligatures: ;
    font-variant-caps: ;
    font-variant-numeric: ;
    font-variant-east-asian: ;
    font-weight: ;
    font-stretch: ;
    font-size: ;
    font-family: ;
    text-rendering: auto;
    color: -internal-light-dark(black, white);
    letter-spacing: normal;
    word-spacing: normal;
    line-height: normal;
    text-transform: none;
    text-indent: 0px;
    text-shadow: none;
    display: inline-block;
    text-align: start;
    appearance: auto;
    -webkit-rtl-ordering: logical;
    cursor: text;
    background-color: -internal-light-dark(rgb(255, 255, 255), rgb(59, 59, 59));
    margin: 0em;
    padding: 1px 2px;
    border-width: 2px;
    border-style: inset;
    border-color: -internal-light-dark(rgb(118, 118, 118), rgb(133, 133, 133));
    border-image: initial;
}

input[type="hidden" i] {
    appearance: none;
    background-color: initial;
    cursor: default;
    display: none !important;
    padding: initial;
    border: initial;
}

button, input, optgroup, select, textarea {
    color: inherit;
    font: inherit;
    margin: 0;
}

input {
    line-height: normal;
}

table {
    display: table;
    border-collapse: separate;
    box-sizing: border-box;
    text-indent: initial;
    border-spacing: 2px;
    border-color: grey;
}

table[Attributes Style] {
    width: 100%;
}

table {
    border-collapse: collapse;
    border-spacing: 0;
}

.xans-board-write .boardWrite2 {
    table-layout: fixed;
    border-top: 2px solid #333;
    line-height: 180%;
}

colgroup {
    display: table-column-group;
}

tbody {
    display: table-row-group;
    vertical-align: middle;
    border-color: inherit;
}

tr {
    display: table-row;
    vertical-align: inherit;
    border-color: inherit;
}

th {
    display: table-cell;
    vertical-align: inherit;
    font-weight: bold;
    text-align: -internal-center;
}

td, th {
    padding: 0;
}

div, th, td, li, dt, dd, p {
    word-break: break-all;
}

.boardWrite2 th {
    text-align: left;
    padding: 15px;
    background: #f7f5f8;
    vertical-align: middle;
}

.xans-board-write table th {
    width: 110px;
    padding: 15px 0 15px 20px;
    background-color: #f7f5f8;
    border-bottom: 1px solid #f4f4f4;
    text-align: left;
    font-weight: 400;
    vertical-align: middle;
}

td {
    display: table-cell;
    vertical-align: inherit;
}

.boardWrite2 td {
    padding-left: 5px;
}

.xans-board-write table td {
    width: auto;
    padding: 15px 0 15px 10px;
    height: 23px;
    border-top: 1px solid #f4f4f4;
    border-bottom: 1px solid #f4f4f4;
    vertical-align: middle;
    line-height: 20px;
}

option {
    font-weight: normal;
    display: block;
    white-space: nowrap;
    min-height: 1.2em;
    padding: 0px 2px 1px;
}

.xans-board-write table select {
    padding: 6px 5px;
    border: 1px solid #d9d9d9;
    margin-bottom: 5px;
    color: #202020;
}

button, select {
    text-transform: none;
}

button, input, optgroup, select, textarea {
    color: inherit;
    font: inherit;
    margin: 0;
}







</style>
<body>
   <jsp:include page="../default/header.jsp"></jsp:include>
   <div id="Container">
   
      <!-- #Contents -->
      <div id="Contents">
         <div class="sub_title_area customer">
            <h1>
               고객센터 <span>무엇을 도와드릴까요?</span>
            </h1>
         </div>

         <!-- FAQ, Qna, 공지사항 탭 선택 메뉴 -->
         <ul class="comm1sTabs threeSet customer">
            <li id="tabFaq"><a href="FAQ.do">FAQ</a></li>
            <li id="tab1on1" class="on"><a href="oneqmain.do" title="선택됨">1:1문의</a></li>
            <li id="tabNotice"><a href="getNotice.do">공지사항</a></li>
         </ul>

         <div class="page_section section_qna">
            <div class="head_aticle">
               <h2 class="tit">1:1 문의</h2>
            </div>

            <div class="xans-board-write">
               <!-- enctype="multipart/form-data"  -->
               <form name="insert" id="insert" method="post" action="insertPersonalQna.do" enctype="multipart/form-data" onsubmit="#return chkSubmitData(this)" style="height: 100%;">
                  <input type="text" name="user_id" value="${userId }">
                  <input type="text" name="user_name" value="${userName}">
                  <c:if test="${getPersonalQna != null }">
                     <input type="hidden" name="qna_personal_serial" value="${getPersonalQna.qna_personal_serial }" />
                  </c:if>
                  <table id="table_after" class="boardWrite2" width="100%">
                     <colgroup>
                        <col width="14%" align="right">
                     </colgroup>
                     <tbody>
                        <tr>
                           <th scope="col">제목</th>
                           <td>
                           <!-- 처음 글 작성할 떄 -->
                           <c:if test="${getPersonalQna == null }">
                              <select name="qna_personal_category" required="" fld_esssential="" label="질문유형" class="select"
                              onclick="KurlyTracker.setAction('select_personal_inquiry_case_list').sendData();"
                              onchange="KurlyTracker.setAction('select_personal_inquiry_case_value').sendData();">
                                 <option value="">선택해주세요.</option>
                                 <option value="배송지연/불만">배송지연/불만</option>
                                 <option value="컬리패스 (무료배송)">컬리패스 (무료배송)</option>
                                 <option value="반품문의">반품문의</option>
                                 <option value="A/S문의">A/S문의</option>
                                 <option value="환불문의">환불문의</option>
                                 <option value="주문결제문의">주문결제문의</option>
                                 <option value="회원정보문의">회원정보문의</option>
                                 <option value="취소문의">취소문의</option>
                                 <option value="교환문의">교환문의</option>
                                 <option value="상품정보문의">상품정보문의</option>
                                 <option value="기타문의">기타문의</option>
                              </select><br>
                              
                              <input type="text" name="qna_personal_title" style="width: 100%" required="" fld_esssential="" label="제목" value="">
                           </c:if>
                           <!-- //처음 글 쓸때 -->
                           <!-- 글을 수정할 떄 -->
                           <c:if test="${getPersonalQna != null}">
                              <select name="qna_personal_category" required="" fld_esssential="" label="질문유형" class="select"
                              >
                                 <option value="">선택해주세요.</option>
                                 <option value="배송지연/불만">배송지연/불만</option>
                                 <option value="컬리패스 (무료배송)">컬리패스 (무료배송)</option>
                                 <option value="반품문의">반품문의</option>
                                 <option value="A/S문의">A/S문의</option>
                                 <option value="환불문의">환불문의</option>
                                 <option value="주문결제문의">주문결제문의</option>
                                 <option value="회원정보문의">회원정보문의</option>
                                 <option value="취소문의">취소문의</option>
                                 <option value="교환문의">교환문의</option>
                                 <option value="상품정보문의">상품정보문의</option>
                                 <option value="기타문의">기타문의</option>
                              </select><br>
                              
                              <input type="text" name="qna_personal_title" style="width: 100%" required="" fld_esssential="" label="제목" value="${getPersonalQna.qna_personal_title }"
                              >
                           </c:if>
                           <!-- //글을 수정할 떄 -->
                           </td>
                        </tr>
                        
                        <!-- 새글 -->
                        <c:if test="${getPersonalQna == null }">
                        
                        <tr>
                           <th class="input_txt">이메일</th>
                           <td>
                              <input type="text" name="qna_personal_email" value="${user.user_email }" size="26" readonly="readonly" class="read_only">
                                 <span class="noline smalle" style="padding-left: 10px">
                              <input type="checkbox" name="mailling">
                                 <span style="font-size: 8pt;">답변수신을 이메일로 받겠습니다.</span></span>
                           </td>
                        </tr>
                        <tr>
                           <th class="input_txt">문자메시지</th>
                           <td>
                              <input type="text" name="qna_personal_phone" value="${user.user_phone }" readonly="readonly" class="read_only">
                                 <span class="noline smalle" style="padding-left: 10px">
                              <input type="checkbox" name="sms">
                                 <span style="font-size: 8pt;">답변수신을 문자메시지로 받겠습니다.</span></span>
                           </td>
                        </tr>
                        </c:if>
                        <!-- 수정 -->
                        
                        <!-- 내용 부분은 이하공통 -->
                        <tr>
                           <th class="input_txt">내용</th>
                           <td class="edit_area" style="position: relative;">
                            
                              <!-- 내용 -->
                              <c:if test="${getPersonalQna == null }" >
                              <textarea name="qna_personal_content" style="width: 100%; height: 474px;" class="editing_area" required="" fld_esssential="" label="내용" onfocus="KurlyTracker.setAction('select_personal_inquiry_text').sendData();"></textarea>
                              </c:if>
                              <c:if test="${getPersonalQna != null }">
                                 <textarea name="qna_personal_content" style="width: 100%; height: 474px;" class="editing_area" required="" fld_esssential="" label="내용" onfocus="KurlyTracker.setAction('select_personal_inquiry_text').sendData();"></textarea>
                              </c:if>
                           </td>
                        </tr>
                        <tr>
                           <th class="input_txt">이미지</th>
                           <td>
                              <table width="95%" id="table" cellpadding="0" cellspacing="0"
                                 border="0"
                                 style="border: solid 1px #f4f4f4; border-collapse: collapse;">
                                 <tbody>
                                    <tr id="tr_0">
                                       <td width="20" nowrap="" align="center">1</td>
                                       <td width="100%">
                                          <input type="file" name="file1" style="width: 50%" class="linebg">
                                       </td> 
                                       <c:if test= "${getPersonalQna.qna_personal_image1 != null }" >
                                          <td>
                                             <img
                                             src="${getPersonalQna.qna_personal_image1}"
                                             width="70" height="70">
                                          </td>
                                       </c:if>
                                       <!-- <a
                                          href="javascript:add()"><img
                                             src="/shop/data/skin/designgj/img/common/btn_upload_plus.gif"
                                             align="absmiddle"></a> -->
                                    </tr>
                                    
                                    <tr id="tr_1">
                                       <td width="20" nowrap="" align="center">2</td>
                                       <td width="100%">
                                          <input type="file" name="file2" style="width: 50%" class="linebg">
                                       </td> 
                                       <c:if test= "${getPersonalQna.qna_personal_image2 != null }" >
                                          <td>
                                             <img
                                             src="${getPersonalQna.qna_personal_image2}"
                                             width="70" height="70">
                                          </td>
                                       </c:if>
                                       <!-- <a
                                          href="javascript:add()"><img
                                             src="/shop/data/skin/designgj/img/common/btn_upload_plus.gif"
                                             align="absmiddle"></a> -->
                                    </tr>
                                 </tbody>
                              </table>
                              <table>
                                 <tbody>
                                    <tr>
                                       <td height="2"></td>
                                    </tr>
                                 </tbody>
                              </table>
                              <div width="100%" style="padding: 5px;" class="stxt">
                                 - 파일은 최대 5개까지 업로드가 지원됩니다.<br>
                              </div>
                           </td>
                        </tr>
                        <!-- //이미지 -->
                     </tbody>
                     <tr>
                        <td align="LEFT" style="padding-top: 5px; border: none;" id="avoidDbl"></td>
                                    <td align="right" style="padding-top: 5px; border: none;">
                                       <c:if test = "${getPersonalQna == null}">
                                          <input type="submit" id="insert" class="bhs_button yb" value="저장" style="float: none;"> 
                                       </c:if>
                                       
                                       <c:if test = "${getPersonalQna != null}">
                                          <input type="hidden" value="${getPersonalQna.qna_personal_image1 }" name="qna_personal_image1">
                                          <input type="hidden" value="${getPersonalQna.qna_personal_image2 }" name="qna_personal_image2">
                                          <input type="submit" id="update" class="bhs_button yb" value="수정하기" style="float: none;"> 
                                       </c:if>                                    
                                    </td>
                     </tr>
                     </tbody>
                  </table>
               </form>
            </div>
         </div>







         <!-- 1:1문의 등록, 취소 버튼 -->
         <div class="area1sButton pdT30">
            <a href="insertPersonalQna.do" id="cnslSubmit" class="btnGreen" type="submit">등록</a>
            <a href="#" id="cnslCancel" class="btnGray">취소</a>
         </div>

      </div>
      <!-- //#Contents -->
   </div>
   <jsp:include page="../default/footer.jsp"></jsp:include>
<script>
$("#insert").click(function() {
   $("form").attr("action","insertPersonalQna.do");
});

$("#update").click(function() {
   $("form").attr("action","updatePersonalQna.do");
});

</script>
</body>
</html>