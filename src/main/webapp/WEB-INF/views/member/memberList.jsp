<%@ page language="java" contentType="text/html; charset=utf-8" pageEncoding="utf-8" %>

<%@ taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core" %>    
<%@ taglib prefix="fmt" uri="http://java.sun.com/jsp/jstl/fmt" %>
<%@ taglib prefix="fn" uri="http://java.sun.com/jsp/jstl/functions" %>
<%@ taglib prefix="rb" uri="http://www.springframework.org/tags" %>

<jsp:useBean id="CodeServiceImpl" class="com.junefw.infra.modules.code.CodeServiceImpl"/>
<%-- desc 처리 
<% pageContext.setAttribute("br", "\n"); %>
<div class="col-sm-6 mt-3 mt-sm-0">
            <label for="ifmmDesc" class="form-label">설명</label>
            <p>${fn:replace(item.ifmmDesc, br, '<br/>')}</p>
            <p><c:out value="${fn:replace(item.ifmmDesc, br, '<br/>')}" escapeXml = "false"/></p>
        </div>

 --%>
<!DOCTYPE HTML>
<html>

<head>
<meta charset="uTF-8">
<meta name="viewport" content="width=dievice-width, intitial-scale=1.0">

<link href="/infra/resources/_bootstrap/_bootstrap/bootstrap-5.1.3-dist/css/bootstrap.min.css" rel="stylesheet">
<link href="/infra/resources/jquery/jquery-ui-1.13.1.custom/jquery-ui.css" rel="stylesheet">


<title>memberList</title>
<style type="text/css">
div {
	margin: 10px;
}

.container {
	border: 1px black;
}
</style>
</head>
<body>
<header class="d-none d-md-block d-lg-block d-xl-block d-xxl-block">
	<p style=" float: right;  margin-top : 10px; margin-right:50px; font-size: 8px;">
		<a style="color: black; text-decoration-line:none;" href="#">회원가입</a> | 
		<a style="color: black; text-decoration-line:none;" href="#">로그인</a>  |  
		<a style="color: black; text-decoration-line:none;" href="#">고객센터</a>
	</p>
	<div style="text-align: center; clear: both;">
		<a href="/infra/member/memberList">
			<image src="/infra/resources/images/kurly.PNG" style="width: 150px;">
			</image>
		</a>
	</div>
</header>
	
	
	<div class="container-fluid" style="clear: both;background-color: white;" >
		<div style="text-align: center;">
			<a href="/infra/member/memberList">
				<image class="d-md-none" src="/infra/resources/images/kurly.PNG"  style="width: 150px;"></image>
			</a>
		</div>
		<button class="btn d-md-none" style="float: right;" type="button" data-bs-toggle="offcanvas" data-bs-target="#offcanvasRight" aria-controls="offcanvasRight"><svg xmlns="http://www.w3.org/2000/svg" width="16" height="16" fill="currentColor" class="bi bi-list" viewBox="0 0 16 16">
 			 <path fill-rule="evenodd" d="M2.5 12a.5.5 0 0 1 .5-.5h10a.5.5 0 0 1 0 1H3a.5.5 0 0 1-.5-.5zm0-4a.5.5 0 0 1 .5-.5h10a.5.5 0 0 1 0 1H3a.5.5 0 0 1-.5-.5zm0-4a.5.5 0 0 1 .5-.5h10a.5.5 0 0 1 0 1H3a.5.5 0 0 1-.5-.5z"/></svg></button>
		<nav>
			<ul class="nav justify-content-center">
				<li class="nav-item d-none d-md-block d-lg-block d-xl-block d-xxl-block">
					<a class="nav-link" href="#"style="color: black;">회원관리</a>
				</li>
			</ul>
		</nav>
	</div>
	<div class="offcanvas offcanvas-end" tabindex="-1" id="offcanvasRight" aria-labelledby="offcanvasRightLabel">
		<div class="offcanvas-header">
 			<button type="button" class="btn-close text-reset" data-bs-dismiss="offcanvas" aria-label="Close"></button>
 		</div>
 		<div class="offcanvas-body">
  			<ul>
				<li>
					<a class="nav-link"href="#">홈</a>
				</li>
				<li>
					<a class="nav-link" href="#">회원관리</a>
				</li>
				<li>
					<a class="nav-link" href="#">시스템 관리</a>
				</li>
				<li>
					<a class="nav-link" href="#">상품관리</a>
				</li>
			</ul>
		</div>
	</div>
				
			
