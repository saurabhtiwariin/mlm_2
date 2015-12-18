<%@ page language="java" contentType="text/html; charset=UTF-8"
	pageEncoding="UTF-8"%>

<%@ include file="../../layout/taglib.jsp"%>

<h2 style="font-size: 20pt; padding-bottom: 15px">

	<script type="text/javascript">
		function show(id) {
			var div = document.getElementById("printerDiv");
			div.style.display = "Block";
			document.getElementById("mainshow").innerHTML = '<iframe src="ViewReciept.aspx?q='
					+ id + '" width="400" height="400"></iframe>';
		}
		function hide() {
			document.getElementById("printerDiv").style.display = "none";
		}
	</script>


</h2>
<div class="myClass">

	<div id="printerDiv"
		style="display: none; position: absolute; width: auto; background-color: #ffffff; left: 50%; z-index: 1000; margin-left: -150px; top: 50%; margin-top: -150px; height: auto; border: solid 1px #000; overflow: scroll;">
		<div id="close" onclick="hide()" style="cursor: pointer;">Close</div>
		<div id="mainshow"></div>
	</div>
	<ul class="quicktasks">
		<li><a href="EditProfile.aspx"> <img
				src="/resources/User/img/icons/essen/32/order-149.png" alt="">
				<span>Edit Profile</span>
		</a></li>
		<li><a href="EditPassword.aspx"> <img
				src="/resources/User/img/icons/essen/32/calendar.png" alt="">
				<span>Change Password</span>
		</a></li>

		<li><a href="DirectMembers.aspx"> <img
				src="/resources/User/img/icons/essen/32/communication.png" alt="">
				<span>Direct Members</span>
		</a></li>
		<li><a href="MyDownline.aspx"> <img
				src="/resources/User/img/icons/essen/32/hire-me.png" alt=""> <span>Downline</span>
		</a></li>

		<li><a href='<spring:url value="/commitment.html"></spring:url>'> <img
				src="/resources/User/img/icons/essen/32/cost.png" alt=""> <span>Make
					Commitment</span>
		</a></li>
		<li><a href="MyBalance.aspx"> <img
				src="/resources/User/img/icons/essen/32/shipping.png" alt="">
				<span>Balance</span>
		</a></li>
		<li><a href="EwalletReport.aspx"> <img
				src="/resources/User/img/icons/essen/32/statistics.png" alt="">
				<span>Fund Transfer Report</span>
		</a></li>

	</ul>
</div>
<script type="text/javascript">
	$(document).ready(function() {
		$(".triggerRemove").click(function(e) {
			e.preventDefault();
			$("#modalRemove .removeBtn").attr("href", $(this).attr("href"));
			$("#modalRemove").modal();
		});
	});
</script>

<table class="table table-bordered table-hover table-striped">
	<thead>
		<tr>
			<th>user name</th>
			<th>Operation</th>
		</tr>
	</thead>
	<tbody>
		<c:forEach items="${users}" var="user">
			<tr>
				<td><a href="<spring:url value="users/${user.id}.html"/>">
						<c:out value="${user.name}" />
				</a></td>

				<td><a
					href="<spring:url value="/users/remove/${user.id}.html" />"
					class="btn btn-danger triggerRemove">remove user</a></td>
			</tr>
		</c:forEach>
	</tbody>
</table>


<!-- Modal -->
<div class="modal fade" id="modalRemove" tabindex="-1" role="dialog"
	aria-labelledby="myModalLabel" aria-hidden="true">
	<div class="modal-dialog">
		<div class="modal-content">
			<div class="modal-header">
				<button type="button" class="close" data-dismiss="modal"
					aria-hidden="true">&times;</button>
				<h4 class="modal-title" id="myModalLabel">Remove blog</h4>
			</div>
			<div class="modal-body">Really remove?</div>
			<div class="modal-footer">
				<button type="button" class="btn btn-default" data-dismiss="modal">Cancel</button>
				<a href="" class="btn btn-danger removeBtn">Remove</a>
			</div>
		</div>
	</div>
</div>