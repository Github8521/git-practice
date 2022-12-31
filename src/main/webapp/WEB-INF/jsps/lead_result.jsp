<%@page import="com.fasterxml.jackson.annotation.JsonInclude.Include"%>
<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
     <%@ include file="menu.jsp" %>
<%@ taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core" %>

    
<!DOCTYPE html>
<html>
<head>
<meta charset="UTF-8">
<title>Leads Result</title>
<link href="https://cdn.jsdelivr.net/npm/bootstrap@5.1.3/dist/css/bootstrap.min.css" rel="stylesheet" integrity="sha384-1BmE4kWBq78iYhFldvKuhfTAU6auU8tT94WrHftjDbrCEXSU1oBoqyl2QvZ6jIW3" crossorigin="anonymous">

</head>
<body>
<a href="/view">Create new lead</a>
<h2 class="text-center"> Leads Detail</h2>
<div class="container  ">
<table class="table table-dark table-striped">
  <thead>
    <tr>
      <th scope="col">Id</th>
      <th scope="col">First Name</th>
      <th scope="col">Last Name</th>
      <th scope="col">Email</th>
       <th scope="col">Lead source</th>
       <th scope="col">Mobile</th>
    </tr>
  </thead>
  <tbody>
  <c:forEach items="${findAll }" var="findAll">
    <tr>
      
      <td>${findAll.id }</td>
      <td><a href="getLeadById?id=${findAll.id }">${findAll.firstName }</a> </td>
      <td>${findAll.lastName }</td>
      <td>${findAll.email }</td>
      <td>${findAll.leadSource }</td>
      <td>${findAll.mobile }</td>
    </tr>
    </c:forEach>
    
     
  </tbody>
</table>
</div>


</body>
</html>