<form id ="formList" name="formList" method="post" action="/infra/member/memberList">
<input type="hidden" id="thisPage" name="thisPage" value="<c:out value="${vo.thisPage}" default="1"/>">
<input type="hidden" id="ifmmSeq" name="ifmmSeq" value="<c:out value="${item.ifmmSeq}"/>">
<input type="hidden" name="rowNumToShow" value="<c:out value="${vo.rowNumToShow}"/>">
<input type="hidden" name="checkboxSeqArray">

	<div style="text-align: center;">
		<select name="shIfmmDelNy" class="form-select" style="width: 200px; display: inline;" default="2">
			<option value="2">::삭제여부::
			<option value="1" <c:if test="${vo.shIfmmDelNy eq 1}">selected</c:if>> Y
			<option value="0"<c:if test="${vo.shIfmmDelNy eq 0}">selected</c:if>>N
		</select>
		
		<select class="form-select" style="width: 200px; display: inline;" name="shOption">
			<option value="">::검색구분::
			<option value="1" <c:if test="${vo.shOption eq 1}">selected</c:if>>이름
			<option value="2" <c:if test="${vo.shOption eq 2}">selected</c:if>>아이디
		</select>
		
		<select class="form-select" style="width: 200px; display: inline;" name="shOptionDate">
			<option value="0" <c:if test="${empty vo.shOptionDate}">selected</c:if>>::날짜::
			<option value="1" <c:if test="${vo.shOptionDate eq 1}">selected</c:if>>등록일
			<option value="2" <c:if test="${vo.shOptionDate eq 2}">selected</c:if>>수정일
			<option value="3" <c:if test="${vo.shOptionDate eq 3}">selected</c:if>>생일
		</select>
		
		<fmt:parseDate value="${vo.shDateStart}" var="shDateStart" pattern="yyyy-MM-dd"/>
			<input  class="form-control"  type="text" style="width: 200px; display: inline;" name="shDateStart" id="shDateStart" value="<fmt:formatDate value="${shDateStart}" pattern="yyyy-MM-dd" />" autocomplete="off">
		<fmt:parseDate value="${vo.shDateEnd}" var="shDateEnd" pattern="yyyy-MM-dd"/>
			<input  class="form-control" type="text" style="width: 200px; display: inline;" name="shDateEnd" id="shDateEnd"  value="<fmt:formatDate value="${shDateEnd}" pattern="yyyy-MM-dd" />" autocomplete="off">
			
		<input class="form-control" style="width: 200px; display: inline;" type="text" name="shValue" id="shValue" value="<c:out value="${vo.shValue}"/>">
			<button type="Submit" id="btnSubmit" name="search" class="btn btn-primary"><svg xmlns="http://www.w3.org/2000/svg" width="16" height="16"fill="currentColor" class="bi bi-search" viewBox="0 0 16 16">
				 <path d="M11.742 10.344a6.5 6.5 0 1 0-1.397 1.398h-.001c.03.04.062.078.098.115l3.85 3.85a1 1 0 0 0 1.415-1.414l-3.85-3.85a1.007 1.007 0 0 0-.115-.1zM12 6.5a5.5 5.5 0 1 1-11 0 5.5 5.5 0 0 1 11 0z" />
				</svg>
			</button>
		
	</div>
		회원 수 : <c:out value="${vo.totalRows}"/>

		<div class="container-fluid">
			<div class="table-responsive">
			  <table class="table">
	  			  <thead>
	   				   <tr>
							<th scope="col" style="width: 15%;">
								<div class="form-check">
									<input class="form-check-input" type="checkbox" value=""id="checkboxAll" name=""> 
									<label class="form-check-label" for="flexCheckDefault" style="width: 100px;">전체선택</label>
								</div>
							</th>
							<th scope="col" style="width: 5%;"><div style="width: 80px;">#</div></th>
							<th scope="col" style="width: 10%;"><div style="width: 100px;">이름</div></th>
							<th scope="col" style="width: 15%;"><div style="width: 100px;">아이디</div></th>
							<th scope="col" style="width: 15%;"><div style="width: 100px;">생일</div></th>
							<th scope="col" style="width: 15%;"><div style="width: 100px;">상세정보</div></th>
							<th scope="col" style="width: 15%;"><div style="width: 100px;">삭제여부</div></th>
	      				</tr>
	   			 </thead>
	   			 <tbody>
	   			 	<c:forEach items="${list}" var="item" varStatus="status">
	      				<tr>
							<td scope="col">
								<div class="form-check">
									<input class="form-check-input" type="checkbox" id="checkboxSeq" name="checkboxSeq" value="<c:out value="${item.ifmmSeq}"/>">
								</div>
							</td>
							<td scope="col"><c:out value="${item.ifmmSeq}"/></td>
							<td scope="col"><c:out value="${item.ifmmName}"/></td>
							<td scope="col"><c:out value="${item.ifmmId}"/></td>
							<td scope="col"><c:out value="${item.ifmmDob}"/></td>
							<td scope="col"><a class="btn btn-secondary"href="javascript:goView(<c:out value='${item.ifmmSeq}'/>);">상세정보</a></td>
							<td scope="col"><c:out value="${item.ifmmDelNy }"/></td>
	    			  </tr>
					</c:forEach>
			    </tbody>
			  </table>
			</div>
		</div>

	<%-- javascript:goView(<c:out value='${item.ifmmSeq}'/>); --%>
	<%-- /infra/member/memberView?ifmmSeq=<c:out value="${item.ifmmSeq}"/> --%>
