<%@ page language="java" contentType="text/html; charset=UTF-8"
	pageEncoding="UTF-8"%>

<%@ include file="taglib.jsp"%>

<html>
<head>
<meta charset="utf-8">
<meta http-equiv="X-UA-Compatible" content="IE=edge">
<meta name="viewport" content="width=device-width, initial-scale=1">
<!-- The above 3 meta tags *must* come first in the head; any other head content must come *after* these tags -->
<meta name="description" content="">
<meta name="author" content="">
<link rel="icon" href="../../favicon.ico">

<title><tiles:getAsString name="title" /></title>

<!-- Bootstrap core CSS -->
<link href="/resources/dist/css/bootstrap.min.css" rel="stylesheet">

<!-- Custom styles for this template -->
<link href="/resources/dist/css/dashboard.css" rel="stylesheet">

<!-- Just for debugging purposes. Don't actually copy these 2 lines! -->
<!--[if lt IE 9]><script src="../../assets/js/ie8-responsive-file-warning.js"></script><![endif]-->

<script src="/resources/assets/js/ie-emulation-modes-warning.js"></script>

<script src="//ajax.googleapis.com/ajax/libs/jquery/2.1.0/jquery.min.js"></script>

<script type="text/javascript"
	src="http://ajax.aspnetcdn.com/ajax/jquery.validate/1.11.1/jquery.validate.min.js"></script>

<script src="/resources/dist/js/bootstrap.min.js"></script>


<!-- HTML5 shim and Respond.js for IE8 support of HTML5 elements and media queries -->
<!--[if lt IE 9]>
      <script src="https://oss.maxcdn.com/html5shiv/3.7.2/html5shiv.min.js"></script>
      <script src="https://oss.maxcdn.com/respond/1.4.2/respond.min.js"></script>
    <![endif]-->
</head>

