<%@ page language="java" contentType="text/html; charset=UTF-8"
	pageEncoding="UTF-8"%>
<%@ taglib prefix="s" uri="/struts-tags"%>

<!DOCTYPE html>

<html class="video">
<!--<![endif]-->

<!-- Added by HTTrack -->
<!-- /Added by HTTrack -->
<head>

<jsp:include page="../../assets/elements/assetsElement.jsp" />
</head>

<body class="video">
	<div id="fb-root"></div>
	<!-- Playlist -->


	<jsp:include page="../../assets/elements/menuUser.jsp" />
	<div id="main-content" class="blog-result">

		<div class="row ">
			<div class="col-lg-8 col-md-8 col-sm-9 col-xs-12"
				style="margin-left: 20px">
				<div class="panel panel-default post">
					<div class="panel-body">
						<div class="row">
							<div class="post-image">
								<img
									src="http://api.randomuser.me/portraits/men/<%=(int) (Math.random() * 100) + ".jpg"%>"
									class="avatar-user-comment img-circle" alt="avatar 4">
							</div>
							<div class="ion-bar-post">
								
							</div>
							<div class="lead post-info-user">
								<a href="index.html">Longns</a>

							</div>
							<div class="post-info-time">
								<i class="fa fa-calendar"></i> Posted on December 24, 2013 at
								9:00 PM
							</div>

						</div>
						<div class="row">
							<div class="post-title">
								<h2>Yellow Claw & Tropkillaz - Assets feat.</h2>
							</div>
							<div class="share"></div>
						</div>
						<div class="media">
							<div id="myDiv"></div>
						</div>
						<div class="row">
							<div class="infor-post">

								<div id="rate" class="hearts">
									<span class="fa .fa-heart fa-heart"></span> <span
										class="fa .fa-heart fa-heart"></span> <span
										class="fa .fa-heart fa-heart"></span> <span
										class="fa .fa-heart fa-heart"></span> <span
										class="fa .fa-heart fa-heart-o"></span>
								</div>
								<span class="separator ">|</span> <i id="comment"
									class="fa fa-headphones"> </i> <span class="separator ">|</span>
								<a id="report" style="text-decoration: none;" href="#"
									rel="tooltip" data-toggle="tooltip" data-placement="top"
									title="" data-original-title="Report this post"
									data-modal="modal-report"><i class="fa fa-flag"></i></a> <span
									class="separator ">|</span>
							</div>
							<div class="ratting-post">

								<span class="count-post">Rate this post please!</span>
							</div>

						</div>
						<div class="comment-list ">
							<div class="comment-list ">

							<style rel="stylesheet">
							.uiBoxYellow{
								visibility: false;
							}
							</style>
							<% String linkFacebookComment = "http://10.12.0.22:8080/EM_Framework/pages/posts/detailPostVideo.action?id=" + request.getParameter("id"); %>
							<div class="fb-comments" data-href="<%= linkFacebookComment%>" data-width="100%" data-numposts="5" data-colorscheme="light"></div>
						</div>
					</div>
				</div>
			</div>
			</div>
			<div class="col-lg-3 col-md-3 col-sm-1 ">
				<div class="panel panel-default post">
					<div class="panel-heading">
						<!-- <div class="ion-bar-post">
							<div class="ion-bar-post-element">
								<a href="#" rel="tooltip" data-toggle="tooltip"
									data-placement="top" title="" data-original-title="Edit"><i
									class="fa fa-pencil-square-o"></i></a> <a href="#" rel="tooltip"
									data-toggle="tooltip" data-placement="top" title=""
									data-original-title="Share"><i class="fa fa-share"></i></a> <a
									href="#" rel="tooltip" data-toggle="tooltip"
									data-placement="top" title="" data-original-title="Remove"><i
									class="fa fa-times"></i></a>
							</div>
						</div> -->
						<p style="font-size: 20px;">Realated Albums</p>

					</div>
					<div class="panel-body">
						<div id="simillar-post" class="row"></div>
					</div>
				</div>
			</div>
		
		
	
	<div class="md-modal md-effect-8 " id="modal-1">
			<div class="md-content md-content-white">
				<h3 style="font-size: 20px; font-weight: 600;color: #c0392b; left: 0px;">Report</h3>
				<div>
					<p style="font-size: 20px; font-weight: 600;color: #c0392b; left: 0px;">Why dont you want to see this?:</p>
					<div class="row">
						<div class="input-group">
							<input type="text" class="form-control"
								placeholder="Your opinion"> <span
								class="input-group-addon bg-red"> <span class="arrow"></span>
								<i class="fa fa-flag-o"></i>
							</span>
						</div>
					</div>
					<div class="row">
						<div>
							<button id="doReport" class="btn btn-primary m-t-10">Submit</button>
						</div>
					</div>
				</div>
			</div>
		</div>
		<div class="md-overlay"></div>