<!-- 푸쉬전송 -->
	<button class="btn btn-info" type="button"  data-bs-toggle="offcanvas" data-bs-target="#offcanvasTop1" aria-controls="offcanvasTop1">
		<svg xmlns="http://www.w3.org/2000/svg" width="16" height="16"fill="currentColor" class="bi bi-send" viewBox="0 0 16 16" data-toggle="modal" data-target="#sendModal">
		<path d="M15.854.146a.5.5 0 0 1 .11.54l-5.819 14.547a.75.75 0 0 1-1.329.124l-3.178-4.995L.643 7.184a.75.75 0 0 1 .124-1.33L15.314.037a.5.5 0 0 1 .54.11ZM6.636 10.07l2.761 4.338L14.13 2.576 6.636 10.07Zm6.787-8.201L1.591 6.602l4.339 2.76 7.494-7.493Z" /></svg>
	</button>
	<div class="offcanvas offcanvas-top" tabindex="-1" id="offcanvasTop1" aria-labelledby="offcanvasTopLabel">
	 	 <div class="offcanvas-header">
	 	 	<h5 id="offcanvasTopLabel">Send Message</h5>
	 	 	<button type="button" class="btn-close text-reset" data-bs-dismiss="offcanvas" aria-label="Close"></button>
	  	</div>
		<div class="offcanvas-body">
			<div class="input-group mb-3">
				<input type="text" class="form-control" placeholder="메세지를 입력하세요." aria-label="message" aria-describedby="button-addon2">
				<button class="btn btn-outline-secondary" type="button" id="button-addon2">전송</button>
			</div>
		</div>
	</div>
