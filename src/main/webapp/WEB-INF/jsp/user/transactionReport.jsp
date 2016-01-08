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
					<i class="fa fa-rocket faa-pulse animated  "></i>TRANSACTION REPORT
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
						<th>ID</th>
						<th>AMOUNT</th>
						<th>BALANCE<br>(before transaction)
						</th>
						<th>BALANCE<br>(after transaction)
						</th>
						<th>Date</th>
						<th>REMARK</th>
					</tr>
					<c:forEach items="${user.transactions}" var="transaction">
						<tr>
							<td><c:out value="${transaction.id}" /></td>
							<td><c:out value="${transaction.amount}" /></td>
							<td><c:out value="${transaction.balBeforeTran}" /></td>
							<td><c:out value="${transaction.balAfterTran}" /></td>
							<td><c:out value="${transaction.dateTransaction}" /></td>
							<td><c:out value="${transaction.remark}" /></td>
						</tr>
					</c:forEach>

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
				<p>
					<br> <br> <br>
				</p>
			</div>

		</div>

	</div>
</section>

