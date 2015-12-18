<%@ page language="java" contentType="text/html; charset=UTF-8"
	pageEncoding="UTF-8"%>

<%@ include file="../../layout/taglib.jsp"%>


<h2 class="sub-header">Commit Table</h2>
<div class="table-responsive">
	<table class="table table-striped">
		<thead>
			<tr>
				<th>ID</th>
				<th>AMOUNT</th>
				<th>COMMIT DATE</th>
				<th>CONFIRMATION Date</th>
				<th>STATUS ID</th>
				<th>USER ID</th>
			</tr>
		</thead>
		<tbody>
			<c:forEach items="${commits}" var="commit">

				<%-- action="/admin/accept/update/${accept.id}.html" method="post" --%>

				<form:form commandName="commit">
					<tr>
						<td><form:input path="id" value="${commit.id }" /></td>
						<form:errors path="id" />

						<td><form:input path="amount" value="${commit.amount}" /></td>
						<form:errors path="amount" />

						<td><form:input path="dateCommit"
								value="${commit.dateCommit}" /></td>
						<form:errors path="dateCommit" />

						<td><form:input path="dateConf" value="${commit.dateConf}" /></td>
						<form:errors path="dateConf" />

						<td><form:input path="status.id" value="${commit.status.id}" /></td>
						<form:errors path="status.id" />

						<td><form:input path="user.id" value="${commit.user.id}" /></td>
						<form:errors path="user.id" />

						<td><input type="submit" value="Update" class="btn btn-gray5" /></td>
					</tr>
				</form:form>

			</c:forEach>
		</tbody>
	</table>
</div>
