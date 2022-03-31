<%@ page language="java" contentType="text/html; charset=utf-8" pageEncoding="utf-8" %>

<%@ taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core" %>    
<%@ taglib prefix="fmt" uri="http://java.sun.com/jsp/jstl/fmt" %>
<%@ taglib prefix="fn" uri="http://java.sun.com/jsp/jstl/functions" %>
<%@ taglib prefix="rb" uri="http://www.springframework.org/tags" %>



<!DOCTYPE HTML>
<html>

<head>
<meta charset="uTF-8">
<meta name="viewport" content="width=dievice-width, intitial-scale=1.0">

<link
	href="/infra/resources/_bootstrap/_bootstrap/bootstrap-5.1.3-dist/css/bootstrap.min.css"
	rel="stylesheet">
<link href="/infra/resources/jquery/jquery-ui-1.13.1.custom/jquery-ui.css" rel="stylesheet">



<title>memberView</title>
<style type="text/css">
div  {
	margin-top: 10px;
	margin-bottom: 10px;
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
			<input type="image" src="/infra/resources/images/kurly.PNG" style="width: 150px;">
		</div>
	</header>
	
	
		<div class="container-fluid" style="clear: both;background-color: white;" >
			<div style="text-align: center;">
				<input type="image" class="d-md-none" src="../../images/kurly.png" style="width: 150px;">
			</div>
			<button class="btn d-md-none" style="float: right;" type="button" data-bs-toggle="offcanvas" data-bs-target="#offcanvasRight" aria-controls="offcanvasRight"><svg xmlns="http://www.w3.org/2000/svg" width="16" height="16" fill="currentColor" class="bi bi-list" viewBox="0 0 16 16">
	 			 <path fill-rule="evenodd" d="M2.5 12a.5.5 0 0 1 .5-.5h10a.5.5 0 0 1 0 1H3a.5.5 0 0 1-.5-.5zm0-4a.5.5 0 0 1 .5-.5h10a.5.5 0 0 1 0 1H3a.5.5 0 0 1-.5-.5zm0-4a.5.5 0 0 1 .5-.5h10a.5.5 0 0 1 0 1H3a.5.5 0 0 1-.5-.5z"/></svg></button>
			
			<nav>
				<ul class="nav justify-content-center">
				
					<a class="nav-link active" aria-current="page" href="#" style="color: black;">홈</a></li>
					<li class="nav-item d-none d-md-block d-lg-block d-xl-block d-xxl-block">
					<a class="nav-link" href="#"style="color: black;">회원관리</a></li>
				
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
<form id="formView" name="formView" method="post" action="/infra/member/memberView">
	<input type="hidden" id="shOption" name="shOption" value="<c:out value="${vo.shOption}"/>">
	<input type="hidden" id="shValue" name="shValue" value="<c:out value="${vo.shValue}"/>">
	<input type="hidden" id="thisPage" name="thisPage" value="<c:out value="${vo.thisPage}"/>">
	<input type="hidden" id="ifmmSeq" name="ifmmSeq" value="<c:out value="${item.ifmmSeq}"/>">
	
		
		<div class="container-fluid">
			<div class="row">
				<div class="gy-3 col-12">

					<label for="ifmmId" class="form-label">아이디</label>
					<input type="text" class="form-control" id="ifmmId" maxlength="20" minlength="4" value="<c:out value="${item.ifmmId}"/>" disabled>
	
				</div>

			</div>
		</div>
		<div class="container-fluid">
			<div class="row">
				<div class="col-12 col-md-6">
					<label for="ifmmPassword" class="form-label">비밀번호</label> 
					<input type="password" class="form-control" id="ifmmPassword" maxlength="20" minlength="4" value="<c:out value="${item.ifmmPassword}"/>" disabled>
				</div>
				<div class="col-12 col-md-6">
					<label for="passwordcheck" class="form-label">비밀번호 확인</label> 
					<input type="password" class="form-control" id="passwordcheck"maxlength="20" minlength="4" value="<c:out value="${item.ifmmPassword}"/>" disabled>
				</div>

			</div>
		</div>
			<div class="row">
				<div class="col-12 col-md-6">
					<label for="name" class="form-label">이름</label>
					 <input type="text" class="form-control" id="ifmmName" value="<c:out value="${item.ifmmName}"/>" disabled>
				</div>
				<div class="col-12 col-md-6">
					<label for="nameen" class="form-label">이름(영문)</label> 
					<input type="text" class="form-control" id="nameen" disabled>
				</div>

			</div>
			
			<div class="row">
				<div class="col-12 col-md-6">
					<label for="gender" class="form-label">성별</label> 
					<select class="form-select" id="gender" disabled>
						<option>선택</option>
						<option>남성</option>
						<option>여성</option>
					</select>
				</div>
				<div class="col-12 col-md-6">
					<label for="birth" class="form-label">생일</label> 
					<input type="text" class="form-control" id="ifmmDob" value="<c:out value="${item.ifmmDob}"/>" disabled>
				</div>

			</div>

			<div class="row">
				<div class="col">
					<label for="email" class="form-label">이메일</label> 
					<input type="text" class="form-control" id="ifmeEmail" disabled value="<c:out value="${item.ifmeEmailFull}"/>">
				</div>
				<div class="col">
					이메일 마케팅 동의여부 <br>
					<div class="form-check form-check-inline">
						<input class="form-check-input" type="checkbox" id="ifmeEmail" value="option1"> 
							<label class="form-check-label" for="ifmeEmail" >동의</label>
					</div>
				</div>
			</div>
			<div class="row">
				<div class="col">
					<label for="ifmpNumber" class="form-label">핸드폰</label>
					<input type="text" class="form-control" id="ifmpNumber" value="<c:out value="${item.ifmpNumber}"/>" disabled>
				</div>
				<div class="col">
					핸드폰 정보 마케팅 사용 동의 <br>
					<div class="form-check form-check-inline">
						<input class="form-check-input" type="checkbox" id="phone" value="option2"> 
						<label class="form-check-label" for="phone">동의</label>
					</div>
				</div>
			</div>
			<div class="row">
				<div class="col-sm-6">

					<label for="sns" class="form-label">SNS</label> 
					<select class="form-select" id="sns" disabled>
						<option>선택</option>
						<option>Facebook</option>
						<option>Instagram</option>
						<option>Twitter</option>
					</select>

				</div>
				<div class="col-sm-6">
					<label for="fax" class="form-label">FAX</label> 
					<input type="text" class="form-control" id="fax" value="" disabled>
				</div>

			</div>
			<div class="row">
				<div class="col-12 col-md-6">
					<label for="state" class="form-label">거주국가</label> 
					<select class="form-select" id="state" disabled>
						<option>선택</option>
						<option>한국</option>
						<option>미국</option>
						<option>일본</option>
						<option>중국</option>
						<option>영국</option>
					</select>
				</div>
				<div class="col-12 col-md-6">
					<label for="recommender" class="form-label">추천인</label> 
					<input type="text" class="form-control" id="recommender" disabled>
				</div>

			</div>
			<div class="row">
				<div class="col-12 col-md-6">
					<label for="ifmaAddress1" class="form-label">주소</label>
					<div class="input-group mb-3" id="ifmaAddress1" >
						<input type="text" class="form-control"disabled id="ifmaAddress1" value="<c:out value="${item.ifmaAddress1}"/>">
						<!-- Button trigger modal -->
<button type="button" class="btn btn-secondary" data-bs-toggle="modal" data-bs-target="#search">
  <svg xmlns="http://www.w3.org/2000/svg" width="16" height="16"
											fill="currentColor" class="bi bi-search" viewBox="0 0 16 16">
 										 <path	d="M11.742 10.344a6.5 6.5 0 1 0-1.397 1.398h-.001c.03.04.062.078.098.115l3.85 3.85a1 1 0 0 0 1.415-1.414l-3.85-3.85a1.007 1.007 0 0 0-.115-.1zM12 6.5a5.5 5.5 0 1 1-11 0 5.5 5.5 0 0 1 11 0z" />
										</svg>
</button>

<!-- Modal -->
<div class="modal fade" id="search" tabindex="-1" aria-labelledby="exampleModalLabel" aria-hidden="true">
  <div class="modal-dialog">
    <div class="modal-content">
      <div class="modal-header">
        <h5 class="modal-title" id="exampleModalLabel">주소검색</h5>
        <button type="button" class="btn-close" data-bs-dismiss="modal" aria-label="Close"></button>
      </div>
      <div class="modal-body">
        	<div class="input-group mb-3">
  <input type="text" class="form-control" placeholder="예)판교역로 235, 분당주공, 삼평동 681" aria-label="Recipient's username" aria-describedby="button-addon2">
  <button class="btn btn-outline-secondary" type="button" id="button-addon2"><svg xmlns="http://www.w3.org/2000/svg" width="16" height="16"
											fill="currentColor" class="bi bi-search" viewBox="0 0 16 16">
 										 <path	d="M11.742 10.344a6.5 6.5 0 1 0-1.397 1.398h-.001c.03.04.062.078.098.115l3.85 3.85a1 1 0 0 0 1.415-1.414l-3.85-3.85a1.007 1.007 0 0 0-.115-.1zM12 6.5a5.5 5.5 0 1 1-11 0 5.5 5.5 0 0 1 11 0z" />
										</svg></button>
</div>
										<h2>tip</h2>
										<p>아래와 같은 조합으로 검색을 하시면 더욱 정확한 결과가 검색됩니다.</p>
										<p>도로명 + 건물번호</p>
										<p>지역명(동/리) + 번지</p>
										<p>지역명(동/리) + 건물명(아파트명)</p>
										<p>사서함명 + 번호</p>
      </div>
      <div class="modal-footer">
        <button type="button" class="btn btn-secondary" data-bs-dismiss="modal">닫기</button>
        <button type="button" class="btn btn-primary">저장</button>
      </div>
    </div>
  </div>
</div>

					</div>
				</div>
	
				<div class="col-12 col-md-6">
					<label for="ifmaAddress2" class="form-label">상세주소</label>
				<div class="input-group mb-3" id="ifmaAddress2">
					<input type="text" class="form-control" id="ifmaAddress2" disabled value="<c:out value="${item.ifmaAddress2}"/>">
				</div>
				</div>
			</div>
			<div class="row">
				<div class="col-12 col-md-3">
					<label for="changer" class="form-label">최종수정자</label> 
					<input type="text" class="form-control" id="changer">
				</div>
				<div class="col-12 col-md-3">
					<label for="changeday" class="form-label">최종수정일</label> 
					<input type="text" class="form-control" id="changeday">
				</div>
				<div class="col-12 col-md-3">
					<label for="firstchanger" class="form-label">최초등록자</label> 
					<input type="text" class="form-control" id="firstchanger">
				</div>
				<div class="col-12 col-md-3">
					<label for="firstchangeday" class="form-label">최초등록일</label> 
					<input type="text" class="form-control" id="fisrtchangeday">
				</div>

			</div>
<a class="btn btn-primary" href="javascript:goEdit(<c:out value='${item.ifmmSeq}'/>);" role="button">수정</a>
</form>

<form id="goList" method="post">
	<input type="hidden" id="ifmmSeq" name="ifmmSeq">
	<a class="btn btn-primary" href="javascript:goList();" role="button">목록</a>
</form>

<a class="btn btn-primary" href="/infra/member/memberForm2?ifmmSeq=<c:out value="${item.ifmmSeq}"/>" role="button">수정</a>
<%-- 	
<a class="btn btn-primary" href="/infra/member/memberNele?ifmmSeq=<c:out value="${item.ifmmSeq}"/>" role="button">삭제</a>
		javascript:goForm2(<c:out value="${item.ifmmSeq}"/>);
		/infra/member/memberForm2?ifmmSeq=<c:out value="${item.ifmmSeq}"/>
 --%>

<script src="/infra/resources/_bootstrap/_bootstrap/bootstrap-5.1.3-dist/js/bootstrap.bundle.min.js"></script>
	
	<script src="https://ajax.googleapis.com/ajax/libs/jquery/3.6.0/jquery.min.js"></script>
	<script src="/infra/resources/js/validation.js"></script>
	<script type="text/javascript">
	
	goEdit = function(seq) {
		$("#ifmmSeq").val(seq);
		$("#formView").attr("action","/infra/member/memberForm2");
		$("#formView").submit();
	}
	goList = function() {
		$("#goList").attr("action","/infra/member/memberList");
		$("#goList").submit();
	}
	
	</script>

</body>
</html>
