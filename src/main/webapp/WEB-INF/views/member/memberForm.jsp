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
<link href="/infra/resources/jquery/jquery-ui-1.13.1.custom/jquery-ui.css" rel="stylesheet">



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
<form method="post" action="/infra/member/memberInst"  enctype="multipart/form-data">
	<input type="hidden" id="shOption" name="shOption" value="<c:out value="${vo.shOption}"/>">
	<input type="hidden" id="shValue" name="shValue" value="<c:out value="${vo.shValue}"/>">
	<input type="hidden" id="ifmmSeq" name ="ifmmSeq">
	<input type="hidden" id="ifmpDefaultNy" name ="ifmpDefaultNy" value="1">
	<br><input type="file" name="file" name="ifatName" id="ifatName">
	<br><input type="file" name="file1" name="ifatNameEng"id="ifatNameEng">

		<div class="container-fluid">
			<div class="row">
				<div class="col-12">
					<label for="id" class="form-label">아이디</label>
					<input type="text" class="form-control" id="ifmmId" name="ifmmId" maxlength="20" 
					 placeholder="영문(대소문자),숫자,특수문자O,4~20자리조합">
				</div>

			</div>
			<div class="row">
				<div class="col-12 col-md-6">
					<label for="password" class="form-label">비밀번호</label>
					<input type="password" class="form-control" id="ifmmPassword" name="ifmmPassword" maxlength="20"minlength="4" placeholder="영문(대소문자),숫자,특수문자O,4~20자리조합">
				</div>
				<div class="col-12 col-md-6">
					<label for="passwordcheck" class="form-label">비밀번호 확인</label>
					<input type="password" class="form-control" id="passwordcheck" name="ifmmPasswordCheck"maxlength="20" minlength="4">
				</div>

			</div>
			<div class="row">
				<div class="col-12 col-md-6">
					<label for="name" class="form-label">이름</label> 
					<input type="text" class="form-control" id="ifmmName" name="ifmmName">
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
					 <input  class="form-control" type="text" name="ifmmDob" id="ifmmDob">
		
				</div>

			</div>

			<div class="row">
				<div class="col-12 col-md-6">
					<label for="email" class="form-label">이메일</label>
					 <input type="text" class="form-control" id="ifmeEmailFull" name="ifmeEmailFull" placeholder="name@example.com">
				</div>
				<div class="col-12 col-md-6">
					이메일 마케팅 동의여부 <br>
					<div class="form-check form-check-inline">
							<label class="form-check-label" for="email1">동의</label>
						<input class="form-check-input" type="checkbox" id="email1"value="option1"> 
					</div>
				</div>
			</div>
			<div class="row">
				<div class="col-12 col-md-6">
					<label for="ifmpNumber" class="form-label">핸드폰</label> 
					<input type="text" class="form-control" id="ifmpNumber" name="ifmpNumber" placeholder="숫자만(01044448888)">
				</div>
				<div class="col-12 col-md-6">
					핸드폰 정보 마케팅 사용 동의 <br>
					<div class="form-check form-check-inline">
						<input class="form-check-input" type="checkbox" id="phone"value="option2"> 
							<label class="form-check-label"for="phone">동의</label>
					</div>
				</div>
			</div>
			<div class="row">
				<div class="col-12 col-md-6">

					<label for="sns" class="form-label">SNS</label> 
					<select class="form-select" id="sns">
						<option>선택</option>
						<option>Facebook</option>
						<option>Instagram</option>
						<option>Twitter</option>
					</select>

				</div>
				<div class="col-12 col-md-6">
					<label for="fax" class="form-label">FAX</label>
					 <input type="text" class="form-control" id="fax" placeholder="숫자만(024448888)">
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
					<label for="address" class="form-label" id="post1">주소</label>
					
					
					<div class="input-group mb-3" id="address">
						<input type="text" class="form-control" id="ifmaAddress1" name="ifmaAddress1">
						<input type="text" class="form-control" id="ifmaZipcode" name="ifmaZipcode">
						<input type="text" class="form-control" id="ifmaLat" name="ifmaLat">
						<input type="text" class="form-control" id="ifmaLng" name="ifmaLng">
						<!-- Button trigger modal -->
						<button type="button" class="btn btn-secondary" onclick="sample4_execDaumPostcode()" value="주소검색">
	 						 <svg xmlns="http://www.w3.org/2000/svg" width="16" height="16" fill="currentColor" class="bi bi-search" viewBox="0 0 16 16">
							 <path	d="M11.742 10.344a6.5 6.5 0 1 0-1.397 1.398h-.001c.03.04.062.078.098.115l3.85 3.85a1 1 0 0 0 1.415-1.414l-3.85-3.85a1.007 1.007 0 0 0-.115-.1zM12 6.5a5.5 5.5 0 1 1-11 0 5.5 5.5 0 0 1 11 0z" />
							</svg>
						</button>
						<div id="map" style="width:300px;height:300px;margin-top:10px;display:none"></div>
		