<!-- 데이터 삭제 -->		
	<button type="button" class="btn btn-danger" id = "btnModalUelete" name="btnModalUelete">
		<svg xmlns="http://www.w3.org/2000/svg" width="16" height="16" fill="currentColor" class="bi bi-trash" viewBox="0 0 16 16">
			 <path d="M5.5 5.5A.5.5 0 0 1 6 6v6a.5.5 0 0 1-1 0V6a.5.5 0 0 1 .5-.5zm2.5 0a.5.5 0 0 1 .5.5v6a.5.5 0 0 1-1 0V6a.5.5 0 0 1 .5-.5zm3 .5a.5.5 0 0 0-1 0v6a.5.5 0 0 0 1 0V6z" />
				 <path fill-rule="evenodd" d="M14.5 3a1 1 0 0 1-1 1H13v9a2 2 0 0 1-2 2H5a2 2 0 0 1-2-2V4h-.5a1 1 0 0 1-1-1V2a1 1 0 0 1 1-1H6a1 1 0 0 1 1-1h2a1 1 0 0 1 1 1h3.5a1 1 0 0 1 1 1v1zM4.118 4 4 4.059V13a1 1 0 0 0 1 1h6a1 1 0 0 0 1-1V4.059L11.882 4H4.118zM2.5 3V2h11v1h-11z" />
		</svg>
	</button>					
							
		<!-- <div class="offcanvas offcanvas-top" tabindex="-1" id="offcanvasTop" aria-labelledby="offcanvasTopLabel2">
		  <div class="offcanvas-header">
		    <h5 id="offcanvasTopLabel2">Delete Infomation</h5>
		    <button type="button" class="btn-close text-reset" data-bs-dismiss="offcanvas" aria-label="Close"></button>
		  </div>
		  <div class="offcanvas-body">
		    <p style="text-align: center;">정말삭제하시겠습니까?</p>
		    <br>
		    	<div style="text-align: center;">
		    		<button type="button" value="예" id="btnModalUelete" class="btn btn-outline-secondary">예</button>
		    		<button type="button" value="아니오" class="btn btn-outline-secondary">아니오</button>
		  		</div>
		  </div>
		</div> -->
</form>		
					
<!-- 데이터 등록 -->


				<!-- <a class="badge bg-secondary" style="float: right;" href="/infra/member/memberForm">
				 -->
	
 <form id="goForm" method="post">
	 <a class="badge bg-secondary" style="float: right;" href="javascript:goForm();">
		<svg xmlns="http://www.w3.org/2000/svg" width="16" height="16" fill="currentColor" class="bi bi-plus-lg" viewBox="0 0 16 16">
		<path fill-rule="evenodd"	d="M8 2a.5.5 0 0 1 .5.5v5h5a.5.5 0 0 1 0 1h-5v5a.5.5 0 0 1-1 0v-5h-5a.5.5 0 0 1 0-1h5v-5A.5.5 0 0 1 8 2Z" />
		</svg>
	</a>
 </form>

	<nav aria-label="..." >
	  <ul class="pagination"style="justify-content: center;">
		<c:if test="${vo.startPage gt vo.pageNumToShow}">
			<li class="page-item"><a class="page-link" href="javascript:page(<c:out value='${vo.startPage - 1}'/>);">Previous</a></li>
		</c:if>
		<c:forEach begin="${vo.startPage}" end="${vo.endPage}" varStatus="i">
			<c:choose>
				<c:when test="${i.index eq vo.thisPage}">
	                <li class="page-item active"><a class="page-link"href="javascript:page(<c:out value='${i.index}'/>);">${i.index}</a></li>
				</c:when>
				<c:otherwise>             
	                <li class="page-item"><a class="page-link" href="javascript:page(<c:out value='${i.index}'/>);">${i.index}</a></li>
				</c:otherwise>
			</c:choose>
		</c:forEach>     
		<c:if test="${vo.endPage ne vo.totalPages}">                
			<li class="page-item"><a class="page-link" href="javascript:page(<c:out value='${vo.endPage + 1}'/>);">Next</a></li>
		</c:if>  
	  </ul>
	</nav>
				
<lsection style="margin-top:10%;float: left; width: 50%;  margin-left:50px;">
	<div style="float: left; width: 50%; text-align:right; ">
		<h4 style="display: block;">고객행복센터</h4>
		<h3 style="display: inline;">1644-1107</h3>
		<br>
		<button class="btn btn" style="color: gray; border-color: gray; font-weight: bold; margin-top:8%; width: 130px;" type="button">카카오톡 문의</button>
		<br>
		<button class="btn btn" style="color: gray; border-color: gray; font-weight: bold; margin-top:8%; width: 130px; " type="button">1:1 문의</button>
		<br>
		<button class="btn btn" style="color: gray; border-color: gray; font-weight: bold; margin-top:8%; width: 130px; " type="button">대량주문 문의</button>
	</div>
	
	<div style="float: left; width: 40%; margin-top:4%; margin-left:10px; text-align:left; ">
		<p style="display: inline; font-size: 15px;">365고객센터</p>
		<br>
		<p style="display: inline; font-size: 12px;">오전 7시 - 오후7시 </p>
		<br>
		<br>
		<p style="display: inline; font-size: 15px;">365고객센터</p>
		<br>
		<p style="display: inline; font-size: 12px;">오전 7시 - 오후7시 </p>
		<br>
		<br>
		<p style="display: inline; font-size: 15px;">24시간 접수가능</p>
		<br>
		<p style="display: inline; font-size: 12px;">고객센터 운영시간에 순차적으로 답변해드리겠습니다. </p>
		<br>
		<br>
		<p style="display: inline; font-size: 12px;">비회원의 경우 메일로 문의 바랍니다.</p>
	</div>

