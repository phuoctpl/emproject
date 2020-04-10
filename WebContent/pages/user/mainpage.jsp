<%@ page language="java" contentType="text/html; charset=UTF-8"
	pageEncoding="UTF-8"%>
<%@ taglib prefix="s" uri="/struts-tags"%>
<!DOCTYPE html PUBLIC "-//W3C//DTD HTML 4.01 Transitional//EN" "http://www.w3.org/TR/html4/loose.dtd">
<html>
<!-- /Added by HTTrack -->
<head>
<!-- BEGIN META SECTION -->

<meta http-equiv="content-type" content="text/html;charset=UTF-8" />
<title><%-- <s:property value="pageName"/> --%></title>
<!-- END META SECTION -->
<jsp:include page="../../assets/elements/assetsElement.jsp" />

</head>

<body data-page="timeline">
	<jsp:include page="../../assets/elements/menuUser.jsp" />
	<!-- BEGIN MAIN CONTENT -->
	<div id="main-content">
		<div class="page-title">
			<i class="icon-custom-left"></i>
			<h3>
				<strong>Popular posts</strong>
			</h3>
		</div>
		<div class="row">
			<div class="col-md-12">
				<div class=" col-md-4 col-sm-6 col-xs-12  ">
					<div class="panel panel-default">
						<div class="panel-image">
							<div class="caption">
								<div class="item-avatar">
									<img
										src='http://localhost:8080/EM_Framework/assets/images/avatars/<s:property value="%{#session.avatarSrc}"/>'
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
								src="${pageContext.request.contextPath}/assets/images/item/1.jpg"
								class="panel-image-preview">
							<div class="block-title">
								<a><h5>Loving you</h5></a>
								<p class="by-author">
									<small>By 
									  <a href="/EM_Framework/pages/user/channel.action?userId=53c160edae48c7ec8b3ca584" type="submit">Nguyen van C</a>
									
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
								class="separator ">|</span> <i class="fa fa-eye"></i> 500 Views
						</div>
					</div>2
				</div>
				<div class=" col-md-4 col-sm-6 col-xs-12  ">
					<div class="panel panel-default">
						<div class="panel-image">
							<div class="caption">
								<div class="item-avatar">
									<img
										<%-- src='http://localhost:8080/EM_Framework/assets/images/avatars/<s:property value="%{#session.avatarSrc}"/>' --%>
										src='http://localhost:8080/EM_Framework/assets/images/avatars/<s:property value="%{#session.avatarSrc}"/>'
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
								src="${pageContext.request.contextPath}/assets/images/item/2.jpg"
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
								class="separator ">|</span> <i class="fa fa-eye"></i> 500 Views
						</div>
					</div>
				</div>
				<div class=" col-md-4 col-sm-6 col-xs-12  ">
					<div class="panel panel-default">
						<div class="panel-image">
							<div class="caption">
								<div class="item-avatar">
									<img
										src='http://localhost:8080/EM_Framework/assets/images/avatars/<s:property value="%{#session.avatarSrc}"/>'
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
								class="separator ">|</span> <i class="fa fa-eye"></i> 500 Views
						</div>
					</div>
				</div>
			</div>
		</div>
		<div class="row text-center">

			<button type="button" class="btn btn-sm btn-primary">See
				more...</button>
		</div>
		<div class="page-title">
			<i class="icon-custom-left"></i>
			<h3>
				<strong>Top Trend User</strong>
			</h3>
		</div>
		<div class="row">
			<div class="col-md-12">
				<div class="col-md-4 m-b-30">
					<div class="panel panel-default">
						<div class="panel-body">
							<div class="text-center col-xs-4">
								<img
									src="${pageContext.request.contextPath}/assets/images/avatars/avatarloi.jpg"
									class="avatar-user " alt="avatar 4">
							</div>
							<div class="clearfix col-xs-8">
								<h2 class="c-dark w-600">
									<a>Loi MD FC
								</h2>
							</div>
						</div>
						<div class="panel-footer p-t-0 p-b-0">
							<div class="row">
								<div class="col-xs-4 bg-blue p-20">
									<div class="text-center m-b-10">
										<i class="f-24 fa fa-comments-o"></i>
									</div>
									<div class="text-center f-16">1568</div>
								</div>
								<div class="col-xs-4 bg-green p-20">
									<div class="text-center m-b-10">
										<i class="f-24 fa fa-youtube-play"></i>
									</div>
									<div class="text-center f-16">866</div>
								</div>
								<div class="col-xs-4 bg-red p-20">
									<div class="text-center m-b-10">
										<i class="f-24 fa fa-heart"></i>
									</div>
									<div class="text-center f-16">254</div>
								</div>
							</div>
						</div>
					</div>
				</div>
				<div class="col-md-4 m-b-30">
					<div class="panel panel-default">
						<div class="panel-body">
							<div class="text-center col-xs-4">
								<img
									src="${pageContext.request.contextPath}/assets/images/avatars/avatarNguyen.jpg"
									class="avatar-user " alt="avatar 4">
							</div>
							<div class="clearfix col-xs-8">
								<h2 class="c-dark w-600">
									<a>Nguyen NT
								</h2>
							</div>
						</div>
						<div class="panel-footer p-t-0 p-b-0">
							<div class="row">
								<div class="col-xs-4 bg-blue p-20">
									<div class="text-center m-b-10">
										<i class="f-24 fa fa-comments-o"></i>
									</div>
									<div class="text-center f-16">1568</div>
								</div>
								<div class="col-xs-4 bg-green p-20">
									<div class="text-center m-b-10">
										<i class="f-24 fa fa-youtube-play"></i>
									</div>
									<div class="text-center f-16">866</div>
								</div>
								<div class="col-xs-4 bg-red p-20">
									<div class="text-center m-b-10">
										<i class="f-24 fa fa-heart"></i>
									</div>
									<div class="text-center f-16">254</div>
								</div>
							</div>
						</div>
					</div>
				</div>
				<div class="col-md-4 m-b-30">
					<div class="panel panel-default">
						<div class="panel-body">
							<div class="text-center col-xs-4">
								<img
									src="${pageContext.request.contextPath}/assets/images/avatars/avatarphuoc.jpg"
									class="avatar-user " alt="avatar 4">
							</div>
							<div class="clearfix col-xs-8">
								<h2 class="c-dark w-600">
									<a>Vo San
								</h2>
							</div>
						</div>
						<div class="panel-footer p-t-0 p-b-0">
							<div class="row">
								<div class="col-xs-4 bg-blue p-20">
									<div class="text-center m-b-10">
										<i class="f-24 fa fa-comments-o"></i>
									</div>
									<div class="text-center f-16">1568</div>
								</div>
								<div class="col-xs-4 bg-green p-20">
									<div class="text-center m-b-10">
										<i class="f-24 fa fa-youtube-play"></i>
									</div>
									<div class="text-center f-16">866</div>
								</div>
								<div class="col-xs-4 bg-red p-20">
									<div class="text-center m-b-10">
										<i class="f-24 fa fa-heart"></i>
									</div>
									<div class="text-center f-16">254</div>
								</div>
							</div>
						</div>
					</div>
				</div>
			</div>
		</div>
		<div class="row text-center">

			<button type="button" class="btn btn-sm btn-primary">See
				more...</button>
		</div>

		<div class="page-title">
			<i class="icon-custom-left"></i>
			<h3>
				<strong>New posts</strong>
			</h3>
		</div>
		<div class="row">
			<div class="col-md-12">
				<div class=" col-md-4 col-sm-6 col-xs-12  ">
					<div class="panel panel-default">
						<div class="panel-image">
							<div class="caption">
								<div class="item-avatar">
									<img
										src='http://localhost:8080/EM_Framework/assets/images/avatars/<s:property value="%{#session.avatarSrc}"/>'
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
								src="${pageContext.request.contextPath}/assets/images/item/4.jpg"
								class="panel-image-preview">
							<div class="block-title">
								<a><h5>Love you love me</h5></a>
								<p class="by-author">
									<small>By <a>yao si ting</a></small>
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
								class="separator ">|</span> <i class="fa fa-eye"></i> 500 Views
						</div>
					</div>
				</div>
				<div class=" col-md-4 col-sm-6 col-xs-12  ">
					<div class="panel panel-default">
						<div class="panel-image">
							<div class="caption">
								<div class="item-avatar">
									<img
										src='http://localhost:8080/EM_Framework/assets/images/avatars/<s:property value="%{#session.avatarSrc}"/>'
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
								src="${pageContext.request.contextPath}/assets/images/item/5.jpg"
								class="panel-image-preview">
							<div class="block-title">
								<a><h5>See in a heart</h5></a>
								<p class="by-author">
									<small>By <a>Quang Nguyen</a></small>
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
								class="separator ">|</span> <i class="fa fa-eye"></i> 500 Views
						</div>
					</div>
				</div>
				<div class=" col-md-4 col-sm-6 col-xs-12  ">
					<div class="panel panel-default">
						<div class="panel-image">
							<div class="caption">
								<div class="item-avatar">
									<img
										src='http://localhost:8080/EM_Framework/assets/images/avatars/<s:property value="%{#session.avatarSrc}"/>'
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
								src="${pageContext.request.contextPath}/assets/images/item/6.jpg"
								class="panel-image-preview">
							<div class="block-title">
								<a><h5>Love love</h5></a>
								<p class="by-author">
									<small>By <a>bay</a></small>
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
								class="separator ">|</span> <i class="fa fa-eye"></i> 500 Views
						</div>
					</div>
				</div>
			</div>
		</div>
		<div class="row">
			<div class="col-md-12">
				<div class=" col-md-4 col-sm-6 col-xs-12  ">
					<div class="panel panel-default">
						<div class="panel-image">
							<div class="caption">
								<div class="item-avatar">
									<img
										src='http://localhost:8080/EM_Framework/assets/images/avatars/<s:property value="%{#session.avatarSrc}"/>'
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
								src="${pageContext.request.contextPath}/assets/images/item/7.jpg"
								class="panel-image-preview">
							<div class="block-title">
								<a><h5>Dung chan truoc tieu doan mua xuan 507</h5></a>
								<p class="by-author">
									<small>By <a>Trung Phong</a></small>
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
								class="separator ">|</span> <i class="fa fa-eye"></i> 500 Views
						</div>
					</div>
				</div>
				<div class=" col-md-4 col-sm-6 col-xs-12  ">
					<div class="panel panel-default">
						<div class="panel-image">
							<div class="caption">
								<div class="item-avatar">
									<img
										src='http://localhost:8080/EM_Framework/assets/images/avatars/<s:property value="%{#session.avatarSrc}"/>'
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
								src="${pageContext.request.contextPath}/assets/images/item/7.jpg"
								class="panel-image-preview">
							<div class="block-title">
								<a><h5>Doi hoc sinh</h5></a>
								<p class="by-author">
									<small>By <a>C.My</a></small>
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
								class="separator ">|</span> <i class="fa fa-eye"></i> 500 Views
						</div>
					</div>
				</div>
				<div class=" col-md-4 col-sm-6 col-xs-12  ">
					<div class="panel panel-default">
						<div class="panel-image">
							<div class="caption">
								<div class="item-avatar">
									<img
										src='http://localhost:8080/EM_Framework/assets/images/avatars/<s:property value="%{#session.avatarSrc}"/>'
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
								<a><h5>I love you</h5></a>
								<p class="by-author">
									<small>By <a>hay yao</a></small>
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
								class="separator ">|</span> <i class="fa fa-eye"></i> 500 Views
						</div>
					</div>
				</div>
			</div>
		</div>
		<div class="row">
			<div class="col-md-12">
				<div class=" col-md-4 col-sm-6 col-xs-12  ">
					<div class="panel panel-default">
						<div class="panel-image">
							<div class="caption">
								<div class="item-avatar">
									<img
										src='http://localhost:8080/EM_Framework/assets/images/avatars/<s:property value="%{#session.avatarSrc}"/>'
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
								src="${pageContext.request.contextPath}/assets/images/item/9.jpg"
								class="panel-image-preview">
							<div class="block-title">
								<a><h5>seeing</h5></a>
								<p class="by-author">
									<small>By <a>camerun</a></small>
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
								class="separator ">|</span> <i class="fa fa-eye"></i> 500 Views
						</div>
					</div>
				</div>
				<div class=" col-md-4 col-sm-6 col-xs-12  ">
					<div class="panel panel-default">
						<div class="panel-image">
							<div class="caption">
								<div class="item-avatar">
									<img
										src='http://localhost:8080/EM_Framework/assets/images/avatars/<s:property value="%{#session.avatarSrc}"/>'
										class="panel-image-preview">
									<div></div>
								</div>
								<s:property value="%{#session.avatarSrc}"/>
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
								src="${pageContext.request.contextPath}/assets/images/item/10.jpg"
								class="panel-image-preview">
							<div class="block-title">
								<a><h5>Love you as you love me!</h5></a>
								<p class="by-author">
									<small>By <a>Done Joan</a></small>
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
								class="separator ">|</span> <i class="fa fa-eye"></i> 500 Views
						</div>
					</div>
				</div>
				<div class=" col-md-4 col-sm-6 col-xs-12  ">
					<div class="panel panel-default">
						<div class="panel-image">
							<div class="caption">
								<div class="item-avatar">
									<img
										src='${pageContext.request.contextPath}/assets/images/avatars/<s:property value="%{#session.avatarSrc}"/>'
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
								src="${pageContext.request.contextPath}/assets/images/item/11.png"
								class="panel-image-preview">
							<div class="block-title">
								<a><h5>Last Time</h5></a>
								<p class="by-author">
									<small>By <a>Jhon Doe</a></small>
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
								class="separator ">|</span> <i class="fa fa-eye"></i> 500 Views
						</div>
					</div>
				</div>
			</div>
		</div>
		<div class="row text-center">

			<button type="button" class="btn btn-sm btn-primary">See
				more...</button>
		</div>

	</div>


	<!-- END MAIN CONTENT -->
	<style tyle="text/css">
   	ul.chat-area {
   		position: fixed;
   		list-style-type: none;
   		bottom: 0px;
   		width: 250px;
   		height: 330px;
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
   </style>
   <ul class="chat-area" style="align: right">
   </ul>
   <input type="hidden" value="<%= session.getAttribute("username") %>" id="username">
   <input type="hidden" value="<%= session.getAttribute("userId") %>" id="userId">

	<jsp:include page="../../assets/elements/menuChatElement.jsp" />
	<jsp:include page="../../assets/elements/element_pack/mainpageE.jsp" />
</body>
</html>
