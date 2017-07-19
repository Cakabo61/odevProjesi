<%@ page language="java" contentType="text/html; charset=UTF-8"
	pageEncoding="UTF-8"%>
<%@ taglib uri="http://tiles.apache.org/tags-tiles" prefix="tiles"%>
<%@ taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core"%>
<%@ taglib prefix="sf" uri="http://www.springframework.org/tags/form"%>

<!DOCTYPE html PUBLIC "-//W3C//DTD HTML 4.01 Transitional//EN" "http://www.w3.org/TR/html4/loose.dtd">
<html>
<head>

<meta http-equiv="X-UA-Compatible" content="IE=edge">

<link href="/static/css/main.css"
	rel="stylesheet" type="text/css" />
<!-- Tell the browser to be responsive to screen width -->
<meta
	content="width=device-width, initial-scale=1, maximum-scale=1, user-scalable=no"
	name="viewport">

<!-- Bootstrap 3.3.5 -->
<link rel="stylesheet"
	href="/static/bootstrap/css/bootstrap.css">
<link rel="stylesheet"
	href="/static/css/main.css">
<!-- Font Awesome -->
<link rel="stylesheet"
	href="https://maxcdn.bootstrapcdn.com/font-awesome/4.4.0/css/font-awesome.min.css">

<!-- Select2 -->
<link rel="stylesheet"
	href="/static/plugins/select2/select2.min.css">

<!-- Ionicons -->
<link rel="stylesheet"
	href="https://code.ionicframework.com/ionicons/2.0.1/css/ionicons.min.css">

<!-- Theme style -->
<link rel="stylesheet"
	href="/static/dist/css/MacisCORE.min.css">

<!-- AdminLTE Skins. Choose a skin from the css/skins
     folder instead of downloading all of them to reduce the load. -->
<link rel="stylesheet"
	href="/static/dist/css/skins/skin-green.css">

<tiles:insertAttribute name="style"></tiles:insertAttribute>

<title><tiles:insertAttribute name="title"></tiles:insertAttribute></title>
</head>
<body class="hold-transition skin-green sidebar-mini">
	<div class="wrapper">
		<div>
			<tiles:insertAttribute name="header"></tiles:insertAttribute>
		</div>

		<div>
			<tiles:insertAttribute name="sidebar"></tiles:insertAttribute>
		</div>		

		<div>
			<tiles:insertAttribute name="content"></tiles:insertAttribute>
		</div>

		<div>
			<tiles:insertAttribute name="footer"></tiles:insertAttribute>
		</div>

	</div>
	<!-- jQuery 2.1.4 -->
	<script
		src="/static/plugins/jQuery/jQuery-2.1.4.min.js"></script>
	<!-- Bootstrap 3.3.5 -->
	<script
		src="/static/bootstrap/js/bootstrap.min.js"></script>
	<!-- SlimScroll -->
	<script
		src="/static/plugins/slimScroll/jquery.slimscroll.min.js"></script>
	<!-- FastClick -->
	<script
		src="/static/plugins/fastclick/fastclick.min.js"></script>
	<!-- MacisCORE App -->
	<script
		src="/static/dist/js/app.min.js"></script>
	<!-- Custom Javascript -->
	<script src="/static/dist/js/main.js"></script>
	
	<!-- InputMask -->
	<script
		src="/static/plugins/input-mask/jquery.inputmask.js"></script>
	<script
		src="/static/plugins/input-mask/jquery.inputmask.date.extensions.js"></script>
	<script
		src="/static/plugins/input-mask/jquery.inputmask.extensions.js"></script>
	<!-- Select2 -->
	<script
		src="/static/plugins/select2/select2.full.min.js"></script>
	
	<script
		src="/static/plugins/bootbox/bootbox.min.js"></script>
		
	<!-- Jquery Validator -->
	<script
		src="/static/plugins/jquery-validator/dist/jquery.validate.js"></script>
	<!-- Data Tables -->
	<script
		src="/static/plugins/datatables/jquery.dataTables.min.js"></script>
	<script
		src="/static/plugins/datatables/dataTables.bootstrap.min.js"></script>
		<!-- File Tree for JQuery -->
	
    
    
	<div>
		<tiles:insertAttribute name="script"></tiles:insertAttribute>
	</div>
	<script>
		</script>
</body>
</html>