</lsection>		
<rsection style="float: right; width: 45%; margin-top:10%;">
		<a style="color: black; text-decoration-line:none; " href="#">컬리소개</a>
		<a style="color: black; text-decoration-line:none; " href="#">컬리소개영상</a>
		<a style="color: black; text-decoration-line:none; " href="#">인재채용</a>
		<a style="color: black; text-decoration-line:none; " href="#">이용약관</a>
		<a style="color: black; text-decoration-line:none; " href="#">개인정보처리방침</a>
		<a style="color: black; text-decoration-line:none; " href="#">이용안내</a>
		<br>
		<p style="font-size: 12px; margin:1px;">법인명(상호) : 주식회사 컬리 | 사업자등록번호:261-81-23567 </p>
		<p style="font-size: 12px;margin:1px;">통신판매업:제 2018-서울강남-01646호 | 개인정보보호책임자 : 이원준 </p>
		<p style="font-size: 12px;margin:1px;">주소 : 서울특별시 강남구 테헤란로 133,18층(역삼동) | 대표이사 : 김슬아 </p>
		<p style="font-size: 12px;margin:1px;">입점문의 : 입점문의하기 | 마케팅제휴 : business@kurlycorp.com</p>
		<p style="font-size: 12px;margin:1px;">채용문의:recruit@kurlycorp.com</p>
		<p style="font-size: 12px;margin:1px;">팩스:070-7500-6098 | 이메일 : help@kurlycorp.com</p>
		<p style="font-size: 12px;margin:1px; margin-bottom:30px;">대량주문 문의 : kurlygift@kurlrycorp.com</p>
		<input type="image" src="/infra/resources/images/icon_round_facebook_48.png" style="width: 40px;">
		<input type="image" src="/infra/resources/images/icon_round_instgram_48.png" style="width: 40px;">
		<input type="image" src="/infra/resources/images/icon_round_kakao_48.png" style="width: 40px;">
		<input type="image" src="/infra/resources/images/icon_round_twitter_48.png" style="width: 40px;">
</rsection>
<footer style="clear: both; background-color:silver; ; text-align: center;">
	<p style="font-size: 10px;">마켓컬리에서 판매되는 상품 중에는 마켓컬리에 입점한 개별 판매자가 판매하는 마켓플레이스(오픈마켓) 상품이 포함되어 있습니다.<br>
		마켓플레이스(오픈마켓) 상품의 경우 컬리는 통신판매중개자로서 통신판매의 당사자가 아닙니다. 컬리는 해당 상품의 주문,품질,교환/환불 등 의무와 책임을 부담하지 않습니다.<br>
		KURLY CORP. ALL RIGHTS RESERVED
	</p>


</footer>
<%-- 
	전화번호
        	<c:choose>
                		<c:when test="${fn:length(item.ifmpNumber) eq 10 }">
							<c:out value="${fn:substring(item.ifmpNumber,0,3)}"/>
							-<c:out value="${fn:substring(item.ifmpNumber,3,6)}"/>
							-<c:out value="${fn:substring(item.ifmpNumber,6,10)}"/>
                		</c:when>
                		<c:otherwise>
							<c:out value="${fn:substring(item.ifmpNumber,0,3)}"/>
							-<c:out value="${fn:substring(item.ifmpNumber,3,7)}"/>
							-<c:out value="${fn:substring(item.ifmpNumber,7,11)}"/>
                		</c:otherwise>
               		</c:choose>
               		
               		  	<c:set var="numberPhone" value="${item.ifmpNumber }"/>
                	<c:choose>
                		<c:when test="${fn:length(numberPhone) eq 10 }">
							<c:out value="${fn:substring(numberPhone,0,3)}"/>
							- <c:out value="${fn:substring(numberPhone,3,6)}"/>
							- <c:out value="${fn:substring(numberPhone,6,10)}"/>
                		</c:when>
                		<c:otherwise>
							<c:out value="${fn:substring(numberPhone,0,3)}"/>
							- <c:out value="${fn:substring(numberPhone,3,7)}"/>
							- <c:out value="${fn:substring(numberPhone,7,11)}"/>
                		</c:otherwise>
               		</c:choose>
 --%>

