<%@ page language="java" contentType="text/html; charset=UTF-8"
	pageEncoding="UTF-8"%>

<%@ include file="../../layout/taglib.jsp"%>


<h2 class="sub-header">Transaction Table</h2>
<div class="table-responsive">
	<table class="table table-striped">
		<thead>
			<tr>
				<th>ID</th>
				<th>AMOUNT</th>
				<th>AFTER TRANSACTION</th>
				<th>Date</th>
				<th>REMARK</th>
				<th>ACCEPT ID</th>
				<th>BANK ID</th>
				<th>STATUS ID</th>
				<th>USER ID</th>
			</tr>
		</thead>
		<tbody>
			<c:forEach items="${transactions}" var="transaction">

				<form:form commandName="transaction">
					<tr>
						<td><form:input path="id" value="${transaction.id }" /></td>
						<form:errors path="id" />

						<td><form:input path="amount" value="${transaction.amount}" /></td>
						<form:errors path="amount" />

						<td><form:input path="afterTransactionAmount"
								value="${transaction.afterTransactionAmount}" /></td>
						<form:errors path="afterTransactionAmount" />

						<td><form:input path="dateTransaction"
								value="${transaction.dateTransaction}" /></td>
						<form:errors path="dateTransaction" />

						<td><form:input path="remark" value="${transaction.remark}" /></td>
						<form:errors path="remark" />

						<td><form:input path="accept.id"
								value="${transaction.accept.id}" /></td>
						<form:errors path="accept.id" />

						<td><form:input path="bankDetails.id"
								value="${transaction.bankDetails.id}" /></td>
						<form:errors path="bankDetails.id" />


						<td><form:input path="status.id"
								value="${transaction.status.id}" /></td>
						<form:errors path="status.id" />

						<td><form:input path="user.id" value="${transaction.user.id}" /></td>
						<form:errors path="user.id" />

						<td><input type="submit" value="Update" class="btn btn-gray5" /></td>
					</tr>
				</form:form>

			</c:forEach>
		</tbody>
	</table>
</div>
