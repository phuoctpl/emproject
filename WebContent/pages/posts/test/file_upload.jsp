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
    <!-- BEGIN MANDATORY STYLE -->
    <link href="assets/css/icons/icons.min.css" rel="stylesheet">
    <link href="assets/css/bootstrap.min.css" rel="stylesheet">
    <link href="assets/css/plugins.min.css" rel="stylesheet">
    <link href="assets/css/style.min.css" rel="stylesheet">
    <!-- END  MANDATORY STYLE -->
    <!-- BEGIN PAGE LEVEL STYLE -->
    <link rel="stylesheet" href="assets/plugins/dropzone/dropzone.css">
    <link rel="stylesheet" href="assets/plugins/jquery-file-upload/css/jquery.fileupload.css">
    <link rel="stylesheet" href="assets/plugins/jquery-file-upload/css/jquery.fileupload-ui.css">
    <!-- END PAGE LEVEL STYLE -->
    <script src="assets/plugins/modernizr/modernizr-2.6.2-respond-1.1.0.min.js"></script>
</head>

<body data-page="file_upload">
    <!-- BEGIN TOP MENU -->
    <nav class="navbar navbar-inverse navbar-fixed-top" role="navigation">
        <div class="container-fluid">
            <div class="navbar-header">
                <button type="button" class="navbar-toggle" data-toggle="collapse" data-target="#sidebar">
                    <span class="sr-only">Toggle navigation</span>
                    <span class="icon-bar"></span>
                    <span class="icon-bar"></span>
                    <span class="icon-bar"></span>
                </button>
                <a id="menu-medium" class="sidebar-toggle tooltips">
                    <i class="fa fa-outdent"></i>
                </a>
                <a class="navbar-brand" href="index.html">
                    <img src="assets/img/logo.png" alt="logo" width="79" height="26">
                </a>
            </div>
            <div class="navbar-center">File Upload</div>
            <div class="navbar-collapse collapse">
                <!-- BEGIN TOP NAVIGATION MENU -->
                <ul class="nav navbar-nav pull-right header-menu">
                    <!-- BEGIN NOTIFICATION DROPDOWN -->
                    <li class="dropdown" id="notifications-header">
                        <a href="#" class="dropdown-toggle" data-toggle="dropdown" data-hover="dropdown" data-close-others="true">
                            <i class="glyph-icon flaticon-notifications"></i>
                            <span class="badge badge-danger badge-header">6</span>
                        </a>
                        <ul class="dropdown-menu">
                            <li class="dropdown-header clearfix">
                                <p class="pull-left">Notifications</p>
                            </li>
                            <li>
                                <ul class="dropdown-menu-list withScroll" data-height="220">
                                    <li>
                                        <a href="#">
                                            <i class="fa fa-star p-r-10 f-18 c-orange"></i>
                                            Steve have rated your photo
                                            <span class="dropdown-time">Just now</span>
                                        </a>
                                    </li>
                                    <li>
                                        <a href="#">
                                            <i class="fa fa-heart p-r-10 f-18 c-red"></i>
                                            John added you to his favs
                                            <span class="dropdown-time">15 mins</span>
                                        </a>
                                    </li>
                                    <li>
                                        <a href="#">
                                            <i class="fa fa-file-text p-r-10 f-18"></i>
                                            New document available
                                            <span class="dropdown-time">22 mins</span>
                                        </a>
                                    </li>
                                    <li>
                                        <a href="#">
                                            <i class="fa fa-picture-o p-r-10 f-18 c-blue"></i>
                                            New picture added
                                            <span class="dropdown-time">40 mins</span>
                                        </a>
                                    </li>
                                    <li>
                                        <a href="#">
                                            <i class="fa fa-bell p-r-10 f-18 c-orange"></i>
                                            Meeting in 1 hour
                                            <span class="dropdown-time">1 hour</span>
                                        </a>
                                    </li>
                                    <li>
                                        <a href="#">
                                            <i class="fa fa-bell p-r-10 f-18"></i>
                                            Server 5 overloaded
                                            <span class="dropdown-time">2 hours</span>
                                        </a>
                                    </li>
                                    <li>
                                        <a href="#">
                                            <i class="fa fa-comment p-r-10 f-18 c-gray"></i>
                                            Bill comment your post
                                            <span class="dropdown-time">3 hours</span>
                                        </a>
                                    </li>
                                    <li>
                                        <a href="#">
                                            <i class="fa fa-picture-o p-r-10 f-18 c-blue"></i>
                                            New picture added
                                            <span class="dropdown-time">2 days</span>
                                        </a>
                                    </li>
                                </ul>
                            </li>
                            <li class="dropdown-footer clearfix">
                                <a href="#" class="pull-left">See all notifications</a>
                                <a href="#" class="pull-right">
                                    <i class="fa fa-cog"></i>
                                </a>
                            </li>
                        </ul>
                    </li>
                    <!-- END NOTIFICATION DROPDOWN -->
                    <!-- BEGIN MESSAGES DROPDOWN -->
                    <li class="dropdown" id="messages-header">
                        <a href="#" class="dropdown-toggle" data-toggle="dropdown" data-hover="dropdown" data-close-others="true">
                            <i class="glyph-icon flaticon-email"></i>
                            <span class="badge badge-primary badge-header">
                             8
                        </span>
                        </a>
                        <ul class="dropdown-menu">
                            <li class="dropdown-header clearfix">
                                <p class="pull-left">
                                    Messages
                                </p>
                            </li>
                            <li class="dropdown-body">
                                <ul class="dropdown-menu-list withScroll" data-height="220">
                                    <li class="clearfix">
                                        <span class="pull-left p-r-5">
                                            <img src="assets/img/avatars/avatar3.png" alt="avatar 3">
                                        </span>
                                        <div class="clearfix">
                                            <div>
                                                <strong>Alexa Johnson</strong> 
                                                <small class="pull-right text-muted">
                                                    <span class="glyphicon glyphicon-time p-r-5"></span>12 mins ago
                                                </small>
                                            </div>
                                            <p>Lorem ipsum dolor sit amet, consectetur...</p>
                                        </div>
                                    </li>
                                    <li class="clearfix">
                                        <span class="pull-left p-r-5">
                                            <img src="assets/img/avatars/avatar4.png" alt="avatar 4">
                                        </span>
                                        <div class="clearfix">
                                            <div>
                                                <strong>John Smith</strong> 
                                                <small class="pull-right text-muted">
                                                    <span class="glyphicon glyphicon-time p-r-5"></span>47 mins ago
                                                </small>
                                            </div>
                                            <p>Lorem ipsum dolor sit amet, consectetur...</p>
                                        </div>
                                    </li>
                                    <li class="clearfix">
                                        <span class="pull-left p-r-5">
                                            <img src="assets/img/avatars/avatar5.png" alt="avatar 5">
                                        </span>
                                        <div class="clearfix">
                                            <div>
                                                <strong>Bobby Brown</strong> 
                                                <small class="pull-right text-muted">
                                                    <span class="glyphicon glyphicon-time p-r-5"></span>1 hour ago
                                                </small>
                                            </div>
                                            <p>Lorem ipsum dolor sit amet, consectetur...</p>
                                        </div>
                                    </li>
                                    <li class="clearfix">
                                        <span class="pull-left p-r-5">
                                            <img src="assets/img/avatars/avatar6.png" alt="avatar 6">
                                        </span>
                                        <div class="clearfix">
                                            <div>
                                                <strong>James Miller</strong> 
                                                <small class="pull-right text-muted">
                                                    <span class="glyphicon glyphicon-time p-r-5"></span>2 days ago
                                                </small>
                                            </div>
                                            <p>Lorem ipsum dolor sit amet, consectetur...</p>
                                        </div>
                                    </li>
                                </ul>
                            </li>
                            <li class="dropdown-footer clearfix">
                                <a href="mailbox.html" class="pull-left">See all messages</a>
                                <a href="#" class="pull-right">
                                    <i class="fa fa-cog"></i>
                                </a>
                            </li>
                        </ul>
                    </li>
                    <!-- END MESSAGES DROPDOWN -->
                    <!-- BEGIN USER DROPDOWN -->
                    <li class="dropdown" id="user-header">
                        <a href="#" class="dropdown-toggle c-white" data-toggle="dropdown" data-hover="dropdown" data-close-others="true">
                            <img src="assets/img/avatars/avatar2.png" alt="user avatar" width="30" class="p-r-5">
                            <span class="username">Bob Nilson</span>
                            <i class="fa fa-angle-down p-r-10"></i>
                        </a>
                        <ul class="dropdown-menu">
                            <li>
                                <a href="extra_profile.html">
                                    <i class="glyph-icon flaticon-account"></i> My Profile
                                </a>
                            </li>
                            <li>
                                <a href="calendar.html">
                                    <i class="glyph-icon flaticon-calendar"></i> My Calendar
                                </a>
                            </li>
                            <li>
                                <a href="calendar.html">
                                    <i class="glyph-icon flaticon-settings21"></i> Account Settings
                                </a>
                            </li>
                            <li class="dropdown-footer clearfix">
							<a href="javascript:;" class="toggle_fullscreen" title="Fullscreen">
								<i class="glyph-icon flaticon-fullscreen3"></i>
							</a>
							<a href="lockscreen.html" title="Lock Screen">
								<i class="glyph-icon flaticon-padlock23"></i>
							</a>
							<a href="login.html" title="Logout">
								<i class="fa fa-power-off"></i>
							</a>
						</li>
                        </ul>
                    </li>
                    <!-- END USER DROPDOWN -->
                    <!-- BEGIN CHAT HEADER -->
                    <li id="chat-header">
                        <a href="#" class="c-white" id="chat-toggle">
                            <i class="glyph-icon flaticon-speech76 f-24"></i>
                            <span id="chat-notification" class="notification notification-danger hide" data-delay="2000"></span>
                        </a>
                        <div id="chat-popup" class="chat-popup hide" data-delay="2000">
                            <div class="arrow-up"></div>
                            <div class="chat-popup-inner bg-blue">
                                <div>
                                    <div class="clearfix w-600">
                                        <img src="assets/img/avatars/avatar3.png" alt="avatar 3" width="30" class="pull-left img-circle p-r-5">Alexa Johnson</div>
                                    <div class="message m-t-5">Hey you there?</div>
                                </div>
                            </div>
                        </div>
                    </li>
                    <!-- END CHAT HEADER -->
                </ul>
                <!-- END TOP NAVIGATION MENU -->
            </div>
        </div>
    </nav>
    <!-- END TOP MENU -->
    <!-- BEGIN WRAPPER -->
    <div id="wrapper">
        <!-- BEGIN MAIN SIDEBAR -->
        <nav id="sidebar">
            <div id="main-menu">
                <ul class="sidebar-nav">
                    <li>
                        <a href="index.html"><i class="fa fa-dashboard"></i><span class="sidebar-text">Dashboard</span></a>
                    </li>
                    <li>
                        <a href="widgets.html"><i class="glyph-icon flaticon-widgets"></i><span class="sidebar-text">Widgets <span class="label label-danger pull-right">New</span></span></a>
                    </li>
                    <li>
                        <a href="charts.html"><i class="glyph-icon flaticon-charts2"></i><span class="sidebar-text">Charts</span><span class="pull-right badge badge-primary">2</span></a>
                    </li>
                    <li>
                        <a href="http://themes-lab.com/pixit/frontend/index.html" target="_blank"><i class="glyph-icon flaticon-frontend"></i><span class="sidebar-text">Frontend</span></a>
                    </li>
                    <li>
                        <a href="#"><i class="glyph-icon flaticon-email"></i><span class="sidebar-text">Email</span><span class="fa arrow"></span></a>
                         <ul class="submenu collapse">
                            <li>
                                <a href="mailbox.html"><span class="sidebar-text">Inbox</span></a>
                            </li>
                            <li>
                                <a href="email_compose.html"><span class="sidebar-text">Write a Message</span></a>
                            </li>
                        </ul>
                    </li>
                    <li class="current active hasSub">
                        <a href="#"><i class="glyph-icon flaticon-forms"></i><span class="sidebar-text">Forms</span><span class="fa arrow"></span></a>
                        <ul class="submenu collapse">
                            <li>
                                <a href="forms.html"><span class="sidebar-text">Form Elements</span></a>                            
                            </li>
                            <li>
                                <a href="form_validation.html"><span class="sidebar-text">Form Validation</span></a>
                            </li>
                            <li>
                                <a href="form_wizards.html"><span class="sidebar-text">Form Wizards</span></a>
                            </li>
                            <li>
                                <a href="sliders.html"><span class="sidebar-text">Sliders</span></a>
                            </li>
                            <li>
                                <a href="wysiwyg.html"><span class="sidebar-text">Editors</span></a>
                            </li>
                            <li class="current">
                                <a href="file_upload.html"><span class="sidebar-text">File Upload</span></a>
                            </li>
                        </ul>
                    </li>
                    <li>
                        <a href="#"><i class="glyph-icon flaticon-ui-elements2"></i><span class="sidebar-text">UI Elements</span><span class="fa arrow"></span></a>
                        <ul class="submenu collapse">
                            <li>
                                <a href="components.html"><span class="sidebar-text">Components</span></a>
                            </li>
                            <li>
                                <a href="animations.html"><span class="sidebar-text">Animations CSS3</span></a>
                            </li>
                            <li> 
                                <a href="buttons.html"><span class="sidebar-text">Buttons</span></a>
                            </li>
                            <li> 
                                <a href="icons.html"><span class="sidebar-text">Icons</span></a>
                            </li>
                            <li>
                                <a href="typography.html"><span class="sidebar-text">Typography</span></a>
                            </li>
                            <li>
                                <a href="modals.html"><span class="sidebar-text">Modals</span></a>
                            </li>
                            <li>
                                <a href="notifications.html"><span class="sidebar-text">Notifications</span></a>
                            </li>
                            <li>
                                <a href="tabs_accordion.html"><span class="sidebar-text">Tabs &amp; Accordion</span></a>
                            </li>
                            <li>
                                <a href="nestable-list.html"><span class="sidebar-text">Nestable &amp; Sortable lists</span></a>
                            </li>
                             <li>
                                <a href="tree.html"><span class="sidebar-text">Tree View</span></a>
                            </li>
                        </ul>
                    </li>
                    <li>
                        <a href="#"><i class="glyph-icon flaticon-pages"></i><span class="sidebar-text">Pages</span><span class="fa arrow"></span></a>
                        <ul class="submenu collapse">
                            <li>
                                <a href="timeline.html"><span class="sidebar-text">Timeline</span></a>
                            </li>
                            <li>
                                <a href="blog-list.html"><span class="sidebar-text">Blog List</span></a>
                            </li>
                            <li>
                                <a href="blog-single.html"><span class="sidebar-text">Blog Single</span></a>
                            </li>
                            <li>
                                <a href="404.html"><span class="sidebar-text">404 Error Page</span></a>
                            </li>
                            <li>
                                <a href="500.html"><span class="sidebar-text">500 Error Page</span></a>
                            </li>
                            <li>
                                <a href="blank_page.html"><span class="sidebar-text">Blank Page</span></a>
                            </li>
                        </ul>
                    </li>
                    <li>
                        <a href="maps.html"><i class="glyph-icon flaticon-world"></i><span class="sidebar-text">Google Maps</span></a>
                    </li>
                    <li>
                        <a href="#"><i class="glyph-icon flaticon-panels"></i><span class="sidebar-text">Panels</span><span class="fa arrow"></span></a>
                          <ul class="submenu collapse">
                            <li>
                                <a href="panels.html"><span class="sidebar-text">Custom Panels</span></a>
                            </li>
                            <li>
                                <a href="panels_draggable.html"><span class="sidebar-text">Draggable Panels</span></a>
                            </li>
                        </ul>
                    </li>
                    <li>
                        <a href="#"><i class="fa fa-table"></i><span class="sidebar-text">Tables</span><span class="fa arrow"></span></a>
                        <ul class="submenu collapse">
                            <li>
                                <a href="tables.html"><span class="sidebar-text">Style Tables</span></a>
                            </li>
                            <li>
                                <a href="tables_editable.html"><span class="sidebar-text">Editable Tables</span></a>
                            </li>
                            <li>
                                <a href="tables_dynamic.html"><span class="sidebar-text">Dynamic Tables</span></a>
                            </li>
                        </ul>
                    </li>
                    <li>
                        <a href="#"><i class="glyph-icon flaticon-account"></i><span class="sidebar-text">Account</span><span class="fa arrow"></span></a>
                          <ul class="submenu collapse">
                            <li>
                                <a href="profil.html"><span class="sidebar-text">User Profile</span></a>
                            </li>
                            <li>
                                <a href="login.html"><span class="sidebar-text">Login</span></a>
                            </li>
                            <li>
                                <a href="signup.html"><span class="sidebar-text">Signup</span></a>
                            </li>
                            <li>
                                <a href="password_forgot.html"><span class="sidebar-text">Password recover</span></a>
                            </li>
                            <li>
                                <a href="lockscreen.html"><span class="sidebar-text">Lockscreen</span></a>
                            </li>
                            <li>
                                <a href="session_timeout.html"><span class="sidebar-text">Session Timeout</span></a>
                            </li>
                        </ul>
                    </li>
                    <li>
                        <a href="#"><i class="glyph-icon flaticon-gallery"></i><span class="sidebar-text">Images Manager</span><span class="fa arrow"></span></a>
                         <ul class="submenu collapse">
                            <li>
                                <a href="gallery.html"><span class="sidebar-text">Gallery</span></a>
                            </li>
                            <li>
                                <a href="medias.html"><span class="sidebar-text">Medias</span></a>
                            </li>
                            <li>
                                <a href="image_croping.html"><span class="sidebar-text">Image Croping</span></a>
                            </li>
                        </ul>    
                    </li>
                    <li class="m-b-245">
                        <a href="calendar.html"><i class="glyph-icon flaticon-calendar53"></i><span class="sidebar-text">Calendar</span></a>
                    </li>
                </ul>
            </div>
            <div class="footer-widget">
                <img src="assets/img/gradient.png" alt="gradient effet" class="sidebar-gradient-img" />
                <div id="sidebar-charts">
                    <div class="sidebar-charts-inner">
                        <div class="sidebar-charts-left">
                            <div class="sidebar-chart-title">Orders</div>
                            <div class="sidebar-chart-number">1,256</div>
                        </div>
                        <div class="sidebar-charts-right" class="sparkline mini-chart" data-type="bar" data-color="theme">
                            <span class="dynamicbar1"></span>
                        </div>
                    </div>
                    <hr class="divider">
                    <div class="sidebar-charts-inner">
                        <div class="sidebar-charts-left">
                            <div class="sidebar-chart-title">Income</div>
                            <div class="sidebar-chart-number">$47,564</div>
                        </div>
                        <div class="sidebar-charts-right" class="sparkline mini-chart" data-type="bar" data-color="theme">
                            <span class="dynamicbar2"></span>
                        </div>
                    </div>
                    <hr class="divider">
                    <div class="sidebar-charts-inner">
                        <div class="sidebar-charts-left">
                            <div class="sidebar-chart-title">Visits</div>
                            <div class="sidebar-chart-number" id="number-visits">147,687</div>
                        </div>
                        <div class="sidebar-charts-right" class="sparkline mini-chart" data-type="bar" data-color="theme">
                            <span class="dynamicbar3"></span>
                        </div>
                    </div>
                </div>
                <div class="sidebar-footer clearfix">
                    <a class="pull-left" href="profil.html" rel="tooltip" data-placement="top" data-original-title="Settings"><i class="glyph-icon flaticon-settings21"></i></a>
                    <a class="pull-left toggle_fullscreen" href="#" rel="tooltip" data-placement="top" data-original-title="Fullscreen"><i class="glyph-icon flaticon-fullscreen3"></i></a>
                    <a class="pull-left" href="lockscreen.html" rel="tooltip" data-placement="top" data-original-title="Lockscreen"><i class="glyph-icon flaticon-padlock23"></i></a>
                    <a class="pull-left" href="login.html" rel="tooltip" data-placement="top" data-original-title="Logout"><i class="fa fa-power-off"></i></a>
                </div> 
            </div>
        </nav>
        <!-- END MAIN SIDEBAR -->
        <!-- BEGIN MAIN CONTENT -->
        <div id="main-content">
          <div class="page-title"> <i class="icon-custom-left"></i>
              <h3><strong>Upload</strong> Files</h3>
          </div>
          <div class="row">
            <div class="col-md-12">
              <div class="panel panel-default">
              <div class="panel-heading">
                <h3 class="panel-title"><strong>Multiple</strong> File Upload</h3>
              </div>
              <div class="panel-body">
                  <div class="row">
                    <div class="col-md-12">
                      <p>DropzoneJS is an open source library that provides drag'n'drop file uploads with image previews.</p><br>
                      <form action="#" class="dropzone">
                      <div class="fallback">
                        <input name="file" type="file" multiple />
                      </div>
                    </form>
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
                <h3 class="panel-title"><strong>jQuery</strong> File Upload</h3>
              </div>
              <div class="panel-body">
                  <div class="row">
                    <div class="col-md-12">
                      <p>File Upload widget with multiple file selection, drag&amp;drop support, progress bars, validation and preview images, audio and video for jQuery.</p><br>
                          <form id="fileupload" action="http://jquery-file-upload.appspot.com/" method="POST" enctype="multipart/form-data">
                            <!-- Redirect browsers with JavaScript disabled to the origin page -->
                            <noscript><input type="hidden" name="redirect" value="http://blueimp.github.io/jQuery-File-Upload/"></noscript>
                            <!-- The fileupload-buttonbar contains buttons to add/delete files and start/cancel the upload -->
                            <div class="row fileupload-buttonbar">
                                <div class="col-lg-7">
                                    <!-- The fileinput-button span is used to style the file input field as button -->
                                    <span class="btn btn-success fileinput-button">
                                        <i class="glyphicon glyphicon-plus"></i>
                                        <span>Add files...</span>
                                        <input type="file" name="files[]" multiple>
                                    </span>
                                    <button type="submit" class="btn btn-primary start">
                                        <i class="glyphicon glyphicon-upload"></i>
                                        <span>Start upload</span>
                                    </button>
                                    <button type="reset" class="btn btn-warning cancel">
                                        <i class="glyphicon glyphicon-ban-circle"></i>
                                        <span>Cancel upload</span>
                                    </button>
                                    <button type="button" class="btn btn-danger delete">
                                        <i class="glyphicon glyphicon-trash"></i>
                                        <span>Delete</span>
                                    </button>
                                    <!-- The global file processing state -->
                                    <span class="fileupload-process"></span>
                                </div>
                                <!-- The global progress state -->
                                <div class="col-lg-5 fileupload-progress fade">
                                    <!-- The global progress bar -->
                                    <div class="progress progress-striped active" role="progressbar" aria-valuemin="0" aria-valuemax="100">
                                        <div class="progress-bar progress-bar-success" style="width:0%;"></div>
                                    </div>
                                    <!-- The extended global progress state -->
                                    <div class="progress-extended">&nbsp;</div>
                                </div>
                            </div>
                            <!-- The table listing the files available for upload/download -->
                            <table role="presentation" class="table table-striped"><tbody class="files"></tbody></table>
                        </form>
                      </div>
                  </div>
                </div>
              </div>
            </div>
          </div>
        </div>
        <!-- END MAIN CONTENT -->
        <script id="template-upload" type="text/x-tmpl">
        {% for (var i=0, file; file=o.files[i]; i++) { %}
            <tr class="template-upload fade">
                <td>
                    <span class="preview"></span>
                </td>
                <td>
                    <p class="name">{%=file.name%}</p>
                    <strong class="error text-danger"></strong>
                </td>
                <td>
                    <p class="size">Processing...</p>
                    <div class="progress progress-striped active" role="progressbar" aria-valuemin="0" aria-valuemax="100" aria-valuenow="0"><div class="progress-bar progress-bar-success" style="width:0%;"></div></div>
                </td>
                <td>
                    {% if (!i && !o.options.autoUpload) { %}
                        <button class="btn btn-primary start" disabled>
                            <i class="glyphicon glyphicon-upload"></i>
                            <span>Start</span>
                        </button>
                    {% } %}
                    {% if (!i) { %}
                        <button class="btn btn-warning cancel">
                            <i class="glyphicon glyphicon-ban-circle"></i>
                            <span>Cancel</span>
                        </button>
                    {% } %}
                </td>
            </tr>
        {% } %}
        </script>

        <!-- The template to display files available for download -->
        <script id="template-download" type="text/x-tmpl">

        {% for (var i=0, file; file=o.files[i]; i++) { %}
            <tr class="template-download fade">
                <td>
                    <span class="preview">
                        {% if (file.thumbnailUrl) { %}
                            <a href="{%=file.url%}" title="{%=file.name%}" download="{%=file.name%}" data-gallery><img src="{%=file.thumbnailUrl%}"></a>
                        {% } %}
                    </span>
                </td>
                <td>
                    <p class="name">
                        {% if (file.url) { %}
                            <a href="{%=file.url%}" title="{%=file.name%}" download="{%=file.name%}" {%=file.thumbnailUrl?'data-gallery':''%}>{%=file.name%}</a>
                        {% } else { %}
                            <span>{%=file.name%}</span>
                        {% } %}
                    </p>
                    {% if (file.error) { %}
                        <div><span class="label label-danger">Error</span> {%=file.error%}</div>
                    {% } %}
                </td>
                <td>
                    <span class="size">{%=o.formatFileSize(file.size)%}</span>
                </td>
                <td>
                    {% if (file.deleteUrl) { %}
                        <button class="btn btn-danger delete" data-type="{%=file.deleteType%}" data-url="{%=file.deleteUrl%}"{% if (file.deleteWithCredentials) { %} data-xhr-fields='{"withCredentials":true}'{% } %}>
                            <i class="glyphicon glyphicon-trash"></i>
                            <span>Delete</span>
                        </button>
                        <input type="checkbox" name="delete" value="1" class="toggle">
                    {% } else { %}
                        <button class="btn btn-warning cancel">
                            <i class="glyphicon glyphicon-ban-circle"></i>
                            <span>Cancel</span>
                        </button>
                    {% } %}
                </td>
            </tr>
        {% } %}
        </script>
    </div>
    <!-- END WRAPPER -->
   <!-- BEGIN CHAT MENU -->
    <nav id="menu-right">
        <ul>
            <li class="mm-label label-big">ONLINE</li>
            <li class="img no-arrow have-message">
                <span>
                    <i class="online"></i>
                    <img src="assets/img/avatars/avatar3.png"/>
                    <div class="chat-name">Alexa Johnson</div>
                    <div class="pull-right badge badge-danger hide">3</div>
                    <div >Los Angeles</div>
                </span>
                <ul class="chat-messages">
                    <li class="img"><span><div class="chat-detail"><img src="assets/img/avatars/avatar3.png"/><div class="chat-bubble">Hi you!</div></div></span></li>
                    <li class="img"><span><div class="chat-detail"><img src="assets/img/avatars/avatar3.png"/><div class="chat-bubble">You there?</div></div></span></li>
                    <li class="img"><span><div class="chat-detail"><img src="assets/img/avatars/avatar3.png"/><div class="chat-bubble">Let me know when you come back</div></div></span></li>
                    <div class="chat-input">
                        <input type="text" class="form-control send-message" placeholder="Type your message" />
                    </div>
                </ul>
            </li>
            <li class="img no-arrow">
                <span>
                    <i class="online"></i>
                    <img src="assets/img/avatars/avatar2.png" alt="avatar 2"/>
                    <div class="chat-name">Bobby Brown</div>
                    <div>New York</div>
                </span>
                <ul class="chat-messages">
                    <div class="chat-input">
                        <input type="text" class="form-control send-message" placeholder="Type your message" />
                    </div>
                </ul>
            </li>
            <li class="img no-arrow">
                <span>
                    <i class="busy"></i>
                    <img src="assets/img/avatars/avatar13.png" alt="avatar 13"/>
                    <div class="chat-name">Fred Smith</div>
                    <div>Atlanta</div>
                </span>
                <ul class="chat-messages">
                    <div class="chat-input">
                        <input type="text" class="form-control send-message" placeholder="Type your message" />
                    </div>
                </ul>
            </li>
            <li class="img no-arrow">
                <span>
                    <i class="away"></i>
                    <img src="assets/img/avatars/avatar4.png" alt="avatar 4"/>
                    <div class="chat-name">James Miller</div>
                    <div>Seattle</div>
                </span>
                <ul class="chat-messages">
                    <div class="chat-input">
                        <input type="text" class="form-control send-message" placeholder="Type your message" />
                    </div>
                </ul>
            </li>
            <li class="img no-arrow">
                <span>
                    <i class="online"></i>
                    <img src="assets/img/avatars/avatar5.png" alt="avatar 5"/>
                    <div class="chat-name">Jefferson Jackson</div>
                    <div>Los Angeles</div>
                </span>
                <ul class="chat-messages">
                    <div class="chat-input">
                        <input type="text" class="form-control send-message" placeholder="Type your message" />
                    </div>
                </ul>
            </li>
            <li class="mm-label label-big m-t-30">OFFLINE</li>
            
            <li class="img no-arrow">
                <span>
                    <i class="offline"></i>
                    <img src="assets/img/avatars/avatar6.png" alt="avatar 6"/>
                    <div class="chat-name">Jordan</div>
                    <div>Savannah</div>
                </span>
                <ul class="chat-messages">
                    <div class="chat-input">
                        <input type="text" class="form-control send-message" placeholder="Type your message" />
                    </div>
                </ul>
            </li>
            <li class="img no-arrow">
                <span>
                    <i class="offline"></i>
                    <img src="assets/img/avatars/avatar7.png" alt="avatar 7"/>
                    <div class="chat-name">Kim Addams</div>
                    <div>Birmingham</div>
                </span>
                <ul class="chat-messages">
                    <div class="chat-input">
                        <input type="text" class="form-control send-message" placeholder="Type your message" />
                    </div>
                </ul>
            </li>
            <li class="img no-arrow">
                <span>
                    <i class="offline"></i>
                    <img src="assets/img/avatars/avatar8.png" alt="avatar 8"/>
                    <div class="chat-name">Meagan Miller</div>
                    <div>San Francisco</div>
                </span>
                <ul class="chat-messages">
                    <div class="chat-input">
                        <input type="text" class="form-control send-message" placeholder="Type your message" />
                    </div>
                </ul>
            </li>
            <li class="img no-arrow">
                <span>
                    <i class="offline"></i>
                    <img src="assets/img/avatars/avatar9.png" alt="avatar 9"/>
                    <div class="chat-name">Melissa Johnson</div>
                    <div>Austin</div>
                </span>
                <ul class="chat-messages">
                    <div class="chat-input">
                        <input type="text" class="form-control send-message" placeholder="Type your message" />
                    </div>
                </ul>
            </li>
            <li class="img no-arrow">
                <span>
                    <i class="offline"></i>
                    <img src="assets/img/avatars/avatar12.png" alt="avatar 12"/>
                    <div class="chat-name">Nicole Smith</div>
                    <div>San Diego</div>
                </span>
                <ul class="chat-messages">
                    <div class="chat-input">
                        <input type="text" class="form-control send-message" placeholder="Type your message" />
                    </div>
                </ul>
            </li>
            <li class="img no-arrow">
                <span>
                    <i class="offline"></i>
                    <img src="assets/img/avatars/avatar11.png" alt="avatar 11"/>
                    <div class="chat-name">Samantha Harris</div>
                    <div>Salt Lake City</div>
                </span>
                <ul class="chat-messages">
                    <div class="chat-input">
                        <input type="text" class="form-control send-message" placeholder="Type your message" />
                    </div>
                </ul>
            </li>
            <li class="img no-arrow">
                <span>
                    <i class="offline"></i>
                    <img src="assets/img/avatars/avatar10.png" alt="avatar 10"/>
                    <div class="chat-name">Scott Thomson</div>
                    <div>Los Angeles</div>
                </span>
                <ul class="chat-messages">
                    <div class="chat-input">
                        <input type="text" class="form-control send-message" placeholder="Type your message" />
                    </div>
                </ul>
            </li>
        </ul>
    </nav>
    <!-- END CHAT MENU -->
    <!-- BEGIN MANDATORY SCRIPTS -->
    <script src="assets/plugins/jquery-1.11.js"></script>
    <script src="assets/plugins/jquery-migrate-1.2.1.js"></script>
    <script src="assets/plugins/jquery-ui/jquery-ui-1.10.4.min.js"></script>
    <script src="assets/plugins/bootstrap/bootstrap.min.js"></script>
    <script src="assets/plugins/bootstrap-dropdown/bootstrap-hover-dropdown.min.js"></script>
    <script src="assets/plugins/bootstrap-select/bootstrap-select.js"></script>
    <script src="assets/plugins/icheck/icheck.js"></script>
    <script src="assets/plugins/mcustom-scrollbar/jquery.mCustomScrollbar.concat.min.js"></script>
    <script src="assets/plugins/mmenu/js/jquery.mmenu.min.all.js"></script>
    <script src="assets/plugins/nprogress/nprogress.js"></script>
    <script src="assets/plugins/charts-sparkline/sparkline.min.js"></script>
    <script src="assets/plugins/breakpoints/breakpoints.js"></script>
    <script src="assets/plugins/numerator/jquery-numerator.js"></script>
    <!-- END MANDATORY SCRIPTS -->
    <!-- BEGIN PAGE LEVEL SCRIPTS -->
    <script src="assets/plugins/dropzone/dropzone.min.js"></script>
    <script src="assets/plugins/jquery-file-upload/js/vendor/jquery.ui.widget.js"></script>
    <script src="assets/plugins/jquery-file-upload/tmpl.min.js"></script>
    <script src="assets/plugins/jquery-file-upload/load-image.min.js"></script>
    <script src="assets/plugins/jquery-file-upload/canvas-to-blob.min.js"></script>
    <script src="assets/plugins/jquery-file-upload/jquery.blueimp-gallery.min.js"></script>
    <script src="assets/plugins/jquery-file-upload/js/jquery.iframe-transport.js"></script>
    <script src="assets/plugins/jquery-file-upload/js/jquery.fileupload.js"></script>
    <script src="assets/plugins/jquery-file-upload/js/jquery.fileupload-process.js"></script>
    <script src="assets/plugins/jquery-file-upload/js/jquery.fileupload-image.js"></script>
    <script src="assets/plugins/jquery-file-upload/js/jquery.fileupload-audio.js"></script>
    <script src="assets/plugins/jquery-file-upload/js/jquery.fileupload-video.js"></script>
    <script src="assets/plugins/jquery-file-upload/js/jquery.fileupload-validate.js"></script>
    <script src="assets/plugins/jquery-file-upload/js/jquery.fileupload-ui.js"></script>
    <script src="assets/plugins/jquery-file-upload/js/main.js"></script>
    <!-- END PAGE LEVEL SCRIPTS -->
    <script src="assets/js/application.js"></script>
</body>

</html>

