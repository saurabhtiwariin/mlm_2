<%@ page language="java" contentType="text/html; charset=UTF-8"
	pageEncoding="UTF-8"%>

<%@ include file="taglib.jsp"%>
<fmt:setBundle basename="messages" />
<%@ page session="true"%>
<fmt:message key="message.password" var="noPass" />
<fmt:message key="message.username" var="noUser" />
<c:if test="${param.error != null}">
	<c:choose>
		<c:when
			test="${SPRING_SECURITY_LAST_EXCEPTION.message == 'User is disabled'}">
			<div class="alert alert-danger">
				<spring:message code="auth.message.disabled"></spring:message>
			</div>
		</c:when>
		<c:when
			test="${SPRING_SECURITY_LAST_EXCEPTION.message == 'User account has expired'}">
			<div class="alert alert-danger">
				<spring:message code="auth.message.expired"></spring:message>
			</div>
		</c:when>
		<c:when test="${SPRING_SECURITY_LAST_EXCEPTION.message == 'blocked'}">
			<div class="alert alert-danger">
				<spring:message code="auth.message.blocked"></spring:message>
			</div>
		</c:when>
		<c:otherwise>
			<div class="alert alert-danger">
				<!-- <c:out value="${SPRING_SECURITY_LAST_EXCEPTION.message}"/> -->
				<spring:message code="message.badCredentials"></spring:message>
			</div>
		</c:otherwise>
	</c:choose>
</c:if>

<html lang="en">
<head>
<meta charset="utf-8" />
<meta name="viewport"
	content="width=device-width, initial-scale=1, maximum-scale=1" />
<meta name="description" content="" />
<meta name="author" content="" />

<title><tiles:getAsString name="title" /></title>

<!-- dev scripts and css -->

<!-- <link href="/resources/mlmDevScripts/bootstrap.min.css" rel="stylesheet" />
<link href="/resources/mlmDevScripts/animate.min.css" rel="stylesheet" />
<link href="/resources/mlmDevScripts/font-awesome.min.css"
	rel="stylesheet" />
<link href="/resources/mlmDevScripts/font-awesome-animation.min.css"
	rel="stylesheet" />
<link href="/resources/mlmDevScripts/jquery.vegas.min.css"
	rel="stylesheet" />
<script src="/resources/mlmDevScripts/jquery.min.js"></script>
<script src="/resources/mlmDevScripts/bootstrap.min.js"></script>
<script src="/resources/mlmDevScripts/classie.min.js"></script>
<script src="/resources/mlmDevScripts/inputmask.min.js"></script>
<script src="/resources/mlmDevScripts/jquery.easing.min.js"></script>
<script src="/resources/mlmDevScripts/jquery.prettyPhoto.min.js"></script>
<script src="/resources/mlmDevScripts/jquery.vegas.min.js"></script>
<script src="/resources/mlmDevScripts/wow.min.js"></script>
 --> 
<!-- dev scripts and css -->



<!-- <script
	src="http://ajax.googleapis.com/ajax/libs/jquery/2.1.0/jquery.min.js"></script>

<script type="text/javascript"
	src="http://ajax.aspnetcdn.com/ajax/jquery.validate/1.11.1/jquery.validate.min.js"></script>
 -->


<!-- prod css -->

<link rel="stylesheet"
	href="https://maxcdn.bootstrapcdn.com/bootstrap/3.3.6/css/bootstrap.min.css"
	integrity="sha384-1q8mTJOASx8j1Au+a5WDVnPi2lkFfwwEAa8hDDdjZlpLegxhjVME1fgjWPGmkzs7"
	crossorigin="anonymous">
<link rel="stylesheet"
	href="http://cdnjs.cloudflare.com/ajax/libs/font-awesome/4.4.0/css/font-awesome.min.css">
<link rel="stylesheet"
	href="https://cdnjs.cloudflare.com/ajax/libs/animate.css/3.5.0/animate.min.css">
<link rel="stylesheet"
	href="https://cdnjs.cloudflare.com/ajax/libs/prettyPhoto/3.1.6/js/jquery.prettyPhoto.min.js" />
<link
	href='http://fonts.googleapis.com/css?family=Open Sans:400,300,700'
	rel='stylesheet' type='text/css'>

 <link href="/resources/assets/css/style.css" rel="stylesheet" />

</head>
<body>
	<div class="navbar navbar-default navbar-fixed-top move-me ">
		<div class="container">
			<div class="navbar-header">
				<button type="button" class="navbar-toggle" data-toggle="collapse"
					data-target=".navbar-collapse">
					<span class="icon-bar"></span> <span class="icon-bar"></span> <span
						class="icon-bar"></span>
				</button>

				<a class="navbar-brand" href='<spring:url value="/index.html"/>'>
					<img src="/resources/assets/img/logo.png"
					class="navbar-brand-logo "
					alt="<spring:message
								code='index.app.title' />" />
				</a>

			</div>
			<div class="navbar-collapse collapse move-me">
				<ul class="nav navbar-nav navbar-right">

					<li><a href='<spring:url value="/index.html"/>'>Home</a></li>
					<li><a href='<spring:url value="/program.html"/>'>PROGRAM</a></li>
					<li><a href='<spring:url value="/faq.html"/>'>FAQ</a></li>
					<li><a href='<spring:url value="/ss.html"/>'>SUCCESS
							STORIES </a></li>
					<li><a href='<spring:url value="/about.html"/>'>ABOUT </a></li>
					<li><a href='<spring:url value="/contactUs.html"/>'>CONTACT</a></li>

					<security:authorize access="! isAuthenticated()">
						<li><a href='<spring:url value="/forgetPassword.html"/>'><spring:message
									code="message.resetPassword" /></a></li>
					</security:authorize>
					<security:authorize access="isAuthenticated()">
						<li><a href="<spring:url value='/user/memberZone.html' />">DIVE
								IN</a></li>
						<security:authorize access="hasRole('ROLE_ADMIN')">
							<li><a href="<spring:url value="/admin/dashboard.html" />">ADMIN</a></li>
						</security:authorize>
						<li><a href="<spring:url value="/logout" />"
							class="btn btn-danger btn-block btn-xs">LOGOUT</a></li>
					</security:authorize>

				</ul>
			</div>

		</div>
	</div>
	<!--./ NAV BAR END -->

	<tiles:insertAttribute name="body" />



	<div id="footser-end">
		<div class="container">
			<div class="row">
				<div class="col-lg-12 col-md-12">&copy; 2016 MMMINR.COM</div>
			</div>

		</div>
	</div>
	<!--./ FOOTER SECTION END -->
 
	<script
		src="https://ajax.googleapis.com/ajax/libs/jquery/1.11.3/jquery.min.js"></script>
	<script
		src="https://maxcdn.bootstrapcdn.com/bootstrap/3.3.6/js/bootstrap.min.js"
		integrity="sha384-0mSbJDEHialfmuBBQP6A4Qrprq5OVfW37PRR3j5ELqxss1yVqOtnepnHVP9aJ7xS"
		crossorigin="anonymous"></script>
	<script
		src="https://cdnjs.cloudflare.com/ajax/libs/wow/1.1.2/wow.min.js"></script>
	<script
		src="https://cdnjs.cloudflare.com/ajax/libs/jquery-easing/1.3/jquery.easing.min.js"></script>
	<script
		src="https://cdnjs.cloudflare.com/ajax/libs/prettyPhoto/3.1.6/js/jquery.prettyPhoto.min.js"></script>
 
	<script src="/resources/assets/js/custom.js"></script>

</body>
</html>
