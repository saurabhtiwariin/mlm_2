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
<head>
<title><tiles:getAsString name="title" /></title>

<script src="/resources/User/js/jquery.js"></script>
<script src="/resources/User/js/bootstrap.min.js"></script>
<link rel="stylesheet" href="/resources/User/css/bootstrap.css" />
<link rel="stylesheet"
	href="/resources/User/css/bootstrap-responsive.css" />
<link rel="stylesheet" href="/resources/User/css/jquery.fancybox.css" />
<link rel="stylesheet" href="/resources/User/css/uniform.default.css" />
<link rel="stylesheet"
	href="/resources/User/css/bootstrap.datepicker.css" />
<link rel="stylesheet" href="/resources/User/css/jquery.cleditor.css" />
<link rel="stylesheet"
	href="/resources/User/css/jquery.plupload.queue.css" />
<link rel="stylesheet" href="/resources/User/css/jquery.tagsinput.css" />
<link rel="stylesheet" href="/resources/User/css/jquery.ui.plupload.css" />
<link rel="stylesheet" href="/resources/User/css/chosen.css" />
<link rel="stylesheet" href="/resources/User/css/chosen.css" />
<link rel="stylesheet" href="/resources/User/css/style.css" />
<link rel="stylesheet" href="/resources/User/css/red.css" />
<link rel="stylesheet" href="/resources/User/css/bootstrap.css" />
<link rel="stylesheet" href="/resources/User/css/jquery.fancybox.css" />
<link rel="stylesheet" href="/resources/User/css/style.css" />
<link rel="stylesheet" href="/resources/User/css/green.css" />
<link rel="stylesheet" href="/resources/User/css/green(Home).css" />
<link rel="stylesheet" href="/resources/User/css/Member.css" />
</head>
<body>

	<tilesx:useAttribute name="current" />

	<div class="topbar clearfix">
		<div class="container-fluid">
			<a href="#" class='company'>
				<h2>HELP-500</h2>
			</a>
			<ul class='mini'>

				<li><a href="#"><span id="Welcome" style="color: white;">Welcome
							<c:out value="${currentUser.name}" />
					</span></a></li>

				<li><a href='<spring:url value="/logout"></spring:url>'> <img
						src="/resources/User/img/icons/fugue/control-power.png" alt="">
						Logout
				</a></li>

			</ul>
		</div>
	</div>


	<div class="main">
		<div class="navi">
			<ul class='main-nav'>
				<li class='active'><a
					href='<spring:url value="/user/memberZone.html"></spring:url>'
					class='light'>
						<div class="ico">
							<i class="icon-home icon-white"></i>
						</div> Dashboard <span class="label label-warning">10</span>
				</a></li>

				<li><a href="#" class='light toggle-collapsed'>
						<div class="ico">
							<i class="icon-th-large icon-white"></i>
						</div> Member <img src="/resources/User/img/toggle-subnav-down.png"
						alt="">
				</a>
					<ul class='collapsed-nav closed'>
						<li><a
							href='<spring:url value="/user/editProfile.html"></spring:url>'>Edit
								Profile </a></li>
						<li><a
							href='<spring:url value="/user/welcomeLetter.html"></spring:url>'>Welcome
								Letter </a></li>
						<li><a
							href='<spring:url value="/user/editPassword.html"></spring:url>'>Edit
								Password </a></li>
					</ul></li>
				<li><a href="#" class='light toggle-collapsed'>
						<div class="ico">
							<i class="icon-tasks icon-white"></i>
						</div> Business Details <img
						src="/resources/User/img/toggle-subnav-down.png" alt="">
				</a>
					<ul class='collapsed-nav closed'>
						<li><a
							href='<spring:url value="/user/directMember.html"></spring:url>'>Direct
								Member </a></li>
						<li><a
							href='<spring:url value="/user/myDownline.html"></spring:url>'>My
								Downline </a></li>
						<li><a href="DownlineDetails.aspx">Downline Details </a></li>
						<li><a
							href='<spring:url value="/user/ganealogy.html"></spring:url>'>Ganealogy
						</a></li>

					</ul></li>

				<li><a href="#" class='light toggle-collapsed'>
						<div class="ico">
							<i class="icon-exclamation-sign icon-white"></i>
						</div> Payout Details <img
						src="/resources/User/img/toggle-subnav-down.png" alt="">
				</a>
					<ul class='collapsed-nav closed'>
						<li><a
							href='<spring:url value="/user/dailyIncome.html"></spring:url>'>Daily
								Income </a></li>
						<li><a
							href='<spring:url value="/user/directIncome.html"></spring:url>'>
								Direct Income </a></li>
						<li><a
							href='<spring:url value="/user/binaryIncome.html"></spring:url>'>Matching
								Benefit </a></li>

					</ul></li>

				<li><a href="#" class='light toggle-collapsed'>
						<div class="ico">
							<i class="icon-book icon-white"></i>
						</div> Fund Management <img
						src="/resources/User/img/toggle-subnav-down.png" alt="">
				</a>
					<ul class='collapsed-nav closed'>
						<li><a
							href='<spring:url value="/user/myBalance.html"></spring:url>'>My
								Balance </a></li>
						<li><a
							href='<spring:url value="/user/ewalletReport.html"></spring:url>'>Ewallet
								Report </a></li>
						<li><a
							href='<spring:url value="/user/commitment.html"></spring:url>'>Make
								Commitment </a></li>
						<li><a
							href='<spring:url value="/user/commitmentReport.html"></spring:url>'>Commitment
								Report </a></li>

						<li><a
							href='<spring:url value="/user/withdrawl.html"></spring:url>'>WithDrawl
								Balance </a></li>
						<li><a
							href='<spring:url value="/user/withdrawlReport.html"></spring:url>'>WithDrawl
								Report </a></li>
						<li><a
							href='<spring:url value="/user/acceptHelpReport.html"></spring:url>'>Accept
								Help Report </a></li>
					</ul></li>
				<li><a href="#" class='light toggle-collapsed'>
						<div class="ico">
							<i class="icon-envelope icon-white"></i>
						</div> Mail Box <img src="/resources/User/img/toggle-subnav-down.png"
						alt="">
				</a>

					<ul class='collapsed-nav closed'>
						<li><a
							href='<spring:url value="/user/complaintForm.html"></spring:url>'>Send
								Mail </a></li>

						<li><a
							href='<spring:url value="/user/complaintReport.html"></spring:url>'>Mail
								Report </a></li></li>
			</ul>
			<security:authorize access="isAuthenticated()">

				<li class="${current == 'account' ? 'active' : ''}"><a
					href="<spring:url value="/account.html" />"
					class='light'>
						<div class="ico">
							<i class="icon-home icon-white"></i>
						</div> My Account
				</a></li>

				<li class="${current == 'account' ? 'active' : ''}"><a
					href="<spring:url value="/logout" />"
					class='light'>
						<div class="ico">
							<i class="icon-off icon-white"></i>
						</div>Logout
				</a></li>
			</security:authorize>
		</div>
		<h2 style="font-size: 20pt; padding-bottom: 25px"></h2>
		<tiles:insertAttribute name="body" />





	</div>

	<script src="/resources/User/js/less.js"></script>
	<script src="/resources/User/js/jquery.uniform.min.js"></script>
	<script src="/resources/User/js/bootstrap.timepicker.js"></script>
	<script src="/resources/User/js/bootstrap.datepicker.js"></script>
	<script src="/resources/User/js/chosen.jquery.min.js"></script>
	<script src="/resources/User/js/jquery.fancybox.js"></script>
	<script src="/resources/User/js/plupload/plupload.full.js"></script>
	<script
		src="/resources/User/js/plupload/jquery.plupload.queue/jquery.plupload.queue.js"></script>
	<script src="/resources/User/js/jquery.cleditor.min.js"></script>
	<script src="/resources/User/js/jquery.inputmask.min.js"></script>
	<script src="/resources/User/js/jquery.tagsinput.min.js"></script>
	<script src="/resources/User/js/jquery.mousewheel.js"></script>
	<script src="/resources/User/js/jquery.dataTables.min.js"></script>
	<script src="/resources/User/js/jquery.dataTables.bootstrap.js"></script>
	<script src="/resources/User/js/jquery.textareaCounter.plugin.js"></script>
	<script src="/resources/User/js/ui.spinner.js"></script>
	<script src="/resources/User/js/custom.js"></script>

</body>
</html>
