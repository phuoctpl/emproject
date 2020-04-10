<%@ page language="java" contentType="text/html; charset=UTF-8"
	pageEncoding="UTF-8"%>
<%@ taglib prefix="s" uri="/struts-tags"%>
<!DOCTYPE html PUBLIC "-//W3C//DTD HTML 4.01 Transitional//EN" "http://www.w3.org/TR/html4/loose.dtd">
<html>
<head>
<meta http-equiv="Content-Type" content="text/html; charset=UTF-8">
<title><s:text name="login-title" /></title>
<jsp:include page="../../assets/elements/assetsElement.jsp" />
</head>
<body>
	<div class="container">
		<div id="todo" style="margin: 20 px; padding-top: 70px"
			class="droppedHover">
			<div class="container-fluid">
				<div class="demo-row">
					<jsp:include page="../../assets/elements/menuUser.jsp" />
				</div>
				<div class="row">
					<div class="col-sm-12 col-md-12">
						<div class="row">
							<div class="col-sm-2 col-md-2" style="">
								<small style="" class=""><s:property value="name" />
								</small>

								<div class="container" id="imageperfil">
									<img src='../../assets/images/avatar/<s:property value="avatar"/>' class="avatar img-circle" />
								</div>

								<hr class="">
								<table class="">
									<tbody>
										<tr>
											<td><small class="">Friend</small></td>
											<td><span class="badge">34</span></td>
										</tr>
										<tr>
											<td class=""></td>
											<td class=""></td>
										</tr>
										<tr>
											<td><small class="">Post</small></td>
											<td><span class="badge badge-success">334</span></td>
										</tr>
										<tr>
											<td class=""></td>
											<td class=""></td>
										</tr>
										<tr>
											<td><small class="">Comment</small></td>
											<td><span class="badge">4</span></td>
										</tr>
										<tr>
											<td class=""></td>
											<td class=""></td>
										</tr>
										<tr>
											<td><small class="">Score</small></td>
											<td><span class="badge badge-info">5234</span></td>
										</tr>
									</tbody>
								</table>
							</div>


							<div class="col-sm-10 col-md-10">

								<div class="alert alert-info alert-dismissable">
									<a class="panel-close close" data-dismiss="alert">×</a> <i
										class="fa fa-coffee"></i> This is an <strong>.alert</strong>.
									Use this to show important messages to the user.
								</div>

								<h3>
									<span class="glyphicon glyphicon-user"></span> Personal info 
								</h3>
								<s:form action="displayEditProfileAction" class="form-horizontal" role="form">
									<table class="table table-striped">
										<tr>
											<td>Name </td>
											<td><s:property value="name" /></td>
										</tr>
										<tr>
											<td>Email</td>
											<td><s:property value="email" /></td>
										</tr>
										<tr>
											<td>Gender</td>
											<td><s:property value="gender" /></td>
										</tr>
										<tr>
											<td>Address</td>
											<td><s:property value="address" /></td>
										</tr>
										<tr>
											<td>Country</td>
											<td><s:property value="country" /></td>
										</tr>
										<tr>
											<td>City</td>
											<td><s:property value="city" /></td>
										</tr>
										<tr>
											<td>Phone</td>
											<td><s:property value="phone" /></td>
										</tr>
										<tr>
											<td>Music genre</td>
											<td><s:property value="musicGenre" /></td>
										</tr>
										<tr>
											<td>Birth date</td>
											<td><s:property value="birthDate" /></td>
										</tr>
										
									</table>
										<div style="text-align: right" class="col-md-12">
											<input type="submit" class="btn btn-primary"
												value="Edit profile"> <span></span>
											<button type="button" class="btn btn-link" ><span class="glyphicon glyphicon-arrow-right"></span>Go to your changer</button>
										</div>
									
								</s:form>

							</div>
						</div>
					</div>
				</div>
			</div>
		</div>
	</div>
</body>
</html>