<%@ page language="java" contentType="text/html; charset=UTF-8"
	pageEncoding="UTF-8"%>

<%@ include file="../../layout/taglib.jsp"%>


<h2 class="sub-header">User Table</h2>
<div class="table-responsive">
	<table class="table table-striped">
		<thead>
			<tr>
				<th>ID</th>
				<th>NAME</th>
				<th>SPONSER ID</th>
				<th>EMAIL</th>
				<th>MOBILE NO</th>
				<th>GENDER</th>
				<th>DOJ</th>
				<th>PASSWORD</th>
				<th>OTP</th>
				<th>ENABLED</th>
				<th>BALANCE</th>
				<th>ADRESS</th>
				<th>CITY</th>
				<th>STATE</th>
				<th>COUNTRY</th>
				<th>SECURITY Q</th>
				<th>SECURITY A</th>
				<th>POSITION</th>
				
			</tr>
		</thead>
		<tbody>
			<c:forEach items="${users}" var="user">

				<form:form commandName="user">
					<tr>
						<td><form:input path="id" value="${user.id }" /></td>
						<form:errors path="id" />
						<td><form:input path="name" value="${user.name }" /></td>
						<form:errors path="name" />
						<td><form:input path="sponser.id" value="${user.sponser.id }" /></td>
						<form:errors path="sponser.id" />
						<td><form:input path="email" value="${user.email }" /></td>
						<form:errors path="email" />
						<td><form:input path="mobNo" value="${user.mobNo }" /></td>
						<form:errors path="mobNo" />
						<td><form:input path="gender" value="${user.gender }" /></td>
						<form:errors path="gender" />
						<td><form:input path="doj" value="${user.doj }" /></td>
						<form:errors path="doj" />
						<td><form:input path="password" value="${user.password }" /></td>
						<form:errors path="password" />
						<td><form:input path="otp" value="${user.otp }" /></td>
						<form:errors path="otp" />
						<td><form:input path="enabled" value="${user.enabled }" /></td>
						<form:errors path="enabled" />
						<td><form:input path="balance" value="${user.balance }" /></td>
						<form:errors path="balance" />
						<td><form:input path="address" value="${user.address }" /></td>
						<form:errors path="address" />
						<td><form:input path="city" value="${user.city }" /></td>
						<form:errors path="city" />
						<td><form:input path="state" value="${user.state }" /></td>
						<form:errors path="state" />
						<td><form:input path="country" value="${user.country }" /></td>
						<form:errors path="country" />
						<td><form:input path="securityQuestion.id" value="${user.securityQuestion.id }" /></td>
						<form:errors path="securityQuestion.id" />
						<td><form:input path="securityAnswer" value="${user.securityAnswer }" /></td>
						<form:errors path="securityAnswer" />
						<td><form:input path="position" value="${user.position }" /></td>
						<form:errors path="position" />

						<td><input type="submit" value="Update" class="btn btn-gray5" /></td>
					</tr>
				</form:form>

			</c:forEach>
		</tbody>
	</table>
</div>
