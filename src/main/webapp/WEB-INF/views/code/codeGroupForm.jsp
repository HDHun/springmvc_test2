<%@ page language="java" contentType="text/html; charset=utf-8" pageEncoding="utf-8" %>

<%@ taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core" %>    
<%@ taglib prefix="fmt" uri="http://java.sun.com/jsp/jstl/fmt" %>
<%@ taglib prefix="fn" uri="http://java.sun.com/jsp/jstl/functions" %>
<%@ taglib prefix="rb" uri="http://www.springframework.org/tags" %>

<link href="/infra/resources/jquery/jquery-ui-1.13.1.custom/jquery-ui.css" rel="stylesheet">

<!-- <form id ="form" method="get"  action="/infra/code/codeGroupInst"> -->
<form id ="form" method="get"  action="/infra/code/codeGroupInst" enctype="multipart/form-data">
	<input type="hidden" id="thisPage" name="thisPage" value="<c:out value="${vo.thisPage}"/>">
	<input type="hidden" id="shOption" name="shOption" value="<c:out value="${vo.shOption}"/>">
	<input type="hidden" id="shValue" name="shValue" value="<c:out value="${vo.shValue}"/>">
	<input type="text" name="ifcgName" placeholder="코드그룹" value="<c:out value="${vo.ifcgName}"/>">
	<br><input type="file" name="file">
	<br><input type="file" name="file1">
	<input type="submit" id="btnSubmit" value="제출">
	
</form>	


<a href="/infra/code/codeGroupList?thisPage=<c:out value="${vo.thisPage}"/>&shOption=<c:out value="${vo.shOption}"/>&shValue=<c:out value="${vo.shValue}"/>">목록</a>





	

<script src="https://ajax.googleapis.com/ajax/libs/jquery/3.6.0/jquery.min.js"></script>
<script src="/infra/resources/jquery/jquery-ui-1.13.1.custom/jquery-ui.js"></script>
<script src="/infra/resources/js/validation.js"></script>

<script type="text/javascript">
	
	</script>