<body>

	<tilesx:useAttribute name="current" />

	<nav class="navbar navbar-inverse navbar-fixed-top">
		<div class="container-fluid">
			<div class="navbar-header">
				<button type="button" class="navbar-toggle collapsed"
					data-toggle="collapse" data-target="#navbar" aria-expanded="false"
					aria-controls="navbar">
					<span class="sr-only">Toggle navigation</span> <span
						class="icon-bar"></span> <span class="icon-bar"></span> <span
						class="icon-bar"></span>
				</button>
				<a class="navbar-brand" href="#">Project name</a>
			</div>
			<div id="navbar" class="navbar-collapse collapse">
				<ul class="nav navbar-nav navbar-right">
					<li><a href="#">Dashboard</a></li>
					<li><a href="#">Settings</a></li>
					<li><a href="#">Profile</a></li>
					<li><a href="#">Help</a></li>
					<li><a href='<spring:url value="/index.html"/>'>Return</a></li>
					<li><a href="<spring:url value="/logout" />">Logout</a></li>
				</ul>
				<form class="navbar-form navbar-right">
					<input type="text" class="form-control" placeholder="Search...">
				</form>
			</div>
		</div>
	</nav>

	<div class="container-fluid">
		<div class="row">
			<div class="col-sm-3 col-md-2 sidebar">
				<ul class="nav nav-sidebar">
					<li><a href="#">All Database Tables<span
							class="sr-only">(current)</span></a></li>
				</ul>
				<ul class="nav nav-sidebar">
					<li class="${current == 'user' ? 'active' : ''}"><a
						href="<spring:url value="/admin/user.html" />">User</a></li>
					<li class="${current == 'accept' ? 'active' : ''}"><a
						href="<spring:url value="/admin/accept.html" />">Accept</a></li>
					<li class="${current == 'commit' ? 'active' : ''}"><a
						href="<spring:url value="/admin/commit.html" />">Commit</a></li>
					<li class="${current == 'bankDetails' ? 'active' : ''}"><a
						href="<spring:url value="/admin/bankDetails.html" />">Bank
							Details</a></li>
					<li class="${current == 'complaint' ? 'active' : ''}"><a
						href="<spring:url value="/admin/complaint.html" />">Complaint</a></li>
					<li class="${current == 'fileUpload' ? 'active' : ''}"><a
						href="<spring:url value="/admin/fileUpload.html" />">File
							Upload</a></li>
					<li class="${current == 'role' ? 'active' : ''}"><a
						href="<spring:url value="/admin/role.html" />">Role</a></li>
					<li class="${current == 'securityQuestion' ? 'active' : ''}"><a
						href="<spring:url value="/admin/securityQuestion.html" />">SecurityQuestion</a></li>
					<li class="${current == 'status' ? 'active' : ''}"><a
						href="<spring:url value="/admin/status.html" />">Status</a></li>
					<li class="${current == 'transaction' ? 'active' : ''}"><a
						href="<spring:url value="/admin/transaction.html" />">Transaction</a></li>

				</ul>
			</div>
			<div class="col-sm-9 col-sm-offset-3 col-md-10 col-md-offset-2 main">
				<h1 class="page-header">Dashboard</h1>

				<div class="row placeholders">
					<div class="col-xs-6 col-sm-3 placeholder">
						<img data-src="holder.js/200x200/auto/sky" class="img-responsive"
							alt="Generic placeholder thumbnail">
						<h4>Label</h4>
						<span class="text-muted">Something else</span>
					</div>
					<div class="col-xs-6 col-sm-3 placeholder">
						<img data-src="holder.js/200x200/auto/vine" class="img-responsive"
							alt="Generic placeholder thumbnail">
						<h4>Label</h4>
						<span class="text-muted">Something else</span>
					</div>
					<div class="col-xs-6 col-sm-3 placeholder">
						<img data-src="holder.js/200x200/auto/sky" class="img-responsive"
							alt="Generic placeholder thumbnail">
						<h4>Label</h4>
						<span class="text-muted">Something else</span>
					</div>
					<div class="col-xs-6 col-sm-3 placeholder">
						<img data-src="holder.js/200x200/auto/vine" class="img-responsive"
							alt="Generic placeholder thumbnail">
						<h4>Label</h4>
						<span class="text-muted">Something else</span>
					</div>
				</div>

				<c:if test="${acceptTableUpdated eq true}">
					<div class="alert alert-success">Accept table Updated !</div>
				</c:if>
				<c:if test="${commitTableUpdated eq true}">
					<div class="alert alert-success">Commit table Updated !</div>
				</c:if>
				<c:if test="${bankDetailsTableUpdated eq true}">
					<div class="alert alert-success">Bank Details table Updated !</div>
				</c:if>
				<c:if test="${complaintTableUpdated eq true}">
					<div class="alert alert-success">Complaint table Updated !</div>
				</c:if>
				<c:if test="${fileUploadTableUpdated eq true}">
					<div class="alert alert-success">FileUpload table Updated !</div>
				</c:if>
				<c:if test="${roleTableUpdated eq true}">
					<div class="alert alert-success">Role table Updated !</div>
				</c:if>
				<c:if test="${securityQuestionTableUpdated eq true}">
					<div class="alert alert-success">Security Question table
						Updated !</div>
				</c:if>
				<c:if test="${statusTableUpdated eq true}">
					<div class="alert alert-success">Status table Updated !</div>
				</c:if>
				<c:if test="${transactionTableUpdated eq true}">
					<div class="alert alert-success">Transaction table Updated !</div>
				</c:if>
				<c:if test="${userTableUpdated eq true}">
					<div class="alert alert-success">User table Updated !</div>
				</c:if>
				<tiles:insertAttribute name="body" />


			</div>
		</div>
	</div>

	<!-- Bootstrap core JavaScript
    ================================================== -->
	<!-- Placed at the end of the document so the pages load faster -->

	<script src="/resources/assets/js/vendor/holder.min.js"></script>
	<!-- IE10 viewport hack for Surface/desktop Windows 8 bug -->

	<script src="/resources/assets/js/ie10-viewport-bug-workaround.js"></script>
</body>
</html>
