<%@page import="com.entities.Note"%>
<%@page import="com.helper.FactoryProvider"%>
<%@page import="org.hibernate.Session"%>
<%@ page language="java" contentType="text/html; charset=ISO-8859-1"
	pageEncoding="ISO-8859-1"%>
<!DOCTYPE html>
<html>
<head>
<meta charset="ISO-8859-1">
<title>Insert title here</title>
<%@include file="allcss.jsp"%>
</head>
<body>
	<div>
		<%@include file="Navbar.jsp"%>
		<h1>Edit your note</h1>
		<br>

		<%
			int noteId = Integer.parseInt(request.getParameter("note_id").trim());
			Session s = FactoryProvider.getFactory().openSession();
			Note note = (Note) s.get(Note.class, noteId);

			s.close();
		%>

		<form action="UpdateServlet" method="post">
			<input value="<%=note.getId() %>" name="noteId" type="hidden"/>
			<div class="mb-3">
				<label for="title">Note title</label> <input required type="text"
					class="form-control" name="title" id="title" value="<%=note.getTitle()%>"/>
			</div>
			<div>
				<label for="content">Note content</label>
				<textarea name="content" id="content" class="form-control" placeholder="Enter your content" style="height: 300px;"><%=note.getContent()%>
				</textarea>
			</div>
			<div class="container text-center">
			<button type="submit" class="btn btn-success">Save Your note</button>
			</div>
		</form>
	</div>
</body>
</html>