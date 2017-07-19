<%@ page language="java" contentType="text/html; charset=UTF-8"
	pageEncoding="UTF-8"%>
<%@ taglib uri="http://tiles.apache.org/tags-tiles" prefix="tiles"%>
<%@ taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core"%>
<%@ taglib prefix="sf" uri="http://www.springframework.org/tags/form"%>

<!-- Left side column. contains the sidebar -->
<aside class="main-sidebar">
	<!-- sidebar: style can be found in sidebar.less -->
	<section class="sidebar">

		<!-- sidebar menu: : style can be found in sidebar.less -->
		<ul class="sidebar-menu">

			<li id="l0"><a href="<c:url value='/employee'/>"><i
					class="fa fa-film"></i><span>Employee</span><i></i> </a></li>

			<li id="l1"><a href="<c:url value='/department'/>"><i
					class="fa fa-pencil-square-o"></i><span>Department</span><i></i> </a></li>
			<li id="l2"><a href="<c:url value='/meetings'/>"><i
					class="fa fa-clipboard"></i><span>Meetings</span><i></i> </a></li>
		</ul>

	</section>
	<!-- /.sidebar -->
</aside>