<%@ page language="java" contentType="text/html; charset=UTF-8"
	pageEncoding="UTF-8"%>
<%@ taglib uri="http://java.sun.com/jstl/core" prefix="c"%>
<%@ taglib prefix="s" uri="/struts-tags"%>
<!DOCTYPE html>
<!-- Added by HTTrack -->
<meta http-equiv="content-type" content="text/html;charset=UTF-8" />
<!-- /Added by HTTrack -->
<head>
<!-- BEGIN META SECTION -->
<meta charset="utf-8">
<title>Report</title>
<meta name="viewport" content="width=device-width, initial-scale=1">
<meta content="" name="description" />
<meta content="themes-lab" name="author" />
<!-- END META SECTION -->
<jsp:include page="../../assets/elements/adminElement.jsp" />

</head>

<body data-page="forms">
	<jsp:include page="../../assets/elements/menuAdmin.jsp" />
	<!-- BEGIN MAIN CONTENT -->
	<div id="main-content">
		<div class="page-title">
			<i class="icon-custom-left"></i>
			<h3>
				<strong>Report</strong>
			</h3>
		</div>
		<div class="row">
			<div class="col-md-12">
				<div class="panel panel-default">
					<div class="panel-heading bg-red">
						<h3 class="panel-title">
							<strong>Report's </strong> List
						</h3>
					</div>
					<div class="panel-body">
						<div class="row">
							<div
								class="col-md-12 col-sm-12 col-xs-12 table-responsive table-red">
								<table cellpadding="0" cellspacing="0" border="0"
									class="table table-striped table-hover table-dynamic">
									<thead>
										<tr>
											
											<th>Post</th>
											<th>User Post</th>
											<th>Number Of View</th>
											<th>Number Of report</th>
											<th>Detail</th>
											<th>Accept</th>
											<th>Description</th>
										</tr>
									</thead>
									<tbody>
										<s:iterator value="reportList">
											<tr>
												<s:url id="detailsLink" action="detailPostVideo"
													namespace="/pages/posts">
													<s:param name="id">
														<s:property value="id" />
													</s:param>
												</s:url>
												<s:url id="acceptLink" action="acceptReport"
													namespace="/pages/admin">
													<s:param name="reportID">
														<s:property value="id" />
													</s:param>
												</s:url>
												<td><s:property value="post" /></td>
												<td><s:property value="postUser" /></td>
												<td><s:property value="numberOfView" /></td>
												<td><s:property value="numberOfReport" /></td>
												
												<td><s:a cssStyle="color:#c75757; text-decoration: none" href="%{detailsLink}">Detail</s:a></td>
												<td><s:a cssStyle="color:#c75757; text-decoration: none" href="%{acceptLink}">Accept</s:a></td>
												<td><a rel="description">Description</a></td>
											</tr>
										</s:iterator>
									</tbody>
								</table>
							</div>
						</div>
					</div>
				</div>
			</div>
		</div>
		<div class="row">
			<div class="col-md-12">
				<div class="panel panel-default">
					<div class="panel-heading bg-red">
						<h3 class="panel-title">
							<strong>Handled Report </strong> List
						</h3>
					</div>
					<div class="panel-body">
						<div class="row">

							<div
								class="col-md-12 col-sm-12 col-xs-12 table-responsive table-red">
								<table cellpadding="0" cellspacing="0" border="0"
									class="table table-striped table-hover table-dynamic">
									<thead>
										<tr>
											<th>ID</th>
											<th>Post</th>
											<th>User Post</th>
											<th>Number Of View</th>
											<th>Number Of report</th>
											<th>Admin</th>
											<th>Handle Time</th>
											<th>Detail</th>
											<th>Recover</th>
										</tr>
									</thead>
									<tbody>
										<s:iterator value="reportListHandled">
											<tr>
												<s:url id="detailsLink" action="viewReportDetail"
													namespace="/pages/admin">
													<s:param name="reportID">
														<s:property value="id" />
													</s:param>
												</s:url>
												<s:url id="recoverLink" action="recoverReport"
													namespace="/pages/admin">
													<s:param name="reportID">
														<s:property value="id" />
													</s:param>
												</s:url>
												<td ><s:property value="id" /></td>
												<td><s:property value="post" /></td>
												<td><s:property value="postUser" /></td>
												<td><s:property value="numberOfView" /></td>
												<td><s:property value="numberOfReport" /></td>
												<td><s:property value="admin" /></td>
												<td><s:property value="handleTime" /></td>
												<td><s:a cssStyle="color:#c75757; text-decoration: none " href="%{detailsLink}">Detail</s:a></td>
												<td><s:a cssStyle="color:#c75757; text-decoration: none" href="%{recoverLink}">Recover</s:a></td>
											</tr>
										</s:iterator>
									</tbody>
								</table>
							</div>
						</div>
					</div>
				</div>
			</div>


		</div>
		<!-- END WRAPPER -->
		<jsp:include page="../../assets/elements/element_pack/tablesE.jsp" />
</body>

</html>
