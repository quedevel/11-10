<%@ page language="java" contentType="text/html; charset=UTF-8"
	pageEncoding="UTF-8"%>
<%@ taglib uri="http://java.sun.com/jsp/jstl/core" prefix="c"%>

<%@include file="../includes/header.jsp"%>

<!-- Begin Page Content -->
<div class="container-fluid">

	<!-- Page Heading -->
	<h1 class="h3 mb-2 text-gray-800">Register</h1>
	<p class="mb-4">
		DataTables is a third party plugin that is used to generate the demo
		table below. For more information about DataTables, please visit the <a
			target="_blank" href="https://datatables.net">official DataTables
			documentation</a>.
	</p>

	<!-- DataTales Example -->
	<div class="card shadow mb-4">
		<div class="card-header py-3">
			<h6 class="m-0 font-weight-bold text-primary">DataTables Example</h6>
		</div>
		<div class="card-body">
			<form:form method="POST" modelAttribute="vo">
				<div class="col-sm-6 mb-3 mb-sm-0">
					<input type="text" class="form-control form-control-user"
						name="title" placeholder="Title">
					<form:errors path="title"></form:errors>
				</div>
				<br>
				<div class="col-sm-6">
					<input type="text" class="form-control form-control-user"
						name="writer" placeholder="Writer">
				</div>
				<br>
				<div class="col-sm-6">
					<textarea class="form-control form-control-user" name="content"
						placeholder="Content"></textarea>
					<form:errors path="content"></form:errors>
				</div>
				<br>
				<div style="padding-left: 12px;" !important>
					<button class="btn btn-primary">Register</button>
				</div>
				<br>
				<div style="padding-left: 12px" !important>
					<button class="btn btn-danger" >Cancel</button>
				</div>
			</form:form>
		</div>
	</div>


</div>
<!-- /.container-fluid -->

<script type="text/javascript">
	$(document).ready(function() {
		console.log("ready......")
	})
</script>

<%@include file="../includes/footer.jsp"%>
