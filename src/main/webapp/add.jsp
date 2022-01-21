<%@ page language="java" contentType="text/html; charset=ISO-8859-1"
	pageEncoding="ISO-8859-1"%>
<!DOCTYPE html>
<html>
<head>
<!-- Required meta tags -->
<meta charset="utf-8">
<meta name="viewport" content="width=device-width, initial-scale=1">
<title>Add nodes</title>
<%@include file="allcss.jsp"%>
</head>
<body>
	<div class="container">
		<%@include file="Navbar.jsp"%>
		<h2>Fill the details</h2>

		<form action="SaveNoteServlet" method="post">
			<div class="mb-3">
				<label for="title">Note title</label>
				 <input required type="text" class="form-control" name="title" id="title">
			</div>
			<div>
				<label for="content">Note content</label>
				<textarea name="content" id="content" class="form-control" placeholder="Enter your content" style="height:300px;">
				</textarea>		
			</div>
			<button type="submit" class="btn btn-primary">Add</button>
		</form>
	</div>
</body>
</html>