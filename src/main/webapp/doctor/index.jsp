<%@ page contentType="text/html;charset=UTF-8" language="java" %>

<%@ taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core" %>

<%@page isELIgnored="false"%>
<html>
<head>
    <title>Title</title>
    <%@include file="../component/allcss.jsp"%>
</head>
<body>
  <c:if test="${empty docObj}">
      <c:redirect url="../doctor_login.jsp"> </c:redirect>
  </c:if>

<%@include file="navbar.jsp"%>
<h1>Doctor Dashboard</h1>
</body>
</html>