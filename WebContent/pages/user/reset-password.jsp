<%@ page language="java" contentType="text/html; charset=UTF-8"
	pageEncoding="UTF-8"%>
<%@ taglib prefix="s" uri="/struts-tags"%>
<!DOCTYPE html PUBLIC "-//W3C//DTD HTML 4.01 Transitional//EN" "http://www.w3.org/TR/html4/loose.dtd">
<html>
<head>
<meta http-equiv="Content-Type" content="text/html; charset=UTF-8">

<title>Reset - Emoutional Music</title>
<jsp:include page="../../assets/elements/assetsElement.jsp" />
<jsp:include page="../../assets/elements/element_pack/loginE.jsp" />
<!-- BEGIN PAGE LEVEL STYLE -->
<!-- END PAGE LEVEL STYLE -->
<body class="login fade-in" data-page="login">
	<!-- START SIGNUP BOX -->
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
                        <!-- Start Error box -->
                        <div class="alert alert-danger hide">
                            <button type="button" class="close" data-dismiss="alert">&times;</button>
                            <h4>Error!</h4>
                            Your Error Message goes here
                        </div>
                        <!-- End Error box -->
                        
                        
                        <s:form id="form4" role="form" action="resetPassword" method="post" cssClass="icon-validation" >
                        	<s:hidden name="email"></s:hidden>
                        	<s:hidden name="confirmEmail"></s:hidden>
                        	<s:password name="passwd1" placeholder="Enter new password" cssClass="input-field" parsley-required="true"  ></s:password>
                        	<s:password name="passwd2" placeholder="Re-type your password" cssClass="input-field" parsley-required="true" parsley-equalto="#form4_passwd1" ></s:password>
                        	 
                            <button type="submit" class="btn btn-login" onclick="javascript:$('#form4').parsley('validate');">Reset</button>
                        </s:form>
                        
                        <div class="login-links">
                            <a href="password_forgot.action">Forgot password?</a>
                            <br>
                            <a href="../../login.action">Already have an account? <strong>Sign In</strong></a>
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