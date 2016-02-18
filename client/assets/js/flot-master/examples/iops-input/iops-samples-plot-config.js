			var rvain_options = {
			    xaxis: {
			        mode: "time",
			        timeformat: "%e/%m %I:%M %P",
			        timezone: 'Asia/Shanghai',
			        tickSize: [5, "minute"],
			        axisLabel: " ",
			        axisLabelPadding: 25
			    },
			    yaxes: [{
			        min: 25,
			        max: 85,
			        position: "left",
			        color: "black",
			        axisLabel: "Amps",
			        axisLabelUseCanvas: true,
			        axisLabelFontSizePixels: 12,
			        axisLabelFontFamily: 'Verdana, Arial',
			        axisLabelPadding: 10
			    	}, {
			        min: 95,
			        max: 150,
			        position: "right",
			        color: "black",
			        axisLabel: "Volts",
			        axisLabelUseCanvas: true,
			        axisLabelFontSizePixels: 12,
			        axisLabelFontFamily: 'Verdana, Arial',
			        axisLabelPadding: 10
			    	}
					],
			    legend: {
			        show: true,
			        //container: $('#legend-container'),
			        noColumns: 4,
			        labelFormatter: function (label, series) {
			            return "<font color=\"white\">" + label + "</font>";
			        },            
			        backgroundColor: "#000",
			        backgroundOpacity: 0.9,
			        labelBoxBorderColor: "#000000",
			        position: "nw"
			    },
			    grid: {
			        hoverable: true,
			        borderWidth: 3,
			        mouseActiveRadius: 50,
			        backgroundColor: { colors: ["#ffffff", "#EDF5FF"] },
			        //axisMargin: 30
			    }
			};
			var rvout_options = {
			    xaxis: {
			        mode: "time",
			        timeformat: "%e/%m %I:%M %P",
			        timezone: 'Asia/Shanghai',
			        tickSize: [5, "minute"],
			        axisLabel: " ",
			        axisLabelPadding: 25
			    },
			    yaxes: [{
			        min: 95,
			        max: 150,
			        position: "left",
			        color: "black",
			        axisLabel: "Volts",
			        axisLabelUseCanvas: true,
			        axisLabelFontSizePixels: 12,
			        axisLabelFontFamily: 'Verdana, Arial',
			        axisLabelPadding: 10
			    	}
					],
			    legend: {
			        show: true,
			        //container: $('#legend-container'),
			        noColumns: 4,
			        labelFormatter: function (label, series) {
			            return "<font color=\"white\">" + label + "</font>";
			        },            
			        backgroundColor: "#000",
			        backgroundOpacity: 0.9,
			        labelBoxBorderColor: "#000000",
			        position: "nw"
			    },
			    grid: {
			        hoverable: true,
			        borderWidth: 3,
			        mouseActiveRadius: 50,
			        backgroundColor: { colors: ["#ffffff", "#EDF5FF"] },
			        //axisMargin: 30
			    }
			};
			
			var raout_options = {
			    xaxis: {
			        mode: "time",
			        timeformat: "%e/%m %I:%M %P",
			        timezone: 'Asia/Shanghai',
			        tickSize: [5, "minute"],
			        axisLabel: " ",
			        axisLabelPadding: 25
			    },
			    yaxes: [{
			        min: 25,
			        max: 85,
			        position: "left",
			        color: "black",
			        axisLabel: "Amps",
			        axisLabelUseCanvas: true,
			        axisLabelFontSizePixels: 12,
			        axisLabelFontFamily: 'Verdana, Arial',
			        axisLabelPadding: 10
			    	}
					],
			    legend: {
			        show: true,
			        //container: $('#legend-container'),
			        noColumns: 4,
			        labelFormatter: function (label, series) {
			            return "<font color=\"white\">" + label + "</font>";
			        },            
			        backgroundColor: "#000",
			        backgroundOpacity: 0.9,
			        labelBoxBorderColor: "#000000",
			        position: "nw"
			    },
			    grid: {
			        hoverable: true,
			        borderWidth: 3,
			        mouseActiveRadius: 50,
			        backgroundColor: { colors: ["#ffffff", "#EDF5FF"] },
			        //axisMargin: 30
			    }
			};
			
			
			var previousPoint = null, previousLabel = null;
			
			$.fn.UseTooltip = function () {
			    $(this).bind("plothover", function (event, pos, item) {
			        if (item) {
			            if ((previousLabel != item.series.label) || (previousPoint != item.dataIndex)) {
			                previousPoint = item.dataIndex;
			                previousLabel = item.series.label;
			                $("#tooltip").remove();
			                
			                var x = item.datapoint[0];
			                var y = item.datapoint[1];
			
			                var color = item.series.color;
			
			                showTooltip(item.pageX, item.pageY, color,
			                            "<strong>" + item.series.label + ":</strong> " + fnUTC2Date(x) + " = " + y);
			            }
			        } else {
			            $("#tooltip").remove();
			            previousPoint = null;
			        }
			    });
			};
			
			function showTooltip(x, y, color, contents) {
			    $('<div id="tooltip">' + contents + '</div>').css({
						position: 'absolute',
						display: 'none',
						top: y - 40,
						left: x - 120,
						border: '2px solid ' + color,
						padding: '3px',
						'font-size': '9px',
						'border-radius': '5px',
						'background-color': '#fff',
						'font-family': 'Verdana, Arial, Helvetica, Tahoma, sans-serif',
						opacity: 0.9
			    }).appendTo("body").fadeIn(200);
			}
