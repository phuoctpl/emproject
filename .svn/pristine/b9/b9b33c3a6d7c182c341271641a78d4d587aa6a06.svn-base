<%@ taglib prefix="s" uri="/struts-tags"%>
<!DOCTYPE html>
<!--[if lt IE 7]>      <html class="no-js sidebar-large lt-ie9 lt-ie8 lt-ie7"> <![endif]-->
<!--[if IE 7]>         <html class="no-js sidebar-large lt-ie9 lt-ie8"> <![endif]-->
<!--[if IE 8]>         <html class="no-js sidebar-large lt-ie9"> <![endif]-->
<!--[if gt IE 8]><!-->

<html class="no-js sidebar-large">
<!--<![endif]-->

<!-- Added by HTTrack -->
<meta http-equiv="content-type" content="text/html;charset=UTF-8" />
<!-- /Added by HTTrack -->
<head>
<!-- BEGIN META SECTION -->
<meta charset="utf-8">
<title>Profile - Emoutional Music</title>
<meta name="viewport" content="width=device-width, initial-scale=1">
<meta content="" name="description" />
<meta content="themes-lab" name="author" />
<link href="http://www.eyecon.ro/bootstrap-datepicker/css/datepicker.css" rel="stylesheet">
<link href="../../assets/css/jasny-bootstrap.min.css" rel="stylesheet" media="screen">
<link rel="shortcut icon"
	href="${pageContext.request.contextPath}/assets/images/favicon.png">
<!-- END META SECTION -->
<script src="../../assets/plugins/modernizr/modernizr-2.6.2-respond-1.1.0.min.js"></script>
<jsp:include page="../../assets/elements/assetsElement.jsp" />
</head>

