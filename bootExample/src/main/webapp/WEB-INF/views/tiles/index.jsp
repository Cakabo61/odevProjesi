
<!DOCTYPE HTML>
<%@ taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core"%>
<html>
<head>
<meta http-equiv="Content-Type" content="text/html; charset=ISO-8859-1">
<meta http-equiv="X-UA-Compatible" content="IE=edge">
<meta http-equiv="Pragma" content="no-cache">

<title>Spring Boot | Home</title>

<link href="static/css/bootstrap.min.css" rel="stylesheet">
<link href="static/css/style.css" rel="stylesheet">
</head>
<body>

	<div role="navigation">
		<div class="navbar navbar-inverse">
			<a href="/" class="navbar-brand">Employee</a>
			<div class="navbar-collapse collapse">
				<ul class="nav navbar-nav">
					<li><a href="/department">Department</a></li>
					<li><a href="/meeting">Meeting</a></li>
				</ul>
			</div>
		</div>
	</div>
	

			<div class="container" id="homeDiv">
				<div class="jumbotron text-center">
					<h1>Welcome to Task Manager</h1>
				</div>
			</div>
			<div class="container text-center" id="employeesDiv">
				<h3>Employees</h3>
				<hr>
				<div class="table-responsive">
					<table class="table table-striped table-bordered text-left">
						<thead>
							<tr>
								<th>Id</th>
								<th>Name</th>
								<th>Surname</th>
								<th>Salary</th>
								<th></th>
								<th></th>
							</tr>
						</thead>
						<tbody>
							<c:forEach var="employee" items="${employees}">
								<tr>
									<td>${employee.employeeId}</td>
									<td>${employee.name}</td>
									<td>${employee.surname}</td>
									<td>${employee.salary}</td>
									<td><a href="update-task?id=${employee.employeeId}"><span class="glyphicon glyphicon-pencil"></span></a></td>
									<td><a href="deleteEmployee?id=${employee.employeeId}"><span class="glyphicon glyphicon-trash"></span></a></td>
								</tr>
							</c:forEach>
						</tbody>
					</table>
				</div>
			</div>

	<script src="static/js/jQuery-2.1.4.min.js"></script>    
    <script src="static/js/bootstrap.min.js"></script>
</body>
</html>