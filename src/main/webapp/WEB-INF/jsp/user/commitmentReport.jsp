<%@ page language="java" contentType="text/html; charset=UTF-8"
	pageEncoding="UTF-8"%>

<%@ include file="../../layout/taglib.jsp"%>

<div class="myClass">

	<br />

	<div>
		<table class="myGridStyle" cellspacing="0" cellpadding="4"
			id="ContentPlaceHolder1_GridView1"
			style="color: #333333; width: 1070px; border-collapse: collapse; margin-left: 20px;">
			<tr
				style="color: White; background-color: #3B3737; font-weight: bold;">
				<th scope="col">CommitId</th>
				<th scope="col">CommitAmt</th>
				<th scope="col">CommitDate</th>
				<th scope="col">Status</th>
				<th scope="col">ConfirmDate</th>
			</tr>
			<c:forEach items="${user.commits}" var="commit">
				<tr align="center" style="background-color: #E3EAEB;">
					<td><c:out value="${commit.id}" /></td>
					<td><c:out value="${commit.amount}" /></td>
					<td><c:out value="${commit.dateCommit}" /></td>
					<td><c:out value="${commit.status.name}" /></td>
					<td><c:out value="${commit.dateConf}" /></td>
				</tr>
			</c:forEach>

		</table>
	</div>
	<br />
	<!-- 	<input type="submit" name="ctl00$ContentPlaceHolder1$btnimport"
		value="Import To Excel" id="ContentPlaceHolder1_btnimport"
		class="btn btn-gray5" />
 -->
</div>