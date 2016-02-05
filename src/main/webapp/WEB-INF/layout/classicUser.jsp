<%@ page language="java" contentType="text/html; charset=UTF-8"
	pageEncoding="UTF-8"%>
<%@ taglib uri="http://tiles.apache.org/tags-tiles" prefix="tiles"%>
<%@ taglib uri="http://java.sun.com/jsp/jstl/core" prefix="c"%>

<%@ taglib uri="http://www.springframework.org/tags" prefix="spring"%>

<%@ taglib uri="http://www.springframework.org/security/tags"
	prefix="security"%>

<%@ taglib uri="http://tiles.apache.org/tags-tiles-extras"
	prefix="tilesx"%>

<html>
<!--<![endif]-->
<head>
<meta charset="utf-8">
<meta name="viewport"
	content="width=device-width, initial-scale=1, maximum-scale=1">
<meta name="description" content="">
<meta name="author" content="">
<!--[if IE]>
        <meta http-equiv="X-UA-Compatible" content="IE=edge,chrome=1">
        <![endif]-->


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

 
 <link rel="stylesheet"
	href="https://maxcdn.bootstrapcdn.com/bootstrap/3.3.6/css/bootstrap.min.css">

 <link rel="stylesheet"
	href="https://cdnjs.cloudflare.com/ajax/libs/twitter-bootstrap/2.3.2/css/bootstrap-responsive.css">


<link rel="stylesheet"
	href="http://cdnjs.cloudflare.com/ajax/libs/font-awesome/4.4.0/css/font-awesome.min.css">
<link rel="stylesheet"
	href="https://cdnjs.cloudflare.com/ajax/libs/font-awesome-animation/0.0.7/font-awesome-animation.min.css">
 
 <link
	href="https://cdn.jsdelivr.net/jquery.vegas/1.3.4/jquery.vegas.min.css"
	rel="stylesheet" /> 
 <link
	href='http://fonts.googleapis.com/css?family=Open Sans:400,300,700'
	rel='stylesheet' type='text/css'>
<script src="https://ajax.googleapis.com/ajax/libs/jquery/2.1.3/jquery.min.js"></script>
<script
	src="https://cdnjs.cloudflare.com/ajax/libs/jquery.inputmask/3.2.5/inputmask/inputmask.min.js"></script>


<link href="/resources/assetsUser/plugins/vegas/jquery.vegas.min.css"
	rel="stylesheet" />
<link href="/resources/assetsUser/css/component.css" rel="stylesheet" />
<link href="/resources/assetsUser/css/style.css" rel="stylesheet" />


<!-- HTML5 shim and Respond.js IE8 support of HTML5 elements and media queries -->
<!--[if lt IE 9]>
      <script src="https://oss.maxcdn.com/libs/html5shiv/3.7.0/html5shiv.js"></script>
      <script src="https://oss.maxcdn.com/libs/respond.js/1.3.0/respond.min.js"></script>
    <![endif]-->

