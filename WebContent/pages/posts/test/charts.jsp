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
                <h3><strong>Visual charts</strong> to display your data</h3>
            </div>
            <div class="row">
                <div class="col-md-12">
                    <div class="panel panel-default">
                        <div class="panel-heading">
                            <h3 class="panel-title"><strong>D3</strong> Chart</h3>
                        </div>
                        <div class="panel-body">
                            <div class="row">
                                <div class="col-md-12">
                                    <h3 class="m-b-30"><strong>Stacked Area</strong> Charts</h3> 
                                    <div>
                                        <svg id="d3_chart1" style="height:500px"></svg>
                                    </div>
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
                            <h3 class="panel-title"><strong>D3</strong> Charts</h3>
                        </div>
                        <div class="panel-body">
                            <div class="row">
                                <div class="col-md-12">
                                    <h3 class="m-b-30"><strong>Line &amp; Bar</strong> Chart</h3>
                                    <div id="d3_chart2">
                                        <svg style="height:300px"></svg>
                                    </div>
                                </div>
                            </div>
                        </div>
                    </div>
                </div>
                <div class="col-md-6">
                    <div class="panel panel-default">
                        <div class="panel-heading">
                            <h3 class="panel-title"><strong>D3</strong> Charts</h3>
                        </div>
                        <div class="panel-body">
                            <div class="row">
                                <div class="col-md-12">
                                    <h3 class="m-b-30"><strong>Bubble</strong> Chart</h3>
                                    <div id="d3_chart3">
                                        <svg style="height:300px"></svg>
                                    </div>
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
                            <h3 class="panel-title"><strong>Flot</strong> Charts</h3>
                        </div>
                        <div class="panel-body">
                            <div class="row">
                                <div class="col-md-12">
                                    <h3 class="m-b-30"><strong>Line </strong> Chart with animation</h3>
                                    <div id="flot_chart1" style="width: 100%; height: 320px;">
                                    </div>
                                </div>
                            </div>
                        </div>
                    </div>
                </div>
                <div class="col-md-6">
                    <div class="panel panel-default">
                        <div class="panel-heading">
                            <h3 class="panel-title"><strong>Morris</strong> Charts</h3>
                        </div>
                        <div class="panel-body">
                            <div class="row">
                                <div class="col-md-12">
                                    <h3 class="m-b-30"><strong>Donut </strong> Chart</h3>
                                    <div class="row">
                                        <div class="col-sm-6 col-sm-offset-3">
                                            <div id="donut-chart1"></div>
                                        </div>
                                    </div>
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
                            <h3 class="panel-title"><strong>Circliful</strong> Chart</h3>
                        </div>
                        <div class="panel-body">
                            <div class="row">
                                <div class="col-md-3">
                                    <h3><strong>Half </strong> Circle</h3>
                                    <p>Half Circle - filled with text and info.</p>
                                    <br>
                                    <div id="pie_chart1" data-dimension="200" data-text="35%" data-info="New Clients" data-width="30" data-fontsize="38" data-percent="35" data-fgcolor="#7ea568" data-bgcolor="#eee" data-type="half" data-fill="#ddd"></div>
                                </div>
                                <div class="col-md-3">
                                    <h3><strong>Filled </strong> Circle.</h3>
                                    <p>Filled Circle with text and info-text.</p>
                                    <br>
                                    <div id="pie_chart2" data-dimension="200" data-text="35%" data-info="New Clients" data-width="30" data-fontsize="38" data-percent="35" data-fgcolor="#61a9dc" data-bgcolor="#eee" data-fill="#ddd"></div>
                                </div>
                                <div class="col-md-3">
                                    <h3><strong>Fontawesome </strong> icon.</h3>
                                    <p>Circle - border inline &amp; fontawesome icon..</p>
                                    <br>
                                    <div id="pie_chart3" data-dimension="200" data-text="72" data-info="New Users" data-width="30" data-fontsize="38" data-percent="46" data-fgcolor="#61a9dc" data-bgcolor="#eee" data-total="150" data-part="72" data-border="inline" data-icon="fa-group" data-icon-size="28"
                                    data-icon-color="#ccc"></div>
                                </div>
                                <div class="col-md-3">
                                    <h3><strong>Color </strong> variations</h3>
                                    <p>All colors available</p>
                                    <br>
                                    <div id="pie_chart4" data-dimension="200" data-text="35%" data-info="New Clients" data-width="30" data-fontsize="38" data-percent="35" data-fgcolor="#C9625F" data-bgcolor="#eee"></div>
                                </div>
                            </div>
                        </div>
                    </div>
                </div>
            </div>
        </div>
        <!-- END MAIN CONTENT -->
        <div id="tooltip"></div>
      <jsp:include page="../../../assets/elements/menuChatElement.jsp" />
    <jsp:include page="../../../assets/elements/element_pack/chartsE.jsp" />
</body>
</html>
