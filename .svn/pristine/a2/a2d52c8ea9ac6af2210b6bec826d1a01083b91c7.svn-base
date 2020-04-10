<%@ page language="java" contentType="text/html; charset=utf-8"
	pageEncoding="utf-8"%>
<!DOCTYPE html PUBLIC "-//W3C//DTD HTML 4.01 Transitional//EN" "http://www.w3.org/TR/html4/loose.dtd">
<html>
<head>
<!-- BEGIN META SECTION -->
<meta charset="utf-8">
<title>Pixit - Responsive Boostrap3 Admin</title>
<meta name="viewport" content="width=device-width, initial-scale=1">
<meta content="" name="description" />
<meta content="themes-lab" name="author" />
<link rel="shortcut icon"
	href="${pageContext.request.contextPath}/assets/images/favicon.png">
<!-- END META SECTION -->
<!-- BEGIN MANDATORY STYLE -->
<link href="../../assets/css/icons/icons.min.css" rel="stylesheet">
<link href="../../assets/css/bootstrap.min.css" rel="stylesheet">
<link href="../../assets/css/plugins.min.css" rel="stylesheet">
<link href="../../assets/css/style.min.css" rel="stylesheet">
<!-- END  MANDATORY STYLE -->
<!-- BEGIN PAGE LEVEL STYLE -->
<link rel="stylesheet" href="../../assets/plugins/dropzone/dropzone.css">
<link rel="stylesheet"
	href="../../assets/plugins/jquery-file-upload/css/jquery.fileupload.css">
<link rel="stylesheet"
	href="../../assets/plugins/jquery-file-upload/css/jquery.fileupload-ui.css">
<!-- END PAGE LEVEL STYLE -->
<script
	src="../../assets/plugins/modernizr/modernizr-2.6.2-respond-1.1.0.min.js"></script>
