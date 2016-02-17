			var RVAIN = { ID: "INPUT_VA", liveData: false, timerID: 0, plot: null };
			var RVOUT = { ID: "OUTPUT_V", liveData: false, timerID: 0, plot: null };
			var RAOUT = { ID: "OUTPUT_A", liveData: false, timerID: 0, plot: null };

      var rain1_live = [],
      		rain2_live = [],
      		rain3_live = [],
      		rain4_live = [],
      		rvin1_live = [],
      		rvin2_live = [],
      		rvin3_live = [],
      		rvin4_live = [],
      		rvout1_live = [],
      		rvout2_live = [],
      		rvout3_live = [],
      		rvout4_live = [],
      		raout1_live = [],
      		raout2_live = [],
      		raout3_live = [],
      		raout4_live = [];
      		
			//Amps Phase A
			var amps1 = [[1455145200000,33],[1455145500000,33],[1455145800000,45],[1455146100000,42],[1455146400000,38],[1455146700000,34],[1455147000000,48],[1455147300000,43],[1455147600000,0],[1455147900000,0],[1455148200000,1],[1455148500000,0],[1455148800000,0],[1455149100000,34],[1455149400000,39],[1455149700000,32]];
			//Amps Phase B
			var amps2 = [[1455145200000,37],[1455145500000,34],[1455145800000,54],[1455146100000,65],[1455146400000,56],[1455146700000,46],[1455147000000,45],[1455147300000,65],[1455147600000,0],[1455147900000,0],[1455148200000,0],[1455148500000,0],[1455148800000,0],[1455149100000,53],[1455149400000,45],[1455149700000,53]];
			//Amps Phase C
			var amps3 = [[1455145200000,65],[1455145500000,45],[1455145800000,45],[1455146100000,64],[1455146400000,65],[1455146700000,65],[1455147000000,63],[1455147300000,54],[1455147600000,0],[1455147900000,0],[1455148200000,2],[1455148500000,0],[1455148800000,0],[1455149100000,39],[1455149400000,53],[1455149700000,65]];
			//Amps Phase Avg
			var amps4 = [[1455145200000,45],[1455145500000,37],[1455145800000,48],[1455146100000,57],[1455146400000,53],[1455146700000,48],[1455147000000,52],[1455147300000,54],[1455147600000,0],[1455147900000,0],[1455148200000,1],[1455148500000,0],[1455148800000,0],[1455149100000,42],[1455149400000,46],[1455149700000,50]];
			//Volts Phase A
			var volts1 = [[1455145200000,112],[1455145500000,109],[1455145800000,110],[1455146100000,111],[1455146400000,109],[1455146700000,110],[1455147000000,111],[1455147300000,109],[1455147600000,0],[1455147900000,0],[1455148200000,2],[1455148500000,0],[1455148800000,0],[1455149100000,109],[1455149400000,110],[1455149700000,111]];
			//Volts Phase B
			var volts2 = [[1455145200000,110],[1455145500000,111],[1455145800000,111],[1455146100000,111],[1455146400000,110],[1455146700000,111],[1455147000000,111],[1455147300000,111],[1455147600000,0],[1455147900000,0],[1455148200000,0],[1455148500000,0],[1455148800000,0],[1455149100000,90],[1455149400000,111],[1455149700000,111]];
			//Volts Phase C
			var volts3 = [[1455145200000,112],[1455145500000,112],[1455145800000,112],[1455146100000,113],[1455146400000,112],[1455146700000,111],[1455147000000,112],[1455147300000,113],[1455147600000,0],[1455147900000,0],[1455148200000,3],[1455148500000,0],[1455148800000,0],[1455149100000,80],[1455149400000,112],[1455149700000,112]];
			//Volts Phase Avg
      //JOHN: var volts4 = get This should be the call to the database to get all logged data for the day.  
			var volts4 = [[1455145200000,111],[1455145500000,111],[1455145800000,111],[1455146100000,112],[1455146400000,110],[1455146700000,111],[1455147000000,111],[1455147300000,111],[1455147600000,0],[1455147900000,0],[1455148200000,2],[1455148500000,0],[1455148800000,0],[1455149100000,93],[1455149400000,111],[1455149700000,111]];
			
			//var dataset = loadData(false);
			
			function loadData(PLOT_TYPE) {
				var tData = [];
				switch(PLOT_TYPE.ID) {
				    case RVAIN.ID:
								tData.push({ label: "Amps Phase A", data: (RVAIN.liveData) ? rain1_live : amps1, yaxis: 1, color: "#cc00cc", points: { symbol: "diamond", fillColor: "#cc00cc", show: true }, lines: { show: true } })
								tData.push({ label: "Amps Phase B", data: (RVAIN.liveData) ? rain2_live : amps2, yaxis: 1, color: "#cc00ff", points: { symbol: "diamond", fillColor: "#cc00ff", show: true }, lines: {show:true } })
								tData.push({ label: "Amps Phase C", data: (RVAIN.liveData) ? rain3_live : amps3, yaxis: 1, color: "#9933ff", points: { symbol: "diamond", fillColor: "#9933ff", show: true }, lines: { show: true } })
								tData.push({ label: "Amps Phase Avg", data: (RVAIN.liveData) ? rain4_live : amps4, yaxis: 1, color: "#6600ff", points: { symbol: "triangle", fillColor: "#6600ff", show: true }, lines: { show: true } })
								tData.push({ label: "Volts Phase A", data: (RVAIN.liveData) ? rvin1_live : volts1, yaxis: 2, color: "#66b3ff", points: { symbol: "cross", fillColor: "#66b3ff", show: true }, lines: { show: true } })
								tData.push({ label: "Volts Phase B", data: (RVAIN.liveData) ? rvin2_live : volts2, yaxis: 2, color: "#3399ff", points: { symbol: "cross", fillColor: "#3399ff", show: true }, lines: { show: true } })
								tData.push({ label: "Volts Phase C", data: (RVAIN.liveData) ? rvin3_live : volts3, yaxis: 2, color: "#0099ff", points: { symbol: "cross", fillColor: "#0099ff", show: true }, lines: { show: true } })
								tData.push({ label: "Volts Phase Avg", data: (RVAIN.liveData) ? rvin4_live : volts4, yaxis: 2, color: "#0066cc", points: { symbol: "square", fillColor: "#0066cc", show: true }, lines: { show: true } })
				        break;
				    case RVOUT.ID:
								tData.push({ label: "Volts Phase A", data: (RVOUT.liveData) ? rvout1_live : volts1, yaxis: 2, color: "#66b3ff", points: { symbol: "cross", fillColor: "#66b3ff", show: true }, lines: { show: true } })
								tData.push({ label: "Volts Phase B", data: (RVOUT.liveData) ? rvout2_live : volts2, yaxis: 2, color: "#3399ff", points: { symbol: "cross", fillColor: "#3399ff", show: true }, lines: { show: true } })
								tData.push({ label: "Volts Phase C", data: (RVOUT.liveData) ? rvout3_live : volts3, yaxis: 2, color: "#0099ff", points: { symbol: "cross", fillColor: "#0099ff", show: true }, lines: { show: true } })
								tData.push({ label: "Volts Phase Avg", data: (RVOUT.liveData) ? rvout4_live : volts4, yaxis: 2, color: "#0066cc", points: { symbol: "square", fillColor: "#0066cc", show: true }, lines: { show: true } })
				        break;
				    case RAOUT.ID:
								tData.push({ label: "Amps Phase A", data: (RAOUT.liveData) ? raout1_live : amps1, yaxis: 1, color: "#cc00cc", points: { symbol: "diamond", fillColor: "#cc00cc", show: true }, lines: { show: true } })
								tData.push({ label: "Amps Phase B", data: (RAOUT.liveData) ? raout2_live : amps2, yaxis: 1, color: "#cc00ff", points: { symbol: "diamond", fillColor: "#cc00ff", show: true }, lines: {show:true } })
								tData.push({ label: "Amps Phase C", data: (RAOUT.liveData) ? raout3_live : amps3, yaxis: 1, color: "#9933ff", points: { symbol: "diamond", fillColor: "#9933ff", show: true }, lines: { show: true } })
								tData.push({ label: "Amps Phase Avg", data: (RAOUT.liveData) ? raout4_live : amps4, yaxis: 1, color: "#6600ff", points: { symbol: "triangle", fillColor: "#6600ff", show: true }, lines: { show: true } })
				        break;
				}
				return tData;
			}	
			
			function clearLiveData(PLOT_TYPE) {	
				switch(PLOT_TYPE.ID) {
				    case RVAIN.ID:
								rain1_live = [];
			      		rain2_live = [];
			      		rain3_live = [];
			      		rain4_live = [];
			      		rvin1_live = [];
			      		rvin2_live = [];
			      		rvin3_live = [];
			      		rvin4_live = [];
				        break;
				    case RVOUT.ID:
			      		rvout1_live = [];
			      		rvout2_live = [];
			      		rvout3_live = [];
			      		rvout4_live = [];
				        break;
				    case RAOUT.ID:
			      		raout1_live = [];
			      		raout2_live = [];
			      		raout3_live = [];
			      		raout4_live = [];
				        break;
				}
			}	