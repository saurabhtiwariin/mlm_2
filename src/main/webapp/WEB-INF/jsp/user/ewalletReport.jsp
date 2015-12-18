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
				<th scope="col">Trans Amount</th>
				<th scope="col">After Transaction Amt</th>
				<th scope="col">Date</th>
				<th scope="col">Remarks</th>
			</tr>
			<c:forEach items="${transactions}" var="transaction">
			<tr align="center" style="background-color: #E3EAEB;">
				<td><c:out value="${transaction.amount}"></c:out></td>
				<td><c:out value="${transaction.afterTransactionAmount}"></c:out></td>
				<td><c:out value="${transaction.dateTransaction}"></c:out></td>
				<td><c:out value="${transaction.remark}"></c:out></td>
			</tr>
			</c:forEach>
		</table>
	</div>

	<br /> <input type="submit" name="ctl00$ContentPlaceHolder1$btnimport"
		value="Import To Excel" id="ContentPlaceHolder1_btnimport"
		class="btn btn-gray5" />
</div>
