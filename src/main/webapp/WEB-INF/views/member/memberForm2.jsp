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



<title>memberForm2</title>
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

<form id ="formList" name="formList" method="post" action="/infra/member/memberUpdt">
	<input type="hidden" id="ifmmSeq" name ="ifmmSeq" value="<c:out value="${item.ifmmSeq}"/>">
	<input type="hidden" id="shOption" name="shOption" value="<c:out value="${vo.shOption}"/>">
	<input type="hidden" id="shValue" name="shValue" value="<c:out value="${vo.shValue}"/>">
		
		<div class="container-fluid">
			<div class="row">
				<div class="gy-3 col-12">
					<label for="id" class="form-label">아이디</label>
					<input type="text" class="form-control" id="ifmmId" name="ifmmId"  maxlength="20" minlength="4" value="<c:out value="${item.ifmmId}"/>" disabled>
				</div>

			</div>
		</div>
		<div class="container-fluid">
			<div class="row">
				<div class="col-12 col-md-6">
					<label for="password" class="form-label">비밀번호</label>
					 <input type="password" class="form-control" id="ifmmPassword" name="ifmmPassword" maxlength="20" minlength="4" value="<c:out value="${item.ifmmPassword}"/>">
				</div>
				<div class="col-12 col-md-6">
					<label for="passwordcheck" class="form-label">비밀번호 확인</label> 
					<input type="password" class="form-control" id="passwordcheck" maxlength="20" minlength="4" value="<c:out value="${item.ifmmPassword}"/>">
				</div>

			</div>
		</div>
			
			<div class="row">
				<div class="col-12 col-md-6">
					<label for="name" class="form-label">이름</label> 
					<input type="text" class="form-control" id="ifmmName" disabled value="<c:out value="${item.ifmmName}"/>">
				</div>
				<div class="col-12 col-md-6">
					<label for="nameen" class="form-label">이름(영문)</label>
					 <input type="text" class="form-control" id="nameen">
				</div>

			</div>
		
			<div class="row">
				<div class="col-12 col-md-6">
					<label for="gender" class="form-label">성별</label>
					<select class="form-select" id="gender">
						<option>선택</option>
						<option>남성</option>
						<option>여성</option>
					</select>
				</div>
				<div class="col-12 col-md-6">
					<label for="birth" class="form-label">생일</label> 
					<input type="text" class="form-control" id="ifmmDob" name="ifmmDob" value="<c:out value="${item.ifmmDob}"/>">
				</div>

			</div>

			<div class="row">
				<div class="col">
					<label for="ifmeEmail" class="form-label">이메일</label> 
					<input type="text" class="form-control" id="ifmeEmail" name="ifmeEmailFull" value="<c:out value="${item.ifmeEmailFull}"/>">
				</div>
				<div class="col">
					이메일 마케팅 동의여부 <br>
					<div class="form-check form-check-inline">
						<input class="form-check-input" type="checkbox" id="email1" value="option1"> 
						<label class="form-check-label" for="email1">동의</label>
					</div>
				</div>
			</div>
			<div class="row">
				<div class="col">
					<label for="phone" class="form-label">핸드폰</label> 
					<input type="text" class="form-control" id="ifmpPhone" name="ifmpNumber"  value="<c:out value="${item.ifmpNumber}"/>">
				</div>
				<div class="col">
					핸드폰 정보 마케팅 사용 동의 <br>
					<div class="form-check form-check-inline">
						<input class="form-check-input" type="checkbox" id="phone"value="option2"> 
						<label class="form-check-label" for="phone">동의</label>
					</div>
				</div>
			</div>
			<div class="row">
				<div class="col-sm-6">

					<label for="sns" class="form-label">SNS</label> 
					<select class="form-select" id="sns">
						<option>선택</option>
						<option>Facebook</option>
						<option>Instagram</option>
						<option>Twitter</option>
					</select>

				</div>
				<div class="col-sm-6">
					<label for="fax" class="form-label">FAX</label> 
					<input type="text" class="form-control" id="fax" >
				</div>

			</div>
			<div class="row">
				<div class="col-12 col-md-6">
					<label for="state" class="form-label">거주국가</label>
					 <select class="form-select" id="state">
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
					 <input type="text" class="form-control" id="recommender">
				</div>

			</div>
			<div class="row">
				<div class="col-12 col-md-6">
					<label for="address" class="form-label">주소</label>
								
					
					<div class="input-group mb-3" id="address">
						<input type="text" class="form-control" id="sample5_address" name="ifmaAddress1" value="<c:out value="${item.ifmaAddress1}"/>">
						<!-- Button trigger modal -->
						<button type="button" class="btn btn-secondary" onclick="sample5_execDaumPostcode()" value="주소검색">
	 						 <svg xmlns="http://www.w3.org/2000/svg" width="16" height="16" fill="currentColor" class="bi bi-search" viewBox="0 0 16 16">
							 <path	d="M11.742 10.344a6.5 6.5 0 1 0-1.397 1.398h-.001c.03.04.062.078.098.115l3.85 3.85a1 1 0 0 0 1.415-1.414l-3.85-3.85a1.007 1.007 0 0 0-.115-.1zM12 6.5a5.5 5.5 0 1 1-11 0 5.5 5.5 0 0 1 11 0z" />
							</svg>
						</button>
						<div id="map" style="width:300px;height:300px;margin-top:10px;display:none"></div>
		

					<script src="//t1.daumcdn.net/mapjsapi/bundle/postcode/prod/postcode.v2.js"></script>
					<script src="//dapi.kakao.com/v2/maps/sdk.js?appkey=22f130cc15670a20bd9b606872111930"></script>
					<script>
					    var mapContainer = document.getElementById('map'), // 지도를 표시할 div
					        mapOption = {
					            center: new daum.maps.LatLng(37.537187, 127.005476), // 지도의 중심좌표
					            level: 5 // 지도의 확대 레벨
					        };
					
					    //지도를 미리 생성
					    var map = new daum.maps.Map(mapContainer, mapOption);
					    //주소-좌표 변환 객체를 생성
					    var geocoder = new daum.maps.services.Geocoder();
					    //마커를 미리 생성
					    var marker = new daum.maps.Marker({
					        position: new daum.maps.LatLng(37.537187, 127.005476),
					        map: map
					    });
					
					
					    function sample5_execDaumPostcode() {
					        new daum.Postcode({
					            oncomplete: function(data) {
					                var addr = data.address; // 최종 주소 변수
					
					                // 주소 정보를 해당 필드에 넣는다.
					                document.getElementById("sample5_address").value = addr;
					                // 주소로 상세 정보를 검색
					                geocoder.addressSearch(data.address, function(results, status) {
					                    // 정상적으로 검색이 완료됐으면
					                    if (status === daum.maps.services.Status.OK) {
					
					                        var result = results[0]; //첫번째 결과의 값을 활용
					
					                        // 해당 주소에 대한 좌표를 받아서
					                        var coords = new daum.maps.LatLng(result.y, result.x);
					                        // 지도를 보여준다.
					                        mapContainer.style.display = "block";
					                        map.relayout();
					                        // 지도 중심을 변경한다.
					                        map.setCenter(coords);
					                        // 마커를 결과값으로 받은 위치로 옮긴다.
					                        marker.setPosition(coords)
					                    }
					                });
					            }
					        }).open();
					    }
					</script>
					</div>
				</div>
				<div class="col-12 col-md-6">
					<label for="address1" class="form-label">상세주소</label>
					<div class="input-group mb-3" id="address1">
						<input type="text" class="form-control" name="ifmaAddress2" value="<c:out value="${item.ifmaAddress2}"/>">

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
		
	<input class="btn btn-primary" type="submit" value="제출" id="editSubmit">
	<a class="btn btn-primary" href="javascript:goView(<c:out value='${item.ifmmSeq}'/>);" role="button">뒤로</a>
</form>


	
	<script src="/infra/resources/_bootstrap/_bootstrap/bootstrap-5.1.3-dist/js/bootstrap.bundle.min.js"></script>
	<script src="https://ajax.googleapis.com/ajax/libs/jquery/3.6.0/jquery.min.js"></script>
	<script src="/infra/resources/jquery/jquery-ui-1.13.1.custom/jquery-ui.js"></script>
	<script src="/infra/resources/js/validation.js"></script>
	<script type="text/javascript">
	
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
		 $("#ifmmDob").datepicker();
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
	</script>

</body>
</html>
