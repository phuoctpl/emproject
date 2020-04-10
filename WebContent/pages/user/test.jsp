<%@ taglib prefix="s" uri="/struts-tags"%>
<!DOCTYPE html>
<!-- saved from url=(0084)http://www.eyecon.ro/bootstrap-datepicker/?utm_source=twitterfeed&utm_medium=twitter -->
<html lang="en">
<head>
<meta http-equiv="Content-Type" content="text/html; charset=UTF-8">
<meta charset="utf-8">
<title>Datepicker for Bootstrap, from Twitter</title>
<link
	href="http://www.eyecon.ro/bootstrap-datepicker/css/datepicker.css"
	rel="stylesheet">
<link rel="shortcut icon"
	href="${pageContext.request.contextPath}/assets/images/favicon.png">
<!-- END META SECTION -->
<link href="../../assets/css/jasny-bootstrap.min.css" rel="stylesheet"
	media="screen">
<jsp:include page="../../assets/elements/assetsElement.jsp" />
</head>

<body>
	<div class="container">


		<div class="span9 columns">
			<h2>Example</h2>
			<p>Attached to a field with the format specified via options.</p>
			<div class="well">
				<!-- <input type="text" class="span2" value="02-16-2012" id="dp1"> -->
			</div>



		</div>
		<div class="form-group">
			<label class="col-lg-3 control-label">Birth date:</label>

			<div class="col-lg-8">
				<s:textfield name="test" cssClass="form-control" value="02-16-2012" id="dp1"></s:textfield>
				<!-- <input type="text" class="span2" value="02-16-2012" id="dp1"> -->
				 <!-- <input name="birthDate" class="form-control" type="text" value="02-16-2012" id="dp1"> -->
				  
			</div>
		</div>
	</div>



	<script src="../../assets/js/jquery.js"></script>
	<script src="../../assets/js/bootstrap-datepicker.js"></script>
	<script>
		if (top.location != location) {
			top.location.href = document.location.href;
		}
		$(function() {
			window.prettyPrint && prettyPrint();
			$('#dp1').datepicker({
				format : 'mm-dd-yyyy'
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

	<script src="../../assets/js/application.js"></script>
	<script src="../../assets/plugins/parsley/parsley.js"></script>
	<script src="../../assets/plugins/parsley/parsley.extend.js"></script>
	<script src="../../assets/js/jasny-bootstrap.min.js"></script>
	<jsp:include page="../../assets/elements/menuChatElement.jsp" />
	<jsp:include page="../../assets/elements/element_pack/channelE.jsp" />

</body>
</html>