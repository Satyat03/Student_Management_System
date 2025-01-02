<!DOCTYPE html>
<%@ taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core"%>

<html lang="en">
<head>
<meta charset="UTF-8">
<meta name="viewport" content="width=device-width, initial-scale=1.0">
<title>Student Enrollment</title>
<link
	href="https://cdn.jsdelivr.net/npm/bootstrap@5.3.3/dist/css/bootstrap.min.css"
	rel="stylesheet"
	integrity="sha384-QWTKZyjpPEjISv5WaRU9OFeRpok6YctnYmDr5pNlyT2bRjXh0JMhjY6hW+ALEwIH"
	crossorigin="anonymous">
<style>
body {
	font-family: 'Arial', sans-serif;
	background: #f9f9f9;
	background-image: url("images/komarov-egor-sevuhbBmZtQ-unsplash.jpg");
	color: #333;
}

.card {
	margin-top: 20px;
	background: rgba(255, 255, 255, 0.9);
	border-radius: 25px;
	box-shadow: 0 8px 32px rgba(0, 0, 0, 0.2);
}

nav {
	background: #fff;
	box-shadow: 0 2px 5px rgba(0, 0, 0, 0.1);
}

nav img {
	height: 50px;
}

nav a button {
	background: #007bff;
	border: none;
	color: white;
	padding: 8px 12px;
	margin: 0 5px;
	border-radius: 5px;
	transition: background 0.3s;
}

nav a button:hover {
	background: #0056b3;
}

h3 {
	text-align: center;
	margin: 20px 0;
	color: #444;
}

form {
	max-width: 600px;
	margin: 0 auto;
	padding: 20px;
}

form .form-outline input, form select {
	border: 1px solid rgba(0, 0, 0, 0.2);
	padding: 10px;
	border-radius: 5px;
	font-size: 14px;
	margin-bottom: 15px;
}

form button {
	background: #007bff;
	color: white;
	border: none;
	padding: 10px;
	width: 100%;
	border-radius: 5px;
	transition: background 0.3s;
}

form button:hover {
	background: #0056b3;
}

.view {
	padding: 20px;
	text-align: center;
}
</style>
</head>
<body>
	<!-- Navigation Bar -->
	<nav class="navbar navbar-expand-lg navbar-light">
		<div class="container-fluid">
			<a class="navbar-brand" href="#">Student Enrollment</a>
			<div class="d-flex">
				<a href="enroll_student"><button>Home</button></a> <a href="#"><button>Students</button></a>
				<a href="#"><button>Fees</button></a> <a href="#"><button>Settings</button></a>
			</div>
		</div>
	</nav>

	<!-- Page Title -->
	<h1 class="text-center" style="margin-bottom: 20px; color: white;">Student
		Details</h1>

	<div class="text-center w-100">
		<form action="search" class="w-100">
			<select class="select form-control-sm border border-primary"
				name="batchNumber">
				<option value="#" slected>Select Batch Number</option>
				<option value="FDJ-160">FDJ-160</option>
				<option value="REG-160">REG-160</option>
				<option value="FDJ-161">FDJ-161</option>
				<option value="REG-161">REG-162</option>
				<option value="FDJ-162">FDJ-162</option>
				<option value="REG-162">REG-162</option>
				<option value="FDJ-163">FDJ-163</option>
				<option value="REG-163">REG-163</option>
				<option value="FDJ-164">FDJ-164</option>
				<option value="REG-164">REG-164</option>
				<option value="FDJ-165">FDJ-165</option>
				<option value="REG-165">REG-165</option>
			</select>
			<button class="btn btn-outline-primary mb-1">Search</button>
		</form>
		<marquee>
			<h1 style="color: red;">${message }</h1>
		</marquee>
	</div>

	<!-- Student Table -->
	<table class="table table-hover table-bordered"
		style="font-size: small; margin-top: 20px; background: rgba(255, 255, 255, 0.9); border-radius: 10px; overflow: hidden;">
		<thead class="table-dark">
			<tr>
				<th>ID</th>
				<th>Student Name</th>
				<th>Student Email</th>
				<th>Age</th>
				<th>College Name</th>
				<th>Course Name</th>
				<th>Batch No</th>
				<th>Mode</th>
				<th>Fees Received</th>
				<th>Actions</th>
			</tr>
		</thead>
		<tbody>
			<c:forEach items="${data}" var="s">
				<tr>
					<td>${s.studentId}</td>
					<td>${s.studentFullName}</td>
					<td>${s.studentEmail}</td>
					<td>${s.studentAge}</td>
					<td>${s.studentCollegeName}</td>
					<td>${s.studentCourse}</td>
					<td>${s.batchNumber}</td>
					<td>${s.batchMode}</td>
					<td>${s.feesPaid}</td>
					<td>
						<div class="btn-group btn-group-sm" role="group"
							aria-label="Actions">
							<a href="payfees"><button class="btn btn-outline-success">Pay
									Fees</button></a> <a href="shiftbatch"><button
									class="btn btn-outline-primary">Shift Batch</button></a> <a
								href="remove"><button class="btn btn-outline-danger">Remove</button></a>
						</div>
					</td>
				</tr>
			</c:forEach>
		</tbody>
	</table>
</body>
</html>
