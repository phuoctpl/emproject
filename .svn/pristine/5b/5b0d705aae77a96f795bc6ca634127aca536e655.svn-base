<%@ page language="java" contentType="text/html; charset=UTF-8"
	pageEncoding="UTF-8"%>
<%@ taglib uri="http://java.sun.com/jstl/core" prefix="c"%>
<%@ taglib prefix="s" uri="/struts-tags"%>
<!DOCTYPE html>
<!-- Added by HTTrack -->
<meta http-equiv="content-type" content="text/html;charset=UTF-8" />
<!-- /Added by HTTrack -->
<head>
<!-- BEGIN META SECTION -->
<meta charset="utf-8">
<title>User</title>
<meta name="viewport" content="width=device-width, initial-scale=1">
<meta content="" name="description" />
<meta content="themes-lab" name="author" />
<!-- END META SECTION -->
<jsp:include page="../../assets/elements/adminElement.jsp" />

</head>

<body data-page="forms">
	<jsp:include page="../../assets/elements/menuAdmin.jsp" />
	<!-- BEGIN MAIN CONTENT -->
	<div id="main-content">
            <div class="page-title"> <i class="icon-custom-left"></i>
                <h3><strong>Member</strong> manager</h3>
            </div>
            <div class="row">
                <div class="col-md-12">
                    <div class="panel panel-default">
                        <div class="panel-heading bg-red">
                            <h3 class="panel-title"><strong>User </strong></h3>
                        </div>
                        <div class="panel-body">
                            <div class="row">
                                <div class="col-md-12 m-b-20">
                                
                                    
                                </div>
                                <div class="col-md-12 col-sm-12 col-xs-12 table-responsive table-red">
                                <s:form id="form1" action="addNewMember">
                                    <table class="table table-striped table-hover table-dynamic" id="table-editable" >
                                        <thead>
                                        	<tr>
                                        	
                                        		<td><s:textfield cssClass="form-control small" name="name" placeholder="Enter member name" parsley-required="true"></s:textfield></td>
                                        		<td><s:textfield cssClass="form-control small" name="email" placeholder="Enter member email" parsley-required="true" parsley-type="email"></s:textfield></td>
                                        		<td><s:textfield cssClass="form-control small" name="address" placeholder="Enter member address" parsley-required="true"></s:textfield></td>
                                        		<td><s:textfield cssClass="form-control small" name="phone" placeholder="Enter member phone" parsley-required="true"></s:textfield></td>
                                        		<td>
                                        			<s:textfield placeholder="Enter member birthdate" name="birthDate" cssClass="form-control small" id="dp1" parsley-required="true"></s:textfield>
                                        		</td>
                                        		<td style="color: red !important;">
                                        			<s:select cssStyle=""  list="genders" name="gender" value="gender" cssClass="form-control small"></s:select>
                                        		</td>
                                        		<td style="text-align: center;"><s:submit onclick="javascript:$('#form1').parsley('validate');" cssClass="btn btn-success"  value="Add" ></s:submit> </td>
                                        </tr>
                                            <tr role="row">
                                                <th>#Name</th>
                                                <th>Email</th>
                                                <th>Address</th>
                                                <th>Phone</th>
                                                <th>Birth date</th>
                                                <th>Enter date</th>
                                                <th class="text-center">State</th>
                                            </tr>
                                        </thead>
                                        <tbody>
                                        
                                        <s:iterator value="memberList">
                                            <tr>
												<s:url id="lock" action="doManagerUser.action">
													<s:param name="userId">
														<s:property value="_id" />
													</s:param>
												</s:url>
												<s:url id="unlock" action="doManagerUser.action">
													<s:param name="userId">
														<s:property value="_id" />
													</s:param>
												</s:url>
												<td><s:property value="name" /></td>
                                            	<td><s:property value="email" /></td>
                                            	<td><s:property value="address" /></td>
                                            	<td><s:property value="phone" /></td>
                                            	<td><s:property value="birthDate" /></td>
                                            	<td><s:property value="enterDate" /></td>
                                             	<td class="text-center">
                                             		<s:if test="active==0">
                                             			<s:a cssClass="btn btn-dark" href="%{unlock}">
                                             			<i class="fa fa-lock"></i>
                                             			
                                             		</s:a>
                                             		</s:if>
                                             		
                                             		<s:if test="active==1">
                                             			<s:a cssClass="btn btn-red" href="%{lock}">
                                             			<i class="fa fa-unlock"></i>
                                             			<input type="hidden" name="sort" value="A">
                                             			
                                             		</s:a>
                                             		</s:if>
													
                                             	</td>
                                            </tr>
                                         </s:iterator>
                                        </tbody>
                                    </table>
                                    </s:form>
                                </div>
                            </div>
                        </div>
                    </div>
                    
                    
                    
                    
                    
                    
                </div>
            </div>
            <!-- END MAIN CONTENT -->


        </div>
		<!-- END WRAPPER -->
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
	<script src="../../assets/js/bootstrap-datepicker.js"></script>
	<script src="../../assets/plugins/parsley/parsley.js"></script>
    <script src="../../assets/plugins/parsley/parsley.extend.js"></script>
	<jsp:include page="../../assets/elements/element_pack/tablesE.jsp" />
</body>

</html>

