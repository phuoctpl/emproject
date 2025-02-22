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
    <link rel="shortcut icon" href="${pageContext.request.contextPath}/assets/images/favicon.png">
    <!-- END META SECTION -->
    <jsp:include page="../../../assets/elements/assetsElement.jsp" />
</head>

<body data-page="blank_page">
    <jsp:include page="../../../assets/elements/menuUser.jsp" />
        <!-- BEGIN MAIN CONTENT -->
        <div id="main-content">
            <div class="page-title"> <i class="icon-custom-left"></i>
                <h3><strong>Components</strong></h3>
            </div>
            <div class="row">
                <div class="col-md-6">
                    <div class="panel panel-default">
                        <div class="panel-heading">
                            <h3 class="panel-title"><strong>Alerts &amp; Notifications </strong>elements</h3>
                        </div>
                        <div class="panel-body">
                            <div class="row">
                                <div class="col-md-12 col-sm-12 col-xs-12 ">
                                    <div class="alert alert-success fade in">
                                        <button type="button" class="close" data-dismiss="alert" aria-hidden="true">&times;</button>
                                        <strong>Well done!</strong> You successfully read this important alert message.
                                    </div>
                                    <div class="alert alert-info fade in">
                                        <button type="button" class="close" data-dismiss="alert" aria-hidden="true">&times;</button>
                                        <strong>Heads up!</strong> This alert needs your attention, but it's not super important.
                                    </div>
                                    <div class="alert alert-warning fade in">
                                        <button type="button" class="close" data-dismiss="alert" aria-hidden="true">&times;</button>
                                        <strong>Warning!</strong> Better check yourself, you're not looking too good.
                                    </div>
                                    <div class="alert alert-danger fade in">
                                        <button type="button" class="close" data-dismiss="alert" aria-hidden="true">&times;</button>
                                        <strong>Oh snap!</strong> Change a few things up and try submitting again.
                                        <p>
                                            <button type="button" class="btn btn-danger">Take this action</button>
                                            <button type="button" class="btn btn-default">Or do this</button>
                                        </p>
                                    </div>
                                </div>
                            </div>
                        </div>
                    </div>
                </div>
                <div class="col-md-6">
                    <div class="panel panel-default">
                        <div class="panel-heading">
                            <h3 class="panel-title"><strong>Contextual </strong>background</h3>
                        </div>
                        <div class="panel-body">
                            <div class="row">
                                <div class="col-md-12 col-sm-12 col-xs-12 ">
                                    <div class="alert bg-blue">
                                        Nullam id dolor id nibh ultricies vehicula ut id elit.
                                        <p>
                                            <button type="button" class="btn btn-default"><i class="fa fa-check"></i> let's do this!</button>
                                        </p>
                                    </div>
                                    <div class="alert bg-red">Duis mollis, est non commodo luctus, nisi erat porttitor ligula.</div>
                                    <div class="alert bg-purple">Etiam porta sem malesuada magna mollis euismod.</div>
                                    <div class="alert bg-gray-light">Donec ullamcorper nulla non metus auctor fringilla.</div>
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
                            <h3 class="panel-title"><strong>Labels &amp; Badges</strong></h3>
                        </div>
                        <div class="panel-body">
                            <div class="row">
                                <div class="col-md-12 col-sm-12 col-xs-12 ">
                                    <h3><strong>Labels</strong> colors</h3>
                                    <p>Just add the class <code>.label</code> to create a label.</p>
                                    <span class="label label-default">Gray</span>
                                    <span class="label label-primary">Blue</span>
                                    <span class="label label-success">Green</span>
                                    <span class="label label-info">Light blue</span>
                                    <span class="label label-warning">Orange</span>
                                    <span class="label label-danger">Red</span>
                                    <h3><strong>Badges</strong> colors</h3>
                                    <p>Just like labels, add the the class <code>.badge</code> to create one.</p>
                                    <button class="btn btn-primary" type="button">
                                        Messages&nbsp;&nbsp;<span class="badge">4</span>
                                    </button>
                                    <span class="badge badge-primary">4</span>
                                    <span class="badge badge-success">3</span>
                                    <span class="badge badge-info">2</span>
                                    <span class="badge badge-warning">4</span>
                                    <span class="badge badge-danger">9</span>
                                </div>
                            </div>
                        </div>
                    </div>
                </div>
                <div class="col-md-6">
                    <div class="panel panel-default">
                        <div class="panel-heading">
                            <h3 class="panel-title"><strong>Tooltips &amp; Popover</strong>variations</h3>
                        </div>
                        <div class="panel-body">
                            <div class="row">
                                <h3><strong>Tooltip</strong> positions</h3>
                                <p>Good way to explain an action button or icon menu.</p>
                                <div class="col-md-12 col-sm-12 col-xs-12" id="tooltips">
                                    <button rel="tooltip" type="button" class="btn btn-primary m-b-10" data-toggle="tooltip" data-placement="left" title="Tooltip on left">Left</button>
                                    <button rel="tooltip" type="button" class="btn btn-primary m-b-10" data-toggle="tooltip" data-placement="top" title="Tooltip on top">Top</button>
                                    <button rel="tooltip" type="button" class="btn btn-primary m-b-10" data-toggle="tooltip" data-placement="bottom" title="Tooltip on bottom">Bottom</button>
                                    <button rel="tooltip" type="button" class="btn btn-primary m-b-10" data-toggle="tooltip" data-placement="right" title="Tooltip on right">Right</button>
                                </div>
                                <br>
                                <h3><strong>Popover</strong> colors and positions</h3>
                                <p>Customized popover with color variations.</p>
                                <div class="bs-example-tooltips">
                                    <button rel="popover" type="button" class="btn btn-default m-b-10" data-container="body" data-toggle="popover" data-placement="left" data-content="Vivamus sagittis lacus vel augue laoreet rutrum faucibus." data-original-title="A Title" title="">
                                        With title on Top
                                    </button>
                                    <button rel="popover" type="button" class="btn btn-default m-b-10" data-container="body" data-toggle="popover" data-placement="top" data-content="Vivamus sagittis lacus vel augue laoreet rutrum faucibus." data-original-title="" title="">
                                        Popover on top
                                    </button>
                                    <button rel="popover_dark" type="button" class="btn btn-dark m-b-10" data-container="body" data-toggle="popover" data-placement="bottom" data-content="Vivamus sagittis lacus vel augue laoreet rutrum faucibus." data-original-title="Title" title="">
                                        Dark Style
                                    </button>
                                </div>
                            </div>
                        </div>
                    </div>
                </div>
            </div>
            <div class="row">
                <div class="col-md-12">
                    <div class="panel panel-default">
                        <div class="panel-heading">
                            <h3 class="panel-title"><strong>Progress bar</strong> options</h3>
                        </div>
                        <div class="panel-body">
                            <div class="row">
                                <div class="col-md-3 ">
                                    <h3><strong>Colors</strong> variations</h3>
                                    <div class="progress">
                                        <div class="progress-bar progress-bar-success" role="progressbar" aria-valuenow="40" aria-valuemin="0" aria-valuemax="100" style="width: 40%">
                                            <span class="sr-only">40% Complete (success)</span>
                                        </div>
                                    </div>
                                    <div class="progress">
                                        <div class="progress-bar progress-bar-info" role="progressbar" aria-valuenow="20" aria-valuemin="0" aria-valuemax="100" style="width: 20%">
                                            <span class="sr-only">20% Complete</span>
                                        </div>
                                    </div>
                                    <div class="progress">
                                        <div class="progress-bar progress-bar-warning" role="progressbar" aria-valuenow="60" aria-valuemin="0" aria-valuemax="100" style="width: 60%">
                                            <span class="sr-only">60% Complete (warning)</span>
                                            60%
                                        </div>
                                    </div>
                                    <div class="progress">
                                        <div class="progress-bar progress-bar-danger" role="progressbar" aria-valuenow="80" aria-valuemin="0" aria-valuemax="100" style="width: 80%">
                                            <span class="sr-only">80% Complete (danger)</span>
                                        </div>
                                    </div>
                                </div>
                                <div class="col-md-3 ">
                                    <h3><strong>Striped</strong> variations</h3>
                                    <div class="progress progress-striped active">
                                        <div class="progress-bar progress-bar-success" role="progressbar" aria-valuenow="40" aria-valuemin="0" aria-valuemax="100" style="width: 40%">
                                            <span class="sr-only">40% Complete (success)</span>Animated
                                        </div>
                                    </div>
                                    <div class="progress progress-striped">
                                        <div class="progress-bar progress-bar-info" role="progressbar" aria-valuenow="20" aria-valuemin="0" aria-valuemax="100" style="width: 20%">
                                            <span class="sr-only">20% Complete</span>
                                        </div>
                                    </div>
                                    <div class="progress progress-striped">
                                        <div class="progress-bar progress-bar-warning" role="progressbar" aria-valuenow="60" aria-valuemin="0" aria-valuemax="100" style="width: 60%">
                                            <span class="sr-only">60% Complete (warning)</span>
                                        </div>
                                    </div>
                                    <div class="progress progress-striped">
                                        <div class="progress-bar progress-bar-danger" role="progressbar" aria-valuenow="80" aria-valuemin="0" aria-valuemax="100" style="width: 80%">
                                            <span class="sr-only">80% Complete (danger)</span>
                                        </div>
                                    </div>
                                </div>
                                <div class="col-md-3 ">
                                    <h3><strong>Size</strong> options</h3>
                                    Thin
                                    <br>
                                    <div class="progress progress-bar-thin">
                                        <div class="progress-bar progress-bar-primary progress-bar-thin" role="progressbar" aria-valuenow="40" aria-valuemin="0" aria-valuemax="100" style="width: 40%">
                                            <span class="sr-only">40% Complete (success)</span>
                                        </div>
                                    </div>
                                    Normal
                                    <br>
                                    <div class="progress">
                                        <div class="progress-bar progress-bar-primary" role="progressbar" aria-valuenow="20" aria-valuemin="0" aria-valuemax="100" style="width: 20%">
                                            <span class="sr-only">20% Complete</span>
                                        </div>
                                    </div>
                                    Big
                                    <br>
                                    <div class="progress progress-bar-large">
                                        <div class="progress-bar progress-bar-primary" role="progressbar" aria-valuenow="60" aria-valuemin="0" aria-valuemax="100" style="width: 60%">
                                            <span class="sr-only">60% Complete (warning)</span>
                                            60%
                                        </div>
                                    </div>
                                </div>
                                <div class="col-md-3 ">
                                    <h3>
                                        <strong>Animations</strong> options
                                        <button type="button" class="btn btn-primary" id="button-animated-progress" onclick="$('.progress-bar').progressbar();">start</button>
                                    </h3>
                                    <div class="progress">
                                        <div class="progress-bar progress-bar-success" aria-valuetransitiongoal="75">normal</div>
                                    </div>
                                    <div class="progress progress-striped">
                                        <div class="progress-bar progress-bar-default" aria-valuetransitiongoal="25">stripped</div>
                                    </div>
                                    <div class="progress progress-striped active">
                                        <div class="progress-bar progress-bar-danger" aria-valuetransitiongoal="98">animated</div>
                                    </div>
                                    <div class="progress progress-striped active progress-bar-large">
                                        <div class="progress-bar progress-bar-warning" aria-valuetransitiongoal="45">big animated</div>
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
    <jsp:include page="../../../assets/elements/element_pack/componentsE.jsp" />
</body>
</html>
