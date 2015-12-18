<%@ page language="java" contentType="text/html; charset=UTF-8"
	pageEncoding="UTF-8"%>

<%@ include file="../../layout/taglib.jsp"%>
<div class="myClass">

	<br />

	<div>
		<table class="myGridStyle" cellspacing="0" cellpadding="4" id=""
			style="color: #333333; width: 1070px; border-collapse: collapse; margin-left: 20px;">
			<tr
				style="color: White; background-color: #3B3737; font-weight: bold;">
				<th scope="col">Amount</th>
				<th scope="col">Date</th>
				<th scope="col">Status</th>
				<th scope="col">CommitNo</th>
			</tr>
			<c:forEach items="${transactions}" var="transaction">
			<tr align="center" style="background-color: #E3EAEB;">
				<td><c:out value="${transaction.amount}"></c:out></td>
				<td><c:out value="${transaction.dateTransaction}"></c:out></td>
				<td><c:out value="${transaction.status.id}"></c:out></td>
				<td><c:out value="${transaction.commit.id}"></c:out></td>
			</tr>
			</c:forEach>
		</table>
	</div>

	<input type="hidden" name="ctl00$ContentPlaceHolder1$hduid"
		id="ContentPlaceHolder1_hduid" value="1685" />


</div>