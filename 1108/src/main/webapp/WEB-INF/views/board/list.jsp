<%@ page language="java" contentType="text/html; charset=UTF-8"
	pageEncoding="UTF-8"%>
<%@ taglib uri="http://java.sun.com/jsp/jstl/core" prefix="c"%>
<%@include file="../includes/header.jsp"%>

<!-- Begin Page Content -->
<div class="container-fluid">

	<!-- Page Heading -->
	<h1 class="h3 mb-2 text-gray-800">List</h1>

	<!-- DataTales Example -->
	<div class="card shadow mb-4">
		<div class="card-header py-3">
			<h6 class="m-0 font-weight-bold text-primary">List</h6>
		</div>
		<div class="card-body">
			<div class="table-responsive">
				<table class="table table-bordered" id="dataTable" width="100%"
					cellspacing="0">
					<thead>
						<tr>
							<th>BNO</th>
							<th>Title</th>
							<th>Writer</th>
						</tr>
					</thead>
					<tbody>
						<c:forEach items="${list}" var="board">
							<tr>
								<td><c:out value="${board.bno}"></c:out></td>
								<td><a class='bnoLink' href="<c:out value="${board.bno}"></c:out>"><c:out value="${board.title}"></c:out></a></td>
								<td><c:out value="${board.writer}"></c:out></td>
							</tr>
						</c:forEach>
					</tbody>
				</table>
			</div>
		</div>
	</div>

	<div style="display: flex; justify-content: space-around" class="pageDiv">
		<ul class="pagination">
		
		<c:if test="${pg.prev}">
			<li class="page-item"><a class="page-link" href="${pg.start-1}">Previous</a></li>		
		</c:if>
		
		<c:forEach begin="${pg.start}" end="${pg.end}" var="num">
			<li class="page-item"><a class="page-link" href="${num}">${num}</a></li>
		</c:forEach>
		
		<c:if test="${pg.next}">
			<li class="page-item"><a class="page-link" href="${pg.end+1}">Next</a></li>
		</c:if>
		
		</ul>
	</div>
	
	<div class="input-group">
		<select id="stype" style="margin-right: 5px">
			<option value="T" ${pg.dto.type == "T" ? "selected" : ""}>제목</option>
			<option value="C" ${pg.dto.type == "C" ? "selected" : ""}>내용</option>
			<option value="W" ${pg.dto.type == "W" ? "selected" : ""}>작성자</option>
			<option value="TC" ${pg.dto.type == "TC" ? "selected" : ""}>제목+내용</option>
			<option value="CW" ${pg.dto.type == "CW" ? "selected" : ""}>내용+작성자</option>
			<option value="TCW" ${pg.dto.type == "TCW" ? "selected" : ""}>ALL</option>
		</select>
	
		<input type="text" id="skeyword" value="${pg.dto.keyword}" style="margin-right: 5px">	
	
		<button id="searchBt" class="btn btn-primary">검색</button>
	</div>

	<form method="GET" id="f1">
		<input type="hidden" name="page" value="${pg.dto.page}"> 
		<input type="hidden" name="amount" value="${pg.dto.amount}"> 
		<input type="hidden" name="type" value="${pg.dto.type}"> 
		<input type="hidden" name="keyword" value="${pg.dto.keyword}">
	</form>

</div>
<!-- /.container-fluid -->

<script>

	var msg = '<c:out value="${msg}"/>';
		
	if(msg==='SUCCESS')	alert("작업이 완료되었습니다!");
	
</script>


<script type="text/javascript">
	$(document).ready(function() {
		var f1 = $("#f1");

		$(".bnoLink").on("click", function(e) {
			e.preventDefault();
			var bnoValue = $(this).attr("href");
				
			f1.append("<input type=''hidden name='bno' value='"+bnoValue+"'>");
			f1.attr("action", "/board/read");
			/* f1.attr("target", "_blank"); */
			 f1.submit();
		});
		
		
		$("#searchBt").on("click", function() {
			$("input[name='page']").val(1);

			var inputkeyword = $("#skeyword").val();

			$("input[name='keyword']").val(inputkeyword);

			var inputtype = $("#stype option:selected").val();
			$("input[name='type']").val(inputtype);
			console.log("inputkeyword:" + inputkeyword)
			console.log("inputtype:" + inputtype)

			f1.submit();
		});
		
		$(".pageDiv ul").on("click","a",function(e){
			e.preventDefault();
			var num = $(this).attr("href");
			$("input[name='page']").val(num);
			f1.submit();
		});
	})
</script>

<%@include file="../includes/footer.jsp"%>
