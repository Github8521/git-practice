<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
     <%@ include file="menu.jsp" %>
   
<!DOCTYPE html>
<html>
<head>
<meta charset="UTF-8">
<title>Lead | create</title>
<link href="https://cdn.jsdelivr.net/npm/bootstrap@5.1.3/dist/css/bootstrap.min.css" rel="stylesheet" integrity="sha384-1BmE4kWBq78iYhFldvKuhfTAU6auU8tT94WrHftjDbrCEXSU1oBoqyl2QvZ6jIW3" crossorigin="anonymous">
</head>
<body>
<h1 class="text-center">Lead</h1>
<div class="container">
<form action="saveLead" method="post">
  <div class="mb-3">
    <label for="exampleInputEmail1" class="form-label">First Name</label>
    <input name="firstName" type="text" class="form-control" id="exampleInputEmail1" aria-describedby="emailHelp">
  </div>
   <div class="mb-3">
    <label for="exampleInputEmail1" class="form-label">Last Name</label>
    <input name="lastName" type="text" class="form-control" id="exampleInputEmail1" aria-describedby="emailHelp">
  </div>
  <div class="mb-3">
    <label for="exampleInputEmail1" class="form-label">email</label>
    <input name="email" type="text" class="form-control" id="exampleInputEmail1" aria-describedby="emailHelp">
  </div>
  
  <div >Lead Source</div>
  <select name="leadSource" class="form-select" aria-label="Default select example">
  <option selected class="dropdown-item" value="tv commercial">  Tv Commercial </option>
   <option class="dropdown-item" value="Radio">  Radio </option>
   <option class="dropdown-item" value="News paper">  News Paper </option>
   <option class="dropdown-item" value="online">  Online </option>
</select>
 
 <div class="mb-3">
    <label for="exampleInputEmail1" class="form-label">Mobile</label>
    <input name="mobile" type="text" class="form-control" id="exampleInputEmail1" aria-describedby="emailHelp">
  </div>
  
  <button type="submit" class="btn btn-primary">Submit</button>
</form>
</div>




<script src="https://cdn.jsdelivr.net/npm/bootstrap@5.1.3/dist/js/bootstrap.bundle.min.js" integrity="sha384-ka7Sk0Gln4gmtz2MlQnikT1wXgYsOg+OMhuP+IlRH9sENBO0LRn5q+8nbTov4+1p" crossorigin="anonymous"></script>

</body>
</html>