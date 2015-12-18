<%@ page language="java" contentType="text/html; charset=UTF-8"
	pageEncoding="UTF-8"%>

<%@ include file="../../layout/taglib.jsp"%>

<script type="text/javascript">
	$(document).ready(function() {

		$("#secQuesDiv").load('/user/getSecurityQuestion.html');

		$("#secAnsDiv").focusout(function(event) {
		}, function(event) {
			var value = $("#secQuesDiv").val();
			$("#errorDiv").load('/user/checkPassword.html', {
				"pass" : value
			});
		});

	});
</script>

<div class="myClass">

	<table width="50%">
		<!-- 		<tr>
			<td align="right"><b>Security Question:</b></td>
			<td id="secQuesDiv" ></td>
		</tr>
		<tr>
			<td align="right"><b>Enter Security Answer:</b></td>
			<td><div id="secAnsDiv">
					<input type="text" name="secAns" id="secAns"
						style="width: 92%;" />
				</div></td>
			<td><div id="errorDiv"></div></td>
		</tr>
 -->

		<form action="/user/editPassword.html" method="post"
			class=".resetPasswordForm">
			<c:if test="${success eq true}">
				<div class="alert alert-success">Update successfull!</div>
			</c:if>
			<tr>
				<td align="right"><b>New Password :</b></td>
				<td><input type="text" id="password" name="password"
					style="width: 92%;" /></td>
			</tr>
			<tr>
				<td align="right"><b>Confirm Password :</b></td>
				<td><input type="text" name="password_again"
					id="password_again" style="width: 92%;" /></td>
			</tr>
			<tr>
				<td align="right"><b></b></td>
				<td><input type="submit" value="Change Password"
					class="btn btn-gray5" /></td>
			</tr>
		</form>
	</table>
	<br />

</div>


<script type="text/javascript">
	$(document).ready(
			function() {
				$(".resetPasswordForm").validate(
						{
							rules : {
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
								$(element).closest('.form-group').removeClass(
										'has-success').addClass('has-error');
							},
							unhighlight : function(element) {
								$(element).closest('.form-group').removeClass(
										'has-error').addClass('has-success');
							},
							messages : {
							
							}
						});
			});
</script>