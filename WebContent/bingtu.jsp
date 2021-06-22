<%@ page language="java" contentType="text/html; charset=UTF-8"
	pageEncoding="UTF-8"%>
<%@ taglib prefix="s" uri="/struts-tags"%>
<!DOCTYPE html PUBLIC "-//W3C//DTD HTML 4.01 Transitional//EN" "http://www.w3.org/TR/html4/loose.dtd">
<html>
<head>
<meta http-equiv="Content-Type" content="text/html; charset=ISO-8859-1">
<title>Insert title here</title>
	<script src="js/jquery-1.8.3.min.js"></script>
	<script src="js/highcharts.js"></script>
	 <script src="js/echarts.min.js"></script> 
</head>
<body>
<div style="margin-left:0px;width:240px; height:690px;float:left;position:relative;">
<div id="main" style="min-width:240px;height:330px">
		<!--饼图-->
				<script>
var chartDom = document.getElementById('main');
var myChart = echarts.init(chartDom);
var option;

option = {
title: {
        text: 'Disease Tissues',
        left: 'center',
        top:'10'
    },
    tooltip: {
        trigger: 'item',
        formatter: '{a} <br/>{b} : {c} ({d}%)'
    },
    series: [
        {
            name: 'Disease Tissues',
            type: 'pie',
            radius: [10, 100],
            center: ['50%', '50%'],
            roseType: 'radius',
            top:50,
            
            itemStyle: {
                borderRadius: 2
            },
            label: {
                show: false
            },
            emphasis: {
                label: {
                    show: false
                }
            },
            data: [
                {value: 40, name: 'Breast cancer'},
                {value: 33, name: 'DT 2'},
                {value: 28, name: 'DT 3'},
                {value: 22, name: 'DT 4'},
                {value: 20, name: 'DT 5'},
                {value: 15, name: 'DT 6'},
                {value: 12, name: 'DT 7'},
                {value: 10, name: 'DT 8'},
                {value: 50, name: 'DT 9'}
            ]
        }
    ]
};

option && myChart.setOption(option);
				
	
</script>
	</div>
<div id="main1" style="min-width:240px;height:330px">
		<!--饼图-->
				<script>
var chartDom = document.getElementById('main1');
var myChart = echarts.init(chartDom);
var option;

option = {
title: {
        text: 'Normal Tissues',
        left: 'center',
        top:'10'
    },
    tooltip: {
        trigger: 'item',
        formatter: '{a} <br/>{b} : {c} ({d}%)'
    },
    series: [
        {
            name: 'Normal Tissues',
            type: 'pie',
            radius: [10, 100],
            center: ['50%', '50%'],
            roseType: 'area',
             top:50,
            itemStyle: {
                borderRadius: 2
            },label: {
                show: false
            },
            emphasis: {
                label: {
                    show:false
                }
            },
            data: [
                {value: 30, name: 'NT 1'},
                {value: 28, name: 'NT 2'},
                {value: 26, name: 'NT 3'},
                {value: 24, name: 'NT 4'},
                {value: 22, name: 'NT 5'},
                {value: 20, name: 'NT 6'},
                {value: 18, name: 'NT 7'},
                {value: 16, name: 'NT 8'}
            ]
        }
    ]
};

option && myChart.setOption(option);
				
	
</script>
	</div>
	</div>
	<div style="margin-left:0px;width:240px; height:690px;float:left;position:relative;">
	<div id="main2" style="min-width:240px;height:330px">
		<!--饼图-->
				<script>
				
var chartDom = document.getElementById('main2');
var myChart = echarts.init(chartDom);
var option;

option = {
title: {
        text: 'Disease CellLines',
        left: 'center',
        top:'10'
    },
    tooltip: {
        trigger: 'item',
        formatter: '{a} <br/>{b} : {c} ({d}%)'
    },
    series: [
        {
            name: 'Disease CellLines',
            type: 'pie',
            radius: [10, 100],
            center: ['50%', '50%'],
            roseType: 'radius',
             top:50,
            itemStyle: {
                borderRadius: 2
            },
            label: {
                show: false
            },
            emphasis: {
                label: {
                    show: false
                }
            },
            data: [
                {value: 40, name: 'DC 1'},
                {value: 33, name: 'DC 2'},
                {value: 28, name: 'DC 3'},
                {value: 22, name: 'DC 4'},
                {value: 20, name: 'DC 5'},
                {value: 15, name: 'DC 6'},
                {value: 12, name: 'DC 7'},
                {value: 10, name: 'DC 8'}
            ]
        }
    ]
};

option && myChart.setOption(option);
				
	
</script>
	</div>
	
<div id="main3" style="min-width:240px;height:330px">
		<!--饼图-->
				<script>
				
var chartDom = document.getElementById('main3');
var myChart = echarts.init(chartDom);
var option;

option = {
title: {
        text: 'Normal CellLines',
        left: 'center',
        top:'10'
    },
    tooltip: {
        trigger: 'item',
        formatter: '{a} <br/>{b} : {c} ({d}%)'
    },
    series: [
        {
            name: 'Normal CellLines',
            type: 'pie',
            radius: [10, 100],
            center: ['50%', '50%'],
            roseType: 'area',
            top:50,
            itemStyle: {
                borderRadius: 2
            },label: {
                show: false
            },
            emphasis: {
                label: {
                    show:false
                }
            },
            data: [
                {value: 30, name: 'NC 1'},
                {value: 28, name: 'NC 2'},
                {value: 26, name: 'NC 3'},
                {value: 24, name: 'NC 4'},
                {value: 22, name: 'NC 5'},
                {value: 20, name: 'NC 6'},
                {value: 18, name: 'NC 7'},
                {value: 16, name: 'NC 8'}
            ]
        }
    ]
};

option && myChart.setOption(option);
				
	
</script>
	</div>
	</div>
</body>
</html>