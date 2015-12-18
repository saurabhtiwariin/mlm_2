<%@ page language="java" contentType="text/html; charset=UTF-8"
	pageEncoding="UTF-8"%>
<%@ include file="../layout/taglib.jsp"%>

<script type="text/javascript">
	$(document).ready(function() {

		$("#sponserDiv").focusout(function(event) {
		}, function(event) {
			var id = $("#sponser").val();
			$("#sponserName").load('/register/availableSponserName.html', {
				"sponserId" : id
			});

		});

		$("#country").focusout(function(event) {
		}, function(event) {
			$("#secQues").load('/register/allSecurityQuestion.html');
		});

	});
</script>


<form:form commandName="user"
	cssClass="form-horizontal registrationForm">

	<c:if test="${success eq true}">
		<div class="alert alert-success">Registration successfull!</div>
	</c:if>

	<div class="form-group" id="sponserDiv">
		<label for="sponser" class="col-sm-2 control-label">Sponser
			Id:</label>
		<div class="col-sm-10">
			<!-- 	<input type="text" name="sponser.id" id="sponser" cssClass="form-control" />-->
			<form:input path="sponser.id" id="sponser" cssClass="form-control" />
			<form:errors path="sponser" />
		</div>
	</div>

	<div class="form-group" id="sponserNameDiv">
		<label for="sponserName" class="col-sm-2 control-label">Sponser
			Name:</label>
		<div class="col-sm-10" id="sponserName"></div>
	</div>

	<div class="form-group">
		<label for="name" class="col-sm-2 control-label">Name:</label>
		<div class="col-sm-10">
			<form:input path="name" cssClass="form-control" />
			<form:errors path="name" />
		</div>
	</div>

	<div class="form-group">
		<label for="position" class="col-sm-2 control-label">Position:</label>
		<div class="col-sm-10">
			<form:select path="position">
				<form:option value="L">Left</form:option>
				<form:option value="R">Right</form:option>
			</form:select>

			<form:errors path="position" />
		</div>
	</div>

	<div class="form-group">
		<label for="gender" class="col-sm-2 control-label">Gender:</label>
		<div class="col-sm-10">
			<form:select path="gender">
				<form:option value="M">Male</form:option>
				<form:option value="F">Female</form:option>
			</form:select>
			<form:errors path="gender" />
		</div>
	</div>

	<div class="form-group">
		<label for="mobNo" class="col-sm-2 control-label">Mobile
			Number:</label>
		<div class="col-sm-10">
			<form:input path="mobNo" cssClass="form-control" />
			<form:errors path="mobNo" />
		</div>
	</div>

	<div class="form-group">
		<label for="otp" class="col-sm-2 control-label">Verification
			Code:</label>
		<div class="col-sm-10">
			<form:input path="otp" cssClass="form-control" />
			<form:errors path="otp" />
		</div>
	</div>
	<div class="form-group">
		<label for="email" class="col-sm-2 control-label">Email:</label>
		<div class="col-sm-10">
			<form:input path="email" cssClass="form-control" />
			<form:errors path="email" />
		</div>
	</div>

	<div class="form-group">
		<label for="address" class="col-sm-2 control-label">Address:</label>
		<div class="col-sm-10">
			<form:input path="address" cssClass="form-control" />
			<form:errors path="address" />
		</div>
	</div>

	<div class="form-group">
		<label for="city" class="col-sm-2 control-label">City:</label>
		<div class="col-sm-10">
			<form:input path="city" cssClass="form-control" />
			<form:errors path="city" />
		</div>
	</div>

	<div class="form-group">
		<label for="state" class="col-sm-2 control-label">State:</label>
		<div class="col-sm-10">
			<form:input path="state" cssClass="form-control" />
			<form:errors path="state" />
		</div>
	</div>

	<div class="form-group">
		<label for="country" class="col-sm-2 control-label">Country:</label>
		<div class="col-sm-10">
			<form:input path="country" cssClass="form-control" id="country" />
			<form:errors path="country" />
		</div>
	</div>

	<div class="form-group securityQuestion">
		<label for="securityQuestion" class="col-sm-2 control-label">Security
			Question:</label>
		<div class="col-sm-10" id="secQues">
			<form:errors path="securityQuestion" />
		</div>
	</div>

	<div class="form-group">
		<label for="securityAnswer" class="col-sm-2 control-label">Security
			Answer:</label>
		<div class="col-sm-10">
			<form:input path="securityAnswer" cssClass="form-control" />
			<form:errors path="securityAnswer" />
		</div>
	</div>
	<div class="form-group">
		<label for="password" class="col-sm-2 control-label">Password:</label>
		<div class="col-sm-10">
			<form:password path="password" cssClass="form-control" />
			<form:errors path="password" />
		</div>
	</div>
	<div class="form-group">
		<label for="password" class="col-sm-2 control-label">Confirm
			Password:</label>
		<div class="col-sm-10">
			<input type="password" name="password_again" id="password_again"
				class="form-control" />
		</div>
	</div>
	<div class="form-group">
		<div class="col-sm-2">
			<input type="submit" value="Save" class="btn btn-lg btn-primary" />
		</div>
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
														url : "<spring:url value='/register/available.html' />",
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
														url : "<spring:url value='/register/availableSponser.html' />",
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