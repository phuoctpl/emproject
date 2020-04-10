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
			<div class="md-col-12">
				<h3>Select the winner for <s:property value="contestName" /></h3>
			</div>
		</div>
		<div class="row">
			<div class="md-col-12">
				<div class="skin">
					<div class="form-group">
						<div class="skin-section">
							<ul class="list col-md-6">
								<s:form action="selectWinner.action" namespace="/pages/contest" method="POST">
									<s:iterator value="participants">
	                                    <li>
											<input tabindex="7" type="radio" data-style="minimal-blue" name="selectedUser" value="<s:property value="userId"/>" >
											
											<label for="minimal-radio-1"><s:property value="userName"/></label> 
	                                    </li>
									</s:iterator>
									<s:textfield name="contestId" value="%{contestId}" cssClass="textHidden" />
									<div class="form-group">
										<s:url action="viewContest.action" namespace="/pages/contest" id="backLink">
											<s:param name="contestId">
												<s:property value="contestId"/>
											</s:param>
										</s:url>
										<div class="col-xs-2">
											<s:a href="%{backLink}" cssClass="btn btn-primary" >Back</s:a>
										</div>
										<div class="col-xs-2">
											<s:submit cssClass="btn btn-primary" value="Select" />
										</div>
									</div>		 															
								</s:form>
							</ul>
						</div>
					</div>
				</div>

			</div>
		</div>
		<s:if test="name!=null">
			<div class="row">
				<div class="col-md-12">
					<h3>You have selected <s:property value="name"/> is the winner!</h3>
				</div>
			</div>		
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