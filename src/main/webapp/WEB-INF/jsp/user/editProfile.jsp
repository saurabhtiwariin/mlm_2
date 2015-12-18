<%@ page language="java" contentType="text/html; charset=UTF-8"
	pageEncoding="UTF-8"%>

<%@ include file="../../layout/taglib.jsp"%>

<div class="myClass">

	<table width="100%">
		<tr>
			<td colspan="4" align="center">
				<h2 style="text-decoration: underline; color: Red">Membership
					Details</h2> <br />
			</td>
		</tr>
		<tr>
			<td align="right"><b>User ID :</b></td>
			<td><input type="text" value="<c:out value="${user.id}"></c:out>" readonly="readonly"
				style="width: 92%;" /></td>
			<td align="right"><b>User Name :</b></td>
			<td><input type="text" value="<c:out value="${user.name}"></c:out>" readonly="readonly"
				style="width: 92%;" /></td>
		</tr>
		<tr>
			<td align="right"><b>Sponser ID :</b></td>
			<td><input type="text" value="<c:out value="${user.sponser.id}"></c:out>" readonly="readonly"
				style="width: 92%;" /></td>
			<td align="right"><b>Sponser Name :</b></td>
			<td><input type="text" value="<c:out value="${user.sponser.name}"></c:out>" readonly="readonly"
				style="width: 92%;" /></td>
		</tr>
		<tr>
			<td align="right"><b>Date of Joining :</b></td>
			<td><input type="text" value="<c:out value="${user.doj}"></c:out>" readonly="readonly"
				style="width: 92%;" /></td>
			<td align="right"><b>Upload Profile Picture :</b></td>
			<td><input type="file" value="" style="width: 92%;" /></td>
		</tr>

		<tr>
			<td colspan="4" align="center"><br />
				<h2 style="text-decoration: underline; color: Red">Personal
					Details</h2> <br /></td>
		</tr>
		<tr>
			<td align="right"><b>Full Name :</b></td>
			<td><input type="text" value="<c:out value="${user.name}"></c:out>" readonly="readonly"
				style="width: 92%;" /></td>
			<td align="right"><b>Gender :</b></td>
			<td><input type="text" value="<c:out value="${user.gender}"></c:out>" readonly="readonly"
				style="width: 92%;" /></td>
		</tr>
		<tr>
			<td align="right"><b>Address :</b></td>
			<td><input type="text" value="<c:out value="${user.address}"></c:out>" readonly="readonly"
				style="width: 92%;" /></td>
			<td align="right"><b>City :</b></td>
			<td><input type="text" value="<c:out value="${user.city}"></c:out>" readonly="readonly"
				style="width: 92%;" /></td>
		</tr>
		<tr>
			<td align="right"><b>State :</b></td>
			<td><input type="text" value="<c:out value="${user.state}"></c:out>" readonly="readonly"
				style="width: 92%;" /></td>
			<td align="right"><b>Country :</b></td>
			<td><input type="text" value="<c:out value="${user.country}"></c:out>" readonly="readonly"
				style="width: 92%;" /></td>
		</tr>

		<tr>
			<td colspan="4" align="center">
				<h2 style="text-decoration: underline; color: Red">Contact
					Details</h2> <br />
			</td>
		</tr>
		<tr>
			<td align="right"><b>Mobile No. :</b></td>
			<td><input type="text" value="<c:out value="${user.mobNo}"></c:out>" readonly="readonly"
				style="width: 92%;" /></td>
			<td align="right"><b>Email :</b></td>
			<td><input type="text" value="<c:out value="${user.email}"></c:out>" readonly="readonly"
				style="width: 92%;" /></td>
		</tr>
		<tr>
			<td colspan="4" align="center">
				<h2 style="text-decoration: underline; color: Red">Bank Details :</h2>
				<br />
			</td>
		</tr>
		
		<form:form commandName="bankDetails">
			<c:if test="${success eq true}">
				<div class="alert alert-success">Bank Details Updated !</div>
			</c:if>
			<tr>
				<td align="right"><b>Bank Name :</b></td>
				<td><form:input path="bankName" style="width: 92%;" /></td>
				<td><form:errors path="bankName" /></td>
				<td align="right"><b>Bank Branch :</b></td>
				<td><form:input path="bankBranch" style="width: 92%;" /></td>
				<td><form:errors path="bankBranch" /></td>
			</tr>
			<tr>
				<td align="right"><b>Bank A/C :</b></td>
				<td><form:input path="accountNo" style="width: 92%;" /></td>
				<td><form:errors path="accountNo" /></td>
				<td align="right"><b>IFSC Code :</b></td>
				<td><form:input path="bankIFSC" style="width: 92%;" /></td>
				<td><form:errors path="bankIFSC" /></td>
			</tr>
			<tr>
				<td align="right"><b>Account type :</b></td>
				<td><form:select path="accountType" style="width: 93.5%;">
						<form:option value="saving">Savings</form:option>
						<form:option value="current">Current</form:option>
					</form:select></td>
				<td><form:errors path="accountType" /></td>
				<td align="right"><b>ATM Card Number :</b></td>
				<td><form:input path="cardNo" style="width: 92%;" /></td>
				<td><form:errors path="cardNo" /></td>
			</tr>
			<tr>
				<td align="right"><b>Account Holder Name :</b></td>
				<td><form:input path="accountHolderName" style="width: 92%;" /></td>
				<td><form:errors path="accountHolderName" /></td>
			</tr>
			<tr>
				<td colspan="4" align="center"><input type="submit"
					value="Update" class="btn btn-gray5" /> <br /></td>
			</tr>
			
		</form:form>
	</table>
	
	<br />
</div>


<!-- <script type="text/javascript">
	$(document)
			.ready(
					function() {

						$(".registrationForm")
								.validate(
										{
											rules : {
												name : {
													required : true,
													minlength : 3,
													remote : {
														url : "<spring:url value='/userRegister/available.html' />",
														type : "get",
														data : {
															username : function() {
																return $(
																		"#name")
																		.val();
															}
														}

													}
												},
												sponser : {
													required : true,
													remote : {
														url : "<spring:url value='/userRegister/availableSponser.html' />",
														type : "post",
														data : {
															userId : function() {
																return $(
																		"#sponser")
																		.val();
															}
														}

													}
												},
												email : {
													required : true,
													email : true
												},
												password : {
													required : true,
													minlength : 5
												},
												password_again : {
													required : true,
													minlength : 5,
													equalTo : "#password"
												}
											},
											highlight : function(element) {
												$(element).closest(
														'.form-group')
														.removeClass(
																'has-success')
														.addClass('has-error');
											},
											unhighlight : function(element) {
												$(element)
														.closest('.form-group')
														.removeClass(
																'has-error')
														.addClass('has-success');
											},
											messages : {
												name : {
													remote : "Such username already exists!"
												},
												sponser : {
													remote : "Such Sponser do not exist!"
												}
											}
										});
					});
</script> -->