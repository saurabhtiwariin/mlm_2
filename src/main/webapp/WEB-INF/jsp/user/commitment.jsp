<%@ page language="java" contentType="text/html; charset=UTF-8"
	pageEncoding="UTF-8"%>

<%@ include file="../../layout/taglib.jsp"%>


<script type="text/javascript">
	$(document).ready(function() {

		$("#sponserDiv").focusout(function(event) {
		}, function(event) {
			var id = $("#sponser").val();
			$("#sponserName").load('/userRegister/availableSponserName.html', {
				"sponserId" : id
			});

		});

		$("#country").focusout(function(event) {
		}, function(event) {
			$("#secQues").load('/userRegister/allSecurityQuestion.html');
		});

	});
</script>


<form:form commandName="commit">
	<c:if test="${success eq true}">
		<div class="alert alert-success">Commitment saved successfully!</div>
	</c:if>
	
	<div class="myClass">
	
	<br />
	
	<table width="50%">
		<tr>
			<td align="right"><b>Commitment Amount :</b></td>
			<td>
				<form:input path="amount" style="width: 92%;"/>
				<form:errors path="amount" />
			</td> 
			<td></td>
		</tr>
		<tr>
			<td></td>
			<td align="right"><input type="submit" id="submit" name="submit"
				value="Make Commitment" class="btn btn-gray5" /></td>
		</tr>
	</table>

	<br />
	<br />
	<input type="hidden" name="ctl00$ContentPlaceHolder1$hduid"
		id="ContentPlaceHolder1_hduid" value="1685" />
	<br />
	<br />

	 	</div>
 
</form:form>

<script type="text/javascript">
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
</script>