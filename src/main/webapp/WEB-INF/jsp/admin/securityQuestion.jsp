<%@ page language="java" contentType="text/html; charset=UTF-8"
	pageEncoding="UTF-8"%>

<%@ include file="../../layout/taglib.jsp"%>


<h2 class="sub-header">Security Question Table</h2>
<div class="table-responsive">
	<table class="table table-striped">
		<thead>
			<tr>
				<th>ID</th>
				<th>SecurityQuestion</th>
			</tr>
		</thead>
		<tbody>
			<c:forEach items="${securityQuestions}" var="securityQuestion">

				<form:form commandName="securityQuestion">
					<tr>
						<td><form:input path="id" value="${securityQuestion.id }" /></td>
						<form:errors path="id" />

						<td><form:input path="securityQ" value="${securityQuestion.securityQ}" /></td>
						<form:errors path="securityQ" />

						<td><input type="submit" value="Update" class="btn btn-gray5" /></td>
					</tr>
				</form:form>

			</c:forEach>
		</tbody>
	</table>
</div>
