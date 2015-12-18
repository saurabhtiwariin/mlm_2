<%@ page language="java" contentType="text/html; charset=UTF-8"
	pageEncoding="UTF-8"%>

<%@ include file="../../layout/taglib.jsp"%>

<script type="text/javascript">
	$(document).ready(function() {

		$("#container").hover(function(event) {
			var id = $("#uploadId").val();
			$("#viewSlipDiv").load('/user/memberZone/viewSlip.html', {
				"id" : id
			});
		}, function(event) {
			$("#viewSlipDiv").html("");
		});
	});
</script>


<c:if test="${success eq true}">
	<div class="alert alert-success">Saved successfully!</div>
</c:if>
<c:if test="${invalidAmount eq true}">
	<div class="alert alert-success">Please enter amount in multiple of 1000. (1000,2000,3000,...)</div>
</c:if>
<c:if test="${invalidCommitAmount eq true}">
	<div class="alert alert-success">Please enter amount in multiple of 5000. (5000,10000,15000,...)</div>
</c:if>
<c:if test="${lowBal eq true}">
	<div class="alert alert-success">Don't have enough amount to make this transaction!, Please make a Commitment.</div>
</c:if>

<div class="myClass">



	<div id="printerDiv"
		style="display: none; position: absolute; width: auto; background-color: #ffffff; left: 50%; z-index: 1000; margin-left: -150px; top: 50%; margin-top: -150px; height: auto; border: solid 1px #000; overflow: scroll;">
		<div id="close" onclick="hide()" style="cursor: pointer;">Close</div>
		<div id="mainshow"></div>
	</div>
	<ul class="quicktasks">
		<li><a
			href='<spring:url value="/user/editProfile.html"></spring:url>'>
				<img src="/resources/User/img/icons/essen/32/order-149.png" alt="">
				<span>Edit Profile</span>
		</a></li>
		<li><a
			href='<spring:url value="/user/editPassword.html"></spring:url>'>
				<img src="/resources/User/img/icons/essen/32/calendar.png" alt="">
				<span>Change Password</span>
		</a></li>

		<li><a
			href='<spring:url value="/user/directMember.html"></spring:url>'>
				<img src="/resources/User/img/icons/essen/32/communication.png"
				alt=""> <span>Direct Members</span>
		</a></li>
		<li><a
			href='<spring:url value="/user/myDownline.html"></spring:url>'> <img
				src="/resources/User/img/icons/essen/32/hire-me.png" alt=""> <span>Downline</span>
		</a></li>

		<li><a
			href='<spring:url value="/user/commitment.html"></spring:url>'> <img
				src="/resources/User/img/icons/essen/32/cost.png" alt=""> <span>Make
					Commitment</span>
		</a></li>
		<li><a
			href='<spring:url value="/user/myBalance.html"></spring:url>'> <img
				src="/resources/User/img/icons/essen/32/shipping.png" alt="">
				<span>Balance</span>
		</a></li>
		<li><a
			href='<spring:url value="/user/ewalletReport.html"></spring:url>'>
				<img src="/resources/User/img/icons/essen/32/statistics.png" alt="">
				<span>Fund Transfer Report</span>
		</a></li>

	</ul>


	<div class="give">
		<div class="givebtn">
			<a href="/user/commitment.html"> <img
				src="/resources/User/img/givehelp.png" border="0" /></a>
		</div>
		<div class="givebox">
			<table id="ContentPlaceHolder1_dlgivehelp" cellspacing="0"
				style="border-collapse: collapse;">
				<c:forEach items="${giveHelpDataList}" var="accept">

					<tr>
						<td>
							<div>
								Status: <span id=""
									style="color: Green; font-size: Large; font-weight: bold;"><c:out
										value="${accept.status.name }" /></span><br />Request Date : <span
									id=""><c:out value="${accept.reqDate }" /></span> <br />Fulfilled
								Date : <span id=""><c:out value="${accept.confDate }" /></span>
								<br /> Name/ID : <span id=""><c:out
										value="${accept.user.name }" /></span>( <span id=""><c:out
										value="${accept.user.id }" /></span>)<br /> Amount: <span id=""><c:out
										value="${accept.amount }" /></span>/- Mobile No: <span id=""><c:out
										value="${accept.user.mobNo }" /></span><br /> Sponser : <span id=""><c:out
										value="${accept.user.sponser.name }" /></span>,<span id=""><c:out
										value="${accept.user.sponser.id }" /></span><br /> Bank :<span
									id=""><c:out
										value="${accept.user.bankDetails.bankName }" /></span>,<span id=""><c:out
										value="${accept.user.bankDetails.accountHolderName }" /></span><br />
								A/c No : <span id=""><c:out
										value="${accept.user.bankDetails.accountNo }" /></span>IFSC : <span
									id=""><c:out
										value="${accept.user.bankDetails.bankIFSC }" /></span><br /> Branch
								: <span id=""><c:out
										value="${accept.user.bankDetails.bankBranch }" /></span> <br />
							</div>
						</td>
					</tr>
					<tr>
						<td><form:form commandName="fileUpload" method="post"
								enctype="multipart/form-data">
								<c:if test="${successUpload eq true}">
									<div class="alert alert-success">Upload successfull!</div>
								</c:if>
								Upload bank slip : <span id=""><input type="file"
									name="file" id="file" size="50" /></span>
								<br />
								<input type="hidden" name="acceptId" id="acceptId"
									value="${accept.id}">
								<input type="submit" value="Upload" />
							</form:form></td>
					</tr>

				</c:forEach>
			</table>
		</div>
	</div>
	<div class="give">
		<div class="givebtn">
			<a href="/user/withdrawl.html"> <img
				src="/resources/User/img/gethelp.png" border="0" /></a>
		</div>
		<div class="getbox">
			<table id="ContentPlaceHolder1_dlaccept" cellspacing="0"
				style="border-collapse: collapse;">
				<tbody>
					<c:forEach items="${helpDataList}" var="accept">
						<tr>
							<td>
								<div id="container">

									<a
										href='<spring:url value="/user/acceptPayment.html?acceptId=${accept.id}"/>'
										class="btn btn-info btn-lg"> Click here if payment
										recieved </a>
									<hr>

									Status : <span id=""
										style="color: Green; font-size: Large; font-weight: bold;">
										<c:out value="${accept.status.name}" />
									</span><br> Cheque Date: <span id=""><c:out
											value="${accept.commit.dateChequeUploaded}" /></span><br />

									Fulfilled Date : <span id=""><c:out
											value="${accept.confDate}" /></span><br />

									<%-- Time :
                       <span id="" style="font-weight:bold;">Time is Over<c:out value="${accept. }"/></span><br>
                         --%>
									Name/ID : <span id=""><c:out
											value="${accept.commit.user.name }" /></span>( <span id=""><c:out
											value="${accept.commit.user.id }" /></span>)<br> Amount : <span
										id=""><c:out value="${accept.commit.amount }" /></span>/-<br />
									Mobile No: <span id=""><c:out
											value="${accept.commit.user.mobNo }" /></span><br> Sponser : <span
										id=""><c:out
											value="${accept.commit.user.sponser.name }" /></span>(<span id=""><c:out
											value="${accept.commit.user.sponser.id }" /></span>)<br>
									Mobile No : <span id=""><c:out
											value="${accept.commit.user.sponser.mobNo}" /></span><br />To View
									Attach Slip Click Button : <input type="text" id="fileName"
										value='<c:out value="${accept.fileUpload.fileName}"/>'
										readonly="readonly" style="width: 20%;" /> <input
										type="hidden" id="uploadId"
										value='<c:out value="${accept.fileUpload.id}"/>' />

									<div id="viewSlipDiv"></div>
								</div>
							</td>
						</tr>
					</c:forEach>
				</tbody>
			</table>
		</div>
	</div>

	<br />





</div>
