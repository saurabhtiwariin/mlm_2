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

<html>
<head>
<meta charset="utf-8">
<meta http-equiv="X-UA-Compatible" content="IE=edge">
<meta name="viewport" content="width=device-width, initial-scale=1">
<!-- The above 3 meta tags *must* come first in the head; any other head content must come *after* these tags -->
<meta name="description" content="">
<meta name="author" content="">
<link rel="icon" href="/resources/logo2.jpg">

<title><tiles:getAsString name="title" /></title>

<!-- Bootstrap core CSS -->
<link href="/resources/dist/css/bootstrap.min.css" rel="stylesheet">
<link href="/resources/dist/css/signin.css" rel="stylesheet">
<script
	src="http://ajax.googleapis.com/ajax/libs/jquery/2.1.0/jquery.min.js"></script>

<script type="text/javascript"
	src="http://ajax.aspnetcdn.com/ajax/jquery.validate/1.11.1/jquery.validate.min.js"></script>

<script src="/resources/assets/js/ie-emulation-modes-warning.js"></script>

<script src="/resources/dist/js/bootstrap.min.js"></script>


<!-- Just for debugging purposes. Don't actually copy these 2 lines! -->
<!--[if lt IE 9]><script src="../../assets/js/ie8-responsive-file-warning.js"></script><![endif]-->

<!-- HTML5 shim and Respond.js for IE8 support of HTML5 elements and media queries -->
<!--[if lt IE 9]>
      <script src="https://oss.maxcdn.com/html5shiv/3.7.2/html5shiv.min.js"></script>
      <script src="https://oss.maxcdn.com/respond/1.4.2/respond.min.js"></script>
    <![endif]-->

