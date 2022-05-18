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


<br>node : <c:out value="${node}"></c:out>
<br>node.header : <c:out value="${node.get('header')}"></c:out>
<br>node.header.resultCode : <c:out value="${node.get('header').get('resultCode')}"></c:out>
<br>node.header.resultCode : <c:out value="${fn:replace(node.get('header').get('resultCode'),'&quot;','')}"></c:out>
<br>resultCode : <c:out value="${resultCode}"></c:out>
<br>node.header.resultMsg : <c:out value="${fn:replace(node.get('header').get('resultMsg'),'&quot;','')}"></c:out>



<br>node.body.pageNo : <c:out value="${fn:replace(node.get('body').get('pageNo'),'&quot;','')}"></c:out>

<br>node.body.items : <c:out value="${node.get('body').get('items')}"></c:out>
<br>node.body.items : <c:out value="${node.get('body').get('items').get('1').get('PC_KOR_NM')}"></c:out>




  </body>
</html>
