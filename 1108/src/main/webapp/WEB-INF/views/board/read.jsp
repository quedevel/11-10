<%@ page language="java" contentType="text/html; charset=UTF-8"
	pageEncoding="UTF-8"%>
<%@ taglib uri="http://java.sun.com/jsp/jstl/core" prefix="c"%>

<%@include file="../includes/header.jsp"%>

<!-- Begin Page Content -->
<div class="container-fluid">

	<!-- Page Heading -->
	<h1 class="h3 mb-2 text-gray-800">Read</h1>


	<!-- DataTales Example -->
	<div class="card shadow mb-4">
		<div class="card-header py-3">
			<h6 class="m-0 font-weight-bold text-primary">${board.title}</h6>
			<div class="card-body">
			      <p>${board.content}</p>
			</div>
		</div>
	</div>
	
	
	
<form method="GET" id="f1" action="/board/list">
	<input type="hidden" name="page" value="${dto.page}"> <input
		type="hidden" name="amount" value="${dto.amount}"> <input
		type="hidden" name="type" value="${dto.type}"> <input
		type="hidden" name="keyword" value="${dto.keyword}">
	<button class="btn btn-danger">GO TO LIST</button>
</form>
</div>







</body>
</html>