<!-- Custom styles for this template -->
<link href="/resources/dist/css/carousel.css" rel="stylesheet">
</head>
<!-- NAVBAR
================================================== -->
<body>

	<tilesx:useAttribute name="current" />

	<div class="navbar-wrapper">
		<div class="container">

			<nav class="navbar navbar-inverse navbar-static-top">
				<div class="container">
					<div class="navbar-header">
						<button type="button" class="navbar-toggle collapsed"
							data-toggle="collapse" data-target="#navbar"
							aria-expanded="false" aria-controls="navbar">
							<span class="sr-only">Toggle navigation</span> <span
								class="icon-bar"></span> <span class="icon-bar"></span> <span
								class="icon-bar"></span>
						</button>
						<a href='<spring:url value="/index.html"/>' class="navbar-brand"><spring:message
								code="index.app.title" /></a>
					</div>
					<div id="navbar" class="navbar-collapse collapse">
						<ul class="nav navbar-nav">
							<li class="active"><a
								href='<spring:url value="/index.html"/>'>Home</a></li>
							<security:authorize access="isAuthenticated()">
								<li class="${current == 'users' ? 'active' : ''}"><a
									href="<spring:url value="/user/memberZone.html" />">DiveIn</a></li>
								<security:authorize access="hasRole('ROLE_ADMIN')">
									<li class="${current == 'users' ? 'active' : ''}"><a
										href="<spring:url value="/admin/dashboard.html" />">Admin
											Area</a></li>
								</security:authorize>
								<li><a href="<spring:url value="/logout" />">Logout</a></li>
							</security:authorize>
							<li class="dropdown"><a class="dropdown-toggle"
								data-toggle="dropdown" role="button" aria-haspopup="true"
								aria-expanded="false">Business<span class="caret"></span></a>
								<ul class="dropdown-menu">
									<li><a href='<spring:url value="/businessPlan.html"/>'>How
											It Works</a></li>
									<li role="separator" class="divider"></li>
									<li><a href='<spring:url value="/faq.html"/>'>FAQ</a></li>
									<li role="separator" class="divider"></li>
									<li><a href='<spring:url value="/contactUs.html"/>'>Contact
											Us</a></li>
								</ul></li>
							<security:authorize access="! isAuthenticated()">

								<li class="${current == 'forgotPassword' ? 'active' : ''}"><a
									href='<spring:url value="/forgetPassword.html#content"/>'><spring:message
											code="message.resetPassword" /></a></li>
							</security:authorize>
						</ul>

						<security:authorize access="! isAuthenticated()">
							<form class="navbar-form navbar-right"
								action="<spring:url value="/j_spring_security_check" />"
								method="POST" class="form-signin">
								<div class="form-group">
									<input type="text" name="j_username" placeholder="Email"
										class="form-control" required>
								</div>
								<div class="form-group">
									<input type="password" name="j_password" placeholder="Password"
										class="form-control" required>
								</div>
								<button type="submit" class="btn btn-success">Sign in</button>
							</form>
						</security:authorize>
					</div>
					<br />

				</div>
			</nav>

		</div>
	</div>

	<security:authorize access="! isAuthenticated()">

		<!-- Carousel
    ================================================== -->
		<div id="myCarousel" class="carousel slide" data-ride="carousel">
			<!-- Indicators -->
			<ol class="carousel-indicators">
				<li data-target="#myCarousel" data-slide-to="0" class="active"></li>
				<li data-target="#myCarousel" data-slide-to="1"></li>
				<li data-target="#myCarousel" data-slide-to="2"></li>
			</ol>
			<div class="carousel-inner" role="listbox">

				<div class="item active">
					<!-- <img class="first-slide active" src=""> -->
					<div class="container">
						<div class="carousel-caption">
							<h1>
								<spring:message code="index.marque.one" />
							</h1>
							<p>
								<br />
								<c:if test="${param.message != null}">
									<div class="alert alert-info">
										<h4>${param.message}</h4>
									</div>
								</c:if>
								<br />
							</p>
							<p>
								<a href='<spring:url value="/register.html#regFormBegin"/>'
									class="btn btn-lg btn-primary" role="button"><spring:message
										code="label.form.loginSignUp"></spring:message></a>
							</p>
						</div>
					</div>
				</div>
				<div class="item">
					<!-- <img class="second-slide" src="help.jpg" alt="Second slide"> -->
					<div class="container">
						<div class="carousel-caption">
							<p>
								<spring:message code="index.marque.two" />
							</p>
							<p>
								<a href='<spring:url value="/register.html#regFormBegin"/>'
									class="btn btn-lg btn-primary" role="button"><spring:message
										code="label.form.loginSignUp"></spring:message></a>
							</p>
						</div>
					</div>

				</div>

			</div>
			<a class="left carousel-control" href="#myCarousel" role="button"
				data-slide="prev"> <span
				class="glyphicon glyphicon-chevron-left" aria-hidden="true"></span>
				<span class="sr-only">Previous</span>
			</a> <a class="right carousel-control" href="#myCarousel" role="button"
				data-slide="next"> <span
				class="glyphicon glyphicon-chevron-right" aria-hidden="true"></span>
				<span class="sr-only">Next</span>
			</a>
			<div id="content"></div>

		</div>
		<!-- /.carousel -->
	</security:authorize>

	<!-- Marketing messaging and featurettes
    ================================================== -->
	<!-- Wrap the rest of the page in another container to center all the content. -->

	<div class="container marketing" id="regFormBegin">
	
	<h1>Please fill in the following fields...</h1>
	<br> <br>
		<tiles:insertAttribute name="body" />

		

		<!-- Three columns of text below the carousel -->
		<div class="row">
			<div class="col-lg-4">
				<img class="img-circle" src="/resources/logo1.jpg"
					alt="Generic placeholder image" width="140" height="140">
				<h2>
					<spring:message code="index.footer.message1.title" />
				</h2>
				<p>
					<spring:message code="index.footer.message1.content" />
				</p>
				<p>
					<a class="btn btn-default" href="#" role="button">View details
						&raquo;</a>
				</p>
			</div>
			<!-- /.col-lg-4 -->
			<div class="col-lg-4">
				<img class="img-circle" src="/resources/logo2.jpg"
					alt="Generic placeholder image" width="140" height="140">
				<h2>
					<spring:message code="index.footer.message2.title" />
				</h2>
				<p>
					<spring:message code="index.footer.message2.content" />
				</p>
				<p>
					<a class="btn btn-default" href="#" role="button">View details
						&raquo;</a>
				</p>
			</div>
			<!-- /.col-lg-4 -->
			<div class="col-lg-4">
				<img class="img-circle" src="/resources/mission.jpg"
					alt="Generic placeholder image" width="140" height="140">
				<h2>
					<spring:message code="index.footer.message3.title" />
				</h2>
				<p>
					<spring:message code="index.footer.message3.content" />
				</p>
				<p>
					<a class="btn btn-default" href="#" role="button">View details
						&raquo;</a>
				</p>
			</div>
			<!-- /.col-lg-4 -->
		</div>
		<!-- /.row -->
		<!-- FOOTER -->
		<footer>
			<p class="pull-right">
				<a href="#">Back to top</a>
			</p>
			<p>
				&copy;
				<spring:message code="index.footer.company" />
				&middot; <a href="#">Privacy</a> &middot; <a href="#">Terms</a>
			</p>
		</footer>

	</div>
	<!-- /.container -->


	<!-- Bootstrap core JavaScript
    ================================================== -->
	<!-- Placed at the end of the document so the pages load faster -->
	<!-- Just to make our placeholder images work. Don't actually copy the next line! -->
	<script src="/resources/assets/js/vendor/holder.min.js"></script>
	<!-- IE10 viewport hack for Surface/desktop Windows 8 bug -->
	<script src="/resources/assets/js/ie10-viewport-bug-workaround.js"></script>
</body>
</html>
