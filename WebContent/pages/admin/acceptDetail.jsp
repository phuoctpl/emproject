<%@ page language="java" contentType="text/html; charset=UTF-8"
	pageEncoding="UTF-8"%>
<%@ taglib uri="http://java.sun.com/jstl/core" prefix="c"%>
<%@ taglib prefix="s" uri="/struts-tags"%>
<!DOCTYPE html PUBLIC "-//W3C//DTD HTML 4.01 Transitional//EN" "http://www.w3.org/TR/html4/loose.dtd">
<html>
<head>
<title>Report</title>
<meta http-equiv="Content-Type" content="text/html; charset=UTF-8">
<jsp:include page="/assets/elements/adminElement.jsp" />
</head>
<body>
	<jsp:include page="/assets/elements/menuAdmin.jsp" />

	<div id="content" class="span10">
		<div class="demo-row"></div>
		<h1>
			<span class="icon-list-alt"></span>&nbsp;&nbsp;Report
		</h1>
		<table>
			<s:iterator value="reportList">
				<tr>
					<th>ID</th>
					<th>Post</th>
					<th>User Post</th>
					<th>Number Of View</th>
					<th>Number Of report</th>
					<th>Detail</th>
					<th>Accept</th>
				</tr>
				<tr>
					<s:url id="detailsLink" action="viewReportDetail"
						namespace="/pages/admin">
						<s:param name="reportID">
							<s:property value="id" />
						</s:param>
					</s:url>
					<s:url id="acceptLink" action="acceptReport"
						namespace="/pages/admin">
						<s:param name="reportID">
							<s:property value="id" />
						</s:param>
					</s:url>
					<td><s:property value="id" /></td>
					<td><s:property value="post" /></td>
					<td><s:property value="postUser" /></td>
					<td><s:property value="numberOfView" /></td>
					<td><s:property value="numberOfReport" /></td>
					<td><s:a href="%{detailsLink}">Detail</s:a></td>
					<td><s:a href="%{acceptLink}">Accept</s:a></td>
				</tr>
			</s:iterator>
		</table>
		<h2>Handled Report</h2>
		<table>
			<s:iterator value="reportListHandled">
				<tr>
					<th>ID</th>
					<th>Post</th>
					<th>User Post</th>
					<th>Number Of View</th>
					<th>Number Of report</th>
					<th>Admin</th>
					<th>Handle Time</th>
					<th>Detail</th>
					<th>Accept</th>
				</tr>
				<tr>
					<s:url id="detailsLink" action="viewReportDetail"
						namespace="/pages/admin">
						<s:param name="reportID">
							<s:property value="id" />
						</s:param>
					</s:url>
					<s:url id="recoverLink" action="recoverPostt"
						namespace="/pages/admin">
						<s:param name="reportID">
							<s:property value="id" />
						</s:param>
					</s:url>
					<td><s:property value="id" /></td>
					<td><s:property value="post" /></td>
					<td><s:property value="postUser" /></td>
					<td><s:property value="numberOfView" /></td>
					<td><s:property value="numberOfReport" /></td>
					<td><s:property value="admin" /></td>
					<td><s:property value="handleTime" /></td>
					<td><s:a href="%{detailsLink}">Detail</s:a></td>
					<td><s:a href="%{recoverLink}">Recover</s:a></td>
				</tr>
			</s:iterator>
		</table>
	</div>
</body>
</html>