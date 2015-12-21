<%@ page language="java" contentType="text/html; charset=UTF-8"
	pageEncoding="UTF-8"%>
<%@ include file="../layout/taglib.jsp"%>

<form:form commandName="user"
	cssClass="form-horizontal registrationForm">

	<c:if test="${success eq true}">
		<div class="alert alert-success">Registration successful. Please
			check your email to enable your account.</div>
	</c:if>

	<div class="form-group" id="sponserDiv">
		<label for="sponser" class="col-sm-2 control-label">Sponser
			Id:</label>
		<div class="col-sm-10">
			<form:input path="sponser.id" placeholder="Enter Sponser ID"
				id="sponser" cssClass="form-control" />
			<form:errors path="sponser" />
		</div>
	</div>

	<div class="form-group" id="sponserNameDiv">
		<label for="sponserName" class="col-sm-2 control-label"></label>
		<div class="col-sm-10" id="sponserName"></div>
	</div>

	<div class="form-group">
		<label for="position" class="col-sm-2 control-label">Position:</label>
		<div class="col-sm-10" id="pos">
			
			<form:select path="position">
				<form:option value="L">Left</form:option>
				<form:option value="R">Right</form:option>
			</form:select>

			<form:errors path="position" />
		</div>
	</div>

	<div class="form-group">
		<label for="name" class="col-sm-2 control-label">Username:</label>
		<div class="col-sm-10">
			<form:input path="name"
				placeholder="Enter Username. It will be used for login purpose."
				cssClass="form-control" />
			<form:errors path="name" />
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
			<form:input path="mobNo" placeholder="Please enter mobile number."
				cssClass="form-control" />
			<form:errors path="mobNo" />
		</div>
	</div>

	<%-- 	<div class="form-group">
		<label for="otp" class="col-sm-2 control-label">Verification
			Code:</label>
		<div class="col-sm-10">
			<form:input path="otp" placeholder="Please enter otp send to you mobile number." cssClass="form-control" />
			<form:errors path="otp" />
		</div>
	</div>
 --%>
	<div class="form-group">
		<label for="email" class="col-sm-2 control-label" id="emaillabel">Email:</label>
		<div class="col-sm-10">
			<form:input path="email" placeholder="Enter email ID."
				cssClass="form-control" />
			<form:errors path="email" />
		</div>
	</div>

	<div class="form-group">
		<label for="address" class="col-sm-2 control-label">Address:</label>
		<div class="col-sm-10">
			<form:input path="address" placeholder="Enter your home address"
				cssClass="form-control" />
			<form:errors path="address" />
		</div>
	</div>


	<div class="form-group">
		<label for="country" class="col-sm-2 control-label">Country:</label>
		<div class="col-sm-10">
			<select name="country" id="country" class="form-control">
				<option value="">------------Select Country------------</option>
				<option value="India">India</option>
			</select>
			<form:errors path="country" />
		</div>
	</div>

	<div class="form-group">
		<label for="state" class="col-sm-2 control-label">State:</label>
		<div class="col-sm-10">
			<select name="state" id="state" class="form-control">
				<option value="">------------Select State------------</option>
				<option value="Andaman and Nicobar Islands">Andaman and
					Nicobar Islands</option>
				<option value="Andhra Pradesh">Andhra Pradesh</option>
				<option value="Arunachal Pradesh">Arunachal Pradesh</option>
				<option value="Assam">Assam</option>
				<option value="Bihar">Bihar</option>
				<option value="Chandigarh">Chandigarh</option>
				<option value="Chhattisgarh">Chhattisgarh</option>
				<option value="Dadra and Nagar Haveli">Dadra and Nagar
					Haveli</option>
				<option value="Daman and Diu">Daman and Diu</option>
				<option value="Delhi">Delhi</option>
				<option value="Goa">Goa</option>
				<option value="Gujarat">Gujarat</option>
				<option value="Haryana">Haryana</option>
				<option value="Himachal Pradesh">Himachal Pradesh</option>
				<option value="Jammu and Kashmir">Jammu and Kashmir</option>
				<option value="Jharkhand">Jharkhand</option>
				<option value="Karnataka">Karnataka</option>
				<option value="Kerala">Kerala</option>
				<option value="Lakshadweep">Lakshadweep</option>
				<option value="Madhya Pradesh">Madhya Pradesh</option>
				<option value="Maharashtra">Maharashtra</option>
				<option value="Manipur">Manipur</option>
				<option value="Meghalaya">Meghalaya</option>
				<option value="Mizoram">Mizoram</option>
				<option value="Nagaland">Nagaland</option>
				<option value="Orissa">Orissa</option>
				<option value="Pondicherry">Pondicherry</option>
				<option value="Punjab">Punjab</option>
				<option value="Rajasthan">Rajasthan</option>
				<option value="Sikkim">Sikkim</option>
				<option value="Tamil Nadu">Tamil Nadu</option>
				<option value="Tripura">Tripura</option>
				<option value="Uttaranchal">Uttaranchal</option>
				<option value="Uttar Pradesh">Uttar Pradesh</option>
				<option value="West Bengal">West Bengal</option>
			</select>
			<form:errors path="state" />
		</div>
	</div>

	<div class="form-group">
		<label for="city" class="col-sm-2 control-label">City:</label>
		<div class="col-sm-10">
			<form:input path="city" placeholder="Enter city where you live."
				cssClass="form-control" />
			<form:errors path="city" />
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
			<form:input path="securityAnswer"
				placeholder="Enter security answer." cssClass="form-control" />
			<form:errors path="securityAnswer" />
		</div>
	</div>
	<div class="form-group">
		<label for="password" class="col-sm-2 control-label">Password:</label>
		<div class="col-sm-10">
			<form:password path="password" placeholder="Enter your password"
				cssClass="form-control" />
			<form:errors path="password" />
		</div>
	</div>
	<div class="form-group">
		<label for="password" class="col-sm-2 control-label">Confirm
			Password:</label>
		<div class="col-sm-10">
			<input type="password" name="password_again"
				placeholder="Re-Enter the same password again." id="password_again"
				class="form-control" />
		</div>
	</div>
	<div class="form-group">
		<div class="col-sm-2">
			<input type="submit" value="Save" class="btn btn-lg btn-primary" />
		</div>
	</div>
</form:form>



<script src="/resources/register/validation.js"></script>
