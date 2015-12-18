<%@ page language="java" contentType="text/html; charset=UTF-8"
	pageEncoding="UTF-8"%>
<%@ taglib uri="http://java.sun.com/jsp/jstl/core" prefix="c"%>

<%@ taglib uri="http://www.springframework.org/tags" prefix="spring"%>

<html>
<head id="Head1">
<title>Untitled Page</title>
</head>
<body>
	<form method="post" action="feedback_entry.aspx" id="form1">
		<div class="aspNetHidden">
			<input type="hidden" name="__VIEWSTATE" id="__VIEWSTATE"
				value="/wEPDwUKMTM5OTEzODgwOWRkFO4720tBbMuUN0JkkJ7lTBUEDRwaI/JEHwpH+L6f0nU=" />
		</div>

		<div class="aspNetHidden">

			<input type="hidden" name="__VIEWSTATEGENERATOR"
				id="__VIEWSTATEGENERATOR" value="BF315916" /> <input type="hidden"
				name="__EVENTVALIDATION" id="__EVENTVALIDATION"
				value="/wEdAAgcUpB5E7wWbX/7buYIQKFbkXwWyGO1eqjceDn7F+IDApS5JhnPjKbgVi+d2dU+5/FZf0avFvJ2r5ODKebJE7KJbjzwtTeg4iU9xEKxf61/Uwv7EuqWmlf8ehE4060icq5AozvURdyd3gnLF9qRKvYSPOaW1pQztoQA36D1w/+bXfptcYOE5KzmxptYJAji/RO79YEgT0/rxKyzvFxB5lNY" />
		</div>
		<div style="font-family: Verdana">
			<table style="width: 94.5%; border: none;">
				<tr>
					<td style="width: 65%; padding-bottom: 15px; padding-top: 5px">
						<div
							style="width: 100%; padding-left: 2%; padding-top: 10px; padding-bottom: 20px; vertical-align: top">
							<table cellpadding="3" cellspacing="4"
								style="width: 85%; border: solid #187748 1px; vertical-align: top; color: blue">
								<tr>
									<td colspan="2"
										style="background: #187748; color: White; font-weight: bold; font-size: 12pt; font-family: Arial; height: 20px; padding-left: 10px">
										Feedback / Query Form</td>
								</tr>
								<tr>
									<td style="width: 30%; padding-left: 10px"></td>
									<td style="width: 70%; padding-left: 10px"><span
										style="color: #ffffff">.</span></td>
								</tr>
								<tr>
									<td
										style="width: 30%; padding-left: 10px; color: #187748; font-family: Arial; font-size: 14pt;">
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
										style="width: 30%; padding-left: 10px; color: #187748; font-family: Arial; font-size: 14pt;">
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
										style="width: 30%; padding-left: 10px; color: #187748; font-family: Arial; font-size: 14pt;">
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
										style="width: 30%; padding-left: 10px; color: #187748; font-family: Arial; font-size: 14pt;">
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
										style="width: 30%; padding-left: 10px; color: #187748; font-family: Arial; font-size: 14pt;">
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
									<td style="padding-left: 10px; width: 70%"><span
										style="color: #ffffff"> <input type="submit"
											name="btnclear" value="Clear" id="btnclear"
											style="width: 70px;" /> <input type="submit"
											name="btnSubmit" value="Submit" id="btnSubmit"
											style="width: 70px;" /></span></td>
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



						<br />
					<br /> <img src='<spring:url value="/resources/images/customer-feedback.png"></spring:url>'
						style="margin: 120px 0 0 0;" />







					</td>
				</tr>
			</table>
		</div>
	</form>
</body>
</html>
