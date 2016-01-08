/**
 * register form validation code
 */

$(document).ready(function() {

	$("#sponserDiv").focusout(function(event) {
	}, function(event) {

		var id = $("#sponser").val();
/*
		$("#pos").load('/register/availablePositions.html', {
			"sponserId" : id,
		});*/

		$("#sponserName").load('/register/availableSponserName.html', {
			"sponserId" : id
		});

	});

	$("#city").focusout(function(event) {
	}, function(event) {
		$("#secQues").load('/register/allSecurityQuestion.html');
	});

});

$(document)
		.ready(
				function() {

					$.validator.setDefaults({

						errorClass : 'help-block',

						highlight : function(element) {
							$(element).closest('.form-group').removeClass(
									'has-success').addClass('has-error');
						},
						unhighlight : function(element) {
							$(element).closest('.form-group').removeClass(
									'has-error').addClass('has-success');
						}
					});

					$.validator
							.addMethod("isusername", function(value, element) {
								return this.optional(element)
										|| /^[a-z0-9_-]+$/i.test(value);
							}, "Username can have letters, digit, - and _ only");
					$.validator
					.addMethod("isPanNo", function(value, element) {
						return this.optional(element)
								|| /^[A-Z0-9]{10}$/i.test(value);
					}, "PAN CARD Number must be of 10 digit and contains capital letters and numbers, Example:ABCD1212GH ");

					$.validator.addMethod("positivedigitsonly", function(value,
							element) {
						return this.optional(element)
								|| /^[0-9]+$/i.test(value);
					}, "Please enter valid SponserID.");

					$.validator.addMethod("mobilenumber10digit", function(
							value, element) {
						return this.optional(element)
								|| /^[0-9]{10}$/i.test(value);
					}, "Please enter 10 digit mobile number.");

					$.validator
							.addMethod("otp6digit", function(value, element) {
								return this.optional(element)
										|| /^[0-9]{6}$/i.test(value);
							},
									"Please enter 6 digit otp send to your mobile number.");

					$(".registrationForm")
							.validate(
									{
										rules : {
											"sponser.id" : {
												positivedigitsonly : true,
												remote : {
													url : "/register/availableSponser.html",
													type : "get",
													data : {
														userId : function() {
															return $("#sponser")
																	.val();
														}
													}

												}
											},

											name : {
												required : true,
												minlength : 3,
												isusername : true,
												remote : {
													url : "/register/available.html",
													type : "get",
													data : {
														username : function() {
															return $("#name")
																	.val();
														}
													}

												}
											},

											mobNo : {
												required : true,
												mobilenumber10digit : true,
/*												remote : {
													url : "/register/sendOTP.html",
													type : "get",
													data : {
														email : function() {
															return $("#mobNo")
																	.val();
														}
													}
												}
*/
											},
/*											otp : {
												required : true,
												otp6digit : true,
												remote : {
													url : "/register/verifyOTP.html",
													type : "get",
													data : {
														email : function() {
															return $("#otp")
																	.val();
														}
													}

												}

											},
*/
											email : {
												required : true,
												email : true,
												remote : {
													url : "/register/uniqueEmail.html",
													type : "get",
													data : {
														email : function() {
															return $("#email")
																	.val();
														}
													}

												}
											},

											panNo : {
												required : true,
												isPanNo : true,
												remote : {
													url : "/register/uniquePanNo.html",
													type : "get",
													data : {
														panNo : function() {
															return $("#panNo")
																	.val();
														}
													}

												}
											},
											
											address : {
												required : true,
											},
											country : {
												required : true
											},

											state : {
												required : true,
											},

											city : {
												required : true,
											},
											securityAnswer : {
												required : true,
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

										messages : {
											name : {
												remote : $.validator
														.format("{0} already exists. Please select a different Username."),
												required : "Please select a unique Username. It will be used for login."
											},
											"sponser.id" : {
												remote : "Sorry 😢 It seems you entered wrong sponser ID.",

											},
											email : {
												remote : $.validator
														.format("{0} already exists. Please use a different email.")
											},
											panNo : {
												remote : $.validator
														.format("{0} already exists. Please use a different PAN CARD NUMBER.")
											},
											mobNo : {
												required : "Please enter a mobile number.",
												remote : $.validator
														.format("Verification token has been send to {0}. Please verify. ")
											},
											otp : {
												required : "Please enter OTP send to your mobile number",
												remote : $.validator
														.format("{0} is wrong OTP. Please enter correct OTP.")
											}
										}
									/*
									 * success : function(label) { var msg="ok";
									 * label.text(msg).addClass("success"); },
									 */

									/*
									 * submitHandler: function() { alert("You
									 * have registered successfully. Please
									 * check you mail for verification link to
									 * enable your account.") }
									 */});
				});