<body data-page="blank_page">
	<jsp:include page="../../assets/elements/menuUser.jsp" />
	<div id="main-content" class="page-profil">
		<div class="row">

			<!-- BEGIN PROFIL SIDEBAR -->
			<div class="col-md-3 profil-sidebar">
			<div class="panel-image">
				<img
					src='${pageContext.request.contextPath}/assets/images/avatars/<s:property value="avatar"/>'	
					class="img-responsive " alt="profile">
					
					</div>
				<div class="p-20">
					<div class="profil-sidebar-element">
						<h4>ABOUT ME</h4>
						
						<p> 
						<s:property value="description"/>
							</p>
							
					</div>
					<div class="profil-sidebar-element">
						<h4 class="pull-left">FRIENDS</h4>
						<div class="sidebar-number pull-right"><s:property value="numberFriend" /></div>
						<div class="clearfix m-b-10"></div>
						<h5 class="pull-left">MUTUAL FRIENDS</h5>
						<div class="sidebar-number pull-right">7</div>
						<div class="clearfix"></div>
						<div class="row">
						
							<div class="p-10 clearfix">
								<div class="col-md-2 col-sm-3 col-xs-4">
									<img
										src="http://api.randomuser.me/portraits/men/<%=(int)(Math.random()*100)+".jpg"%>"
										class="img-small-friend img-circle " alt="avatar 1">
								</div>
								<div class="col-md-2 col-sm-3 col-xs-4">
									<img
										src="http://api.randomuser.me/portraits/men/<%=(int)(Math.random()*100)+".jpg"%>"
										class="img-small-friend img-circle" alt="avatar 2">
								</div>
								<div class="col-md-2 col-sm-3 col-xs-4">
									<img
										src="http://api.randomuser.me/portraits/men/<%=(int)(Math.random()*100)+".jpg"%>"
										class="img-small-friend img-circle" alt="avatar 3">
								</div>
								<div class="col-md-2 col-sm-3 col-xs-4">
									<img
										src="http://api.randomuser.me/portraits/men/<%=(int)(Math.random()*100)+".jpg"%>"
										class="img-small-friend img-circle" alt="avatar 4">
								</div>
								<div class="col-md-2 col-sm-3 col-xs-4">
									<img
										src="http://api.randomuser.me/portraits/men/<%=(int)(Math.random()*100)+".jpg"%>"
										class="img-small-friend img-circle" alt="avatar 5">
								</div>
								<div class="col-md-2 col-sm-3 col-xs-4">
									<img src="${pageContext.request.contextPath}/assets/images/profil_page/more.jpg" class="img-small-friend" alt="">
								</div>
							</div>
						</div>
						<div>
							<!-- <button type="button" class="btn btn-block btn-blue bd-0 no-bd">
								<i class="glyphicon glyphicon-user"></i> Add John to my friends
								list
							</button> -->
							<s:form>
							<s:hidden name="userId"></s:hidden>
							
							
							<s:if test="errorMessage=='user'">
								<s:submit  cssClass="btn btn-block btn-blue bd-0 no-bd" value="Find friend">
								</s:submit>
							</s:if>
							 
							<s:if test="errorMessage=='pending'">
								<button type="button" class="btn btn-block btn-blue bd-0 no-bd">
								<i class="glyphicon glyphicon-user"></i> Friend request sent
								</button>
								<s:submit action="friend" cssClass="btn btn-block btn-white bd-0 no-bd" value="Cancel request">
								
								<s:hidden name="errorMessage" value=""></s:hidden>
								</s:submit> 
							</s:if>
							
							<s:if test="errorMessage=='request'">
								<s:submit action="friend" cssClass="btn btn-block btn-blue bd-0 no-bd" value="Respond to friend request">
									<s:hidden name="errorMessage" value="friend"></s:hidden>
								</s:submit>
								<%-- <s:submit action="friend" cssClass="btn btn-block btn-white bd-0 no-bd" value="Not now">
								<s:hidden name="errorMessage" value=""></s:hidden>
								</s:submit> --%>
							</s:if>
							
							<s:if test="errorMessage=='friend'">
								<button type="button" class="btn btn-block btn-blue bd-0 no-bd">
								<i class="glyphicon glyphicon-user"></i> Friend 
								</button>
								<s:submit action="friend" cssClass="btn btn-block btn-white bd-0 no-bd" value="Unfriend">
									<s:hidden name="errorMessage" value=""></s:hidden>
								</s:submit>
							</s:if>
							
							<s:if test="errorMessage==null">
								<s:submit action="friend" cssClass="btn btn-block btn-blue bd-0 no-bd" value="+ Add friend">
									<s:hidden name="errorMessage" value="pending"></s:hidden>
								</s:submit>
							</s:if>
							<s:if test="errorMessage==''">
								<s:submit action="friend" cssClass="btn btn-block btn-blue bd-0 no-bd" value="+ Add friend">
								<s:hidden name="errorMessage" value="pending"></s:hidden>
								</s:submit>
							</s:if>
							
							
							</s:form> 
						</div>
					</div>
					<div class="profil-sidebar-element">
						<h4>PERSONAL STATS</h4>
						<p class="c-gray m-t-0">
							<i>Last connection: 2 days ago</i>
						</p>
						<h5>AVERAGE RATING</h5>
						<div id="stars" class=".starrr-sub pull-left">
							<span class="fa .fa-star fa-star"></span> <span
								class="fa .fa-star fa-star"></span> <span
								class="fa .fa-star fa-star"></span> <span
								class="fa .fa-star fa-star"></span> <span
								class="fa .fa-star fa-star-o"></span>
						</div>
						<div class="sidebar-number pull-right">4/5</div>
						<div class="clearfix"></div>
						<h5>MY SHARING</h5>
						<p class="m-t-0">
							<span class="c-blue"><strong>15</strong></span> Replies
						</p>
						<p class="m-t-0">
							<span class="c-blue"><strong>8</strong></span> Messages
						</p>
						<p class="m-t-0">
							<span class="c-blue"><strong>24</strong></span> Questions
						</p>
					</div>
					<div class="profil-sidebar-element">
						<h4>SOCIAL SHARING</h4>
						<div class="social-btn-small">
							<a href="#" class="zocial icon facebook m-0">Sign in with
								Facebook</a>
						</div>
						<div class="social-btn-small">
							<a href="#" class="zocial icon twitter m-0">Sign in with
								Twitter</a>
						</div>
						<div class="social-btn-small">
							<a href="#" class="zocial icon googleplus m-0">Sign in with
								Google+</a>
						</div>
					</div>
				</div>
			</div>
			<!-- END PROFIL SIDEBAR -->
			<%-- <ul id="playlists" style="display: none;">
				<li data-source="playlist1"
					data-thumbnail-path="${pageContext.request.contextPath}/assets/media_player/audio/content/thumbnails/large1.jpg">
					<p class="minimalDarkCategoriesTitle">
						<span class="bold">Title: </span>My playlist 1
					</p>
					<p class="minimalDarkCategoriesType">
						<span class="bold">Type: </span><span
							class="minimalDarkCategoriesTypeIn">HTML</span>
					</p>
					<p class="minimalDarkCategoriesDescription">
						<span class="bold">Description: </span>Created using html
						elements, videos are loaded and played from the server.
					</p>
				</li>
				
			</ul>
			
			<ul id="playlists1" style="display: none;">
			<li data-source="playlist2"
					data-thumbnail-path="${pageContext.request.contextPath}/assets/media_player/video/content/thumbnails/large1.jpg">
					<p class="minimalDarkCategoriesTitle">
						<span class="bold">Title: </span>My playlist 1
					</p>
					<p class="minimalDarkCategoriesType">
						<span class="bold">Type: </span><span
							class="minimalDarkCategoriesTypeIn">HTML</span>
					</p>
					<p class="minimalDarkCategoriesDescription">
						<span class="bold">Description: </span>Created using html
						elements, videos are loaded and played from the server.
					</p>
				</li>
				</ul> --%>
			<!-- BEGIN PROFIL CONTENT -->
			<div class="col-md-9 profil-content m-t-20">

				<div class="row timeline-options c-blue" style="top: 0px;">
					<div class="col-md-3 col-sm-6 text-center">
						<i class="fa fa-youtube-play"></i> 300 Posts
					</div>
					<div class="col-md-3 col-sm-6 text-center">
						<i class="fa fa-users"></i> <s:property value="numberFriend" /> Friend
					</div>
					<div class="col-md-3 col-sm-6 text-center">
						<i class="fa fa-star"></i> 0 Contest
					</div>
				</div>
				<div class="row">
					<div class="tabcordion">
						<ul id="myTab" class="nav nav-tabs">
							<li class=""><a href="#tab_1" data-toggle="tab">Time
									Line</a></li>
							<li class=""><a href="#tab_2" data-toggle="tab">Friend</a></li>
							<li class=""><a href="#tab_3" data-toggle="tab">Play
									list </a></li>
							<li class=""><a href="#tab_4" data-toggle="tab">Album </a></li>
							<li class=""><a href="#tab_5" data-toggle="tab">Information </a></li>
						</ul>
						<div id="myTabContent" class="tab-content">
							<div class="tab-pane fade " id="tab_1">
								<div class="timeline-btn-day">
									<i class="icon-custom-left"></i>
									<button type="button" class="btn btn-blue f-16 w-600">Yesterday</button>
								</div>
								<div class="row">
									<div class="col-md-12">
										<ul class="timeline">
											<li>
												<div class="timeline-badge bg-blue" rel="tooltip"
													title="22 hours remaining"></div>
												<div class="timeline-info inverted">
													<div class="timeline-info-time">
														<div>
															<i class="fa fa-music c-blue"></i>
														</div>
														<div class="c-gray timeline-info-hour">14:58</div>
													</div>
													<div class="timeline-info-type c-blue">Post a Song</div>
												</div>
												<div class="timeline-panel">
													<div class="timeline-heading">
														<div class="pull-left">
															<div class="timeline-day-number">01</div>
															<div>
																<div class="timeline-day">thursday</div>
																<div class="timeline-month c-gray">April 2014</div>
															</div>
														</div>
														<div class="pull-right">
															<div>
																<a href="#" rel="tooltip" data-toggle="tooltip"
																	data-placement="top" title="Edit"><i
																	class="fa fa-pencil-square-o"></i></a> <a href="#"
																	rel="tooltip" data-toggle="tooltip"
																	data-placement="top" title="Share"><i
																	class="fa fa-share"></i></a> <a href="#" rel="tooltip"
																	data-toggle="tooltip" data-placement="top"
																	title="Remove"><i class="fa fa-times"></i></a>
															</div>
														</div>
													</div>
													<!-- <div class="panel panel-default"> -->
													<div class="panel-image">
														<div class="caption">
															<div class="item-avatar">
																<img
																	src='${pageContext.request.contextPath}/assets/images/avatars/<s:property value="%{#session.avatarSrc}"/>'
																	class="panel-image-preview ">
																<div></div>
															</div>
															<div data-role="ratingbar" data-steps="10" class="starrr">
																<ul>
																	<li><a href="#"><span
																			class="glyphicon glyphicon-heart"></span></a></li>
																	<li><a href="#"><span
																			class="glyphicon glyphicon-heart"></span></a></li>
																	<li><a href="#"><span
																			class="glyphicon glyphicon-heart"></span></a></li>
																	<li><a href="#"><span
																			class="glyphicon glyphicon-heart"></span></a></li>
																	<li><a href="#"><span
																			class="glyphicon glyphicon-heart"></span></a></li>
																</ul>
															</div>
															<span class="count">Will see!</span>
														</div>
														<img
															src="${pageContext.request.contextPath}/assets/images/item/1.jpg"
															class="panel-image-preview">
														<div class="block-title">
															<a><h5>Loving you</h5></a>
															<p class="by-author">
																<small>By <a>Longns</a></small>
															</p>
														</div>
													</div>

													<div class="panel-footer  ">

														<div class="hearts">
															<span class="fa .fa-heart fa-heart"></span> <span
																class="fa .fa-heart fa-heart"></span> <span
																class="fa .fa-heart fa-heart"></span> <span
																class="fa .fa-heart fa-heart"></span> <span
																class="fa .fa-heart fa-heart-o"></span>
														</div>
														(36) <span class="separator ">|</span> <i
															class="fa fa-comments-o"></i> 100 Comments <span
															class="separator ">|</span> <i class="fa fa-eye"></i> 500
														Views
													</div>
												</div> <!-- 	</div> -->
											</li>
											<li class="timeline-inverted">
												<div class="timeline-badge invert bg-blue" rel="tooltip"
													title="18 hours remaining"></div>
												<div class="timeline-info">
													<div class="float-right">
														<div class="timeline-info-time">
															<div>
																<i class="fa fa-youtube-play c-blue"></i>
															</div>
															<div class="c-gray timeline-info-hour">16:23</div>
														</div>
														<div class="timeline-info-type c-blue">Post a video</div>
													</div>
												</div>
												<div class="timeline-panel">
													<div class="timeline-heading">
														<div class="pull-left">
															<div class="timeline-day-number">01</div>
															<div>
																<div class="timeline-day">thursday</div>
																<div class="timeline-month c-gray">April 2014</div>
															</div>
														</div>
														<div class="pull-right">
															<div>
																<a href="#" rel="tooltip" data-toggle="tooltip"
																	data-placement="top" title="Edit"><i
																	class="fa fa-pencil-square-o"></i></a> <a href="#"
																	rel="tooltip" data-toggle="tooltip"
																	data-placement="top" title="Share"><i
																	class="fa fa-share"></i></a> <a href="#" rel="tooltip"
																	data-toggle="tooltip" data-placement="top"
																	title="Remove"><i class="fa fa-times"></i></a>
															</div>
														</div>
													</div>

													<div class="panel-image">
														<div class="caption">
															<div class="item-avatar">
																<img
																	src="${pageContext.request.contextPath}/assets/images/avatars/avatar20.jpg"
																	class="panel-image-preview">
																<div></div>
															</div>
															<div data-role="ratingbar" data-steps="10" class="starrr">
																<ul>
																	<li><a href="#"><span
																			class="glyphicon glyphicon-heart"></span></a></li>
																	<li><a href="#"><span
																			class="glyphicon glyphicon-heart"></span></a></li>
																	<li><a href="#"><span
																			class="glyphicon glyphicon-heart"></span></a></li>
																	<li><a href="#"><span
																			class="glyphicon glyphicon-heart"></span></a></li>
																	<li><a href="#"><span
																			class="glyphicon glyphicon-heart"></span></a></li>
																</ul>
															</div>
															<span class="count">Will see!</span>
														</div>
														<img
															src="${pageContext.request.contextPath}/assets/images/item/3.jpg"
															class="panel-image-preview">
														<div class="block-title">
															<a><h5>Cry Moon</h5></a>
															<p class="by-author">
																<small>By <a>Loan Kid</a></small>
															</p>
														</div>
													</div>

													<div class="panel-footer  ">

														<div class="hearts">
															<span class="fa .fa-heart fa-heart"></span> <span
																class="fa .fa-heart fa-heart"></span> <span
																class="fa .fa-heart fa-heart"></span> <span
																class="fa .fa-heart fa-heart"></span> <span
																class="fa .fa-heart fa-heart-o"></span>
														</div>
														(36) <span class="separator ">|</span> <i
															class="fa fa-comments-o"></i> 100 Comments <span
															class="separator ">|</span> <i class="fa fa-eye"></i> 500
														Views
													</div>
												</div>
											</li>
											<li class="timeline-btn-day">
												<button type="button"
													class="btn btn-gray bg-gray f-16 c-white w-600">Today</button>
											</li>
											<li>
												<div class="timeline-badge bg-gray" rel="tooltip"
													title="3 hours remaining"></div>
												<div class="timeline-info inverted">
													<div class="timeline-info-time">
														<div>
															<i class="fa fa-coffee c-gray"></i>
														</div>
														<div class="c-gray timeline-info-hour">14:58</div>
													</div>
													<div class="timeline-info-type c-gray">Create album
														loving you</div>
												</div>
												<div class="timeline-panel">
													<div class="timeline-heading">
														<div class="pull-left">
															<div class="timeline-day-number">31</div>
															<div>
																<div class="timeline-day">wednesday</div>
																<div class="timeline-month c-gray">March 2012</div>
															</div>
														</div>
														<div class="pull-right">
															<div>
																<a href="#" rel="tooltip" data-toggle="tooltip"
																	data-placement="top" title="Edit"><i
																	class="fa fa-pencil-square-o"></i></a> <a href="#"
																	rel="tooltip" data-toggle="tooltip"
																	data-placement="top" title="Share"><i
																	class="fa fa-share"></i></a> <a href="#" rel="tooltip"
																	data-toggle="tooltip" data-placement="top"
																	title="Remove"><i class="fa fa-times"></i></a>
															</div>
														</div>
													</div>
													<div class="panel-image">
														<div class="caption">
															<div class="item-avatar">
																<img
																	src="${pageContext.request.contextPath}/assets/images/avatars/avatar20.jpg"
																	class="panel-image-preview">
																<div></div>
															</div>
															<div data-role="ratingbar" data-steps="10" class="starrr">
																<ul>
																	<li><a href="#"><span
																			class="glyphicon glyphicon-heart"></span></a></li>
																	<li><a href="#"><span
																			class="glyphicon glyphicon-heart"></span></a></li>
																	<li><a href="#"><span
																			class="glyphicon glyphicon-heart"></span></a></li>
																	<li><a href="#"><span
																			class="glyphicon glyphicon-heart"></span></a></li>
																	<li><a href="#"><span
																			class="glyphicon glyphicon-heart"></span></a></li>
																</ul>
															</div>
															<span class="count">Will see!</span>
														</div>
														<img
															src="${pageContext.request.contextPath}/assets/images/item/12.png"
															class="panel-image-preview">
														<div class="block-title">
															<a><h5>Loving you</h5></a>
															<p class="by-author">
																<small>By <a>Longns</a></small>
															</p>
														</div>
													</div>

													<div class="panel-footer  ">

														<div class="hearts">
															<span class="fa .fa-heart fa-heart"></span> <span
																class="fa .fa-heart fa-heart"></span> <span
																class="fa .fa-heart fa-heart"></span> <span
																class="fa .fa-heart fa-heart"></span> <span
																class="fa .fa-heart fa-heart-o"></span>
														</div>
														(36) <span class="separator ">|</span> <i
															class="fa fa-comments-o"></i> 100 Comments <span
															class="separator ">|</span> <i class="fa fa-eye"></i> 500
														Views
													</div>
												</div>
											</li>
											<li class="timeline-inverted">
												<div class="timeline-badge invert bg-gray"></div>
												<div class="timeline-info">
													<div class="float-right">
														<div class="timeline-info-time">
															<div>
																<i class="fa fa-info-circle c-gray"></i>
															</div>
															<div class="c-gray timeline-info-hour">16:23</div>
														</div>
														<div class="timeline-info-type c-gray">Create album
															la vie en rose</div>
													</div>
												</div>
												<div class="timeline-panel">
													<div class="timeline-heading">
														<div class="pull-left">
															<div class="timeline-day-number">31</div>
															<div>
																<div class="timeline-day">Wednesday</div>
																<div class="timeline-month c-gray">September 2013</div>
															</div>
														</div>
														<div class="pull-right">
															<div>
																<a href="#" rel="tooltip" data-toggle="tooltip"
																	data-placement="top" title="Edit"><i
																	class="fa fa-pencil-square-o"></i></a> <a href="#"
																	rel="tooltip" data-toggle="tooltip"
																	data-placement="top" title="Share"><i
																	class="fa fa-share"></i></a> <a href="#" rel="tooltip"
																	data-toggle="tooltip" data-placement="top"
																	title="Remove"><i class="fa fa-times"></i></a>
															</div>
														</div>
													</div>
													<div class="panel-image">
														<div class="caption">
															<div class="item-avatar">
																<img
																	src="${pageContext.request.contextPath}/assets/images/avatars/avatar20.jpg"
																	class="panel-image-preview">
																<div></div>
															</div>
															<div data-role="ratingbar" data-steps="10" class="starrr">
																<ul>
																	<li><a href="#"><span
																			class="glyphicon glyphicon-heart"></span></a></li>
																	<li><a href="#"><span
																			class="glyphicon glyphicon-heart"></span></a></li>
																	<li><a href="#"><span
																			class="glyphicon glyphicon-heart"></span></a></li>
																	<li><a href="#"><span
																			class="glyphicon glyphicon-heart"></span></a></li>
																	<li><a href="#"><span
																			class="glyphicon glyphicon-heart"></span></a></li>
																</ul>
															</div>
															<span class="count">Will see!</span>
														</div>
														<img
															src="${pageContext.request.contextPath}/assets/images/item/8.jpg"
															class="panel-image-preview">
														<div class="block-title">
															<a><h5>La vie en rose</h5></a>
															<p class="by-author">
																<small>By <a>Saory Aoi</a></small>
															</p>
														</div>
													</div>

													<div class="panel-footer  ">

														<div class="hearts">
															<span class="fa .fa-heart fa-heart"></span> <span
																class="fa .fa-heart fa-heart"></span> <span
																class="fa .fa-heart fa-heart"></span> <span
																class="fa .fa-heart fa-heart"></span> <span
																class="fa .fa-heart fa-heart-o"></span>
														</div>
														(36) <span class="separator ">|</span> <i
															class="fa fa-comments-o"></i> 100 Comments <span
															class="separator ">|</span> <i class="fa fa-eye"></i> 500
														Views
													</div>
												</div>
											</li>
										</ul>
									</div>
								</div>
							</div>
							<div class="tab-pane fade" id="tab_2">
								
								<ul class="list-group" id="contact-list">
									<s:iterator value="allFriend">
										<li class="list-group-item" style="">
										<div class="col-xs-12 col-sm-3">
										
											<img src='${pageContext.request.contextPath}/assets/images/avatars/<s:property value="friAvatar"/>'
												alt="Scott Stevens" class="img-responsive img-circle">
										</div>
										<div class="col-xs-12 col-sm-9">
											<div class="col-xs-12 col-sm-8">
												<h2>
													<a href="/EM_Framework/pages/user/channel.action?userId=<s:property value="userId" />" type="submit"><s:property value="friName"/></a>
												</h2>
												<p><strong>About: </strong> <s:property value="friDescription"/> </p>
												<p><strong>Gender: </strong>
												
													<s:if test="friGender=='Female'">
														<i class="fa fa-female"></i> 	
													</s:if> 
													<s:elseif test="friGender=='Male'">
														<i class="fa fa-male"></i>
													</s:elseif>
													<s:else>
														Unknow
													</s:else>
													
												</p>
												<p><strong>Genre: </strong>
													<span class="label label-info tags"><s:property value="friGenre"/></span> 
												</p>
											</div><!--/col-->  
											<button  type="button" class="btn btn-block btn-blue bd-0 no-bd">
												<i class="glyphicon glyphicon-check"></i>
												Friends
											</button> 
											<s:if test="editUser==true">
											<s:form>
											<s:submit action="friend" cssClass="btn btn-block btn-white bd-0 no-bd" value="Unfriend">
												<s:hidden name="errorMessage" value=""></s:hidden>
												<s:hidden name="userId"></s:hidden>
											</s:submit>
											</s:form>
											</s:if>
											
										</div>
										<div class="clearfix"></div>
									</li>
									</s:iterator>
									</ul>
							</div>
							<div class="tab-pane fade" id="tab_3">
								<p>Etsy mixtape wayfarers, ethical wes anderson tofu before
									they sold out mcsweeney's organic lomo retro fanny pack lo-fi
									farm-to-table readymade. Messenger bag gentrify pitchfork
									tattooed craft beer, iphone skateboard locavore carles etsy
									salvia banksy hoodie helvetica. DIY synth PBR banksy irony.
									Leggings gentrify squid 8-bit cred pitchfork. Williamsburg banh
									mi whatever gluten-free, carles pitchfork biodiesel fixie etsy
									retro mlkshk vice blog. Scenester cred you probably haven't
									heard of them, vinyl craft beer blog stumptown. Pitchfork
									sustainable tofu synth chambray yr.</p>
							</div>
							<div class="tab-pane fade" id="tab_4">
								<p>Trust fund seitan letterpress, keytar raw denim keffiyeh
									etsy art party before they sold out master cleanse gluten-free
									squid scenester freegan cosby sweater. Fanny pack portland
									seitan DIY, art party locavore wolf cliche high life echo park
									Austin. Cred vinyl keffiyeh DIY salvia PBR, banh mi before they
									sold out farm-to-table VHS viral locavore cosby sweater. Lomo
									wolf viral, mustache readymade thundercats keffiyeh craft beer
									marfa ethical. Wolf salvia freegan, sartorial keffiyeh echo
									park vegan.</p>
							</div>
							<div class="tab-pane fade active in" id="tab_5">
								 <s:form id="form1" action="editProfile" cssClass="form-horizontal" role="form" enctype="multipart/form-data">
								 	<s:hidden name="userId"></s:hidden>
								 	<h2>
										<span>About me: </span>
									</h2>
									<div class="form-group">
										<label class="col-lg-3 control-label"></label>
										<div class="col-lg-8">
											<s:textarea rows="5" name="description" cssClass="form-control valid" placeholder="Write your description... (minimum 3 words)" parsley-minwords="3" ></s:textarea>
										</div>
									</div>
									<hr class="">
							
									<h2>
										<span class="glyphicon glyphicon-user"></span> <s:property value="name"/> 
									</h2> 
									
									<div class="form-group">
										<label class="col-lg-3 control-label">Avatar</label>
										<div class="fileinput fileinput-new col-lg-8" data-provides="fileinput">
											<div class="fileinput-new thumbnail"
												style="width: 200px; height: 150px;">
												<img src='${pageContext.request.contextPath}/assets/images/avatars/<s:property value="avatar"/>'  alt="">
											</div>
											<div class="fileinput-preview fileinput-exists thumbnail"
												style="max-width: 200px; max-height: 150px;"></div>
											<div>
												<span class="btn btn-default btn-file">
													<span class="fileinput-new">Select image</span>
													<span class="fileinput-exists">Change</span>
													<s:file name="fileUpload" ></s:file> </span>
													<%-- <input type="file" name="..."></span>  --%>
													<a href="#" class="btn btn-default fileinput-exists" data-dismiss="fileinput">Remove</a>
											</div>
										</div>
									</div>
									
									<div class="form-group">
										<label class="col-lg-3 control-label">Name:</label>
										<div class="col-lg-8">
											<s:textfield name="name" cssClass="form-control" parsley-required="true"></s:textfield>
										</div>
									</div>
									<div class="form-group">
										<label class="col-lg-3 control-label">Email:</label>
										<div class="col-lg-8">
											<input disabled="disabled" name="email" class="form-control" type="text" value="<s:property value="email" />">
											<s:hidden name="email"></s:hidden>
										</div>
									</div>
									<div class="form-group">
										<label class="col-md-3 control-label">Gender:</label>

										<div class="col-md-8">
											<s:select list="genders" name="gender" value="gender" cssClass="form-control"></s:select>
										</div>
									
									</div>
									<div class="form-group">
										<label class="col-md-3 control-label">Address:</label>
										<div class="col-md-8">
											<s:textfield name="address" cssClass="form-control" parsley-required="true"></s:textfield>
										</div>
									</div>
									<div class="form-group">
										<label class="col-lg-3 control-label">Country:</label>
										<div class="col-lg-8">
											<s:select list="countries" name="country" value="country" cssClass="form-control"></s:select>
										</div>
									</div>
									<div class="form-group">
										<label class="col-lg-3 control-label">City:</label>
										<div class="col-lg-8">
											<s:textfield name="city" cssClass="form-control" parsley-required="true"></s:textfield>
										</div>
									</div>
									<div class="form-group">
										<label class="col-lg-3 control-label">Phone:</label>
										<div class="col-lg-8">
											<s:textfield name="phone" cssClass="form-control" parsley-required="true"></s:textfield>
										</div>
									</div>
									<div class="form-group">
										<label class="col-lg-3 control-label">Music genre:</label>
										<div class="col-lg-8">
											<s:textfield name="musicGenre" cssClass="form-control" parsley-required="true"></s:textfield>
										</div>
									</div>
									<div class="form-group">
										<label class="col-lg-3 control-label">Birth date:</label>
										
										<div class="col-lg-8">
											<s:textfield name="birthDate" cssClass="form-control" id="dp1"></s:textfield>
											<%-- <input name="birthDate" class="form-control" type="text" value="<s:property value="birthDate" />"> --%>
										</div> 
									</div>
									
									<div class="form-group">
										<label class="col-md-3 control-label"></label>
										<div class="col-md-8">
											<s:submit onclick="javascript:$('#form1').parsley('validate');" cssClass="btn btn-primar" value="Save changes"></s:submit>
											<span></span> 
											<input type="reset" class="btn btn-default" value="Cancel">
										</div>
									</div>
								</s:form> 
							
							</div>
						</div>
					</div>
				</div>
			</div>
			<!-- END PROFIL CONTENT -->

		</div>
	</div>
	<script>
		if (top.location != location) {
			top.location.href = document.location.href;
		}
		$(function() {
			window.prettyPrint && prettyPrint();
			$('#dp1').datepicker({
				format : 'dd/mm/yyyy'
			});

			var startDate = new Date(2012, 1, 20);
			var endDate = new Date(2012, 1, 25);

			var checkin = $('#dpd1').datepicker({
				onRender : function(date) {
					return date.valueOf() < now.valueOf() ? 'disabled' : '';
				}
			}).on('changeDate', function(ev) {
				if (ev.date.valueOf() > checkout.date.valueOf()) {
					var newDate = new Date(ev.date)
					newDate.setDate(newDate.getDate() + 1);
					checkout.setValue(newDate);
				}
				checkin.hide();
				$('#dpd2')[0].focus();
			}).data('datepicker');
			var checkout = $('#dpd2')
					.datepicker(
							{
								onRender : function(date) {
									return date.valueOf() <= checkin.date
											.valueOf() ? 'disabled' : '';
								}
							}).on('changeDate', function(ev) {
						checkout.hide();
					}).data('datepicker');
		});
	</script>

	<%-- <script src="../../assets/js/jquery.js"></script> --%>
	<script src="../../assets/js/bootstrap-datepicker.js"></script>
	    
	<script src="../../assets/js/application.js"></script>
	<script src="../../assets/plugins/parsley/parsley.js"></script>
    <script src="../../assets/plugins/parsley/parsley.extend.js"></script>
    <script src="../../assets/js/jasny-bootstrap.min.js"></script>
	<jsp:include page="../../assets/elements/menuChatElement.jsp" />
	<jsp:include page="../../assets/elements/element_pack/channelE.jsp" />
	<!-- END MAIN CONTENT -->
	<!-- Setup video player-->


</body>
</html>
