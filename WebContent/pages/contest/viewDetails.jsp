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
	<div class="container">
		<div class="row">
			<div class="col-md-12">
				<h3>View Contest Details </h3>
			</div>
		</div>
		
		<div class="row">
			<div class="col-md-12">
				<div class="form-group">
					<label class="col-md-3 control-label"><h5>Full name</h5></label>
					<div class="col-md-4">
						<h6><s:property value="name" /> </h6>
					</div>
				</div>
			</div>
		</div>					
		<div class="row">
			<div class="col-md-12">
				<div class="form-group">
					<label class="col-md-3 control-label"><h5>User Created </h5></label>
					<div class="col-md-4">
						<h6><s:property value="userCreated" /> </h6>
					</div>
				</div>		
			</div>
		</div>
		<div class="row">
			<div class="col-md-12">
				<div class="form-group">
					<label class="col-md-3 control-label"><h5>Description</h5></label>
					<div class="col-md-4">
						<h6><s:property value="description" /> </h6>
					</div>
				</div>	
			</div>
		</div>	
		<div class="row">
			<div class="col-md-12">
				<div class="form-group">
					<label class="col-md-3 control-label"><h5>Content</h5></label>
					<div class="col-md-4">
						<h6><s:property value="content" /> </h6>
					</div>
				</div>
			</div>
		</div>		
		<div class="row">
			<div class="col-md-12">
				<div class="form-group">
					<label class="col-md-3 control-label"><h5>Start Date</h5></label>
					<div class="col-md-4">
						<h6><s:property value="startDate" /> </h6>
					</div>
				</div>
			</div>
		</div>
		<div class="row">
			<div class="col-md-12">
				<div class="form-group">
					<label class="col-md-3 control-label"><h5>Participants</h5></label>
					<div class="col-md-4">
						<s:if test="user.size()!=0">
							<s:if test="%{#session.userId==userIdCreated}">
								<s:iterator value="user">
									<s:property/> <br/>
								</s:iterator>
								<s:url action="selectWinner.action" namespace="/pages/contest" id="selectWinnerLink">
									<s:param name="contestId">
										<s:property value="contestId"/>
									</s:param>
								</s:url>
								<s:a href="%{selectWinnerLink}" cssClass="btn btn-primary">Select the winner</s:a>								
							</s:if>
							<s:else>
								<s:iterator value="user">
									<s:property/><br/>
								</s:iterator>
							</s:else>
						</s:if>
						<s:else>
							<h6>Not have participants yet!</h6>
						</s:else>
					</div>
				</div>
			</div>
		</div>
		<div class="row">
			<div class="col-md-12">
				<div class="form-group">
					<label class="col-md-3 control-label"><h5>Prize</h5></label>
					<div class="col-md-4">
						<h6><s:property value="prize" /> </h6>
					</div>
				</div>	
			</div>
		</div>		
		<div class="row">
			<div class="col-md-12">
				<div class="form-group">
					<label class="col-md-3 control-label"><h5>Winner</h5></label>
					<div class="col-md-4">
						<s:if test="winner!=null">
							<h6><s:property value="winner" /> </h6>						
						</s:if>
						<s:else>
							<h6>Have not chosen!</h6>						
						</s:else>
					</div>
				</div>
			</div>
		</div>		
		<div class="row">
			<div class="col-md-12">
				<div class="form-group">
					<label class="col-md-3 control-label"><h5>Avatar</h5></label>
					<div class="col-md-4">
						<h6><img class="img-responsive" src="<s:property value="avatar"/>"> </h6>
					</div>
				</div>
			</div>
		</div>		
		<div class="row">
			<div class="col-md-12">
				<div class="form-group">
					<label class="col-md-3 control-label"><h5>Active</h5></label>
					<div class="col-md-4">
						<s:if test="active==1">
							<h6>This contest was actived</h6>
						</s:if>
					</div>						
						<s:else>
							<s:if test="%{#session.userId==userIdCreated}">
								<div class="col-xs-6">
									<a href="#fakelink" class="btn btn-block btn-lg btn-primary">Active This Contest</a>
								</div>
							</s:if>
							<s:else>
								<h6>This contest was not actived</h6>
							</s:else>
						</s:else>
				</div>
			</div>
		</div>
		<s:if test="%{#session.userId==userIdCreated}">
				<div class="form-group">
					<label class="col-md-3 control-label"></label>
					<div class="col-xs-2">
						<s:a href="viewAllContest.action" namespace="/pages/contest" cssClass="btn btn-block btn-lg btn-primary" >Back</s:a>
					</div>
					<div class="col-xs-2">
						<s:url action="updateContest" namespace="/pages/contest" id="updateContestLink">
							<s:param name="contestId">
								<s:property value="contestId"/>
							</s:param>
						</s:url>
						<s:a href="%{updateContestLink}" cssClass="btn  btn-lg btn-primary text-center" >Edit This Contest</s:a>
					</div>
					<div class="col-xs-2">
						<s:form action="deleteContest" method="POST" >
							<s:textfield name="contestId" cssClass="textHidden" />
							<s:submit cssClass="btn  btn-lg btn-primary" value="Delete This Contest"/>
						</s:form>
					</div>
				</div>		
		</s:if>
	</div>	
	    <jsp:include page="../../assets/elements/menuChatElement.jsp" />
    <jsp:include page="../../assets/elements/element_pack/animationsE.jsp" /> 
</body>
<script type="text/javascript">
	$(document).ready(function(){
		$('.textHidden').hide();
	});
</script>
</html>