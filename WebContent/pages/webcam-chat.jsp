<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
<!DOCTYPE html PUBLIC "-//W3C//DTD HTML 4.01 Transitional//EN" "http://www.w3.org/TR/html4/loose.dtd">
<html>
<head>
<meta http-equiv="Content-Type" content="text/html; charset=UTF-8">
<title>Webcam - Chat</title>
<link rel="stylesheet" href="${pageContext.request.contextPath}/assets/css/fts-webrtc-styles.css">
<link href="http://vjs.zencdn.net/4.6/video-js.css" rel="stylesheet">
<script src="http://vjs.zencdn.net/4.6/video.js"></script>
</head>
<body>
<%
	String callId = request.getParameter("callId")==null?"":request.getParameter("callId").toString();
	String receiverId = request.getParameter("receiverId")==null?"":request.getParameter("receiverId").toString();
%>
<input type="hidden" value="<%= session.getAttribute("username") %>" id="username">
<input type="hidden" value="<%= session.getAttribute("userId") %>" id="userId">
<input type="hidden" value="<%=receiverId%>" id="receiverId">
<input type="hidden" value="<%=callId%>" id="callIdHidden"/>
<div id="mainContainer" class="main-container" style="z-index : 2; position: fixed">
	<div style="height: 50%; width: 100%">
	<!-- local video -->
	<video id="localVideo" class="local-video"></video>

	<!-- remote video -->
	<video id="remoteVideo" class="remote-video" autoplay></video>

	<!-- video status & room entry bar -->
	<div id="videoStatus" class="video-status">
	</div>
	</div>
	<div style="height: 50%; width: 100%" align="center" id="video-karaoke-area">
	<video id="MY_VIDEO_1" class="video-js vjs-default-skin" controls
		 preload="auto" width="640" height="264" poster="MY_VIDEO_POSTER.jpg"
		 data-setup="{}"
		 style="z-index:2;">
		 <source id="karaoke-source" src="http://localhost:8080/EM_Framework/assets/media_player/video/content/videos/buiphan.mp4" type='video/mp4'>
		 <p class="vjs-no-js">To view this video please enable JavaScript, and consider upgrading to a web browser that <a href="http://videojs.com/html5-video-support/" target="_blank">supports HTML5 video</a></p>
	</video>
	</div>
</div>
<div style="width: 20%; height: 100%; right: 0px; position: fixed; z-index: 2px">
	<ul>
		<li class="karaoke-song" name="huynh_nhat_huy(Karaoke).mp4">
			<p>huynh nhat huy(Karaoke)</p>
		</li>
		<li class="karaoke-song" name="bai-ca-dat-phuong-nam.mp4">
			<p>Bài ca đất phương nam</p>
		</li>
		<li class="karaoke-song" name="noi_tinh_yeu_bat-dau.mp4">
			<p>Nơi tình yêu bắt đầu</p>
		</li>
	</ul>
</div>
<input type="hidden" value="<%= session.getAttribute("username") %>" id="username">
<input type="hidden" value="<%= session.getAttribute("userId") %>" id="userId">
<script src="${pageContext.request.contextPath}/assets/js/chatmodule/object/video-karaoke.js"></script>
<script src="${pageContext.request.contextPath}/assets/plugins/jquery-1.11.js"></script>
<script src="${pageContext.request.contextPath}/assets/js/jquery.fresh-tilled-soil-webrtc.js"></script>
<script src="${pageContext.request.contextPath}/assets/js/chatmodule/socket-client.js"></script>
<!-- Plugin Initialization -->
<script type="text/javascript">
	$(function() {
		$('#mainContainer').createVideoChat();
		$('#videoChannelInput').val($("#callIdHidden").val());
		$('#videoChatStartButton').trigger("click");
	});
</script>

</body>
</html>