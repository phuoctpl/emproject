<%@ page language="java" contentType="text/html; charset=UTF-8"
	pageEncoding="UTF-8"%>
<%@ taglib prefix="s" uri="/struts-tags"%>
<!DOCTYPE html PUBLIC "-//W3C//DTD HTML 4.01 Transitional//EN" "http://www.w3.org/TR/html4/loose.dtd">
<html>
<!-- /Added by HTTrack -->
<head>
<!-- BEGIN META SECTION -->
<meta http-equiv="content-type" content="text/html;charset=UTF-8" />
<title>Upload - Emoutional Music</title>
<!-- END META SECTION -->
 <link href="../../assets/css/jasny-bootstrap.min.css" rel="stylesheet" media="screen">
<jsp:include page="../../assets/elements/assetsElement.jsp" />


</head>

<body data-page="timeline">
	<jsp:include page="../../assets/elements/menuUser.jsp" />
	<!-- BEGIN MAIN CONTENT -->
	<div id="main-content">
		<div class="page-title">
			<i class="icon-custom-left"></i>
			<h3>
				<strong>Upload processing...</strong>
			</h3>
		</div>
		<div class="col-md-8">
                    <div class="panel panel-default">
                        <div class="panel-heading">
                            <h3 class="panel-title"><strong>Icon</strong> Validation States</h3>
                        </div>
                        
                        
                        <div class="panel-body">
                            <div class="row">
                                <div class="col-md-12">
                                	<%-- <s:form action="uploadAvatarImage">
                                		 <s:file name="fileUpload"></s:file> </span>
                                		 <s:submit></s:submit>
                                	</s:form> --%>
                                
                                
                                    <s:form id="form4" action="uploadInfoSong" role="form"  enctype ="multipart/form-data" cssClass="icon-validation" method="post">
                                    <s:hidden name="postId"></s:hidden>
                                    <s:hidden name="postTime"></s:hidden>
									<div class="form-group">
										<label class="control-label">Avatar</label>
										<div class="fileinput fileinput-new" data-provides="fileinput">
											<div class="fileinput-new thumbnail"
												style="width: 200px; height: 150px;">
												<img data-src="../../assets/images/avatar_2011.jpg" alt="">
											</div>
											<div class="fileinput-preview fileinput-exists thumbnail"
												style="max-width: 200px; max-height: 150px;"></div>
											<div>
												<span class="btn btn-default btn-file">
													<span class="fileinput-new">Select image</span>
													<span class="fileinput-exists">Change</span>
													<s:file name="fileUpload"></s:file> </span>
													<%-- <input type="file" name="..."></span>  --%>
													<a href="#" class="btn btn-default fileinput-exists" data-dismiss="fileinput">Remove</a>
											</div>
										</div>
									</div>

								<div class="form-group">
                                            <label class="control-label">Title</label>
                                            <div class="input-icon right">
                                                <i class="fa"></i>
                                                 <s:textfield name="title" parsley-minlength="10" parsley-required="true" cssClass="form-control"></s:textfield>
                                            </div>
                                        </div>
                                        <div class="form-group">
                                            <label class="control-label">Discription</label>
                                            <div class="input-icon right">
                                                <i class="fa"></i>
                                                <s:textfield name="description" parsley-minlength="10" parsley-required="true" cssClass="form-control"></s:textfield>
                                            </div>
                                        </div>
                                        <div class="form-group">
                                            <label class="control-label">Music genre</label>
                                            <s:select list="genres" name="musicGenre" value="genres" cssClass="form-control"></s:select>
                                        </div>
                                        <div class="form-group">
                                            <label class="control-label">Track will be</label>
                                            <s:select list="states" name="state" value="Public" cssClass="form-control"></s:select>
                                        </div>
                                        <div class="form-group text-center">
                                        	<s:submit cssClass="btn btn-danger" onclick="javascript:$('#form4').parsley('validate');"></s:submit>
                                            <!-- <button class="btn btn-danger" onclick="javascript:$('#form4').parsley('validate');">Submit</button> -->
                                            <button type="reset" class="btn btn-default">Cancel</button>
                                        </div>
                                    </s:form>
                                    
                                </div>
                            </div>
                        </div>
                        
                    </div>
                </div>
	</div>	
	
	<script src="../../assets/plugins/parsley/parsley.js"></script>
    <script src="../../assets/plugins/parsley/parsley.extend.js"></script>
    <script src="../../assets/js/jasny-bootstrap.min.js"></script>
	<jsp:include page="../../assets/elements/menuChatElement.jsp" />
	<jsp:include page="../../assets/elements/element_pack/mainpageE.jsp" />
</body>
</html>
