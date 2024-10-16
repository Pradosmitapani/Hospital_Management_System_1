<%
    response.setHeader("Cache-Control","no-cache");
    response.setHeader("Cache-Control","no-store");
    response.setHeader("Pragma","no-cache");
    response.setDateHeader("Expires",0);

%>
<%@taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core" %>
<%@page isELIgnored="false" %>
<%@page import="com.entity.Doctor"%>
<%@page import="java.util.List"%>

<%@page language="java" contentType="text/html; charset=ISO-8859-1" pageEncoding="ISO-8859-1" %>
<! DOCTYPE html>
<html>
<head>
    <meta charset="ISO-8859-1">
    <title>User Appointment</title>
    <%@include file="component/allcss.jsp"%>
    <style type="text/css">
        .paint-card{
            box-shadow: 0 0 8px 0 rgba(0,0,0,0.3);
        }
        .backImg{
            background: linear-gradient(rgba(0,0,0,.4), rgba(0,0,0,.4)),
            url("img/hospital.jpg");
            height:20vh ;
            width: 100%;
            background-size: cover;
            background-repeat: no-repeat;
        }
    </style>
</head>
<body>
<%@include file="component/navbar.jsp"%>
<div class="container-fluid backImg p-5">

</div>
</body>
</html>

