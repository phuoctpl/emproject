<%@ page language="java" contentType="text/html; charset=UTF-8"
	pageEncoding="UTF-8"%>
<%@ taglib prefix="s" uri="/struts-tags"%>
<!DOCTYPE html>

<head>
    <!-- BEGIN META SECTION -->
    <meta charset="utf-8">
    <!-- END META SECTION -->
    <jsp:include page="../../assets/elements/assetsElement.jsp" />
</head>

<body data-page="blank_page">
    <jsp:include page="../../assets/elements/menuAdmin.jsp" />
       <!-- BEGIN MAIN CONTENT -->
        <div id="main-content">
            <div class="page-title"> <i class="icon-custom-left"></i>
                <h3><strong>Reports</strong> </h3>
            </div>
            <div class="row">
                <div class="col-md-12">
                    <div class="panel panel-default">
                        <div class="panel-heading">
                            <h3 class="panel-title"><strong>12</strong> Months</h3>
                        </div>
                        <div class="panel-body">
                            <div class="row">
                                <div class="col-md-12">
                                    <h3 class="m-b-30"><strong>Posts and Users</strong> Statitics</h3> 
                                    <div>
                                        <svg id="d3_chart1" style="height:500px"></svg>
                                    </div>
                                </div>
                            </div>
                        </div>
                    </div>
                </div>
            </div>
            <div class="row">
                <div class="col-md-12">
                    <div class="panel panel-default">
                        <div class="panel-heading">
                            <h3 class="panel-title"><strong>Bar</strong> Charts</h3>
                        </div>
                        <div class="panel-body">
                            <div class="row">
                                <div class="col-md-12">
                                    <h3 class="m-b-30"><strong>Posts &amp; Users</strong> Chart</h3>
                                    <div id="d3_chart2">
                                        <svg style="height:300px"></svg>
                                    </div>
                                </div>
                            </div>
                        </div>
                    </div>
                </div>
                
            </div>
            <div class="row">
                
                <div class="col-md-12">
                    <div class="panel panel-default">
                        <div class="panel-heading">
                            <h3 class="panel-title"><strong> Pie</strong> Charts</h3>
                        </div>
                        <div class="panel-body">
                            <div class="row">
                                <div class="col-md-12">
                                    <h3 class="m-b-30"><strong>Genres </strong> Chart</h3>
                                    <div class="row">
                                        <div class="col-sm-6 col-sm-offset-3">
                                            <div id="donut-chart1"></div>
                                        </div>
                                    </div>
                                </div>
                            </div>
                        </div>
                    </div>
                </div>
            </div>
         
        </div>
        <!-- END MAIN CONTENT -->
        <div id="tooltip"></div>
      <jsp:include page="../../assets/elements/menuChatElement.jsp" />
    <jsp:include page="../../assets/elements/element_pack/chartsE.jsp" />


	<%-- <script>
		$(function() {
			var posts = [];
			var users = [];
			var G = [];
			var ids = [];
			var counts = [];
			var dt1;
			console.log("Read JSON Data"); 
		    $.getJSON("pages/admin/loadStatisticsData.action", function (res) {
		        console.log("lenght "+res.postAndUseList.length);
		        
		        for (var i = 0; i < res.postAndUseList.length; i++) {
		            var user = res.postAndUseList[i].numberOfUser;
		            var post = res.postAndUseList[i].numberOfPost;
		            var time = res.postAndUseList[i].time;
		            
		            console.log("resuft :" + user + "-" + post + "-" + time + "-");
		            posts.push([time, post]);
		            users.push([time, user]);
		        }
		        for (var i = 0; i < res.genreAggregationList.length; i++) {
		            
		            var id = res.genreAggregationList[i].genre;
		            var count = res.genreAggregationList[i].count;
		            
		            console.log("resuft musicGenreStatistics : " + id + " - " + count );
		            ids.push(id);
		            counts.push(count);
		            
		        }
		        dt1 = [
				            {
				            	label :  ids[0],
				            	data: counts[0]
				            },
				            {
				            	label :  ids[1],
				            	data: counts[1]
				            }
				             ];
		        console.log("post: "+ posts.length);
			    console.log("users: "+ users.length);
			    $.plot("#linechart", [ {
					data : posts,
					label: "Post",
					bars : {
						show : true
					}
				}, {
					data : users,
					label: "User",
					bars : {
						show : true
					}
				} ],{ crosshair : {
					mode:"x"
				},
				grid: {
					hoverable: true,
					autoHightlight: false
				},yaxis: {
					min: 0,
					max: 2.5,
					
				},xaxis: {
					min: 1,
					max: 12,
					tickFormatter: function (v) {
						var startmonth = new Date().getMonth() + 2;
						
						var currentyear = new Date().getFullYear();
						
						if(v >= startmonth)
							{
							switch(v){
							case 1:
								v = "Jan "+"("+(currentyear-1)+")";
								break;
							case 2:
								v = "Feb"+"("+(currentyear-1)+")";
								break;
							case 3:
								v = "March"+"("+(currentyear-1)+")";
								break;
							case 4:
								v = "April"+"("+(currentyear-1)+")";
								break;
							case 5:
								v = "May"+"("+(currentyear-1)+")";
								break;
							case 6:
								v = "June"+"("+(currentyear-1)+")";
								break;
							case 7:
								v = "July"+"("+(currentyear-1)+")";
								break;
							case 8:
								v = "Aug"+"("+(currentyear-1)+")";
								break;
							case 9:
								v = "Sept"+"("+(currentyear-1)+")";
								break;
							case 10:
								v = "Oct"+"("+(currentyear-1)+")"
							case 11:
								v = "Nov"+"("+(currentyear-1)+")";
								break;
							case 12:
								v = "Dec"+"("+(currentyear-1)+")";
								break;
								}	
							}else
								{
							switch(v){
						case 1:
							v = "Jan "+"("+currentyear+")";
							break;
						case 2:
							v = "Feb"+"("+currentyear+")";
							break;
						case 3:
							v = "March"+"("+currentyear+")";
							break;
						case 4:
							v = "April"+"("+currentyear+")";
							break;
						case 5:
							v = "May"+"("+currentyear+")";
							break;
						case 6:
							v = "June"+"("+currentyear+")";
							break;
						case 7:
							v = "July"+"("+currentyear+")";
							break;
						case 8:
							v = "Aug"+"("+currentyear+")";
							break;
						case 9:
							v = "Sept"+"("+currentyear+")";
							break;
						case 10:
							v = "Oct"+"("+currentyear+")"
						case 11:
							v = "Nov"+"("+currentyear+")";
							break;
						case 12:
							v = "Dec"+"("+currentyear+")";
							break;
							}					
						
								}
							
						return v;
					}
				}
				});
			    
				
			  /*   
			    $.plot($("#musicGenre"), dt1, {
					series: {
						pie: { 
							show: true
						}
					}
				}); */
			     $.plot($("#musicGenre"), dt1, {
					series : {
						pie : {
							show : true
						}
					},
					grid : {
						hoverable : true,
						clickable : true
					},
					legend : {
						show : true
					},
					colors : [ "#FA5833", "#2FABE9", "#FABB3D", "#78CD51" ]
				});
				function w(i, J, I) {
					if (!I) {
						return
					}
					percent = parseFloat(I.series.percent).toFixed(2);
					$("#hover").html(
							'<span style="font-weight: bold; color: ' + I.series.color
									+ '">' + I.series.label + " (" + percent
									+ "%)</span>")
				}
				$("#musicGenre").bind("plothover", w); 
				
				
				$.plot($("#donutchart"), dt1, {
					series : {
						pie : {
							innerRadius : 0.5,
							show : true
						}
					},
					legend : {
						show : false
					},
					colors : [ "#FA5833", "#2FABE9", "#FABB3D", "#78CD51" ]
				})
		    });
		    
		    
				
			
			
			/* var d1 = [];
			for (var i = 0; i < 20; i += 0.5) {
				d1.push([ i, Math.sin(i) ]);
			}
			var d2 = [ [ 0, 3 ], [ 4, 8 ], [ 8, 5 ], [ 9, 13 ] ]; */
			

			// We use an inline data source in the example, usually data would
			// be fetched from a server

			var data = [], totalPoints = 300;

			function getRandomData() {

				if (data.length > 0)
					data = data.slice(1);

				// Do a random walk

				while (data.length < totalPoints) {

					var prev = data.length > 0 ? data[data.length - 1] : 50, y = prev
							+ Math.random() * 10 - 5;

					if (y < 0) {
						y = 0;
					} else if (y > 100) {
						y = 100;
					}

					data.push(y);
				}

				// Zip the generated y values with the x values

				var res = [];
				for (var i = 0; i < data.length; ++i) {
					res.push([ i, data[i] ])
				}

				return res;
			}

			// Set up the control widget

			var updateInterval = 30;
			$("#updateInterval").val(updateInterval).change(function() {
				var v = $(this).val();
				if (v && !isNaN(+v)) {
					updateInterval = +v;
					if (updateInterval < 1) {
						updateInterval = 1;
					} else if (updateInterval > 2000) {
						updateInterval = 2000;
					}
					$(this).val("" + updateInterval);
				}
			});

			var plot = $.plot("#realtime", [ getRandomData() ], {
				series : {
					shadowSize : 0
				// Drawing is faster without shadows
				},
				yaxis : {
					min : 0,
					max : 100
				},
				xaxis : {
					show : false
				}
			});

			function update() {

				plot.setData([ getRandomData() ]);

				// Since the axes don't change, we don't need to call plot.setupGrid()

				plot.draw();
				setTimeout(update, updateInterval);
			}

			update();

		});
	</script> --%>
</body>
</html>