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


<link rel="stylesheet"
	href="https://maxcdn.bootstrapcdn.com/bootstrap/3.3.6/css/bootstrap.min.css"
	integrity="sha384-1q8mTJOASx8j1Au+a5WDVnPi2lkFfwwEAa8hDDdjZlpLegxhjVME1fgjWPGmkzs7"
	crossorigin="anonymous">

<link href="/resources/dist/css/dashboard.css" rel="stylesheet">


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
				<a class="navbar-brand" href="#">MMMINR ADMIN</a>
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
					<li><a href="#">All Database Tables<span class="sr-only">(current)</span></a></li>
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

 	<script
		src="https://ajax.googleapis.com/ajax/libs/jquery/1.11.3/jquery.min.js"></script>
	<script type="text/javascript"
		src="http://ajax.aspnetcdn.com/ajax/jquery.validate/1.14.0/jquery.validate.min.js"></script>
	<script
		src="https://maxcdn.bootstrapcdn.com/bootstrap/3.3.6/js/bootstrap.min.js"
		integrity="sha384-0mSbJDEHialfmuBBQP6A4Qrprq5OVfW37PRR3j5ELqxss1yVqOtnepnHVP9aJ7xS"
		crossorigin="anonymous"></script>
	<script
		src="https://cdnjs.cloudflare.com/ajax/libs/holder/2.9.0/holder.min.js"></script>

</body>
</html>
