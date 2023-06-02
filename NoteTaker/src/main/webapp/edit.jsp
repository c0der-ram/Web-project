<%@ page language="java" contentType="text/html; charset=ISO-8859-1"
    pageEncoding="ISO-8859-1"%>
    <%@page import="org.hibernate.Session" %>
    <%@page import="com.helper.FactoryProvider" %>
    <%@page import="com.entities.Note" %>
<!DOCTYPE html>
<html>
<head>
<meta charset="ISO-8859-1">
<title>Edit Notes</title>
<%@include file="all_js_css.jsp" %>
</head>
<body>

   <div class = "container-fluid p-0 m-0">
   <%@include file = "Navbar.jsp" %>
   <h1>Edit Note</h1>
 <br>
   <%
   int noteId = Integer.parseInt(request.getParameter("note_id").trim());
	Session s = FactoryProvider.getFactory().openSession();
	
	Note note = (Note)s.get(Note.class, noteId);
   
   %>
   
   <form action="UpdateServlet" method="post">
   
   <input value="<%= note.getId() %>" name="noteId" type="hidden" />
  
  <div class="form-group p-3 m-10">
    <label for="title">Note Title</label>
    <input type="text" name="title" class="form-control" id="title" placeholder="Enter title" required value="<%= note.getTitle() %>">
  </div>
  
  <div class="form-group p-3 m-10">
    <label for="content">Note Content</label>
    <textarea name="content" class="form-control" id="content" placeholder="Enter here content" style="height:300px;" required ><%= note.getContent() %></textarea>
  </div>
  
  <div class="container text-center">
  <button type="submit" class="btn btn-success">Save Note</button>
  </div>
  
</form>
   
   </div>

 
 
</body>
</html>