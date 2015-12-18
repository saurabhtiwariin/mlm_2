<%@ page language="java" contentType="text/html; charset=UTF-8"
	pageEncoding="UTF-8"%>
<%@ taglib uri="http://java.sun.com/jsp/jstl/core" prefix="c"%>

<%@ taglib uri="http://www.springframework.org/tags" prefix="spring"%>
<html>
<head id="Head1">
<title>Untitled Page</title>
</head>
<body>
	<form method="post" action="Contactiframe.aspx" id="form1">
		<div class="aspNetHidden">
			<input type="hidden" name="__VIEWSTATE" id="__VIEWSTATE"
				value="/wEPDwUKMTM5OTEzODgwOWRkfm2Oq0LFR188q0B5DJr4kiRPLsRwHVOIw+BuC+ZNEUY=" />
		</div>

		<div class="aspNetHidden">

			<input type="hidden" name="__VIEWSTATEGENERATOR"
				id="__VIEWSTATEGENERATOR" value="D6BB2D1F" /> <input type="hidden"
				name="__EVENTVALIDATION" id="__EVENTVALIDATION"
				value="/wEdAAhyGUzW4tFTYW8g9vtWI63HkXwWyGO1eqjceDn7F+IDApS5JhnPjKbgVi+d2dU+5/FZf0avFvJ2r5ODKebJE7KJbjzwtTeg4iU9xEKxf61/Uwv7EuqWmlf8ehE4060icq5AozvURdyd3gnLF9qRKvYSPOaW1pQztoQA36D1w/+bXWTVu4m+32Ux/4uoV+3sPdkrJzEEUQR3P5lINNPFRt8P" />
		</div>
		<div style="font-family: Verdana">
			<table style="width: 94.5%; border: none;">
				<tr>
					<td style="width: 65%; padding-bottom: 15px; padding-top: 5px">
						<div
							style="width: 100%; padding-left: 2%; padding-top: 10px; padding-bottom: 20px; vertical-align: top">
							<table cellpadding="0" cellspacing="0"
								style="width: 85%; border: solid #192035 1px; vertical-align: top; color: blue; border-radius: 8px;">
								<tr>
									<td colspan="2"
										style="background: #324064; color: White; font-weight: bold; font-size: 12pt; font-family: Arial; height: 30px; padding-left: 10px; border-top-left-radius: 8px; border-top-right-radius: 8px; border-bottom: 2px solid #6c93f8;">
										Feedback / Query Form</td>
								</tr>
								<tr>
									<td style="width: 30%; padding-left: 10px"></td>
									<td style="width: 70%; padding-left: 10px"><span
										style="color: #ffffff">.</span></td>
								</tr>
								<tr>
									<td
										style="width: 30%; padding-left: 10px; color: #333; font-family: Arial; font-size: 13px;">
										Your Name</td>
									<td style="width: 70%; padding-left: 10px"><input
										name="txt_name" type="text" id="txt_name" style="width: 90%;" /></td>
								</tr>
								<tr>
									<td style="width: 30%; padding-left: 10px"></td>
									<td style="width: 70%; padding-left: 10px"><span
										style="color: #ffffff">.</span></td>
								</tr>
								<tr>
									<td
										style="width: 30%; padding-left: 10px; color: #333; font-family: Arial; font-size: 13px;">
										E Mail</td>
									<td style="width: 70%; padding-left: 10px"><input
										name="txt_email" type="text" id="txt_email"
										style="width: 90%;" /></td>
								</tr>
								<tr>
									<td style="width: 30%; padding-left: 10px">&nbsp;</td>
									<td style="width: 70%; padding-left: 10px"><span
										style="color: #ffffff">.</span></td>
								</tr>
								<tr>
									<td
										style="width: 30%; padding-left: 10px; color: #333; font-family: Arial; font-size: 13px;">
										Contact No.</td>
									<td style="width: 70%; padding-left: 10px"><input
										name="txt_mob" type="text" id="txt_mob" style="width: 90%;" /></td>
								</tr>
								<tr>
									<td style="width: 30%; padding-left: 10px"></td>
									<td style="width: 70%; padding-left: 10px"><span
										style="color: #ffffff">.</span></td>
								</tr>
								<tr>
									<td
										style="width: 30%; padding-left: 10px; color: #333; font-family: Arial; font-size: 13px;">
										Subject</td>
									<td style="width: 70%; padding-left: 10px"><input
										name="txt_sub" type="text" id="txt_sub" style="width: 90%;" /></td>
								</tr>
								<tr>
									<td style="width: 30%; padding-left: 10px"></td>
									<td style="width: 70%; padding-left: 10px"><span
										style="color: #ffffff">.</span></td>
								</tr>
								<tr>
									<td
										style="width: 30%; padding-left: 10px; color: #333; font-family: Arial; font-size: 13px;">
										Feedback / Query</td>
									<td style="padding-left: 10px; width: 70%" rowspan="2"><textarea
											name="txt_query" rows="2" cols="20" id="txt_query"
											style="height: 113px; width: 90%;">
</textarea></td>
								</tr>
								<tr>
									<td style="width: 30%; padding-left: 10px"></td>
								</tr>
								<tr>
									<td style="padding-left: 10px; width: 30%; text-align: right">

									</td>
									<td style="padding-left: 10px; width: 70%; height: 35px;">
										<span style="color: #ffffff"> <input type="submit"
											name="btnclear" value="Clear" id="btnclear"
											style="width: 70px;" /> <input type="submit"
											name="btnSubmit" value="Submit" id="btnSubmit"
											style="width: 70px;" /></span>
									</td>
								</tr>
								<tr>
									<td style="padding-left: 10px; width: 30%; text-align: center"
										colspan="2"><span id="lblmsg"
										style="color: Red; font-size: Large;"></span>&nbsp;</td>
								</tr>
							</table>
						</div>
					</td>
					<td
						style="width: 35%; text-align: justify; vertical-align: top; padding-top: 5px">
						<h1 style="color: green; font-size: 20px; color: #192035;">Help
							- 500</h1> <br /> <strong>CONTACT US</strong><br />
					<br />

						<div style="font-size: 13px;">Email-id : support@help-500.in</div>
						<br />
					<br /> <img src='<spring:url value="/resources/images/2page-img1.jpg"></spring:url>' /> </b>

					</td>
				</tr>
			</table>
		</div>
	</form>
</body>
</html>
