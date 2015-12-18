<%@ page language="java" contentType="text/html; charset=UTF-8"
	pageEncoding="UTF-8"%>

<%@ include file="../../layout/taglib.jsp"%>

<div class="myClass">



	<br />

	<div>
		<table class="myGridStyle" cellspacing="0" cellpadding="4"
			id="ContentPlaceHolder1_GridView1"
			style="color: #333333; width: 1070px; border-collapse: collapse; margin-left: 20px; font-family: Verdana">
			<tr
				style="color: White; background-color: #3B3737; border-style: Inset; font-weight: bold;">
				<th scope="col">User ID</th>
				<th scope="col">User Name</th>
				<th scope="col">Mobile</th>
				<th scope="col">Status</th>
				<th scope="col">Date of Joining</th>
			</tr>
		<c:if test="${not empty user.downlineUsers}">			
			<c:forEach items="${user.downlineUsers}" var="downLineUser">
				<tr align="center"
					style="background-color: #E3EAEB; border-style: Solid;">
					<td><c:out value="${downLineUser.id}"></c:out></td>
					<td><c:out value="${downLineUser.name}"></c:out></td>
					<td><c:out value="${downLineUser.mobNo}"></c:out></td>
					<c:if test="${downLineUser.enabled eq true}">
						<td>ACTIVE</td>
					</c:if>
					<c:if test="${downLineUser.enabled eq false}">
						<td>INACTIVE</td>
					</c:if>
					<td><c:out value="${downLineUser.doj}"></c:out></td>
				</tr>
			</c:forEach>
			</c:if>
		</table>
	</div>
	<br /> <input type="submit" name="ctl00$ContentPlaceHolder1$btnimport"
		value="Import To Excel" id="ContentPlaceHolder1_btnimport"
		class="btn btn-gray5" /> <input type="hidden"
		name="ctl00$ContentPlaceHolder1$hduid" id="ContentPlaceHolder1_hduid"
		value="1685" />


</div>