<script src="//t1.daumcdn.net/mapjsapi/bundle/postcode/prod/postcode.v2.js"></script>
<script src="//dapi.kakao.com/v2/maps/sdk.js?appkey=22f130cc15670a20bd9b606872111930"></script>
<script type="text/javascript" src="//dapi.kakao.com/v2/maps/sdk.js?appkey=22f130cc15670a20bd9b606872111930&libraries=services"></script>
<script>

    function sample4_execDaumPostcode() {
        new daum.Postcode({
            oncomplete: function(data) {
                // 팝업에서 검색결과 항목을 클릭했을때 실행할 코드를 작성하는 부분.

                // 도로명 주소의 노출 규칙에 따라 주소를 표시한다.
                // 내려오는 변수가 값이 없는 경우엔 공백('')값을 가지므로, 이를 참고하여 분기 한다.
                 // 도로명 주소 변수
                var roadAddr = data.roadAddress;
                var extraRoadAddr = ''; // 참고 항목 변수
                

                // 법정동명이 있을 경우 추가한다. (법정리는 제외)
                // 법정동의 경우 마지막 문자가 "동/로/가"로 끝난다.
                if(data.bname !== '' && /[동|로|가]$/g.test(data.bname)){
                    extraRoadAddr += data.bname;
                }
                // 건물명이 있고, 공동주택일 경우 추가한다.
                if(data.buildingName !== '' && data.apartment === 'Y'){
                   extraRoadAddr += (extraRoadAddr !== '' ? ', ' + data.buildingName : data.buildingName);
                }
                // 표시할 참고항목이 있을 경우, 괄호까지 추가한 최종 문자열을 만든다.
                if(extraRoadAddr !== ''){
                    extraRoadAddr = ' (' + extraRoadAddr + ')';
                }

                // 우편번호와 주소 정보를 해당 필드에 넣는다.
                document.getElementById('ifmaZipcode').value = data.zonecode;
                document.getElementById("ifmaAddress1").value = roadAddr;
               document.getElementById("ifmaAddress2").value = data.jibunAddress; 
                
                // 참고항목 문자열이 있을 경우 해당 필드에 넣는다.
                if(roadAddr !== ''){
                    document.getElementById("sample4_extraAddress").value = extraRoadAddr;
                } else {
                    document.getElementById("sample4_extraAddress").value = '';
                } 

                var guideTextBox = document.getElementById("guide");
                // 사용자가 '선택 안함'을 클릭한 경우, 예상 주소라는 표시를 해준다.
                if(data.autoRoadAddress) {
                    var expRoadAddr = data.autoRoadAddress + extraRoadAddr;
                    guideTextBox.innerHTML = '(예상 도로명 주소 : ' + expRoadAddr + ')';
                    guideTextBox.style.display = 'block';

                } else if(data.autoJibunAddress) {
                    var expJibunAddr = data.autoJibunAddress;
                    guideTextBox.innerHTML = '(예상 지번 주소 : ' + expJibunAddr + ')';
                    guideTextBox.style.display = 'block';
                } else {
                    guideTextBox.innerHTML = '';
                    guideTextBox.style.display = 'none';
                }
                var geocoder = new daum.maps.services.Geocoder();
            	
            	// 주소로 좌표를 검색
            	geocoder.addressSearch(roadAddr, function(result, status) {
            	 
            		// 정상적으로 검색이 완료됐으면,
            		if (status == daum.maps.services.Status.OK) {
            			/* 
            			 document.getElementById("ifmaLat").value=x;
            			document.getElementById("ifmaLng").value=y;
            			  */
            					
            		 	var coords = new daum.maps.LatLng(result[0].y, result[0].x);
            	
            			y = result[0].x;
            			x = result[0].y;
            	
            			
            			document.getElementById("ifmaLat").value=x;
            			document.getElementById("ifmaLng").value=y; 
            					
            		}
            	});
                
                
            }
        }).open();
    }
    
    
    /* lat and lng from address s */
		
	// 주소-좌표 변환 객체를 생성
	
	/* lat and lng from address e */
</script>			  


						
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
		<fmt:formatDate value="${item.regDateTime }" pattern="yyyy-MM-dd HH:mm:ss"/>
	<input class="btn btn-primary" type="submit" value="제출" id="btnSubmit">
<a class="btn btn-primary" href="/infra/member/memberList" role="button">취소</a>
</form>

<script src="/infra/resources/_bootstrap/_bootstrap/bootstrap-5.1.3-dist/js/bootstrap.bundle.min.js"></script>
<script src="https://ajax.googleapis.com/ajax/libs/jquery/3.6.0/jquery.min.js"></script>
<script src="/infra/resources/jquery/jquery-ui-1.13.1.custom/jquery-ui.js"></script>
<script src="/infra/resources/js/validation.js"></script>
<script type="text/javascript">

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
	
		
	
	
	$("#btnSubmit").on("click", function(){
		/* if(	!checkId($("#ifmmId"), $("#ifmmId").val(), "아이디를 입력하세요.")
				) return false;
		
		if(	!checkPassword($("#ifmmPassword"), $("#ifmmPassword").val(), "비밀번호를 입력하세요.")
				) return false;
	
		if(	!checkOnlyNumber($("#ifmpNumber"), $("#ifmpNumber").val(), "전화번호를 입력하세요.")
				) return false;
 */
	
	
	
	
	});
	
	
	/* $("#btnSubmit").on("click", function(){

		if(	!checkNull($("#shValue"), $("#shValue").val(), "검색어를 입력하세요.")) return false;});
 */
	
	
	</script>









</body>
</html>