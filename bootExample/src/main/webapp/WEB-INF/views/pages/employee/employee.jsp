<%@ page language="java" contentType="text/html; charset=UTF-8"
	pageEncoding="UTF-8"%>
<%@ taglib uri="http://tiles.apache.org/tags-tiles" prefix="tiles"%>
<%@ taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core"%>
<%@ taglib prefix="sf" uri="http://www.springframework.org/tags/form"%>


<!-- Content Wrapper. Contains page content -->
<div class="content-wrapper">
	<p style="display: none;">
		<span id="lrow">0</span><span id="lcol"></span>
	</p>
	<!-- Content Header (Page header) -->
	<section class="content-header">

	</section>

		<!-- Main content -->
	<section class="content">
		<!-- EMPLOYEE LIST FORM -->
		<div class="box">
			<div class="box-header">
				<h3 class="box-title">Employee List</h3>
			</div>
			<div class="box-body">
				<table id="employees" class="table table-bordered table-hover">
					<thead>
						<tr>
							<th>Name</th>
							<th>Surname</th>
							<th>Salary</th>

						</tr>
					</thead>

					<tbody>
						<c:forEach var="employee" items="${ employees }">
							<tr class="employees"
								id="<c:out value="${employee.employeeId}"/>">
								<td><c:out value="${employee.name}" /></td>
								<td><c:out value="${employee.surname}" /></td>
								<td><c:out value="${employee.salary}" /></td>
							</tr>
						</c:forEach>
					</tbody>
				</table>
			</div>
		</div>
		<!-- Horizontal Form -->
		<div class="box box-default">

			<!-- /.box-header -->
			<!-- form start -->
			<sf:form method="post" id="addEmployee"
				action="${pageContext.request.contextPath}/createEmployee"
				commandName="employee" class="form-horizontal">
				<div class="box-body">

					<input type="hidden" id="employeeId" name="employeeId" value="">

					<div class="form-group">
						<label class="col-md-2 control-label">Name</label>
						<div class="col-sm-10">
							<input type="text" class="form-control" path="name"
								id="name" name="name"
								placeholder="Name" 
								data-error="* Enter Name" required>
						</div>
					</div>
					
					<div class="form-group">
						<label class="col-md-2 control-label">Surname</label>
						<div class="col-sm-10">
							<input type="text" class="form-control" path="surname"
								id="surname" name="surname"
								placeholder="surname" 
								data-error="* Enter Surname" required>
						</div>
					</div>
					
					<div class="form-group">
						<label class="col-md-2 control-label">Salary</label>
						<div class="col-sm-10">
							<input type="number" class="form-control" path="salary"
								id="salary" name="salary"
								placeholder="Salary"
								data-error="* Enter Salary" required>
						</div>
					</div>


				</div>
				<!-- /.box-body -->
				<div class="box-footer">
					<button id="editButton" type="submit" name="action" value="edit"
						class="btn btn-warning pull-left" disabled>Edit</button>
					<button id="deleteButton" type="submit" name="action" value="delete" style="margin-left: 5px;"
						class="btn btn-danger pull-left" disabled>Delet</button>
						
					<button id="resetButton" type="reset" style="margin-left: 5px;" class="btn pull-left" >Clear
						</button>
					<button id="addButton" type="submit" name="action" value="create"
						class="btn btn-info pull-right">Save</button>
				</div>
				<!-- /.box-footer -->
			</sf:form>
		</div>

	</section>
	<!-- /.content -->

</div>
<!-- /.content-wrapper -->
