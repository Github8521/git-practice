<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
     <%@ include file="menu.jsp" %>
    
<!DOCTYPE html>
<html>
<head>
<meta charset="UTF-8">
<title>Lead Detail</title>
<link href="https://cdn.jsdelivr.net/npm/bootstrap@5.1.3/dist/css/bootstrap.min.css" rel="stylesheet" integrity="sha384-1BmE4kWBq78iYhFldvKuhfTAU6auU8tT94WrHftjDbrCEXSU1oBoqyl2QvZ6jIW3" crossorigin="anonymous">

</head>
<body>
<h1 class="text-center">Lead Info</h1>
<div class="container">
Id: ${lead.id } <br>
first Name: ${lead.firstName }<br>
Last Name: ${lead.lastName  }<br>
email: ${lead.email  }<br>
Lead Source: ${lead.leadSource  }<br>
Phone: ${lead.mobile  }<br>
<form action="compose" method="post">
<input type="hidden" name="emailId" value="${lead.email  }">

 <button type="submit" class="btn btn-primary">Email</button>

</form>

<form class="my-3" action="convertLead" method="post">
<input type="hidden" name="id" value="${lead.id   }">

 <button type="submit" class="btn btn-primary">Convert</button>

</form>
  </div>

</body>
</html>