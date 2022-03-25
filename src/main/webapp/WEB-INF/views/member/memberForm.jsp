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



<title>memberForm</title>
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
<form method="post" action="/infra/member/memberUpdt">

<input type="text" name="ifmmSeq" placeholder="ifmmSeq" value=<c:out value="${item.ifmmSeq}"/>> 
<input type="text" name="ifmmName" placeholder="ifmmname" value=<c:out value="${item.ifmmName}"/>> 
	

		<div class="container-fluid">
			<div class="row">
				<div class="col-12">
					<label for="id" class="form-label">아이디</label> <input type="text"
						class="form-control" id="id" maxlength="20" minlength="4"
						placeholder="영문(대소문자),숫자,특수문자O,4~20자리조합">
				</div>

			</div>
			<div class="row">
				<div class="col-12 col-md-6">
					<label for="password" class="form-label">비밀번호</label> <input
						type="password" class="form-control" id="password" maxlength="20"
						minlength="4" placeholder="영문(대소문자),숫자,특수문자O,4~20자리조합">
				</div>
				<div class="col-12 col-md-6">
					<label for="passwordcheck" class="form-label">비밀번호 확인</label> <input
						type="password" class="form-control" id="passwordcheck"
						maxlength="20" minlength="4">
				</div>

			</div>
			<div class="row">
				<div class="col-12 col-md-6">
					<label for="name" class="form-label">이름</label> <input type="text"
						class="form-control" id="name">
				</div>
				<div class="col-12 col-md-6">
					<label for="nameen" class="form-label">이름(영문)</label> <input
						type="text" class="form-control" id="nameen">
				</div>

			</div>
			<div class="row">
				<div class="col-12 col-md-6">
					<label for="firname" class="form-label">성</label> <input
						type="text" class="form-control" id="firname">
				</div>
				<div class="col-12 col-md-6">
					<label for="firnameen" class="form-label">성(영문)</label> <input
						type="text" class="form-control" id="firnameen">
				</div>

			</div>
			<div class="row">
				<div class="col-12 col-md-6">
					<label for="gender" class="form-label">성별</label> <select
						class="form-select" id="gender">
						<option>선택</option>
						<option>남성</option>
						<option>여성</option>
					</select>
				</div>
				<div class="col-12 col-md-6">
					<label for="birth" class="form-label">생일</label>
					 <input type="date" class="form-control" id="birth">
				</div>

			</div>

			<div class="row">
				<div class="col-12 col-md-6">
					<label for="email" class="form-label">이메일</label> <input
						type="text" class="form-control" id="email"
						placeholder="name@example.com">
				</div>
				<div class="col-12 col-md-6">
					이메일 마케팅 동의여부 <br>
					<div class="form-check form-check-inline">
						<input class="form-check-input" type="checkbox" id="email1"
							value="option1"> <label class="form-check-label"
							for="email1">동의</label>
					</div>
				</div>
			</div>
			<div class="row">
				<div class="col-12 col-md-6">
					<label for="phone" class="form-label">핸드폰</label> <input
						type="text" class="form-control" id="phone"
						placeholder="숫자만(01044448888)">
				</div>
				<div class="col-12 col-md-6">
					핸드폰 정보 마케팅 사용 동의 <br>
					<div class="form-check form-check-inline">
						<input class="form-check-input" type="checkbox" id="phone"
							value="option2"> <label class="form-check-label"
							for="phone">동의</label>
					</div>
				</div>
			</div>
			<div class="row">
				<div class="col-12 col-md-6">

					<label for="sns" class="form-label">SNS</label> <select
						class="form-select" id="sns">
						<option>선택</option>
						<option>Facebook</option>
						<option>Instagram</option>
						<option>Twitter</option>
					</select>

				</div>
				<div class="col-12 col-md-6">
					<label for="fax" class="form-label">FAX</label> <input type="text"
						class="form-control" id="fax" placeholder="숫자만(024448888)">
				</div>

			</div>
			<div class="row">
				<div class="col-12 col-md-6">
					<label for="state" class="form-label">거주국가</label> <select
						class="form-select" id="state">
						<option>선택</option>
						<option>한국</option>
						<option>미국</option>
						<option>일본</option>
						<option>중국</option>
						<option>영국</option>
					</select>
				</div>
				<div class="col-12 col-md-6">
					<label for="recommender" class="form-label">추천인</label> <input
						type="text" class="form-control" id="recommender">
				</div>

			</div>
			<div class="row">
				<div class="col-12 col-md-6">
					<label for="address" class="form-label" id="post1">주소</label>
					
					
					<div class="input-group mb-3" id="address">
						<input type="text" class="form-control" id="search" name="search">
						<!-- Button trigger modal -->
						<button type="button" class="btn btn-secondary" data-bs-toggle="modal" data-bs-target="#search" onclick="execPostCode();">
	 						 <svg xmlns="http://www.w3.org/2000/svg" width="16" height="16" fill="currentColor" class="bi bi-search" viewBox="0 0 16 16">
							 <path	d="M11.742 10.344a6.5 6.5 0 1 0-1.397 1.398h-.001c.03.04.062.078.098.115l3.85 3.85a1 1 0 0 0 1.415-1.414l-3.85-3.85a1.007 1.007 0 0 0-.115-.1zM12 6.5a5.5 5.5 0 1 1-11 0 5.5 5.5 0 0 1 11 0z" />
							</svg>
						</button>
		<script src="//t1.daumcdn.net/mapjsapi/bundle/postcode/prod/postcode.v2.js"></script>
		<script type="text/javascript">
		function execPostCode() {
	         new daum.Postcode({
	             oncomplete: function(data) {
	                // 팝업에서 검색결과 항목을 클릭했을때 실행할 코드를 작성하는 부분.
	 
	                // 도로명 주소의 노출 규칙에 따라 주소를 조합한다.
	                // 내려오는 변수가 값이 없는 경우엔 공백('')값을 가지므로, 이를 참고하여 분기 한다.
	                var fullRoadAddr = data.roadAddress; // 도로명 주소 변수
	                var extraRoadAddr = ''; // 도로명 조합형 주소 변수
	 
	                // 법정동명이 있을 경우 추가한다. (법정리는 제외)
	                // 법정동의 경우 마지막 문자가 "동/로/가"로 끝난다.
	                if(data.bname !== '' && /[동|로|가]$/g.test(data.bname)){
	                    extraRoadAddr += data.bname;
	                }
	                // 건물명이 있고, 공동주택일 경우 추가한다.
	                if(data.buildingName !== '' && data.apartment === 'Y'){
	                   extraRoadAddr += (extraRoadAddr !== '' ? ', ' + data.buildingName : data.buildingName);
	                }
	                // 도로명, 지번 조합형 주소가 있을 경우, 괄호까지 추가한 최종 문자열을 만든다.
	                if(extraRoadAddr !== ''){
	                    extraRoadAddr = ' (' + extraRoadAddr + ')';
	                }
	                // 도로명, 지번 주소의 유무에 따라 해당 조합형 주소를 추가한다.
	                if(fullRoadAddr !== ''){
	                    fullRoadAddr += extraRoadAddr;
	                }
	 
	                // 우편번호와 주소 정보를 해당 필드에 넣는다.
	                console.log(data.zonecode);
	                console.log(fullRoadAddr);
	                
	                document.getElementById('post1').value = data.zonecode; //5자리 새우편번호 사용
	                document.getElementById('post2').value = fullAddr;
	                /* document.getElementById('signUpUserPostNo').value = data.zonecode; //5자리 새우편번호 사용
	                document.getElementById('signUpUserCompanyAddress').value = fullRoadAddr;
	                document.getElementById('signUpUserCompanyAddressDetail').value = data.jibunAddress; */
	            }
	         }).open();
	     }

		</script>

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
									  <button class="btn btn-outline-secondary" type="button" id="button-addon2">
									 	<svg xmlns="http://www.w3.org/2000/svg" width="16" height="16" fill="currentColor" class="bi bi-search" viewBox="0 0 16 16">
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
											<label for="address1" class="form-label">상세주소</label>
											<div class="input-group mb-3" id="address1">
												<input type="text" class="form-control" id="post2">
						
											</div>
										</div>
									</div>
								</div>
		
			<div class="row">
				<div class="col-12 col-md-3">
					<label for="changer" class="form-label">최종수정자</label> <input
						type="text" class="form-control" id="changer">
				</div>
				<div class="col-12 col-md-3">
					<label for="changeday" class="form-label">최종수정일</label> <input
						type="text" class="form-control" id="changeday">
				</div>
				<div class="col-12 col-md-3">
					<label for="firstchanger" class="form-label">최초등록자</label> <input
						type="text" class="form-control" id="firstchanger">
				</div>
				<div class="col-12 col-md-3">
					<label for="firstchangeday" class="form-label">최초등록일</label> <input
						type="text" class="form-control" id="fisrtchangeday">
				</div>

			</div>
		
		
</form>

<!-- <div id="map" style="width:500px;height:400px;"></div>
<script type="text/javascript" src="//dapi.kakao.com/v2/maps/sdk.js?appkey=22f130cc15670a20bd9b606872111930"></script>
	<script>
		var container = document.getElementById('map');
		var options = {
			center: new kakao.maps.LatLng(33.450701, 126.570667),
			level: 3
		};

		var map = new kakao.maps.Map(container, options);
	</script> -->
<script src="/infra/resources/_bootstrap/_bootstrap/bootstrap-5.1.3-dist/js/bootstrap.bundle.min.js"></script>
<script src="https://ajax.googleapis.com/ajax/libs/jquery/3.6.0/jquery.min.js"></script>
<script src="/infra/resources/js/validation.js"></script>










</body>
</html>