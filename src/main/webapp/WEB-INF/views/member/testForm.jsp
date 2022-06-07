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



<title>test</title>

</head>
<body>

<form method="post" action="/infra/member/memberInst">
	<input type="hidden" id="ifmmSeq" name ="ifmmSeq">
		<div class="container-fluid">
			<div class="row">
				<div class="col-12">
					<label for="id" class="form-label">아이디</label>
					<input type="text" class="form-control" id="ifmmId" name="ifmmId">
				</div>

			</div>
			<div class="row">
				<div class="col-12 col-md-6">
					<label for="password" class="form-label">비밀번호</label>
					<input type="password" class="form-control" id="ifmmPassword" name="ifmmPassword">
				</div>
				<div class="col-12 col-md-6">
					<label for="passwordcheck" class="form-label">비밀번호 확인</label>
					<input type="password" class="form-control" id="ifmmPasswordCheck" name="ifmmPasswordCheck">
				</div>

			</div>
			<div class="row">
				<div class="col-12 col-md-6">
					<label for="name" class="form-label">이름</label> 
					<input type="text" class="form-control" id="ifmmName" name="ifmmName">
				</div>
				<div class="col-12 col-md-6">
					<label for="email" class="form-label">이메일</label>
					 <input type="text" class="form-control" id="ifmmEmailFull" name="ifmmEmailFull">
				</div>
			</div>
		</div>
		<button class="btn btn-primary" type="button" id="btnSubmit">회원가입</button>	
</form>

<script src="/infra/resources/_bootstrap/_bootstrap/bootstrap-5.1.3-dist/js/bootstrap.bundle.min.js"></script>
<script src="https://ajax.googleapis.com/ajax/libs/jquery/3.6.0/jquery.min.js"></script>
<script src="/infra/resources/jquery/jquery-ui-1.13.1.custom/jquery-ui.js"></script>
<script src="/infra/resources/js/validation.js"></script>
<script src="/infra/resources/js/commonXdmin.js"></script>
<script type="text/javascript">

// validation
	$("#btnSubmit").on("click", function(){
		 if(!checkId($("#ifmmId"), $("#ifmmId").val(), "아이디를 형식에 맞춰 입력하세요.")) return false;
		if(	!checkPassword($("#ifmmPassword"), $("#ifmmPassword").val(), "비밀번호를 형식에 맞춰 입력하세요.")) return false;
	
 
		 if(!checkNull($("#ifmmId"), $("#ifmmId").val(), "아이디를 입력하세요.")) return false;
		 if(!checkNull($("#ifmmPassword"), $("#ifmmPassword").val(), "비밀번호를 입력하세요.")) return false;
		 if(!checkNull($("#ifmmPasswordCheck"), $("#ifmmPasswordCheck").val(), "비밀번호확인을 입력하세요.")) return false;
		 if(!checkNull($("#ifmmName"), $("#ifmmName").val(), "이름을 입력하세요.")) return false;
		 if(!checkNull($("#ifmmEmailFull"), $("#ifmmEmailFull").val(), "이메일을 입력하세요.")) return false;
		 if("#ifmmPassword" != "#ifmmPasswordCheck"){
			return false;
			}
	
	
	
	});
	
	
	
	
</script>









</body>
</html>