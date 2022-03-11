<%@ page language="java" contentType="text/html; charset=utf-8" pageEncoding="utf-8" %>

<%@ taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core" %>    
<%@ taglib prefix="fmt" uri="http://java.sun.com/jsp/jstl/fmt" %>
<%@ taglib prefix="fn" uri="http://java.sun.com/jsp/jstl/functions" %>
<%@ taglib prefix="rb" uri="http://www.springframework.org/tags" %>



<form method="post" action="/infra/member/memberInst">
	<select name="ifmmSeq">
		<c:forEach items="${list}" var="item" varStatus="status">
			<option value="<c:out value="${item.ifmmSeq}"/>">|<c:out value="${item.ifmmSeq}"/>|<c:out value="${item.ifmmName}"/> </option>
		</c:forEach>
	</select>
	
	
	
	<input type="text" name="ifmmSeq" placeholder="ifmmseq" value="<c:out value="${item.ifmmSeq}"/>">
	<input type="text" name="ifmmName" placeholder="ifmmname" value="<c:out value="${item.ifmmName}"/>">
	<input type="submit" value="제출">
</form>



