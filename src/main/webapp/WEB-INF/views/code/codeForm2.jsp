codeGroupForm.jsp<%@ page language="java" contentType="text/html; charset=utf-8" pageEncoding="utf-8" %>

<%@ taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core" %>    
<%@ taglib prefix="fmt" uri="http://java.sun.com/jsp/jstl/fmt" %>
<%@ taglib prefix="fn" uri="http://java.sun.com/jsp/jstl/functions" %>
<%@ taglib prefix="rb" uri="http://www.springframework.org/tags" %>


<form method="post" action="codeUpdt">
	<input type="text" name="ifcdSeq" value="${item.ifcdSeq}" style="visibility:hidden;">
	<input type="text" name="ifcdChangeName" placeholder="바꿀NAME" value="${item.ifcdName}">
	<input type="submit" value="제출">
</form>