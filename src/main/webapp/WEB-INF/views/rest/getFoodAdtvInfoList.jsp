<%@ page language="java" contentType="text/html; charset=utf-8" pageEncoding="utf-8" %>

<%@ taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core" %>    
<%@ taglib prefix="fmt" uri="http://java.sun.com/jsp/jstl/fmt" %>
<%@ taglib prefix="fn" uri="http://java.sun.com/jsp/jstl/functions" %>
<%@ taglib prefix="rb" uri="http://www.springframework.org/tags" %>
<html>
  <head>
    <title>restTest</title>
  </head>
  <body>
	<c:out value="${resultCode}"/>
<br> <c:out value="${resultMsg}"/>
<br> <c:out value="${pageNo}"/>
<br> <c:out value="${totalCount}"/>
<br> <c:out value="${numOfRows}"/> 
<br> <c:out value="${items}"/>



<c:forEach items="${items}" var="item" varStatus="status">
	<c:out value="${item.PRDLST_CD}"/>
<br>	<c:out value="${item.PC_KOR_NM}"/>
<br>	<c:out value="${item.TESTITM_CD}"/>
<br>	<c:out value="${item.T_KOR_NM}"/>
<br>	<c:out value="${item.FNPRT_ITM_NM}"/>
<br>	<c:out value="${item.SPEC_VAL}"/>
<br>	<c:out value="${item.SPEC_VAL_SUMUP}"/>
<br>	<c:out value="${item.VALD_BEGN_DT}"/>
<br>	<c:out value="${item.VALD_END_DT}"/>
<br>	<c:out value="${item.SORC}"/>
<br>	<c:out value="${item.MXMM_VAL}"/> 
<br>	<c:out value="${item.MIMM_VAL}"/>
<br>	<c:out value="${item.INJRY_YN}"/>
<br>	<c:out value="${item.UNIT_NM}"/>



</c:forEach>





  </body>
</html>
