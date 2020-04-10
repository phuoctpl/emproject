<%@ page language="java" contentType="text/html; charset=UTF-8"
	pageEncoding="UTF-8"%>
<%@ taglib prefix="s" uri="/struts-tags"%>
<!DOCTYPE html PUBLIC "-//W3C//DTD HTML 4.01 Transitional//EN" "http://www.w3.org/TR/html4/loose.dtd">
<html>
<!-- /Added by HTTrack -->
<head>
<jsp:include page="../../assets/elements/assetsElement.jsp" />

</head>

<body >
	<jsp:include page="../../assets/elements/menuUser.jsp" />
	<script type="text/javascript">
		$(function() {
			var $error = "<div class='error-ajax text-center'>Sorry! Data is not avaiable now!</div>";

			$("#load_popular_songs>button").bind("click", function() {
				var $error = "<div class='error-ajax text-center'>Sorry! That is all we have!</div>";
				var index = 1;
				$("#song-popular>.row").each(function()
				{
					index = index + 1;
				})
				;
				console.log(index);
				getSongListPopular(index,$error);
			});
			$("#load_popular_song_album>button").bind("click", function() {
				var $error = "<div class='error-ajax text-center'>Sorry! That is all we have!</div>";
				var index = 1;
				$("#song-album>.row").each(function()
				{
					index = index + 1;
				})
				;
				console.log(index);
				getSongAlbumListPopular(index,$error);
			});
			$("#load_popular_video>button").bind("click", function() {
				var $error = "<div class='error-ajax text-center'>Sorry! That is all we have!</div>";
				var index = 1;
				$("#video-popular>.row").each(function()
				{
					index = index + 1;
				})
				;
				console.log(index);
				getvideoListPopular(index,$error);
			});
			$("#load_popular_video_album>button").bind("click", function() {
				var $error = "<div class='error-ajax text-center'>Sorry! That is all we have!</div>";
				var index = 1;
				$("#album-video>.row").each(function()
				{
					index = index + 1;
				})
				;
				console.log(index);
				getvideoAlbumListPopular(index,$error);
			});
			$("#load_new_album>button").bind("click", function() {
				var $error = "<div class='error-ajax text-center'>Sorry! That is all we have!</div>";
				var index = 1;
				$("#new-album>.row").each(function()
				{
					index = index + 1;
				})
				;
				console.log(index);
				getnewAlbumList(index,$error);
			});
			$("#load_new_songs>button").bind("click", function() {
				var $error = "<div class='error-ajax text-center'>Sorry! That is all we have!</div>";
				var index = 1;
				$("#new-post>.row").each(function()
				{
					index = index + 1;
				})
				;
				console.log(index);
				getnewPostListPopular(index,$error);
				setupratting();
			});
			$("#load_top_user>button").bind("click", function() {
				var $error = "<div class='error-ajax text-center'>Sorry! That is all we have!</div>";
				var index = 1;
				$("#top_user>.row").each(function()
				{
					index = index + 1;
				})
				;
				console.log(index);
				gettopuserList(index,$error);
			});
			loadAll($error); 
			console.log("start ratting");
			

		});
	</script>
	<div id="main-content">
		<!-- BEGIN MAIN CONTENT -->
		<div class="page-title">
			<i class="icon-custom-left"></i>
			<h2>
				<strong>Popular posts</strong>
			</h2>
		</div>
		<div class="row">
			<div class="col-md-12">
				<div class="page-sub-title">
					<i class="icon-custom-left"></i>
					<h3>Songs</h3>
				</div>
				<div id="song-popular"></div>
				<div id="load_popular_songs" class="row text-center loadmore">

					<button type="button" class="btn btn-sm btn-primary">See
						more...</button>
				</div>

			</div>
		</div>
		<div class="row">
			<div class="col-md-12" style="cursor: pointer;">
				<div class="page-sub-title">
					<i class="icon-custom-left"></i>
					<h3>Music Videos</h3>
				</div>
				<div id="video-popular"></div>
				<div id="load_popular_video" class="row text-center loadmore">

					<button type="button" class="btn btn-sm btn-primary">See
						more...</button>
				</div>
			</div>
		</div>
		<div class="row">
			<div class="col-md-12">
				<div class="page-sub-title">
					<i class="icon-custom-left"></i>
					<h3>Album Song</h3>
				</div>
				<div id="song-album"></div>
				<div id="load_popular_song_album" class="row text-center loadmore">

					<button type="button" class="btn btn-sm btn-primary">See
						more...</button>
				</div>
			</div>
		</div>
		<div class="row">
			<div class="col-md-12">
				<div class="page-sub-title">
					<i class="icon-custom-left"></i>
					<h3>Album Video</h3>
				</div>
				<div id="album-video"></div>
				<div id="load_popular_video_album" class="row text-center loadmore">
					<button type="button" class="btn btn-sm btn-primary">See
						more...</button>
				</div>
			</div>
		</div>

		<div class="page-title">
			<i class="icon-custom-left"></i>
			<h2>
				<strong>Top users</strong>
			</h2>
		</div>
		<div class="row">
			<div class="col-md-12">
				<div id="top_user"></div>
				<div id="load_top_user" class="row text-center loadmore">
					<button type="button" class="btn btn-sm btn-primary loadmore">See
						more...</button>
				</div>
			</div>
		</div>
		<div class="page-title">
			<i class="icon-custom-left"></i>
			<h2>

				<strong>New</strong>
			</h2>
		</div>
		<div class="row">
			<div class="col-md-12">
				<div class="page-sub-title">
					<i class="icon-custom-left"></i>
					<h3>New Songs</h3>
				</div>
				<div id="new-post"></div>
				<div id="load_new_songs" class="row text-center loadmore">

					<button type="button" class="btn btn-sm btn-primary ">See
						more...</button>
				</div>
			</div>
		</div>
		<div class="row">
			<div class="col-md-12">
				<div class="page-sub-title">
					<i class="icon-custom-left"></i>
					<h3>New Albums</h3>
				</div>
				<div id="new-album"></div>
				<div id="load_new_album" class="row text-center loadmore">

					<button type="button" class="btn btn-sm btn-primary">See
						more...</button>
				</div>
			</div>
		</div>


	</div>


	<!-- END MAIN CONTENT -->
<!-- END MAIN CONTENT -->
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
	   		height: 250px !important;
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
   <div align="right">
	   <ul class="chat-area">
	   </ul>
   </div>
   
   <input type="hidden" value="<%= session.getAttribute("username") %>" id="username">
   <input type="hidden" value="<%= session.getAttribute("userId") %>" id="userId">

	<jsp:include page="../../assets/elements/menuChatElement.jsp" />
	<jsp:include page="../../assets/elements/element_pack/mainpageE.jsp" />
</body>
</html>
