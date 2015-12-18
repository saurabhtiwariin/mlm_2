<%@ page language="java" contentType="text/html; charset=UTF-8"
	pageEncoding="UTF-8"%>

<%@ include file="../../layout/taglib.jsp"%>


<h2 class="sub-header">Bank Details Table</h2>
<div class="table-responsive">
	<table class="table table-striped">
		<thead>
			<tr>
				<th>ID</th>
				<th>ACCOUNT HOLDER NAME</th>
				<th>ACCOUNT NO</th>
				<th>ACCOUNT TYPE</th>
				<th>BRANCH</th>
				<th>IFSC</th>
				<th>BANKNAME</th>
				<th>CARD NO</th>
				<th>USER ID</th>
			</tr>
		</thead>
		<tbody>
			<c:forEach items="${bankDetailsList}" var="bankDetails">
				<form:form commandName="bankDetails">
					<tr>
						<td><form:input path="id" value="${bankDetails.id }" /></td>
						<form:errors path="id" />

						<td><form:input path="accountNo" value="${bankDetails.accountNo }" /></td>
						<form:errors path="accountNo" />

						<td><form:input path="bankName" value="${bankDetails.bankName }" /></td>
						<form:errors path="bankName" />
						
						<td><form:input path="accountType" value="${bankDetails.accountType }" /></td>
						<form:errors path="accountType" />

						<td><form:input path="accountHolderName" value="${bankDetails.accountHolderName }" /></td>
						<form:errors path="accountHolderName" />

						<td><form:input path="bankBranch" value="${bankDetails.bankBranch }" /></td>
						<form:errors path="bankBranch" />

						<td><form:input path="bankIFSC" value="${bankDetails.bankIFSC }" /></td>
						<form:errors path="bankIFSC" />

						<td><form:input path="cardNo" value="${bankDetails.cardNo }" /></td>
						<form:errors path="cardNo" />

						<td><form:input path="user.id" value="${bankDetails.user.id}" /></td>
						<form:errors path="user.id" />

						<td><input type="submit" value="Update" class="btn btn-gray5" /></td>
					</tr>
				</form:form>

			</c:forEach>
		</tbody>
	</table>
</div>


<!-- <!-- <script type="text/javascript">
	$(document).ready(function() {

		$("#commitDiv").focusout(function(event) {
		}, function(event) {
			var st = $("#statusId").val();
			$("#statusDiv").load("/admin/allStatuses.html", {
				"st" : st
			});
		});

	});
</script>

 -->

<%-- 						<td><form:input  value="${accept.id }" path="id"/></td>
						<td><form:input path="amount" value="${accept.amount}" /></td>
						<td><form:input path="confDate" value="${accept.confDate}" /></td>
						<td><form:input path="reqDate" value="${accept.reqDate}" /></td>
						<td><form:input path="commit" value="${accept.commit.id}" /></td>
						<td><form:input path="status" value="${accept.status.id}" /></td>
						<td><form:input path="user" value="${accept.user.id}" /></td>
 --%>
<%-- 
<c:forEach items="${accepts}" var="accept">
				<tr>
					<td><c:out value="${accept.id }" /></td>
					<td><c:out value="${accept.amount }" /></td>
					<td><c:out value="${accept.confDate }" /></td>
					<td><c:out value="${accept.reqDate }" /></td>
					<td><c:out value="${accept.commit.id }" /></td>
					<td><c:out value="${accept.status.name }" /></td>
					<td><c:out value="${accept.user.id }" /></td>
				</tr>
			</c:forEach> --%>

<%--  						<td><input type="text" name="id" value="${accept.id }"  /></td>
						<td><input type="text" name="amount" value="${accept.amount}" /></td>
						<td><input type="text" name="confDate" value="${accept.confDate}" /></td>
						<td><input type="text" name="reqDate" value="${accept.reqDate}" /></td>
						<td><input type="text" name="commit" value="${accept.commit.id}" /></td>
						<td><input type="text" name="status" value="${accept.status.id}" /></td>
						<td><input type="text" name="user" value="${accept.user.id}" /></td>
			 --%>