<%@ page language="java" contentType="text/html; charset=ISO-8859-1"
    pageEncoding="ISO-8859-1"%>
<!DOCTYPE html>
<html>
<head>
<meta charset="ISO-8859-1">
<title>Add Notes</title>
<%@include file="all_js_css.jsp" %>
</head>
<body>

   <div class = "container-fluid p-0 m-0">
   <%@include file = "Navbar.jsp" %>
   </div>

 <h1>Please fill your details</h1>
   
                                                  <!-- add form -->
   
   <form action="SaveNoteServlet" method="post">
  
  <div class="form-group p-3 m-5">
    <label for="title">Note Title</label>
    <input type="text" name="title" class="form-control" id="title" placeholder="Enter title" required>
  </div>
  
  <div class="form-group p-3 m-5">
    <label for="content">Note Content</label>
    <textarea name="content" class="form-control" id="content" placeholder="Enter here content" style="height:300px;" required></textarea>
  </div>
  
  <div class="container text-center">
  <button type="submit" class="btn btn-success">Submit</button>
  </div>
  
</form>
</body>
</html>