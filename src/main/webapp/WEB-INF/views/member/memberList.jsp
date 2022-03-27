<%@ page language="java" contentType="text/html; charset=utf-8" pageEncoding="utf-8" %>

<%@ taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core" %>    
<%@ taglib prefix="fmt" uri="http://java.sun.com/jsp/jstl/fmt" %>
<%@ taglib prefix="fn" uri="http://java.sun.com/jsp/jstl/functions" %>
<%@ taglib prefix="rb" uri="http://www.springframework.org/tags" %>

<link href="https://cdn.jsdelivr.net/npm/bootstrap@5.1.3/dist/css/bootstrap.min.css" rel="stylesheet" integrity="sha384-1BmE4kWBq78iYhFldvKuhfTAU6auU8tT94WrHftjDbrCEXSU1oBoqyl2QvZ6jIW3" crossorigin="anonymous">


<!DOCTYPE HTML>
<html>

<head>
<meta charset="uTF-8">
<meta name="viewport" content="width=dievice-width, intitial-scale=1.0">

<link
	href="/infra/resources/_bootstrap/_bootstrap/bootstrap-5.1.3-dist/css/bootstrap.min.css"
	rel="stylesheet">



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
				 	<li class="dropdown nav-item " style="margin-left: 60px;">
				          <a style="color: black;" class="nav-link dropdown-toggle d-none d-md-block d-lg-block d-xl-block d-xxl-block" href="#" id="navbarDropdown" role="button" data-bs-toggle="dropdown" aria-expanded="false">
				           전체 카테고리
				          </a>
				          <ul class="dropdown-menu" aria-labelledby="navbarDropdown" role="menu">
				            <li><a class="dropdown-item" href="#">채소</a></li>
				            <li><a class="dropdown-item" href="#">과일·견과·쌀</a></li>
				            <li><a class="dropdown-item" href="#">수산물·건어물</a></li>
				            <li><a class="dropdown-item" href="#">정육·계란</a></li>
				            <li><a class="dropdown-item" href="#">국·반찬·요리</a></li>
				            <li><a class="dropdown-item" href="#">샐러드·간편식</a></li>
				            <li><a class="dropdown-item" href="#">면·양념·오일</a></li>
				            <li><a class="dropdown-item" href="#">생수·음료·우유·커피</a></li>
				            <li><a class="dropdown-item" href="#">간식·과자·떡</a></li>
				            <li><a class="dropdown-item" href="#">베이커리·치즈·델리</a></li>
				            <li><a class="dropdown-item" href="#">건강식품</a></li>
				            <li><a class="dropdown-item" href="#">전통주</a></li>
				            <li><a class="dropdown-item" href="#">생활용품·리빙·캠핑</a></li>
				            <li><a class="dropdown-item" href="#">스킨케어·메이크업</a></li>
				            <li><a class="dropdown-item" href="#">헤어·바디·구강</a></li>
				            <li><a class="dropdown-item" href="#">주방용품</a></li>
				            <li><a class="dropdown-item" href="#">가전용품</a></li>
				            <li><a class="dropdown-item" href="#">반려동물</a></li>
				            <li><a class="dropdown-item" href="#">베이비·키즈·완구</a></li>
				            <li><a class="dropdown-item" href="#">컬리의 추천</a></li>
				          </ul>
			        </li>
					<li class="nav-item d-none d-md-block d-lg-block d-xl-block d-xxl-block">
					<a class="nav-link active" aria-current="page" href="#" style="color: black;">홈</a></li>
					<li class="nav-item d-none d-md-block d-lg-block d-xl-block d-xxl-block">
					<a class="nav-link" href="#"style="color: black;">회원관리</a></li>
					<li class="nav-item d-none d-md-block d-lg-block d-xl-block d-xxl-block">
					<a class="nav-link" href="#"style="color: black;">시스템 관리</a></li>
					<li class="nav-item d-none d-md-block d-lg-block d-xl-block d-xxl-block">
					<a class="nav-link" href="#" style="color: black;">상품관리</a></li>
				</ul>
			</nav>
		</div>
			<div class="offcanvas offcanvas-end" tabindex="-1" id="offcanvasRight" aria-labelledby="offcanvasRightLabel">
	  			<div class="offcanvas-header">
	  			  <button type="button" class="btn-close text-reset" data-bs-dismiss="offcanvas" aria-label="Close"></button></div>
	  				<div class="offcanvas-body">
		  				<ul>
							<li><a class="nav-link"
								 href="#">홈</a></li>
							<li><a class="nav-link" href="#"
								>회원관리</a></li>
							<li><a class="nav-link" href="#"
								>시스템 관리</a></li>
							<li><a class="nav-link" href="#">상품관리</a></li>
						</ul>
	 				 </div>
				</div>
				
			
