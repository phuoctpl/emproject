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
<title>Channel - Emotional Music</title>
<meta name="viewport" content="width=device-width, initial-scale=1">
<meta content="" name="description" />
<meta content="themes-lab" name="author" />
<link rel="shortcut icon"
	href="${pageContext.request.contextPath}/assets/images/favicon.png">
<!-- END META SECTION -->
<jsp:include page="../../assets/elements/assetsElement.jsp" />
</head>

<body data-page="blank_page">
	<div id="fb-root"></div>
	<script>
		(function(d, s, id) {
			var js, fjs = d.getElementsByTagName(s)[0];
			if (d.getElementById(id))
				return;
			js = d.createElement(s);
			js.id = id;
			js.src = "//connect.facebook.net/en_US/sdk.js#xfbml=1&appId=575589159224594&version=v2.0";
			fjs.parentNode.insertBefore(js, fjs);
		}(document, 'script', 'facebook-jssdk'));
	</script>
	<jsp:include page="../../assets/elements/menuUser.jsp" />
	<div id="main-content" class="page-profil">
		<div class="row">

			<!-- BEGIN PROFIL SIDEBAR -->
			<div class="col-md-3 profil-sidebar">
			<div class="panel-image">
				<img
					src='${pageContext.request.contextPath}/assets/images/avatars/<s:property value="avatar"/>'	
					class="img-responsive " alt="profile">
					<!-- <div class="block-title" style=" background: none; ">
						<button type="button"
							class="btn btn-sm btn-icon btn-rounded btn-info"
							style="margin-top: 15px; float: right;">
							<i class="fa fa-edit"></i>
						</button>
					</div> -->
					
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
						<div class="fb-like-box" data-href="https://www.facebook.com/emotionalmusicnetwork" data-colorscheme="light" data-show-faces="true" data-header="true" data-stream="false" data-show-border="true"></div>
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
							<li class="active"><a href="#tab_1" data-toggle="tab">Time
									Line</a></li>
							<li class=""><a href="#tab_2" data-toggle="tab">Friend</a></li>
							<li class=""><a href="#tab_3" data-toggle="tab">Play
									list </a></li>
							<li class=""><a href="#tab_4" data-toggle="tab">Album </a></li>
							<li class=""><a href="#tab_5" data-toggle="tab">Information </a></li>
						</ul>
						<div id="myTabContent" class="tab-content">
							<div class="tab-pane fade active in" id="tab_1">
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
							<div class="tab-pane fade" id="tab_5">
								<h2>
									<span class="glyphicon glyphicon-user"></span> <s:property value="name"/> 
								</h2>
								
								<s:form action="editProfileScreen" class="form-horizontal" role="form">
									
									<table class="table table-striped">
										<tr>
											<td>Email</td>
											<td><s:property value="email" /></td>
										</tr>
										<tr>
											<td>Gender</td>
											<td><s:property value="gender" /></td>
										</tr>
										<tr>
											<td>Address</td>
											<td><s:property value="address" /></td>
										</tr>
										<tr>
											<td>Country</td>
											<td><s:property value="country" /></td>
										</tr>
										<tr>
											<td>City</td>
											<td><s:property value="city" /></td>
										</tr>
										<tr>
											<td>Phone</td>
											<td><s:property value="phone" /></td>
										</tr>
										<tr>
											<td>Music genre</td>
											<td><s:property value="musicGenre" /></td>
										</tr>
										<tr>
											<td>Birth date</td>
											<td><s:property value="birthDate" /></td>
										</tr>
										
									</table>
									
								
								
										<div style="text-align: right" class="col-md-12">
										<s:if test="editUser==true">
											<s:hidden name="userId"></s:hidden>
											<s:hidden name="editUser" value="true"></s:hidden>
											<input type="submit" class="btn btn-primary" value="Edit profile">
										</s:if>	 
											<span></span>
											<a href="../../home.action"><button type="button" class="btn btn-link" ><span class="glyphicon glyphicon-arrow-right"></span>Go to your home</button></a>
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




	<jsp:include page="../../assets/elements/menuChatElement.jsp" />
	<jsp:include page="../../assets/elements/element_pack/channelE.jsp" />
	<!-- END MAIN CONTENT -->
	<!-- Setup video player-->


</body>
</html>