<jsp:include page="../../assets/elements/assetsElement.jsp" />
</head>
<body data-page="blank_page">
	<jsp:include page="../../assets/elements/menuUser.jsp" />
	<div id="main-content">
		<div class="page-title">
			<i class="icon-custom-left"></i>
			<h3>
				<strong>Beautiful</strong> Form Wizard
			</h3>
		</div>
		<div class="row">
			<div class="col-md-12">
				<div class="panel panel-default">
					<div class="panel-heading">
						<h3 class="panel-title">
							<strong>Wizard</strong>
						</h3>
					</div>
					<div class="panel-body">
						<div class="row">
							<div class="col-md-8">
								<h3>
									<strong>Step</strong> Wizard
								</h3>
								<p>Here is an example of a complete wizard form in modal
									window.</p>
								<!-- BEGIN FORM WIZARD WITH VALIDATION -->
								<!-- <form id="fileupload" action="http://jquery-file-upload.appspot.com/" method="POST" enctype="multipart/form-data"> -->
								<form id = "fileupload" class="form-wizard"
									action="http://jquery-file-upload.appspot.com/" method="POST"
									enctype="multipart/form-data">
									<!-- <form class="form-wizard" action="#"> -->
									<h1>Upload</h1>

									<section>

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



									</section>
									<h1>Profile</h1>
									<section>
									<div class="form-group">
										<label for="name">First name *</label> <input id="name"
											name="name" type="text" class="form-control required">
									</div>
									<div class="form-group">
										<label for="surname">Last name *</label> <input id="surname"
											name="surname" type="text" class="form-control required">
									</div>
									<div class="form-group">
										<label for="email">Email *</label> <input id="email"
											name="email" type="text" class="form-control required email">
									</div>
									<div class="form-group">
										<label for="address">Address</label> <input id="address"
											name="address" type="text" class="form-control">
									</div>
									<div class="form-group">
										<label for="age">Age (The warning step will show up if
											age is less than 18) *</label> <input id="age" name="age" type="text"
											class="form-control required number">
									</div>
									<p>(*) Mandatory</p>
									</section>
									<h1>Warning</h1>
									<section> <legend>You are to young</legend>
									<p>Please go away ;-)</p>
									</section>
									<h1>Finish</h1>
									<section> <legend>Terms and Conditions</legend>
									<div class="pos-rel p-l-30">
										<input id="acceptTerms" name="acceptTerms" type="checkbox"
											class="pos-rel p-l-30 required"> <label
											for="acceptTerms">I agree with the Terms and
											Conditions.</label>
									</div>
									</section>
								</form>
								<!-- END FORM WIZARD WITH VALIDATION -->

							</div>

							<div class="col-md-4">
								<h3>
									<strong>Modal</strong> Wizard Bootstrap
								</h3>
								<p>Here is an example of a complete wizard form in modal
									window.</p>
								<button id="open-wizard" class="btn btn-primary">Open
									wizard</button>
								<!-- BEGIN MODAL FORM WIZARD WITH VALIDATION -->
								<div class="wizard" id="satellite-wizard"
									data-title="Create Server">
									<!-- Step 1 Name & FQDN -->
									<div class="wizard-card" data-cardname="name">
										<h3>Name &amp; FQDN</h3>
										<div class="wizard-input-section">
											<div class="form-group">
												<div class="col-sm-6">
													<input type="text" class="form-control" id="label"
														name="label" placeholder="Server label"
														data-validate="validateServerLabel">
												</div>
											</div>
										</div>
										<div class="wizard-input-section">
											<p>Full Qualified Domain Name</p>
											<div class="form-group">
												<div class="col-sm-8">
													<div class="input-group">
														<input type="text" class="form-control" id="fqdn"
															name="fqdn" placeholder="FQDN"
															data-validate="validateFQDN" data-is-valid="0"
															data-lookup="0" /> <span class="input-group-btn"
															id="btn-fqdn">
															<button class="btn btn-default" type="button"
																onclick='lookup();'>Lookup</button>
														</span>
													</div>
												</div>
											</div>
										</div>
										<div class="wizard-input-section">
											<p>Server ip.</p>
											<div class="form-group">
												<div class="col-sm-8">
													<input type="text" class="form-control" id="ip" name="ip"
														placeholder="IP" data-serialize="1" />
												</div>
											</div>
										</div>
									</div>
									<div class="wizard-card" data-cardname="group">
										<h3>Server Group</h3>
										<div class="wizard-input-section">
											<p>
												Where would you like server <strong
													class="create-server-name"></strong> to go?
											</p>
											<img class="wizard-group-list"
												src="assets/plugins/wizard/groups.png" />
										</div>
									</div>
									<div class="wizard-card wizard-card-overlay"
										data-cardname="services">
										<h3>Service Selection</h3>
										<div class="alert hide">It's recommended that you select
											at least one service, like ping.</div>
										<div class="wizard-input-section">
											<p>Please choose the services you'd like Panopta to
												monitor. Any service you select will be given a default
												check frequency of 1 minute.</p>
											<select name="services" data-placeholder="Service List"
												style="width: 350px;"
												class="chzn-select create-server-service-list form-control"
												multiple>
												<option value=""></option>
												<optgroup label="Basic">
													<option selected value="icmp.ping">Ping</option>
													<option selected value="tcp.ssh">SSH</option>
													<option value="tcp.ftp">FTP</option>
												</optgroup>
												<optgroup label="Web">
													<option selected value="tcp.http">HTTP</option>
													<option value="tcp.https">HTTP (Secure)</option>
													<option value="tcp.dns">DNS</option>
												</optgroup>
												<optgroup label="Email">
													<option value="tcp.pop">POP</option>
													<option value="tcp.imap">IMAP</option>
													<option value="tcp.smtp">SMTP</option>
													<option value="tcp.pops">POP (Secure)</option>
													<option value="tcp.imaps">IMAP (Secure)</option>
													<option value="tcp.smtps">SMTP (Secure)</option>
													<option value="tcp.http.exchange">Microsoft
														Exchange</option>
												</optgroup>
												<optgroup label="Databases">
													<option value="tcp.mysql">MySQL</option>
													<option value="tcp.postgres">PostgreSQL</option>
													<option value="tcp.mssql">Microsoft SQL Server</option>
												</optgroup>
											</select>
										</div>
									</div>
									<div class="wizard-card wizard-card-overlay"
										data-cardname="location">
										<h3>Monitoring Location</h3>
										<div class="wizard-input-section">
											<p>
												We determined <strong>Chicago</strong> to be the closest
												location to monitor <strong class="create-server-name"></strong>
												If you would like to change this, or you think this is
												incorrect, please select a different monitoring location.
											</p>
											<select name="location" data-placeholder="Monitor nodes"
												style="width: 350px;" class="chzn-select form-control">
												<option value=""></option>
												<optgroup label="North America">
													<option>Atlanta</option>
													<option selected>Chicago</option>
													<option>Dallas</option>
													<option>Denver</option>
													<option>Fremont, CA</option>
													<option>Los Angeles</option>
													<option>Miami</option>
													<option>Newark, NJ</option>
													<option>Phoenix</option>
													<option>Seattle</option>
													<option>Washington, DC</option>
												</optgroup>
												<optgroup label="Europe">
													<option>Amsterdam, NL</option>
													<option>Berlin</option>
													<option>London</option>
													<option>Milan, Italy</option>
													<option>Nurnberg, Germany</option>
													<option>Paris</option>
													<option>Stockholm</option>
													<option>Vienna</option>
												</optgroup>
												<optgroup label="Asia/Africa">
													<option>Cairo</option>
													<option>Jakarta</option>
													<option>Johannesburg</option>
													<option>Hong Kong</option>
													<option>Singapore</option>
													<option>Sydney</option>
													<option>Tokyo</option>
												</optgroup>
											</select>
										</div>
									</div>
									<div class="wizard-card wizard-card-overlay">
										<h3>Notification Schedule</h3>
										<div class="wizard-input-section">
											<p>Select the notification schedule to be used for
												outages.</p>
											<select name="notification"
												class="wizard-ns-select chzn-select form-control"
												data-placeholder="Notification schedule"
												style="width: 350px;">
												<option value=""></option>
												<option>ALIS Production</option>
												<option>ALIS Development &amp; Staging</option>
												<option>Panopta Development &amp; Staging</option>
												<option>Jira</option>
												<option>QSC Enterprise Production</option>
												<option>QSC Enterprise Development &amp; Staging</option>
												<option>Panopta Production</option>
												<option>Panopta Monitoring Nodes</option>
												<option>Common</option>
											</select>
										</div>
										<div class="wizard-ns-detail hide">
											Also using <strong>ALIS Production</strong>:
											<ul id="wizard-ns-detail-servers">
												<li><img src="assets/plugins/wizard/folder.png" />Corporate
													sites</li>
												<li><img src="assets/plugins/wizard/folder.png" />dt01.sat.medtelligent.com</li>
												<li><img src="assets/plugins/wizard/server_new.png" />alisonline.com</li>
												<li><img src="assets/plugins/wizard/server_new.png" />circa-db04.sat.medtelligent.com</li>
												<li><img src="assets/plugins/wizard/server_new.png" />circa-services01.sat.medtelligent.com</li>
												<li><img src="assets/plugins/wizard/server_new.png" />circa-web01.sat.medtelligent.com</li>
												<li><img src="assets/plugins/wizard/server_new.png" />heartbeat.alisonline.com</li>
												<li><img src="assets/plugins/wizard/server_new.png" />medtelligent.com</li>
												<li><img src="assets/plugins/wizard/server_new.png" />dt02.fre.medtelligent.com</li>
												<li><img src="assets/plugins/wizard/server_new.png" />dev03.lin.medtelligent.com</li>
											</ul>

										</div>
									</div>
									<div class="wizard-card">
										<h3>Agent Setup</h3>
										<div class="wizard-input-section">
											<p>
												The <a target="_blank"
													href="http://www.panopta.com/support/knowledgebase/support-questions/how-do-i-install-the-panopta-monitoring-agent/">Panopta
													Agent</a> allows you to monitor local resources (disk usage,
												cpu usage, etc). If you would like to set that up now,
												please download and follow the <a target="_blank"
													href="http://www.panopta.com/support/knowledgebase/support-questions/how-do-i-install-the-panopta-monitoring-agent/">install
													instructions.</a>
											</p>
											<div class="btn-group">
												<button type="button"
													class="btn btn-default dropdown-toggle"
													data-toggle="dropdown">
													Download<span class="caret"></span>
												</button>
												<ul class="dropdown-menu">
													<li><a href="#">.rpm</a></li>
													<li><a href="#">.deb</a></li>
													<li><a href="#">.tar.gz</a></li>
												</ul>
											</div>
										</div>
										<div class="wizard-input-section">
											<p>
												You will be given a server key after you install the Agent
												on <strong class="create-server-name"></strong>. If you know
												your server key now, please enter it below.
											</p>
											<div class="form-group">
												<input type="text"
													class="create-server-agent-key form-control"
													placeholder="Server key (optional)" data-validate="">
											</div>
										</div>
										<div class="wizard-error">
											<div class="alert alert-error">
												<strong>There was a problem</strong> with your submission.
												Please correct the errors and re-submit.
											</div>
										</div>
										<div class="wizard-failure">
											<div class="alert alert-error">
												<strong>There was a problem</strong> submitting the form.
												Please try again in a minute.
											</div>
										</div>
										<div class="wizard-success">
											<div class="alert alert-success">
												<span class="create-server-name"></span>Server Created <strong>Successfully.</strong>
											</div>
											<a class="btn btn-default create-another-server">Create
												another server</a> <span style="padding: 0 10px">or</span> <a
												class="btn btn-success im-done">Done</a>
										</div>
									</div>
								</div>
								<!-- END MODAL FORM WIZARD WITH VALIDATION -->
							</div>
						</div>
					</div>
				</div>
			</div>
		</div>

	</div>
	
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
	<!-- END MAIN CONTENT -->
	<!-- BEGIN MANDATORY SCRIPTS -->
	<script src="../../assets/plugins/jquery-1.11.js"></script>
	<script src="../../assets/plugins/jquery-migrate-1.2.1.js"></script>
	<script src="../../assets/plugins/jquery-ui/jquery-ui-1.10.4.min.js"></script>
	<script src="../../assets/plugins/bootstrap/bootstrap.min.js"></script>
	<script
		src="../../assets/plugins/bootstrap-dropdown/bootstrap-hover-dropdown.min.js"></script>
	<script src="../../assets/plugins/bootstrap-select/bootstrap-select.js"></script>
	<script src="../../assets/plugins/icheck/icheck.js"></script>
	<script
		src="../../assets/plugins/mcustom-scrollbar/jquery.mCustomScrollbar.concat.min.js"></script>
	<script src="../../assets/plugins/mmenu/js/jquery.mmenu.min.all.js"></script>
	<script src="../../assets/plugins/nprogress/nprogress.js"></script>
	<script src="../../assets/plugins/charts-sparkline/sparkline.min.js"></script>
	<script src="../../assets/plugins/breakpoints/breakpoints.js"></script>
	<script src="../../assets/plugins/numerator/jquery-numerator.js"></script>
	<!-- END MANDATORY SCRIPTS -->
	<!-- BEGIN PAGE LEVEL SCRIPTS -->
	<script src="../../assets/plugins/dropzone/dropzone.min.js"></script>
	<script
		src="../../assets/plugins/jquery-file-upload/js/vendor/jquery.ui.widget.js"></script>
	<script src="../../assets/plugins/jquery-file-upload/tmpl.min.js"></script>
	<script src="../../assets/plugins/jquery-file-upload/load-image.min.js"></script>
	<script
		src="../../assets/plugins/jquery-file-upload/canvas-to-blob.min.js"></script>
	<script
		src="../../assets/plugins/jquery-file-upload/jquery.blueimp-gallery.min.js"></script>
	<script
		src="../../assets/plugins/jquery-file-upload/js/jquery.iframe-transport.js"></script>
	<script
		src="../../assets/plugins/jquery-file-upload/js/jquery.fileupload.js"></script>
	<script
		src="../../assets/plugins/jquery-file-upload/js/jquery.fileupload-process.js"></script>
	<script
		src="../../assets/plugins/jquery-file-upload/js/jquery.fileupload-image.js"></script>
	<script
		src="../../assets/plugins/jquery-file-upload/js/jquery.fileupload-audio.js"></script>
	<script
		src="../../assets/plugins/jquery-file-upload/js/jquery.fileupload-video.js"></script>
	<script
		src="../../assets/plugins/jquery-file-upload/js/jquery.fileupload-validate.js"></script>
	<script
		src="../../assets/plugins/jquery-file-upload/js/jquery.fileupload-ui.js"></script>
	<script src="../../assets/plugins/jquery-file-upload/js/main.js"></script>

	<jsp:include page="../../assets/elements/menuChatElement.jsp" />
	<jsp:include page="../../assets/elements/element_pack/formE.jsp" />

</body>
</html>