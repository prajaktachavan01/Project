
<%@ page contentType="text/html; charset=UTF-8" pageEncoding="UTF-8" %>
<%@taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core" %>


<!DOCTYPE html>
<html>
<head>
    <title>JSP - Hello World</title>
</head>
<body>
<%--<h1><%= "Hello World!" %>--%>
<%--</h1>--%>


<%--out tag--%>
<%--set tag--%>
<c:set var="i" value="-23" scope="application"></c:set>
<h1>  <c:out value="${i}"></c:out></h1>
<%--remove tag--%>
<%--<c:remove var="i"></c:remove>--%>
<%--<h1> <c:out value="${i}"></c:out></h1>--%>
<hr>
<%--if tag--%>
<c:if test="${i==23}">
    <h1>I is 23 condition is true</h1>
</c:if>
<%--choose ,when, otherwise--%>
<c:choose>
    <c:when test="${i>0}">
      <h1>Case 1</h1>
        <p>Number is positive </p>
    </c:when>
    <c:when test="${i<0}">
        <h1>Case 2</h1>
        <p>number is negative</p>
    </c:when>
    <c:otherwise>
        <h1>number is default</h1>
    </c:otherwise>
</c:choose>

<%--for each--%>
<c:forEach var="j" begin="1" end="5">
    <c:out value="${2*j}">

    </c:out>
</c:forEach>
<%--re direct--%>
<%--<c:redirect>--%>

<%--</c:redirect>--%>



















































<%--<a href="hello-servlet">Hello Servlet</a>--%>
</body>
</html>