<form id ="formList" name="formList" method="post" action="/infra/member/memberList">
<input type="hidden" id="thisPage" name="thisPage" value="<c:out value="${vo.thisPage}" default="1"/>">
	<div style="text-align: center;">
		<select name="shIfmmDelNy" class="form-select" style="width: 200px; display: inline;">
			<option value="">::삭제여부::
			<option value="1" <c:if test="${vo.shIfmmDelNy eq 1}">selected</c:if>> Y
			<option value="0"<c:if test="${vo.shIfmmDelNy eq 0}">selected</c:if>>N
		</select>
		
		<select class="form-select" style="width: 200px; display: inline;" name="shOption">
			<option value="">::검색구분::
			<option value="1" <c:if test="${vo.shOption eq 1}">selected</c:if>>이름
			<option value="2" <c:if test="${vo.shOption eq 2}">selected</c:if>>아이디
		</select>
		<input class="form-control" style="width: 200px; display: inline;" type="text" name="shValue" id="shValue" value="<c:out value="${vo.shValue}"/>">
		<button type="Submit" id="btnSubmit" name="search" class="btn btn-primary"><svg xmlns="http://www.w3.org/2000/svg" width="16" height="16"fill="currentColor" class="bi bi-search" viewBox="0 0 16 16">
		 <path d="M11.742 10.344a6.5 6.5 0 1 0-1.397 1.398h-.001c.03.04.062.078.098.115l3.85 3.85a1 1 0 0 0 1.415-1.414l-3.85-3.85a1.007 1.007 0 0 0-.115-.1zM12 6.5a5.5 5.5 0 1 1-11 0 5.5 5.5 0 0 1 11 0z" />
		</svg></button>
	</div>
		회원 수 : <c:out value="${vo.totalRows}"/>
		
		<div class="container-fluid">
			<div class="table-responsive">
			  <table class="table">
	  			  <thead>
	   				   <tr>
							<th scope="col" style="width: 15%;">
								<div class="form-check">
								<input class="form-check-input" type="checkbox" value=""id="check" name="memberSeq"> 
								<label class="form-check-label" for="flexCheckDefault" style="width: 100px;">전체선택</label></div></th>
							<th scope="col" style="width: 5%;"><div style="width: 80px;">#</div></th>
							<th scope="col" style="width: 10%;"><div style="width: 100px;">이름</div></th>
							<th scope="col" style="width: 15%;"><div style="width: 100px;">아이디</div></th>
							<th scope="col" style="width: 15%;"><div style="width: 100px;">상세정보</div></th>
	      				</tr>
	   			 </thead>
	   			 <tbody>
	   			 <c:forEach items="${list}" var="item" varStatus="status">
	      				<tr>
							<td scope="col">
								<div class="form-check">
							<input class="form-check-input" type="checkbox" value="${item.ifmmSeq}"id="check1" name="memberSeq"></div></td>
							<td scope="col"><c:out value="${item.ifmmSeq}"/></td>
							<td scope="col"><c:out value="${item.ifmmName}"/></td>
							<td scope="col"><c:out value="${item.ifmmId}"/></td>
							<td scope="col"><a class="btn btn-secondary"href="/infra/member/memberView?ifmmSeq=<c:out value="${item.ifmmSeq}"/>">상세정보</a></td>
	    			  </tr>
				</c:forEach>
				      
			    </tbody>
			  </table>
			</div>
		</div>
	
		</form>	
	
