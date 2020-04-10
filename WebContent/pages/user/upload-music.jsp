<%@ page language="java" contentType="text/html; charset=UTF-8"
	pageEncoding="UTF-8"%>
<%@ taglib prefix="s" uri="/struts-tags"%>
<!DOCTYPE html PUBLIC "-//W3C//DTD HTML 4.01 Transitional//EN" "http://www.w3.org/TR/html4/loose.dtd">
<html>
<head>
    <!-- BEGIN META SECTION -->
    <title>Upload - Emoutional Music</title>
    <!-- END META SECTION -->
    <!-- BEGIN MANDATORY STYLE -->
    <link href="../../assets/css/icons/icons.min.css" rel="stylesheet">
    <link href="../../assets/css/bootstrap.min.css" rel="stylesheet">
    <link href="../../assets/css/plugins.min.css" rel="stylesheet">
    <link href="../../assets/css/style.min.css" rel="stylesheet">
    <!-- END  MANDATORY STYLE -->
    <!-- BEGIN PAGE LEVEL STYLE -->
    <link rel="stylesheet" href="../../assets/plugins/dropzone/dropzone.css">
    <link rel="stylesheet" href="../../assets/plugins/jquery-file-upload/css/jquery.fileupload.css">
    <link rel="stylesheet" href="../../assets/plugins/jquery-file-upload/css/jquery.fileupload-ui.css">
    <!-- END PAGE LEVEL STYLE -->
    <script src="../../assets/plugins/modernizr/modernizr-2.6.2-respond-1.1.0.min.js"></script>
</head>

<body data-page="file_upload">