</head>
<body class="cbp-spmenu-push">

	<tilesx:useAttribute name="current" />

	<!-- MAIN HEADING-->
	<div class="for-full-back color-bg-one" id="main-sec">
		<div class="container">
			<div class="row text-center">
				<div class="col-md-4  ">
					<h1 class="pad-adjust">
						<a href='<spring:url value="/user/memberZone.html"></spring:url>'
							style="color: white;"> <i class="fa fa-dollar fa-1x"></i>MMMINR
						</a>
					</h1>

				</div>
				<div class="col-md-4  "></div>
				<div class="col-md-3  ">
					<h3 class="pad-adjust" style="float: right;">
						<a href="#" class="btn btn-default">Welcome <c:out
								value="${currentUser.name}" /> ( <c:out
								value="${currentUser.id}" /> )
						</a>
						<a class="btn btn-default" href='<spring:url value="/index.html"/>'>Return</a>
					</h3>
				</div>
				<div class="col-md-1  ">
					<h3>
						<a href='<spring:url value="/logout"></spring:url>'
							class="btn btn-danger btn-lg"> Logout </a>
					</h3>
				</div>


			</div>
		</div>
	</div>
	<!--END MAIN HEADING-->
	<!--LEFT SLIDE MENU-->
	<nav class="cbp-spmenu cbp-spmenu-vertical cbp-spmenu-left"
		id="cbp-spmenu-s1" >
		<h3>Quick Links</h3>
		<a href='<spring:url value="/user/memberZone.html"></spring:url>'><i></i>HOME</a>
		<a href='<spring:url value="/user/editProfile.html"></spring:url>'><i></i>EDIT
			PROFILE</a> <a
			href='<spring:url value="/user/editPassword.html"></spring:url>'><i></i>CHANGE
			PASSWORD</a> <a
			href='<spring:url value="/user/welcomeLetter.html"></spring:url>'><i></i>WELCOME
			LETTER</a> <a
			href='<spring:url value="/user/directMember.html"></spring:url>'><i></i>DIRECT
			MEMBER</a> <a
			href='<spring:url value="/user/myDownline.html"></spring:url>'><i></i>MY
			DOWNLINE</a> <a
			href='<spring:url value="/user/ganealogy.html"></spring:url>'><i></i>GANEALOGY</a>
		<a href='<spring:url value="/user/dailyIncome.html"></spring:url>'><i></i>DAILY
			INCOME</a> <a
			href='<spring:url value="/user/directIncome.html"></spring:url>'><i></i>DIRECT
			INCOME </a>
	</nav>

	<div class="row" id="icon-left">
		<div class="col-md-12">
			<i id="showLeftPush" class="fa fa-cut fa-4x faa-horizontal animated "></i>
		</div>
	</div>
	<!--END LEFT SLIDE MENU-->

	<!--RIGHT SLIDE MENU-->
	<nav class="cbp-spmenu cbp-spmenu-vertical cbp-spmenu-right"
		id="cbp-spmenu-s2">
		<h3>Account</h3>
		<a href='<spring:url value="/user/myBalance.html"></spring:url>'><i></i>BALANCE</a>
		<a href='<spring:url value="/user/commitment.html"></spring:url>'><i></i>MAKE
			COMMITMENT</a> <a
			href='<spring:url value="/user/commitmentReport.html"></spring:url>'><i></i>COMMITMENT
			HISTORY</a> <a
			href='<spring:url value="/user/withdrawl.html"></spring:url>'><i></i>DO
			WITHDRAWL</a> <a
			href='<spring:url value="/user/withdrawlReport.html"></spring:url>'><i></i>WITHDRAWL
			HISTORY</a> <a
			href='<spring:url value="/user/transactionReport.html"></spring:url>'><i></i>TRANSACTION
			HISTORY</a>

		<%--  <a
			href='<spring:url value="/user/complaintForm.html"></spring:url>'><i></i>SUPPORT
			MAIL</a> <a
			href='<spring:url value="/user/complaintReport.html"></spring:url>'><i></i>MAIL
			HISTORY</a> --%>
	</nav>

	<div class="row" id="icon-right">
		<div class="col-md-12">
			<i id="showRightPush" class="fa fa-paperclip fa-4x "></i>
		</div>
	</div>
	<!--END RIGHT SLIDE MENU-->



	<tiles:insertAttribute name="body" />



	<!--FOOTER SECTION -->
	<div class="for-full-back color-bg-one" id="footer">2016
		www.mmminr.com | All Right Reserved | Terms | Policies | Licenses</div>
	<!-- END FOOTER SECTION -->

 
	 	<script
		src="https://maxcdn.bootstrapcdn.com/bootstrap/3.3.6/js/bootstrap.min.js"
		integrity="sha384-0mSbJDEHialfmuBBQP6A4Qrprq5OVfW37PRR3j5ELqxss1yVqOtnepnHVP9aJ7xS"
		crossorigin="anonymous"></script>
	<script
		src="https://cdnjs.cloudflare.com/ajax/libs/classie/1.0.1/classie.min.js"></script>
  
	<script src="/resources/assetsUser/js/modernizr.custom.js"></script>
	<script src="/resources/assetsUser/plugins/vegas/jquery.vegas.min.js"></script>
	<script src="/resources/assetsUser/js/custom.js"></script>


</body>
</html>

