<%@ page language="java" contentType="text/html; charset=UTF-8"
	pageEncoding="UTF-8"%>
<%@ taglib prefix="s" uri="/struts-tags"%>
<!DOCTYPE html PUBLIC "-//W3C//DTD HTML 4.01 Transitional//EN" "http://www.w3.org/TR/html4/loose.dtd">
<html>
<head>
<meta http-equiv="Content-Type" content="text/html; charset=UTF-8">
<title>Upload - Emoutional Music</title>

<jsp:include page="../../assets/elements/assetsElement.jsp" />
<jsp:include page="../../assets/elements/element_pack/loginE.jsp" />
<!-- BEGIN PAGE LEVEL STYLE -->
<!-- END PAGE LEVEL STYLE -->
<body class="login fade-in" data-page="password">
    <!-- BEGIN PASSWORD BOX -->
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
                    <hr />
                    <div class="login-form">
                        <!-- BEGIN ERROR BOX -->
                        <div class="alert alert-danger hide">
                            <button type="button" class="close" data-dismiss="alert">&times;</button>
                            <h4>Error!</h4>
                            Your Error Message goes here
                        </div>
                        <!-- END ERROR BOX -->
                        
                        <s:form action="sendEmailForgetPassword" id="form4"  method="get">
                            <p>Enter your email address below and we'll send a special reset password link to your inbox.</p>
                           	<s:textfield name="email" placeholder="Enter your email" cssClass="input-field" parsley-type="email" parsley-required="true"></s:textfield>
                             <button type="submit" class="btn btn-login btn-reset" onclick="javascript:$('#form4').parsley('validate');">Reset password</button>
                            <%-- <s:submit cssClass="btn btn-login btn-reset" value="Reset password"></s:submit> --%>
                        </s:form>
                        
                        <div class="login-links">
                            <a href="../../login.action">Already have an account? <strong>Sign in</strong></a>
                            <br>
                           <a href="doregister.action">Don't have an account? <strong>Sign Up</strong></a>
                        </div>
                    </div>
                </div>
            </div>
        </div>
    </div>
    <!-- END SIGNUP BOX -->
    <script src="../../assets/plugins/parsley/parsley.js"></script>
    <script src="../../assets/plugins/parsley/parsley.extend.js"></script>
</body>

</html>