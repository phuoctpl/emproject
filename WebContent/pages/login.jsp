<%@ page language="java" contentType="text/html; charset=UTF-8"
	pageEncoding="UTF-8"%>
<%@ taglib prefix="s" uri="/struts-tags"%>
<!DOCTYPE html PUBLIC "-//W3C//DTD HTML 4.01 Transitional//EN" "http://www.w3.org/TR/html4/loose.dtd">
<html>
<head>
<meta http-equiv="Content-Type" content="text/html; charset=UTF-8">

<jsp:include page="../assets/elements/assetsElement.jsp" />
<jsp:include page="../assets/elements/element_pack/loginE.jsp" />
<!-- BEGIN PAGE LEVEL STYLE -->
<!-- END PAGE LEVEL STYLE -->
<body class="login fade-in" data-page="login">
<div class="blur-fillter"></div>
	<div class="container" id="login-block">
		<div class="row">
			<div class="col-sm-6 col-md-4 col-sm-offset-3 col-md-offset-4">
				<div class="login-box clearfix animated flipInY">
					<div class="page-icon animated bounceInDown">
						<%-- <img
							src="${pageContext.request.contextPath}/assets/images/account/user-icon.png"
							alt="Key icon"> --%>
							<span>
							E
							</span>
					</div>
					<div class="login-logo">
						<a href="#?login-theme-3"> <img
							src="${pageContext.request.contextPath}/assets/images/small/login-logo-2.png"
							alt="Company Logo">
						</a>
					</div>
					<hr>
					<div class="login-form">
						<!-- BEGIN ERROR BOX -->

						<!-- END ERROR BOX -->
						<s:form action="login.action" method="POST" namespace="/">
							<s:textfield cssClass="input-field form-control user" placeholder="Type your email" name="email"/>
							<s:password cssClass="input-field form-control password" placeholder="Type your password" name="passwd" />
							<s:submit cssClass="btn btn-login" value="Login"/>
						</s:form>
						<div class="login-links">
							<s:if test="messages!=null">
								<h4 class="login-error"><s:property value="messages" /></h4>
							</s:if>
							<s:a href="pages/user/password_forgot.action">
								<s:label value="Forgot Password?" />
							</s:a>
							<br> <a href="pages/user/doregister.action">Don't have an account? <strong>Sign Up</strong></a>
						</div>
					</div>
				</div>
				
				<div class="social-login row">
					<div class="fb-login col-lg-12 col-md-12 animated flipInX">
						<a href="login" class="btn btn-facebook btn-block">Connect with <strong>Facebook</strong></a>
					</div>
<%-- 					<div class="twit-login col-lg-6 col-md-12 animated flipInX">
						<a href="#" class="btn btn-twitter btn-block">Connect with <strong>Twitter</strong></a>
					</div> --%>
				</div>
			</div>
		</div>
	</div>
</body>

</html>