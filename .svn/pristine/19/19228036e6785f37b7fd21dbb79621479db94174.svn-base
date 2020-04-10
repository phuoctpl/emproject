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
<title>Post</title>
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
				<strong>Post</strong>
			</h3>
		</div>
		<div class="row">
			<div class="col-md-12">
				<div class="panel panel-default">
					<div class="panel-heading bg-red">
						<h3 class="panel-title">
							<strong>Active Post</strong> List
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
											<th>Title</th>
											<th>User Post</th>
											<th>Post Date</th>
											<th>Type</th>
											<th>Genre</th>
											<th>Number Of Views</th>
											<th>Number Of reports</th>
											<th>State</th>
										</tr>
									</thead>
									<tbody>
										<s:iterator value="activePostList">
											<tr>
												<s:url id="detailsLink" action="detailPostVideo"
													namespace="/pages/posts">
													<s:param name="id">
														<s:property value="id" />
													</s:param>
												</s:url>
												<s:url id="blockLink" action="blockPost"
													namespace="/pages/admin">
													<s:param name="postId">
														<s:property value="id" />
													</s:param>
												</s:url>
												<td><s:a cssStyle="color:#c75757; text-decoration: none" href="%{detailsLink}"><s:property value="title" /></s:a></td>
												<td><s:property value="user" /></td>
												<td><s:property value="postTime" /></td>
												<td><s:if test="type==0">Audio</s:if><s:if test="type==1">Video</s:if></td>
												<td><s:property value="musicGenre" /></td>
												<td><s:property value="numberOfView" /></td>
												<td><s:property value="numberOfReport" /></td>
												<td><s:a cssClass="btn btn-dark" href="%{blockLink}"><i class="fa-unlock"></i></s:a></td>
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
							<strong>Blocked Post </strong> List
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
											<th>Title</th>
											<th>User Post</th>
											<th>Post Date</th>
											<th>Type</th>
											<th>Genre</th>
											<th>Number Of Views</th>
											<th>Number Of reports</th>
											<th>State</th>
										</tr>
									</thead>
									<tbody>
										<s:iterator value="activePostList">
											<tr>
												<s:url id="detailsLink" action="detailPostVideo"
													namespace="/pages/posts">
													<s:param name="id">
														<s:property value="id" />
													</s:param>
												</s:url>
												<s:url id="unblockLink" action="unblockPost"
													namespace="/pages/admin">
													<s:param name="postId">
														<s:property value="id" />
													</s:param>
												</s:url>
												<td><s:a cssStyle="color:#c75757; text-decoration: none" href="%{detailsLink}"><s:property value="title" /></s:a></td>
												<td><s:property value="user" /></td>
												<td><s:property value="postTime" /></td>
												<td><s:if test="type==0">Audio</s:if><s:if test="type==1">Video</s:if></td>
												<td><s:property value="musicGenre" /></td>
												<td><s:property value="numberOfView" /></td>
												<td><s:property value="numberOfReport" /></td>
												<td><s:a cssClass="btn btn-dark" href="%{unblockLink}"><i class="fa-lock"></i></s:a></td>
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