</div>
</div>
<style tyle="text/css">
	   	ul.chat-area {
	   		position: fixed;
	   		list-style-type: none;
	   		bottom: 0px;
	   		width: auto;
	   		text-align: right;
	   		background-color: "#FFFF";
	   		z-index: 2
	   	}
	   	ul.chat-area li{
	   		display: inline;
	   	}
	   	#chat-heading {
	   		width: 100%;
	   		height: 10%;
	   	}
	   	#chat-body{
	   		height: 245px !important;
	   		width: 100% !important;
	   	}
	   	.chat
		{
		    list-style: none;
		    margin: 0;
		    padding: 0;
		}
		
		.chat li
		{
		    margin-bottom: 2px;
		    padding-bottom: 1px;
		    border-bottom: 1px dotted #B3A9A9;
		}
		
		.chat li.left .chat-body
		{
		    margin-left: 60px;
		}
		
		.chat li.right .chat-body
		{
		    margin-right: 140px;
		}
		
		
		.chat li .chat-body p
		{
		    margin: 0;
		    color: #777777;
		}
		
		.panel .slidedown .glyphicon, .chat .glyphicon
		{
		    margin-right: 5px;
		}
		
		.panel-body.chat-body
		{
		    overflow-y: scroll;
		    height: 250px;
		}
		
		::-webkit-scrollbar-track
		{
		    -webkit-box-shadow: inset 0 0 6px rgba(0,0,0,0.3);
		    background-color: #F5F5F5;
		}
		
		::-webkit-scrollbar
		{
		    width: 12px;
		    background-color: #F5F5F5;
		}
		
		::-webkit-scrollbar-thumb
		{
		    -webkit-box-shadow: inset 0 0 6px rgba(0,0,0,.3);
		    background-color: #555;
		}
   </style>
   <ul class="chat-area" style="align: right">
   </ul>
   <input type="hidden" value="<%= session.getAttribute("username") %>" id="username">
   <input type="hidden" value="<%= session.getAttribute("userId") %>" id="userId">

		<jsp:include page="../../assets/elements/menuChatElement.jsp" />
		<jsp:include
			page="../../assets/elements/element_pack/detail_post_videoE.jsp" />
		<!-- END MAIN CONTENT -->
		<!-- Setup video player-->
		<script type="text/javascript">
		$(function() {
			/* var modal = "<div class='md-modal md-effect-1  ' id='modal-1'> <div class='md-content md-content-white'> <h3>Resolve a Problem</h3> <div> <p>Why don't you want to see this?:</p> <ul> <li> <input type='radio' name='flat-radio' value='Spam or scam'>   <label for='flat-checkbox-disabled'>Spam or scam</label>   </li>  <li>  <input type='radio' name='flat-radio' value='Sexually explicit content'>  <label for='flat-checkbox-disabled'>Sexually explicit content</label>   </li> <li> <input type='radio' name='flat-radio' value='Violence or harmful behaviour'>  <label for='flat-checkbox-disabled'>Violence or harmful behaviour</label>  </li>  <li> <input type='radio' name='flat-radio' value='Hate speech'> <label for='flat-checkbox-disabled'>Hate speech</label> </li> </ul> <button class='btn btn-default'>Close me!</button>  </div>    </div>   </div>";
			$("#main-content").append(modal); */
			var id = "<s:property value='id' escapeJavaScript='true' />";
			loadVideo(id);
			$('[data-action="share"]').click(function copyToClipBroad() {
				console.log("copy " + $(this).attr('id'));
				var text = $(this).attr('data-content');
				if (window.clipboardData && clipboardData.setData) {
					clipboardData.setData('text', text);
					console.log("loged");
					/*arlet("paste me");*/
				}
				return text;
			});
		});

		function buyCustomFunction() {
			alert("The buy button can open a custom link or a custom javascript function.");
		}
	</script>
</body>
</html>
