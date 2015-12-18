<%@ page language="java" contentType="text/html; charset=UTF-8"
	pageEncoding="UTF-8"%>

<%@ include file="../../layout/taglib.jsp"%>


<form:form commandName="accept">
	<c:if test="${success eq true}">
		<div class="alert alert-success">Accept saved successfully!</div>
	</c:if>

	<div class="myClass">

		<table width="50%">

			<tr>
				<td align="right"><b>Ewallet Balance :</b></td>
				<td><input name="" type="text"
					value='<c:out value="${user.balance }"/>' readonly="readonly" id=""
					style="width: 92%;" /></td>
			</tr>
			<tr>
				<td align="right"><b>Withdraw Amount :</b></td>
				<td><form:input path="amount" style="width: 92%;" /> <form:errors
						path="amount" /></td>
			</tr>

			<tr>
				<td align="right"><b>Account Holder Name :</b></td>
				<td><input name="" type="text"
					value='<c:out value="${user.bankDetails.accountHolderName}"/>'
					readonly="readonly" id="" style="width: 92%;" /></td>
			</tr>
			<tr>
				<td align="right"><b>Bank Name :</b></td>
				<td><input name="" type="text"
					value='<c:out value="${user.bankDetails.bankName}"/>'
					readonly="readonly" id="" style="width: 92%;" /></td>
			</tr>
			<tr>
				<td align="right"><b>Bank Branch :</b></td>
				<td><input name="" type="text"
					value='<c:out value="${user.bankDetails.bankBranch}"/>'
					readonly="readonly" id="" style="width: 92%;" /></td>
			</tr>
			<tr>
				<td align="right"><b>Bank A/C :</b></td>
				<td><input name="" type="text"
					value='<c:out value="${user.bankDetails.accountNo}"/>'
					readonly="readonly" id="" style="width: 92%;" /></td>
			</tr>
			<tr>
				<td align="right"><b>IFSC Code :</b></td>
				<td><input name="" type="text"
					value='<c:out value="${user.bankDetails.bankIFSC}"/>'
					readonly="readonly" id="" style="width: 92%;" /></td>
			</tr>
			<tr>
				<td align="right"><b>Account type :</b></td>
				<td><input name="" type="text"
					value='<c:out value="${user.bankDetails.accountType}"/>'
					readonly="readonly" id="" style="width: 92%;" /></td>
			</tr>

			<tr>
				<td align="right"><b></b></td>
				<td><input type="submit" name="" value="Withdraw Balance" id=""
					class="btn btn-gray5" /></td>
			</tr>
		</table>
		<br /> <br />
	</div>

</form:form>
