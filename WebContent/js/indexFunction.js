function UpdatesFunction(){
	$.ajax({
		type: 'POST',
		dataType:'json',
		data: {},
		url: 'QueryUpdateTop5Action.action',
		beforeSend:function(){
			$("#loading").append("<li id='loadingli'>loading...</li>");
		},
		success:function(json){
			var list = json.list;
			var regx = /2019/;
			$.each(list,function(index,item){
				if(regx.test(item['monthYear'])){
					$("#updateList").append('<div class="new-update clearfix" style="background-color:rgba(255,193,193,0.5);"> <i class="icon-'+item['type']+'"></i> <span class="update-title"> <strong>'+item['title']+'</strong> <span>'+item['content']+'</span> </span> <span class="update-date"><span class="update-day">'+item['day']+'</span>'+item['monthYear']+'</span> </div>');				
				}else{
					$("#updateList").append('<div class="new-update clearfix"> <i class="icon-'+item['type']+'"></i> <span class="update-title"> <strong>'+item['title']+'</strong> <span>'+item['content']+'</span> </span> <span class="update-date"><span class="update-day">'+item['day']+'</span>'+item['monthYear']+'</span> </div>');
				}	
			});
			
		},
		complete:function(){
			$("#loadingli").css({display:"none"});
		},
		error:function(){
			alert("Activate database link has expired, please refresh the web pages.");
		}
	});
}


function IndexStatisticFunction(){
	$.ajax({
		type: 'POST',
		dataType:'json',
		data: {},
		url: 'IndexStatisticAction.action',
		beforeSend:function(){
			//$("#loading").append("<li id='loadingli'>loading...</li>");
		},
		success:function(json){
			var speciesList = json.speciesList;
			var SEcount = json.SEcount;
			var TFcount = json.TFcount;
			var cellTypeCount = json.cellTypeCount;
			var averageCount = new Array(speciesList.length);
			var sumSE = 0;
			var sumTF = 0;
			var sumCell = 0;
			
			for(var i = 0; i < speciesList.length; i++) {
				//averageCount[i]=(SEcount[i]+TFcount[i]+cellTypeCount[i])/4;
				averageCount[i]=0;
				sumSE = sumSE+SEcount[i];
				sumTF = sumTF+TFcount[i];
				sumCell = sumCell+cellTypeCount[i];
			}
			
		    $('#container').highcharts({
		        title: {
		            text: 'Combination Chart of Data Information in SEA'
		        },
		        exporting:{
		        	enabled:false
		        },
		        yAxis: {
					// Y轴采用对数坐标轴
					type: 'logarithmic'
			    }, 
		        xAxis: {
		            categories: speciesList
		        },
		        labels: {
		            items: [{
		                html: 'Total Data Records',
		                style: {
		                    left: '180px',
		                    top: '-20px',
		                    color: (Highcharts.theme && Highcharts.theme.textColor) || 'black'
		                }
		            }]
		        },
		        series: [{
		            type: 'column',
		            name: 'Super-Enhancers',
		            data: SEcount
		        }, {
		            type: 'column',
		            name: 'Transcription Factor Binding Sites',
		            data: TFcount
		        }, {
		            type: 'column',
		            name: 'Cell/Tissue Types',
		            data: cellTypeCount
		        }, {
		            type: 'spline',
		            name: 'Average',
		            data: averageCount,
		            marker: {
		                lineWidth: 2,
		                lineColor: Highcharts.getOptions().colors[3],
		                fillColor: 'white'
		            }
		        }, {
		            type: 'pie',
		            name: 'Total Records',
		            data: [{
		                name: 'Super-Enhancers',
		                y: sumSE,
		                color: Highcharts.getOptions().colors[0] // SE's color
		            }, {
		                name: 'Transcription Factor Binding Sites',
		                y: sumTF,
		                color: Highcharts.getOptions().colors[1] // TF's color
		            }, {
		                name: 'Cell/Tissue Types',
		                y: sumCell,
		                color: Highcharts.getOptions().colors[2] // Cell's color
		            }],
		            center: [200, 20],
		            size: 70,
		            showInLegend: false,
		            dataLabels: {
		                enabled: false
		            }
		        }]
		    });
			
		},
		complete:function(){
			//$("#loadingli").css({display:"none"});
		},
		error:function(){
			alert("Activate database link has expired, please refresh the web pages.");
		}
	});
}