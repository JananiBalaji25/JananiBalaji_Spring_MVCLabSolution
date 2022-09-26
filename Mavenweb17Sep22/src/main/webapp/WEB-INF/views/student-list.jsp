<%@ page language="java" contentType="text/html; charset=ISO-8859-1"
	pageEncoding="ISO-8859-1"%>
<%@ taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core"%>>
<!DOCTYPE html>
<html>
<head>
<meta charset="ISO-8859-1">
<title>Insert title here</title>
<meta charset="utf-8">
<meta name="viewport" content="width=device-width, initial-scale=1">
<link rel="stylesheet"
	href="https://cdn.jsdelivr.net/npm/bootstrap@4.6.1/dist/css/bootstrap.min.css">
<script
	src="https://cdn.jsdelivr.net/npm/jquery@3.6.0/dist/jquery.slim.min.js"></script>
<script
	src="https://cdn.jsdelivr.net/npm/popper.js@1.16.1/dist/umd/popper.min.js"></script>
<script
	src="https://cdn.jsdelivr.net/npm/bootstrap@4.6.1/dist/js/bootstrap.bundle.min.js"></script>
<style>
.data {
	font-size: large;
	color: red;
	font-family: 'Arial', ' Helvetica', 'sans-serif';
}
</style>

</head>
<body>
	<div class="container p-3 my-3 bg-dark text-white">
		<h1 style="text-align: center;">Lab 5 Assignment</h1>
		<hr style="background-color: red; height: 1px;">
		<h3 style="text-align: center;">Student Fest</h3>
		<hr style="background-color: red; height: 1px;">
		<p>
			<a href="students/list" class="btn btn-light">Participents
				School_fest</a> <a href="showStudentForm" class="btn btn-light">Add
				Participent</a>
		</p>
		<hr style="background-color: rgb(255, 0, 0); height: 1px;">
	</div>

	<div class="container">
		<h2>All Participants</h2>
		<p>list of all Partcipants</p>
		<table class="table data">
			<thead>
				<tr>
					<th>S.No</th>
					<th>Name</th>
					<th>Department</th>
					<th>Country</th>
					<th>Action</th>
				</tr>
			</thead>
			<c:forEach var="student" items="${students}" varStatus="c">
				<tbody>
					<tr>
						<td>${c.count}</td>
						<td>${student.name}</td>
						<td>${student.department}</td>
						<td>${student.country}</td>
						<td><a href="update?id=${student.id}" class="btn btn-dark">Update</a> 
						    <a href="delete?id=${student.id}" class="btn btn-danger" onclick="if (!(confirm('Are you sure you want to delete this student?'))) return false">delete</a></td>


					</tr>
				</tbody>
			</c:forEach>
		</table>
	</div>
</body>
</html>