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

<link href="/infra/resources/_bootstrap/_bootstrap/bootstrap-5.1.3-dist/css/bootstrap.min.css" rel="stylesheet">
<link href="/infra/resources/jquery/jquery-ui-1.13.1.custom/jquery-ui.css" rel="stylesheet">



<title>logInForm</title>
<style type="text/css">
</style>
</head>  
	   
<form method="post" name="" action="">
	<div style="text-align: center; margin-top:100px;">
		<h4 style="font-weight:bold; ">로그인</h4>
	</div>	
		<div class="container-fluid">
			<div class="row" style="float:none; margin:0 auto;">
				<div class="col-4 col-md-3" style="float:none; margin:0 auto;">
					<input type="text" class="form-control" id="ifmmId" name="ifmmId"  placeholder="아이디를 입력해주세요." value="Huun" style="margin:10px; height:55px;">
					<input type="password" class="form-control" id="ifmmPassword" name="ifmmPassword" placeholder="비밀번호를 입력해주세요." value="123456" style="margin:10px; height:55px;">
					<div class="d-grid gap-2" style="margin-left:15px;">
						 <button class="btn btn" style="background-color: purple; color:white; font-weight: bold; height: 50px;" type="button" id="btnLogin">로그인</button>
					</div>
												
												
						

						
						
				</div>
			</div>
		</div>
</form>	

<script src="/infra/resources/_bootstrap/_bootstrap/bootstrap-5.1.3-dist/js/bootstrap.bundle.min.js"></script>
<script src="https://ajax.googleapis.com/ajax/libs/jquery/3.6.0/jquery.min.js"></script>
<script src="/infra/resources/jquery/jquery-ui-1.13.1.custom/jquery-ui.js"></script>
<script src="/infra/resources/js/validation.js"></script>
<script type="text/javascript">

	
	
	
	$("#btnLogin").click (function() {
	$.ajax({
		async: true 
		,cache: false
		,type: "post"
		,url: "/infra/member/loginProc"
		,data : { "ifmmId" : $("#ifmmId").val(), "ifmmPassword" : $("#ifmmPassword").val()}
		,success: function(response) {
			if(response.rt == "success") {
			location.href = "/infra/index/indexView";
			} else {
				if(!checkNull($("#ifmmId"), $("#ifmmId").val(), "아이디를 입력하세요."));
				 else if (!checkNull($("#ifmmPassword"), $("#ifmmPassword").val(), "비밀번호를 입력하세요."));
				 else alert("회원없음");
			}
		}
		,error : function(jqXHR, textStatus, errorThrown){
			alert("ajaxUpdate " + jqXHR.textStatus + " : " + jqXHR.errorThrown);
		}
	})
	});
	
	
	
	
	
	
	
	
	
	
 </script>
	

	
</body>
</html>
