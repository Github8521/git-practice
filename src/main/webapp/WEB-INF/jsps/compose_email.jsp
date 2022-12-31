<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
    <%@ include file="menu.jsp" %>
  
<!DOCTYPE html>
<html>
<head>
<meta charset="UTF-8">
<title>Send Email To Lead</title>
<link href="https://cdn.jsdelivr.net/npm/bootstrap@5.1.3/dist/css/bootstrap.min.css" rel="stylesheet" integrity="sha384-1BmE4kWBq78iYhFldvKuhfTAU6auU8tT94WrHftjDbrCEXSU1oBoqyl2QvZ6jIW3" crossorigin="anonymous">

</head>
<body>
<h1 class="text-center">Compose Email</h1>
<div class="container">
<form action="sendEmail" method="post">
<div class="mb-3">
    <label for="exampleInputEmail1"  class="form-label">To</label>
    <input name="to" type="text" value="${email }" class="form-control" id="exampleInputEmail1" aria-describedby="emailHelp" readonly="readonly">
  </div>
  <div class="mb-3">
    <label for="exampleInputEmail1" class="form-label">Subject</label>
    <input name="subject" type="text" class="form-control" id="exampleInputEmail1" aria-describedby="emailHelp">
  </div>
  
  <div class="form-floating">
  <textarea name="body" class="form-control" placeholder="Leave a comment here" id="floatingTextarea2" style="height: 100px"></textarea>
  <label for="floatingTextarea2">Body</label>
</div>

 <button type="submit" class="btn btn-primary">Send</button>

</form>
  </div>

</body>
</html>