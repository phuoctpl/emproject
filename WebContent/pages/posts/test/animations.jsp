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
   <jsp:include page="../../../assets/elements/assetsElement.jsp" />
</head>

<body data-page="animations">
     <jsp:include page="../../../assets/elements/menuUser.jsp" />

        <!-- BEGIN MAIN CONTENT -->
        <div id="main-content">
            <div class="page-title"> <i class="icon-custom-left"></i>
                <h3><strong>Animations</strong> CSS3</h3>
            </div>
            <div class="row">
                <div class="col-md-12">
                    <div class="panel panel-default">
                        <div class="panel-heading">
                            <h3 class="panel-title"><strong>CSS3 Animations</strong></h3>
                        </div>
                        <div class="panel-body">
                            <div class="row">
                                <div class="col-md-6 col-md-offset-3 align-center m-b-60">
                                    <span id="animationSandbox">
                                        <h1 class="animation_title">Animate Me!</h1>
                                    </span> 
                                </div>
                                <div class="col-md-6 col-md-offset-3 align-center">
                                    <p>
                                        <select class="input js_animations">
                                            <optgroup label="Attention Seekers">
                                                <option value="bounce">bounce</option>
                                                <option value="flash">flash</option>
                                                <option value="pulse">pulse</option>
                                                <option value="rubberBand">rubberBand</option>
                                                <option value="shake">shake</option>
                                                <option value="swing">swing</option>
                                                <option value="tada">tada</option>
                                                <option value="wobble">wobble</option>
                                            </optgroup>

                                            <optgroup label="Bouncing Entrances">
                                                <option value="bounceIn">bounceIn</option>
                                                <option value="bounceInDown">bounceInDown</option>
                                                <option value="bounceInLeft">bounceInLeft</option>
                                                <option value="bounceInRight">bounceInRight</option>
                                                <option value="bounceInUp">bounceInUp</option>
                                            </optgroup>

                                            <optgroup label="Bouncing Exits">
                                                <option value="bounceOut">bounceOut</option>
                                                <option value="bounceOutDown">bounceOutDown</option>
                                                <option value="bounceOutLeft">bounceOutLeft</option>
                                                <option value="bounceOutRight">bounceOutRight</option>
                                                <option value="bounceOutUp">bounceOutUp</option>
                                            </optgroup>
                                            <optgroup label="Fading Entrances">
                                                <option value="fadeIn">fadeIn</option>
                                                <option value="fadeInDown">fadeInDown</option>
                                                <option value="fadeInDownBig">fadeInDownBig</option>
                                                <option value="fadeInLeft">fadeInLeft</option>
                                                <option value="fadeInLeftBig">fadeInLeftBig</option>
                                                <option value="fadeInRight">fadeInRight</option>
                                                <option value="fadeInRightBig">fadeInRightBig</option>
                                                <option value="fadeInUp">fadeInUp</option>
                                                <option value="fadeInUpBig">fadeInUpBig</option>
                                            </optgroup>
                                            <optgroup label="Fading Exits">
                                                <option value="fadeOut">fadeOut</option>
                                                <option value="fadeOutDown">fadeOutDown</option>
                                                <option value="fadeOutDownBig">fadeOutDownBig</option>
                                                <option value="fadeOutLeft">fadeOutLeft</option>
                                                <option value="fadeOutLeftBig">fadeOutLeftBig</option>
                                                <option value="fadeOutRight">fadeOutRight</option>
                                                <option value="fadeOutRightBig">fadeOutRightBig</option>
                                                <option value="fadeOutUp">fadeOutUp</option>
                                                <option value="fadeOutUpBig">fadeOutUpBig</option>
                                            </optgroup>
                                            <optgroup label="Flippers">
                                                <option value="flip">flip</option>
                                                <option value="flipInX">flipInX</option>
                                                <option value="flipInY">flipInY</option>
                                                <option value="flipOutX">flipOutX</option>
                                                <option value="flipOutY">flipOutY</option>
                                            </optgroup>
                                            <optgroup label="Lightspeed">
                                                <option value="lightSpeedIn">lightSpeedIn</option>
                                                <option value="lightSpeedOut">lightSpeedOut</option>
                                            </optgroup>
                                            <optgroup label="Rotating Entrances">
                                                <option value="rotateIn">rotateIn</option>
                                                <option value="rotateInDownLeft">rotateInDownLeft</option>
                                                <option value="rotateInDownRight">rotateInDownRight</option>
                                                <option value="rotateInUpLeft">rotateInUpLeft</option>
                                                <option value="rotateInUpRight">rotateInUpRight</option>
                                            </optgroup>
                                            <optgroup label="Rotating Exits">
                                                <option value="rotateOut">rotateOut</option>
                                                <option value="rotateOutDownLeft">rotateOutDownLeft</option>
                                                <option value="rotateOutDownRight">rotateOutDownRight</option>
                                                <option value="rotateOutUpLeft">rotateOutUpLeft</option>
                                                <option value="rotateOutUpRight">rotateOutUpRight</option>
                                            </optgroup>
                                            <optgroup label="Sliders">
                                                <option value="slideInDown">slideInDown</option>
                                                <option value="slideInLeft">slideInLeft</option>
                                                <option value="slideInRight">slideInRight</option>
                                                <option value="slideOutLeft">slideOutLeft</option>
                                                <option value="slideOutRight">slideOutRight</option>
                                                <option value="slideOutUp">slideOutUp</option>
                                            </optgroup>
                                            <optgroup label="Specials">
                                                <option value="hinge">hinge</option>
                                                <option value="rollIn">rollIn</option>
                                                <option value="rollOut">rollOut</option>
                                            </optgroup>
                                        </select>
                                        <button class="btn btn-primary m-b-10 js_triggerAnimation">Animate it</button>
                                    </p>
                                </div>

                            </div>
                        </div>
                    </div>
                </div>
            </div>
            <div class="row">
                <div class="col-md-6">
                    <div class="panel panel-default">
                        <div class="panel-heading">
                            <h3 class="panel-title"><strong>Font Awesome Animation on Load</strong></h3>
                        </div>
                        <div class="panel-body">
                            <div class="row">
                                <div class="col-md-12">
                                    <div class="font-animation">
                                        <a href="#">
                                            <i class="fa fa-wrench faa-wrench animated"></i>
                                            &nbsp;faa-wrench animated
                                        </a>
                                    </div>
                                    <div class="font-animation">
                                        <a href="#">
                                            <i class="fa fa-bell faa-ring animated"></i>
                                            &nbsp;faa-ring animated
                                        </a>
                                    </div>
                                    <div class="font-animation">
                                        <a href="#">
                                            <i class="fa fa-envelope faa-horizontal animated"></i>
                                            &nbsp;faa-horizontal animated
                                        </a>
                                    </div>
                                    <div class="font-animation">
                                        <a href="#">
                                            <i class="fa fa-thumbs-o-up faa-vertical animated"></i>
                                            &nbsp;faa-vertical animated
                                        </a>
                                    </div>
                                    <div class="font-animation">
                                        <a href="#">
                                            <i class="fa fa-warning faa-flash animated"></i>
                                            &nbsp;faa-flash animated
                                        </a>
                                    </div>
                                    <div class="font-animation">
                                        <a href="#">
                                            <i class="fa fa-thumbs-o-up faa-bounce animated"></i>
                                            &nbsp;faa-bounce animated
                                        </a>
                                    </div>
                                    <div class="font-animation">
                                        <a href="#">
                                            <i class="fa fa-spinner faa-spin animated"></i>
                                            &nbsp;faa-spin animated
                                        </a>
                                    </div>
                                    <div class="font-animation">
                                        <a href="#">
                                            <i class="fa fa-plane faa-float animated"></i>
                                            &nbsp;faa-float animated
                                        </a>
                                    </div>
                                    <div class="font-animation">
                                        <a href="#">
                                            <i class="fa fa-heart faa-pulse animated"></i>
                                            &nbsp;faa-pulse animated
                                        </a>
                                    </div>
                                    <div class="font-animation">
                                        <a href="#">
                                            <i class="fa fa-envelope faa-shake animated"></i>
                                            &nbsp;faa-shake animated
                                        </a>
                                    </div>
                                </div>
                            </div>
                        </div>
                    </div>
                </div>
                <div class="col-md-6">
                    <div class="panel panel-default">
                        <div class="panel-heading">
                            <h3 class="panel-title"><strong>Font Awesome Animation on Hover</strong></h3>
                        </div>
                        <div class="panel-body">
                            <div class="row">
                                <div class="col-md-12">
                                    <div class="font-animation">
                                        <a href="#">
                                            <i class="fa fa-wrench faa-wrench animated-hover"></i>
                                            &nbsp;faa-wrench animated-hover
                                        </a>
                                    </div>
                                    <div class="font-animation">
                                        <a href="#">
                                            <i class="fa fa-bell faa-ring animated-hover"></i>
                                            &nbsp;faa-ring animated-hover
                                        </a>
                                    </div>
                                    <div class="font-animation">
                                        <a href="#">
                                            <i class="fa fa-envelope faa-horizontal animated-hover"></i>
                                            &nbsp;faa-horizontal animated-hover
                                        </a>
                                    </div>
                                    <div class="font-animation">
                                        <a href="#">
                                            <i class="fa fa-thumbs-o-up faa-vertical animated-hover"></i>
                                            &nbsp;faa-vertical animated-hover
                                        </a>
                                    </div>
                                    <div class="font-animation">
                                        <a href="#">
                                            <i class="fa fa-warning faa-flash animated-hover"></i>
                                            &nbsp;faa-flash animated-hover
                                        </a>
                                    </div>
                                    <div class="font-animation">
                                        <a href="#">
                                            <i class="fa fa-thumbs-o-up faa-bounce animated-hover"></i>
                                            &nbsp;faa-bounce animation-hover
                                        </a>
                                    </div>
                                    <div class="font-animation">
                                        <a href="#">
                                            <i class="fa fa-spinner faa-spin animated-hover"></i>
                                            &nbsp;faa-spin animation-hover
                                        </a>
                                    </div>
                                    <div class="font-animation">
                                        <a href="#">
                                            <i class="fa fa-plane faa-float animated-hover"></i>
                                            &nbsp;faa-float animation-hover
                                        </a>
                                    </div>
                                    <div class="font-animation">
                                        <a href="#">
                                            <i class="fa fa-heart faa-pulse animated-hover"></i>
                                            &nbsp;faa-pulse animation-hover
                                        </a>
                                    </div>
                                    <div class="font-animation">
                                        <a href="#">
                                            <i class="fa fa-envelope faa-shake animated-hover"></i>
                                            &nbsp;faa-shake animation-hover
                                        </a>
                                    </div>
                                </div>

                            </div>
                        </div>
                    </div>
                </div>
            </div>
        </div>
        <!-- END MAIN CONTENT -->

     <jsp:include page="../../../assets/elements/menuChatElement.jsp" />
    <jsp:include page="../../../assets/elements/element_pack/animationsE.jsp" />
</body>

</html>
