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
<jsp:include page="/assets/elements/menuUser.jsp" />
	<div id="main-content">
		<div class="page-title">
			<i class="icon-custom-left"></i>
			<h3>Create New Contest</h3>
		</div>
		<s:if test="messages!=null">
			<div class="row">
				<div class="col-md-12">
					<div class="alert alert-warning">
		              <button type="button" class="close" data-dismiss="alert">×</button>
		              <strong> <s:property value="messages"/></strong>
		            </div>		 
				</div>
			</div>
		</s:if>	
		
		<div class="row">
			<div class="col-md-12">
				<s:form id="contestForm" cssClass="form-horizontal" action="createContest.action" namespace="/pages/contest">
					<div class="form-group">
						<label class="col-md-3 control-label">Full name<span class="asterisk">*</span></label>
						<div class="col-md-4">
							<s:textfield cssClass="form-control" name="name" />
						</div>
					</div>

					<div class="form-group">
						<label class="col-md-3 control-label">Description</label>
						<div class="col-md-4">
							<s:textfield cssClass="form-control" name="description" />
						</div>
					</div>

					<div class="form-group">
						<label class="col-md-3 control-label">Content<span class="asterisk">*</span></label>
						<div class="col-md-4">
							<s:textarea rows="4" cols="50" name="content" />
						</div>
					</div>
					
					<div class="form-group">
						<label class="col-md-3 control-label">Start Date<span class="asterisk">*</span></label>	
						<div class="col-md-4">
							<s:textfield cssClass="form-control" name="startDate" />
						</div>										
					</div> 
					
					<div class="form-group">
						<label class="col-md-3 control-label">Prize<span class="asterisk">*</span></label>
						<div class="col-md-4">
							<s:textfield cssClass="form-control" name="prize" />
						</div>						
					</div>

					<div class="form-group">
						<label class="col-md-3 control-label">Avatar</label>
						<div class="col-md-4">
							<s:textfield cssClass="form-control" name="avatar" />
						</div>						
					</div> 					 
					
					<div class="form-group">
						<div class="col-md-offset-3 col-md-8">
							<s:submit cssClass="btn btn-primary" value="Create" />
						</div>
					</div>
				</s:form>
			</div>
		</div>

	</div>
    <jsp:include page="../../assets/elements/menuChatElement.jsp" />
    <jsp:include page="../../assets/elements/element_pack/animationsE.jsp" /> 
</body>
<script type="text/javascript">
	$(document).ready(function() {

		$('.textHidden').hide();
		
        $('#contestForm').bootstrapValidator({
        	fields : {
        		name : {
        			validators : {
        				notEmpty : {
        					message: 'Please enter a name'
        				},
                        stringLength: {
                            max: 50,
                            message: 'The name must be less than 50 characters'
                        }        				
        			}
        		},
        		description : {
        			validators : {
        				notEmpty : {
        					message: 'Please enter description'
        				},
                        stringLength: {
                            max: 50,
                            message: 'The description must be less than 50 characters'
                        }        				
        			}
        		},
        		content : {
        			validators : {
        				notEmpty : {
        					message: 'Please enter a content'
        				},
                        stringLength: {
                            max: 150,
                            message: 'The content must be less than 150 characters'
                        }        				
        				
        			}
        		},
        		prize : {
        			validators : {
        				notEmpty : {
        					message: 'Please enter a prize'
        				},
        				between: {
                            min: 1000000,
                            max: 5000000,
                            message: 'The prize must be between 1000000 and 5000000'
                        }        				
        			}
        		},
        		avatar : {
        			validators : {
        				notEmpty : {
        					message: 'Please enter a avatar'
        				}
        			}
        		}        		
        	}
        	
        }); 
	})
</script>
</html>