<script src="/infra/resources/_bootstrap/_bootstrap/bootstrap-5.1.3-dist/js/bootstrap.bundle.min.js"></script>
<script src="https://ajax.googleapis.com/ajax/libs/jquery/3.6.0/jquery.min.js"></script>
<script src="/infra/resources/jquery/jquery-ui-1.13.1.custom/jquery-ui.js"></script>
<script src="/infra/resources/js/validation.js"></script>
<script type="text/javascript">
	 
	
$("#checkboxAll").click(function() {
	if($("#checkboxAll").is(":checked")) $("input[name=checkboxSeq]").prop("checked", true);
	else $("input[name=checkboxSeq]").prop("checked", false);
});

var checkboxSeqArray = [];
$("#btnModalUelete").on("click", function(){
	var answer = confirm("삭제하시겠습니까?");
	
	if(answer){
	$("input[name=checkboxSeq]:checked").each(function() {
		checkboxSeqArray.push($(this).val());	
	});
	
	$("input:hidden[name=checkboxSeqArray]").val(checkboxSeqArray);
	$("#formList").attr("action", "/infra/member/MemberMultiUele");
	$("#formList").submit();
	} else {
		return false;
	}
});

$("#btnSubmit").on("click", function(){

/* if(	!checkNull($("#shValue"), $("#shValue").val(), "검색어를 입력하세요.")) return false;
 */
 });

$("#btnNelete").on("click", function(){
	var answer =  confirm("정말 삭제하시겠습니까?");
	if(answer){

	} else {
		return false;
		}
});

page = function(seq) {
	$("#thisPage").val(seq);
	$("#formList").submit();
}
goForm = function() {
	$("#goForm").attr("action","/infra/member/memberForm");
	$("#goForm").submit();
}
goView = function(seq) {
	$("#ifmmSeq").val(seq);
	$("#formList").attr("action","/infra/member/memberView");
	$("#formList").submit();
}
$(document).ready(function(){
	$("#shDateStart").datepicker();
	
});

$(document).ready(function(){
	 $("#shDateEnd").datepicker();
}); 

$.datepicker.setDefaults({
    dateFormat: 'yy-mm-dd',
    prevText: '이전 달',
    nextText: '다음 달',
    monthNames: ['1월', '2월', '3월', '4월', '5월', '6월', '7월', '8월', '9월', '10월', '11월', '12월'],
    monthNamesShort: ['1월', '2월', '3월', '4월', '5월', '6월', '7월', '8월', '9월', '10월', '11월', '12월'],
    dayNames: ['일', '월', '화', '수', '목', '금', '토'],
    dayNamesShort: ['일', '월', '화', '수', '목', '금', '토'],
    dayNamesMin: ['일', '월', '화', '수', '목', '금', '토'],
    showMonthAfterYear: true,
    yearSuffix: '년'
    });
$("#btnLogout").click (function() {
	$.ajax({
		async: true 
		,cache: false
		,type: "post"
		,url: "/infra/member/logoutProc"
		,data : { "ifmmId" : $("#ifmmId").val(), "ifmmPassword" : $("#ifmmPassword").val()}
		,success: function(response) {
			if(response.rt == "success") {
				location.href = "/infra/member/login";
			} else {
				// by pass
			}
		}
		,error : function(jqXHR, textStatus, errorThrown){
			alert("ajaxUpdate " + jqXHR.textStatus + " : " + jqXHR.errorThrown);
		}
	});
	});
</script>
</body>
</html>