<jsp:include page="../../assets/elements/menuUser.jsp" />
        <div id="main-content">
          <div class="page-title"> <i class="icon-custom-left"></i>
         	 <h3>
				<strong>Let's share your sounds with </strong>the World
			</h3>
          </div>
         
         
          <div class="row">
            <div class="col-md-12">
              <div class="panel panel-default">
              <div class="panel-heading">
                <h3 class="panel-title"><strong>Music</strong>  Upload</h3>
              </div>
              <div class="panel-body">
                  <div class="row">
                    <div class="col-md-12">
                      <p>File Upload widget with multiple file selection, drag&amp;drop support, progress bars, validation and preview images, audio and video for jQuery.</p><br>
                         <%-- <s:form id="fileupload"  action="uploadSong.action" method="POST" enctype="multipart/form-data">
                         		<s:file name="fileUpload">Upload song...</s:file>
								<s:submit></s:submit>
                         </s:form> --%>
                         
                         <s:form action="uploadSong" method="POST" enctype="multipart/form-data">
                            <!-- Redirect browsers with JavaScript disabled to the origin page -->
                            <noscript><input type="hidden" name="redirect" value="http://blueimp.github.io/jQuery-File-Upload/"></noscript>
                            <!-- The fileupload-buttonbar contains buttons to add/delete files and start/cancel the upload -->
                            <div class="row fileupload-buttonbar">
                                <div class="col-lg-7">
                                    <!-- The fileinput-button span is used to style the file input field as button -->
                                    <span class="btn btn-success fileinput-button">
                                        <i class="glyphicon glyphicon-plus"></i>
                                        <span>Add files...</span>
                                        <s:file name="fileUpload">Upload song...</s:file>
                                    </span>
                                    <s:submit cssClass="btn btn-primary start" value="Start Upload" >
                                    </s:submit>
                                    
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
                        </s:form>
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
                    <img src="../../assets/img/avatars/avatar3.png"/>
                    <div class="chat-name">Alexa Johnson</div>
                    <div class="pull-right badge badge-danger hide">3</div>
                    <div >Los Angeles</div>
                </span>
                <ul class="chat-messages">
                    <li class="img"><span><div class="chat-detail"><img src="../../assets/img/avatars/avatar3.png"/><div class="chat-bubble">Hi you!</div></div></span></li>
                    <li class="img"><span><div class="chat-detail"><img src="../../assets/img/avatars/avatar3.png"/><div class="chat-bubble">You there?</div></div></span></li>
                    <li class="img"><span><div class="chat-detail"><img src="../../assets/img/avatars/avatar3.png"/><div class="chat-bubble">Let me know when you come back</div></div></span></li>
                    <div class="chat-input">
                        <input type="text" class="form-control send-message" placeholder="Type your message" />
                    </div>
                </ul>
            </li>
            <li class="img no-arrow">
                <span>
                    <i class="online"></i>
                    <img src="../../assets/img/avatars/avatar2.png" alt="avatar 2"/>
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
                    <img src="../../assets/img/avatars/avatar13.png" alt="avatar 13"/>
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
                    <img src="../../assets/img/avatars/avatar4.png" alt="avatar 4"/>
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
                    <img src="../../assets/img/avatars/avatar5.png" alt="avatar 5"/>
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
                    <img src="../../assets/img/avatars/avatar6.png" alt="avatar 6"/>
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
                    <img src="../../assets/img/avatars/avatar7.png" alt="avatar 7"/>
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
                    <img src="../../assets/img/avatars/avatar8.png" alt="avatar 8"/>
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
                    <img src="../../assets/img/avatars/avatar9.png" alt="avatar 9"/>
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
                    <img src="../../assets/img/avatars/avatar12.png" alt="avatar 12"/>
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
                    <img src="../../assets/img/avatars/avatar11.png" alt="avatar 11"/>
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
                    <img src="../../assets/img/avatars/avatar10.png" alt="avatar 10"/>
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
    <script src="../../assets/plugins/jquery-1.11.js"></script>
    <script src="../../assets/plugins/jquery-migrate-1.2.1.js"></script>
    <script src="../../assets/plugins/jquery-ui/jquery-ui-1.10.4.min.js"></script>
    <script src="../../assets/plugins/bootstrap/bootstrap.min.js"></script>
    <script src="../../assets/plugins/bootstrap-dropdown/bootstrap-hover-dropdown.min.js"></script>
    <script src="../../assets/plugins/bootstrap-select/bootstrap-select.js"></script>
    <script src="../../assets/plugins/icheck/icheck.js"></script>
    <script src="../../assets/plugins/mcustom-scrollbar/jquery.mCustomScrollbar.concat.min.js"></script>
    <script src="../../assets/plugins/mmenu/js/jquery.mmenu.min.all.js"></script>
    <script src="../../assets/plugins/nprogress/nprogress.js"></script>
    <script src="../../assets/plugins/charts-sparkline/sparkline.min.js"></script>
    <script src="../../assets/plugins/breakpoints/breakpoints.js"></script>
    <script src="../../assets/plugins/numerator/jquery-numerator.js"></script>
    <!-- END MANDATORY SCRIPTS -->
    <!-- BEGIN PAGE LEVEL SCRIPTS -->
    <script src="../../assets/plugins/dropzone/dropzone.min.js"></script>
    <script src="../../assets/plugins/jquery-file-upload/js/vendor/jquery.ui.widget.js"></script>
    <script src="../../assets/plugins/jquery-file-upload/tmpl.min.js"></script>
    <script src="../../assets/plugins/jquery-file-upload/load-image.min.js"></script>
    <script src="../../assets/plugins/jquery-file-upload/canvas-to-blob.min.js"></script>
    <script src="../../assets/plugins/jquery-file-upload/jquery.blueimp-gallery.min.js"></script>
    <script src="../../assets/plugins/jquery-file-upload/js/jquery.iframe-transport.js"></script>
    <script src="../../assets/plugins/jquery-file-upload/js/jquery.fileupload.js"></script>
    <script src="../../assets/plugins/jquery-file-upload/js/jquery.fileupload-process.js"></script>
    <script src="../../assets/plugins/jquery-file-upload/js/jquery.fileupload-image.js"></script>
    <script src="../../assets/plugins/jquery-file-upload/js/jquery.fileupload-audio.js"></script>
    <script src="../../assets/plugins/jquery-file-upload/js/jquery.fileupload-video.js"></script>
    <script src="../../assets/plugins/jquery-file-upload/js/jquery.fileupload-validate.js"></script>
    <script src="../../assets/plugins/jquery-file-upload/js/jquery.fileupload-ui.js"></script>
    <script src="../../assets/plugins/jquery-file-upload/js/main.js"></script>
    <!-- END PAGE LEVEL SCRIPTS -->
    <script src="../../assets/js/application.js"></script>
</body>

</html>

