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

		<div class="row">
			<div class="col-md-12">
				MemberRole:
				<s:property value="%{#session.memberRole}" />
			</div>
		</div>
		<div class="row">
			<div class="col-md-12">
				<s:url id="logOutLink" action="logOut" namespace="/" >
					<s:param name="mode" value="%{#parameters.mode}"/>
				</s:url>
				<s:a href="%{logOutLink}" cssClass="logOutbt">Log Out</s:a>
			</div>
		</div>
		<div class="row">
			<div class="col-md-12">
				<div class="col-xs-3">
					<s:url action="createContest" namespace="/pages/contest"
						id="createContestLink">
					</s:url>
					<s:a href="%{createContestLink}" cssClass="btn btn-block btn-lg btn-primary">Create New Contest</s:a>
				</div>
			</div>
		</div>
		
		<s:if test="listContest!=null">
			<s:iterator value="listContest">
 				<div class="row">
					<div class="col-md-12">
						<s:property value="name"/>
					</div>
				</div>
			
				<div class=" col-xs-12 col-sm-6 col-md-4   portfolio-item">
						<s:url action="viewContest" namespace="/pages/contest" id="viewContestLink">
							<s:param name="contestId">
								<s:property value="_id" />
							</s:param>
						</s:url>					
					<s:a href="%{viewContestLink}"> <img class="img-responsive" src="<s:property value="avatar"/>">
					</s:a>
					<h3>

						<s:a href="%{viewContestLink}"> <s:property value="name" /></s:a>
					</h3>
					<p><s:property value="description" /></p>
				</div>
				<div class="row">
					<div class="col-md-12">
						<s:if test="user.contains(#session.userId)">
							<h6>You has joined to this contest</h6>
						</s:if>
						<s:else>
							<s:if test="active==1">
								<s:form action="joinContest" namespace="/pages/contest">
										<s:textfield name="_id" readonly="true" cssClass="textHidden" />
										<div class="col-xs-3">
											<s:submit cssClass="btn btn-block btn-lg btn-inverse" value="Join"/>
										</div>
								</s:form>
							</s:if>
							<s:else>
								<div class="col-xs-3">
									<s:submit cssClass="btn btn-block btn-lg btn-default disabled" value="Join"/>
								</div>
							</s:else>
						</s:else>
					</div>
				</div>
 			</s:iterator>
		</s:if>
	</div>

      <jsp:include page="../../assets/elements/menuChatElement.jsp" />
    <jsp:include page="../../assets/elements/element_pack/animationsE.jsp" /> 
</body>
<script type="text/javascript">
	$(document).ready(function() {

		$('.logOutbt').click(function() {
			FB.logout(function(response) {
			});
		})
		
		$('.textHidden').hide();
	})
</script>
</html>