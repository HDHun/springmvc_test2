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



<title>indexView</title>
<style type="text/css">
</style>
</head>
<body class="container-fluid">

	    

<form name="" id="" action="">
sessSeq: <c:out value="${sessSeq}"/><br>
sessName: <c:out value="${sessName}"/><br>
sessId: <c:out value="${sessId}"/><br>

<c:if test="${not empty sessSeq}">
	<button type="button" class="btn btn-danger btn-sm" name="" id="btnLogout">로그아웃</button>
</c:if>	
</form>
		


	<script src="/infra/resources/_bootstrap/_bootstrap/bootstrap-5.1.3-dist/js/bootstrap.bundle.min.js"></script>
	<script src="https://ajax.googleapis.com/ajax/libs/jquery/3.6.0/jquery.min.js"></script>
	<script src="/infra/resources/jquery/jquery-ui-1.13.1.custom/jquery-ui.js"></script>
	<script src="/infra/resources/js/validation.js"></script>
	<script type="text/javascript">
	$("#btnLogout").click (function() {
		$.ajax({
			async: true 
			,cache: false
			,type: "post"
			,url: "/infra/member/logoutProc"
			,data : { "ifmmId" : $("#ifmmId").val(), "ifmmPassword" : $("#ifmmPassword").val()}
			,success: function(response) {
				if(response.rt == "success") {
					location.href = "/infra/member/logInForm";
				} else {
					// pass
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
