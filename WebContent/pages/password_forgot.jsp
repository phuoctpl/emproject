<!DOCTYPE html>
<!--[if lt IE 7]>      <html class="no-js sidebar-large lt-ie9 lt-ie8 lt-ie7"> <![endif]-->
<!--[if IE 7]>         <html class="no-js sidebar-large lt-ie9 lt-ie8"> <![endif]-->
<!--[if IE 8]>         <html class="no-js sidebar-large lt-ie9"> <![endif]-->
<!--[if gt IE 8]><!--> <html class="no-js sidebar-large"> <!--<![endif]-->

<!-- Added by HTTrack --><meta http-equiv="content-type" content="text/html;charset=UTF-8" /><!-- /Added by HTTrack -->
<head>
    <!-- BEGIN META SECTION -->
    <meta charset="utf-8">
    <title>Pixit - Responsive Boostrap3 Admin</title>
    <meta name="viewport" content="width=device-width, initial-scale=1">
    <meta content="" name="description" />
    <meta content="themes-lab" name="author" />
    <!-- END META SECTION -->
    <jsp:include page="../assets/elements/assetsElement.jsp" />
<jsp:include page="../assets/elements/element_pack/password_forgotE.jsp" />
</head>

<body class="login fade-in" data-page="password">
    <!-- BEGIN PASSWORD BOX -->
    <div class="container" id="login-block">
        <div class="row">
            <div class="col-sm-6 col-md-4 col-sm-offset-3 col-md-offset-4">
                <div class="login-box clearfix animated flipInY">
                    <div class="page-icon animated bounceInDown">
                        <img src="${pageContext.request.contextPath}/assets/images/account/login-questionmark-icon.png" alt="Questionmark icon" />
                    </div>
                    <div class="login-logo">
                        <a href="#">
                            <img class="img-responsive" src="${pageContext.request.contextPath}/assets/images/account/login-logo.png" alt="Company Logo" />
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
                        <form action="#" method="get">
                            <p>Enter your email address below and we'll send a special reset password link to your inbox.</p>
                            <input type="email" placeholder="Email" class="input-field" required/>
                            <button type="submit" class="btn btn-login btn-reset">Reset password</button>
                        </form>
                        <div class="login-links">
                            <a href="login.html">Already have an account?  <strong>Sign In</strong></a>
                            <br>
                            <a href="signup.html"> Don't have an account? <strong>Sign Up</strong></a>
                        </div>
                    </div>
                </div>
            </div>
        </div>
    </div>
    <!-- END PASSWORD BOX -->
    
</body>

</html>
