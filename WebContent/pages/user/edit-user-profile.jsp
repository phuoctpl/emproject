<%@ page language="java" contentType="text/html; charset=UTF-8"
	pageEncoding="UTF-8"%>
<%@ taglib prefix="s" uri="/struts-tags"%>
<!DOCTYPE html PUBLIC "-//W3C//DTD HTML 4.01 Transitional//EN" "http://www.w3.org/TR/html4/loose.dtd">
<html>
<head>
<title><s:text name="login-title" /></title>
<jsp:include page="../../assets/elements/assetsElement.jsp" />


</head>
<body>
	<div class="container">
		<div class="demo-row">
			<jsp:include page="../../assets/elements/menuUser.jsp" />
		</div>
		
		<div class="demo-row"></div>
		
		<h1>Edit Profile</h1>
  	<hr>
	<div class="row">
      <!-- left column -->
      <div class="col-md-3">
      	<!-- <img src="//placehold.it/100" class="avatar img-circle" alt="avatar"> -->
      
      	<img src='../../assets/images/avatar/<s:property value="avatar"/>' class="avatar img-circle" />
      	Upload a different photo...
        <div class="text-center">
        	<s:form action="uploadAvatarImage" enctype="multipart/form-data" method="post">
				<s:file cssClass="form-control" name="avatarImage"></s:file>
			</s:form>
        </div>
      </div>
      
      <!-- edit form column -->
      <div class="col-md-9 personal-info">
        <div class="alert alert-info alert-dismissable">
          <a class="panel-close close" data-dismiss="alert">×</a> 
          <i class="fa fa-coffee"></i>
          This is an <strong>.alert</strong>. Use this to show important messages to the user.
        </div>
        <h3>Personal info</h3>
       <%-- <s:form action="uploadAvatarImage" cssClass="form-horizontal" role="form" enctype="multipart/form-data"> --%> 
       <s:form action="editUserProfileAction" cssClass="form-horizontal" role="form" enctype="multipart/form-data"> 
									<div class="form-group">
										<label class="col-lg-3 control-label">Name:</label>
										<div class="col-lg-8">
											<s:textfield name="name" cssClass="form-control"></s:textfield>
										</div>
									</div>
									
									<div class="form-group">
										<label class="col-md-3 control-label">Password:</label>
										<div class="col-md-8">
											<input name="passwd1" class="form-control" type="password"
												value="11111122333">
										</div>
									</div>
									<div class="form-group">
										<label class="col-md-3 control-label">Confirm
											password:</label>
										<div class="col-md-8">
											<input name="passwd2" class="form-control" type="password"
												value="11111122333">
										</div>
									</div>
									<div class="form-group">
										<label class="col-lg-3 control-label">Email:</label>
										<div class="col-lg-8">
											<input disabled="disabled" name="email" class="form-control" type="text" value="<s:property value="email" />">
										</div>
									</div>
									<div class="form-group">
										<label class="col-md-3 control-label">Gender:</label>

										<div class="col-md-8">
											<s:radio cssStyle="margin-left: 20px" list="genders" name="gender" value="gender"></s:radio>
										</div>
									
									</div>
									<div class="form-group">
										<label class="col-md-3 control-label">Address:</label>
										<div class="col-md-8">
											<input name="address" class="form-control" type="text" value="<s:property value="address" />">
										</div>
									</div>
									<div class="form-group">
										<label class="col-lg-3 control-label">Country:</label>
										<div class="col-lg-8">
											<s:select list="countries" name="country" value="country" cssClass="form-control"></s:select>
										</div>
									</div>
									<div class="form-group">
										<label class="col-lg-3 control-label">City:</label>
										<div class="col-lg-8">
											<input name="city" class="form-control" type="text" value="<s:property value="city" />">
										</div>
									</div>
									<div class="form-group">
										<label class="col-lg-3 control-label">Phone:</label>
										<div class="col-lg-8">
											<input name="phone" class="form-control" type="text" value="<s:property value="phone" />">
										</div>
									</div>
									<div class="form-group">
										<label class="col-lg-3 control-label">Music genre:</label>
										<div class="col-lg-8">
											<input name="musicGenre" class="form-control" type="text" value="<s:property value="musicGenre" />">
										</div>
									</div>
									<div class="form-group">
										<label class="col-lg-3 control-label">Birth date:</label>
										<div class="col-lg-8">
											<input name="birthDate" class="form-control" type="text" value="<s:property value="birthDate" />">
										</div>
									</div>
									
									
									<div class="form-group">
										<label class="col-lg-3 control-label">Avatar:</label>
										<div class="col-lg-8">
											<s:file cssClass="form-control" name="fileUpload"></s:file>
										</div>
										<img src='<s:property value="avatar"/>'/>
									</div>
						
						
						
									<div class="form-group">
										<label class="col-md-3 control-label"></label>
										<div class="col-md-8">
											<s:submit cssClass="btn btn-primar" value="Save changes"></s:submit>
											<span></span> 
											<input type="reset" class="btn btn-default" value="Cancel">
										</div>
									</div>
								</s:form>
			</div>
  </div>
</div>
<hr>
</body>
</html>