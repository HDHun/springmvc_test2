codeGroupForm.jsp<%@ page language="java" contentType="text/html; charset=utf-8" pageEncoding="utf-8" %>

<%@ taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core" %>    
<%@ taglib prefix="fmt" uri="http://java.sun.com/jsp/jstl/fmt" %>
<%@ taglib prefix="fn" uri="http://java.sun.com/jsp/jstl/functions" %>
<%@ taglib prefix="rb" uri="http://www.springframework.org/tags" %>


<form method="post" action="codeGroupUpdt">
	<input type="text" name="ifcgSeq" value="${item.ifcgSeq}" style="visibility:hidden;">
	<input type="text" name="ifcgChangeName" placeholder="바꿀NAME" value="${item.ifcgName}">
	<input type="submit" value="제출">
</form>