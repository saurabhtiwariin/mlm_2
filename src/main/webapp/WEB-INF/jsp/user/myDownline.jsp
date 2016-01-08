<%@ page language="java" contentType="text/html; charset=UTF-8"
	pageEncoding="UTF-8"%>

<%@ include file="../../layout/taglib.jsp"%>

  <style type='text/css'>
 
table {
    border: 1px solid black;
    width:100%;
}
th {
    border: 1px solid black;
    padding: 5px;
    background-color:grey;
    color: white;
}
td {
background-color:white;
    color: black;
    border: 1px solid black;
    padding: 5px;
}
input {
    font-size: 12pt;
    font-family: Calibri;
}
  </style>
  


<!--SERVICES SECTION-->
<section class="for-full-back color-bg-one">
	<div class="container">
		<div class="row text-center">
			<div class="col-md-8 col-md-offset-2 ">
				<h1>
					<i class="fa fa-rocket faa-pulse animated  "></i>MY DOWNLINE
				</h1>

			</div>

		</div>
	</div>
</section>

<!-- SOCIAL STATS SECTION-->
<section>
	<div class="container">
		<div class="row pad-top-botm">



			<div class="form-group" id="dvData">

				<table>
					<tr>
						<th>UID</th>
						<th>Name</th>
						<th>Position</th>
						<th>DOJ</th>
					</tr>
					<c:if test="${not empty user.downlineUsers}">
						<c:forEach items="${user.downlineUsers}" var="downLineUser">
							<tr>
								<td><c:out value="${downLineUser.id}"></c:out></td>
								<td><c:out value="${downLineUser.name}"></c:out></td>
								<td><c:out value="${downLineUser.position}"></c:out></td>
								<td><c:out value="${downLineUser.doj}"></c:out></td>
							</tr>
						</c:forEach>
					</c:if>
				</table>
			</div>
						<script type='text/javascript'>
				//<![CDATA[
				$(function() {
					$("#btnExport").click(
							function(e) {
								window.open('data:application/vnd.ms-excel,'
										+ $('#dvData').html());
								e.preventDefault();
							});
				});//]]>
			</script>

			<div class="form-group">
				<button id="btnExport"
					class="btn btn-success btn-lg wow rotateIn animated "
					data-wow-delay="0.8s">Import To Excel</button>
			</div>
			<div class="form-group">
				<p>
					<br> <br> <br>
				</p>
			</div>
			<div class="form-group">
				<p></p>
			</div>

		</div>

	</div>
</section>

