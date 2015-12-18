<%@ page language="java" contentType="text/html; charset=UTF-8"
	pageEncoding="UTF-8"%>

<%@ include file="../../layout/taglib.jsp"%>


<div class="myClass">
	<script type="text/javascript">
		//<![CDATA[
		Sys.WebForms.PageRequestManager._initialize('ctl00$ScriptManager1',
				'form1', [], [], [], 90, 'ctl00');
		//]]>
	</script>



	<table>
		<tr>
			<td>User ID</td>
			<td><input name="ctl00$ContentPlaceHolder1$txt_UID" type="text"
				value="PIYUSHKING" id="ContentPlaceHolder1_txt_UID"
				disabled="disabled" class="aspNetDisabled"
				style="color: #990000; background-color: #CCFFFF; font-weight: bold; width: 245px;" />
			</td>
		</tr>
		<tr>
			<td>Subject</td>
			<td><input name="ctl00$ContentPlaceHolder1$txt_Subject"
				type="text" id="ContentPlaceHolder1_txt_Subject"
				style="width: 245px;" /></td>
		</tr>
		<tr>
			<td>Contact No</td>
			<td><input name="ctl00$ContentPlaceHolder1$txt_MobNo"
				type="text" id="ContentPlaceHolder1_txt_MobNo" style="width: 245px;" />
			</td>
		</tr>
		<tr>
			<td>Message / Query</td>
			<td><textarea name="ctl00$ContentPlaceHolder1$txt_Query"
					rows="2" cols="20" id="ContentPlaceHolder1_txt_Query"
					style="height: 82px; width: 245px;">
</textarea></td>
		</tr>
		<tr>
			<td></td>
			<td><input type="submit"
				name="ctl00$ContentPlaceHolder1$btnSave" value="Submit Complaint"
				id="ContentPlaceHolder1_btnSave" class="btn btn-gray5"
				style="font-weight: bold;" /></td>
		</tr>
	</table>
	<span id="ContentPlaceHolder1_lblmsg"
		style="color: #CC3300; font-weight: bold;"></span> <input
		type="hidden" name="ctl00$ContentPlaceHolder1$hduid"
		id="ContentPlaceHolder1_hduid" value="1685" />


</div>