<!-- 푸쉬전송 -->
		<button class="btn btn-info" type="button" data-bs-toggle="offcanvas" data-bs-target="#offcanvasTop1" aria-controls="offcanvasTop1"><svg xmlns="http://www.w3.org/2000/svg" width="16" height="16"
						fill="currentColor" class="bi bi-send" viewBox="0 0 16 16" data-toggle="modal" data-target="#sendModal">
						  <path d="M15.854.146a.5.5 0 0 1 .11.54l-5.819 14.547a.75.75 0 0 1-1.329.124l-3.178-4.995L.643 7.184a.75.75 0 0 1 .124-1.33L15.314.037a.5.5 0 0 1 .54.11ZM6.636 10.07l2.761 4.338L14.13 2.576 6.636 10.07Zm6.787-8.201L1.591 6.602l4.339 2.76 7.494-7.493Z" />
							</svg></button>
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
		<a class="btn btn-danger" href="/infra/member/memberNele?ifmmSeq=<c:out value="${item.ifmmSeq}"/>" id = btnNelete>
						<svg xmlns="http://www.w3.org/2000/svg" width="16" height="16" fill="currentColor" class="bi bi-trash" viewBox="0 0 16 16">
 						 <path d="M5.5 5.5A.5.5 0 0 1 6 6v6a.5.5 0 0 1-1 0V6a.5.5 0 0 1 .5-.5zm2.5 0a.5.5 0 0 1 .5.5v6a.5.5 0 0 1-1 0V6a.5.5 0 0 1 .5-.5zm3 .5a.5.5 0 0 0-1 0v6a.5.5 0 0 0 1 0V6z" />
  						 <path fill-rule="evenodd" d="M14.5 3a1 1 0 0 1-1 1H13v9a2 2 0 0 1-2 2H5a2 2 0 0 1-2-2V4h-.5a1 1 0 0 1-1-1V2a1 1 0 0 1 1-1H6a1 1 0 0 1 1-1h2a1 1 0 0 1 1 1h3.5a1 1 0 0 1 1 1v1zM4.118 4 4 4.059V13a1 1 0 0 0 1 1h6a1 1 0 0 0 1-1V4.059L11.882 4H4.118zM2.5 3V2h11v1h-11z" />
						</svg>
		</a>					
							
							
							
					<!-- <div class="offcanvas offcanvas-top" tabindex="-1" id="offcanvasTop" aria-labelledby="offcanvasTopLabel">
					  <div class="offcanvas-header">
					    <h5 id="offcanvasTopLabel">Delete Infomation</h5>
					    <button type="button" class="btn-close text-reset" data-bs-dismiss="offcanvas" aria-label="Close"></button>
					  </div>
					  <div class="offcanvas-body">
					    <p style="text-align: center;">정말삭제하시겠습니까?</p>
					    <br>
					    	<div style="text-align: center;">
					    		<button type="button" value="예"  class="btn btn-outline-secondary">예</button>
					    		<button type="button" value="아니오" class="btn btn-outline-secondary">아니오</button>
					  		</div>
					  </div>
					</div> -->
					
					
<!-- 데이터 등록 -->


				<!-- <a class="badge bg-secondary" style="float: right;" href="/infra/member/memberForm">
				 -->
				 <form id="goForm" method="post">
				 <a class="badge bg-secondary" style="float: right;" href="javascript:goForm();">
					<svg xmlns="http://www.w3.org/2000/svg" width="16" height="16"
						fill="currentColor" class="bi bi-plus-lg" viewBox="0 0 16 16">
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
						<li class="page-item"><a class="page-link" href="javascript:page(<c:out value='${vo.startPage + 1}'/>);">Next</a></li>
					</c:if>  
				  </ul>
				</nav>
				
				<footer style="border-top:2px solid purple; margin-top : 5%;">
					<p style="text-align: center;">Market Service | 대표 : 한동훈 | 사업자등록번호 : 000-00-000000 | 경기도 파주시</p>
					<p style="text-align: center;">Copyright 2014.Market Service Inc. all rights reserved</p>
				</footer>
			</div>



	<script src="/infra/resources/_bootstrap/_bootstrap/bootstrap-5.1.3-dist/js/bootstrap.bundle.min.js"></script>
	
	<script src="https://ajax.googleapis.com/ajax/libs/jquery/3.6.0/jquery.min.js"></script>
	<script src="/infra/resources/js/validation.js"></script>
	
	<script type="text/javascript">
	$("#btnSubmit").on("click", function(){
	
	if(	!checkNull($("#shValue"), $("#shValue").val(), "검색어를 입력하세요.")) return false;});

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
</script>
	
	
</body>
</html>
