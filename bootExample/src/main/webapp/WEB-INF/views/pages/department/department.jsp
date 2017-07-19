<%@ page language="java" contentType="text/html; charset=UTF-8"
	pageEncoding="UTF-8"%>
<%@ taglib uri="http://tiles.apache.org/tags-tiles" prefix="tiles"%>
<%@ taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core"%>
<%@ taglib prefix="sf" uri="http://www.springframework.org/tags/form"%>


<!-- Content Wrapper. Contains page content -->
<div class="content-wrapper">
	<p style="display: none;">
		<span id="lrow">1</span><span id="lcol"></span>
	</p>
	<!-- Content Header (Page header) -->
	<section class="content-header">
		

	</section>

	<!-- Main content -->
	<section class="content">
		<!-- USER LIST FORM -->
		<div class="box">
			<div class="box-header">
				<h3 class="box-title">Department List</h3>
			</div>
			<div class="box-body">
				<table id="departments" class="table table-bordered table-hover">
					<thead>
						<tr>
							<th>Name</th>
							<th>Description</th>
							<th>Employee</th>

						</tr>
					</thead>

					<tbody>
						<c:forEach var="department" items="${ departments }">
							<tr class="departments"
								id="<c:out value="${department.departmentId}"/>">
								<td><c:out value="${department.name}" /></td>
								<td><c:out value="${department.description}" /></td>								
								<td><c:out value="${department.employeeBean.name} ${department.employeeBean.surname}" /></td>


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
			<sf:form method="post" id="addDepartment"
				action="${pageContext.request.contextPath}/createDepartment"
				commandName="department" class="form-horizontal">
				<div class="box-body">

					<input type="hidden" id="departmentId" name="departmentId" value="">


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
						<label class="col-md-2 control-label">Description</label>
						<div class="col-sm-10">
							<input type="text" class="form-control" path="description"
								id="description" name="description"
								placeholder="Description" 
								data-error="* Enter Description" required>
						</div>
					</div>
					
					<div class="form-group">
						<label for="inputRole" class="col-md-2 control-label">Employee
						</label>
						<div class="col-md-10">
							<select class="form-control" path="employeeId"
								 name="employeeId"
								placeholder="Employee" id="employeeId"
								data-error="*Choose Employee" required>
								<option selected disabled>Choose Employee</option>
								<c:forEach var="employee" items="${ employees }">
									<option
										value="<c:out value = "${employee.employeeId}" />">
										<c:out value="${employee.name} ${employee.surname}" />
									</option>
								</c:forEach>
							</select>
						</div>
					</div>


				</div>
				<!-- /.box-body -->
				<div class="box-footer">
					<button id="editButton" type="submit" name="action" value="edit"
						class="btn btn-warning pull-left" disabled>Edit</button>
					<button id="deleteButton" type="submit" name="action" value="delete" style="margin-left: 5px;"
						class="btn btn-danger pull-left" disabled>Delete</button>
						
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
