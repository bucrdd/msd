<%@ page language="java" contentType="text/html; charset=UTF-8"
	pageEncoding="UTF-8"%>
<%@ taglib prefix="s" uri="/struts-tags"%>
<!DOCTYPE html>
<html>
<head>
<meta http-equiv="Content-Type" content="text/html; charset=utf-8" />
<meta http-equiv="X-UA-Compatible" content="IE=10; text/html; charset=utf-8" />
<link rel="stylesheet" href="css/style.css" media="screen" type="text/css" /> <!-- 导航-->
<title>M6A</title>
<link rel="shortcut icon" href="images/dd.ico" />


		<link rel="stylesheet" type="text/css" href="css/jquery.dataTables.min.css">
		
		<link rel="stylesheet" type="text/css" href="css/buttons.dataTables.min.css">
		
		<script type="text/javascript" language="javascript" src="js/jquery.js"></script>
		<script type="text/javascript" language="javascript" src="js/jquery.dataTables.js"></script>
		<script type="text/javascript" language="javascript" src="js/dataTables.buttons.min.js"></script>
		<script type="text/javascript" language="javascript" src="js/jszip.min.js"></script>
		<script type="text/javascript" language="javascript" src="js/pdfmake.min.js"></script>
		<script type="text/javascript" language="javascript" src="js/vfs_fonts.js"></script>
		<script type="text/javascript" language="javascript" src="js/buttons.html5.min.js"></script>
		<script>
		$(document).ready(function() {
			$('#example').dataTable({
			"pagingType": "full_numbers",  //显示分页所有
			//stateSave: true   //之前选择的分页
			//"searching":true,   //要不要搜索框
			//"scrollY":"200px",     //垂直滚动条
			"lengthMenu": [[10, 25, 50, -1], [10, 25, 50, "All"]],  //定制长度
			
			initComplete: function () {    //加下拉菜单
            var api = this.api();
            api.columns().indexes().flatten().each( function ( i ) {
                var column = api.column( i );
                var select = $('<select><option value=""></option></select>')
                    .appendTo( $(column.footer()).empty() )
                    .on( 'change', function () {
                        var val = $.fn.dataTable.util.escapeRegex(
                            $(this).val()
                        );
                        column
                            .search( val ? '^'+val+'$' : '', true, false )
                            .draw();
                    } );
                column.data().unique().sort().each( function ( d, j ) {
                    select.append( '<option value="'+d+'">'+d+'</option>' )
					} );
				} );
			},
			dom: 'Bfrtip',
        buttons: [
            'copyHtml5',
            'excelHtml5',
            'csvHtml5'
        ]
			});
		});
		</script>
<style type="text/css">
img{border:none}
body{
background:#FFFFFF;
}
.datatable tr:hover,.datatable tr.hilite
    {
    background-color:#CCC;
    color:#0000CC;
    }

.datatable th,.datatable td
{
    text-align:left;
    border:1px solid 	#ADADAD;
    padding-left:3px;
    padding-top:3px;
    padding-bottom:3px;
    padding-left:3px;
    padding-right:3px;
}
img{
border:0px;}

<!--
.thumbnail span{position:relative;z-index:0;}
.thumbnail:hover{background-color:transparent;z-index:50;}
.thumbnail span{}
.thumbnail span img{border-width:0;padding:2px;position:absolute;background-color:#FFFFE0;left:-1000px;border:1px dashed gray;visibility:hidden;color:#000;text-decoration:none;padding:5px;}
.thumbnail:hover img{visibility:visible;top:-30px;left:0px;}

-->
body,td,th {
	font-family: Verdana, Geneva, sans-serif;
	font-size: 11px;
	}
a:link {color: #B71D1D} 
a:link,a:visited{
 text-decoration:none;  /*超链接无下划线*/
}
a:hover{
	text-decoration:none;  /*鼠标放上去有下划线*/
}
 
body {
	margin:0 auto;
	width:1100px;
	
	background-repeat: repeat;
}
p.p0 {
margin:0pt;
margin-bottom:0pt;
margin-top:0pt;
text-align:justify;
font-size:11.5000pt;

}
#apDiv1 {
	position:absolute;
	width:1100px;
	height:150px;
	z-index:1;
}


#apDiv2 {
	position:absolute;
	width:1100px;
	height:25px;
	z-index:2;
	top: 170px;
}
.ys01 {
	color: #000;
}
body,td,th {
	color: #000;
}
#apDiv3 {
	position:absolute;
	width:1100px;
	height:640px;
	z-index:3;
	top: 195px;
	background:url(images/bg009.png)
}
.ys02 {
	font-size: 24px;
	font-style: italic;
	color: #000;
}
#apDiv4 {
	position:absolute;
	width:1100px;
	height:70px;
	z-index:4;
	top: 835px;
	background: url(images/bg003.gif)
}


</style>

</head>

<body>


<div>
<p>&nbsp;</p>
<p>&nbsp;</p>

<div style="width:95%;margin:auto;height:500px;">
<table border="0"><tr><td height="10"></td></tr></table>

<table id="example" class="display" cellspacing="0">
<thead>
<tr>

<td bgcolor="#006192">Disease</td>
<td bgcolor="#006192">Visualization</td>
<td bgcolor="#006192">Protein</td>
<td bgcolor="#006192">Node</td>
<td bgcolor="#006192">score</td>

</tr>
</thead>
<tbody>

<tr>


<td>Colon adenocarcinoma(COAD)</td>
<td><a href="images/Colon adenocarcinoma(COAD).jpg" target="_blank">Network Diagram</a></td>
<td>FMR1</td>

<td>ANKRD61</td>
<td>1
</td>
</tr>

<tr>


<td>Colon adenocarcinoma(COAD)</td>
<td><a href="images/Colon adenocarcinoma(COAD).jpg" target="_blank">Network Diagram</a></td>
<td>FMR1</td>

<td>TECTB</td>
<td>1
</td>
</tr>

<tr>


<td>Colon adenocarcinoma(COAD)</td>
<td><a href="images/Colon adenocarcinoma(COAD).jpg" target="_blank">Network Diagram</a></td>
<td>FMR1</td>

<td>MYH8</td>
<td>1
</td>
</tr>

<tr>


<td>Colon adenocarcinoma(COAD)</td>
<td><a href="images/Colon adenocarcinoma(COAD).jpg" target="_blank">Network Diagram</a></td>
<td>FMR1</td>

<td>MAS1</td>
<td>1
</td>
</tr>

<tr>


<td>Colon adenocarcinoma(COAD)</td>
<td><a href="images/Colon adenocarcinoma(COAD).jpg" target="_blank">Network Diagram</a></td>
<td>FMR1</td>

<td>POU5F1B</td>
<td>1
</td>
</tr>

<tr>


<td>Colon adenocarcinoma(COAD)</td>
<td><a href="images/Colon adenocarcinoma(COAD).jpg" target="_blank">Network Diagram</a></td>
<td>FMR1</td>

<td>RAB9B</td>
<td>0.932031471
</td>
</tr>

<tr>


<td>Colon adenocarcinoma(COAD)</td>
<td><a href="images/Colon adenocarcinoma(COAD).jpg" target="_blank">Network Diagram</a></td>
<td>FMR1</td>

<td>FAM72D</td>
<td>0.928873944
</td>
</tr>

<tr>


<td>Colon adenocarcinoma(COAD)</td>
<td><a href="images/Colon adenocarcinoma(COAD).jpg" target="_blank">Network Diagram</a></td>
<td>FMR1</td>

<td>ANKRD18B</td>
<td>0.919334967
</td>
</tr>

<tr>


<td>Colon adenocarcinoma(COAD)</td>
<td><a href="images/Colon adenocarcinoma(COAD).jpg" target="_blank">Network Diagram</a></td>
<td>FMR1</td>

<td>PARD6A</td>
<td>0.910980774
</td>
</tr>

<tr>


<td>Colon adenocarcinoma(COAD)</td>
<td><a href="images/Colon adenocarcinoma(COAD).jpg" target="_blank">Network Diagram</a></td>
<td>FMR1</td>

<td>RERG</td>
<td>0.91051172
</td>
</tr>

<tr>


<td>Colon adenocarcinoma(COAD)</td>
<td><a href="images/Colon adenocarcinoma(COAD).jpg" target="_blank">Network Diagram</a></td>
<td>FMR1</td>

<td>EXOSC5</td>
<td>0.907493687
</td>
</tr>

<tr>


<td>Colon adenocarcinoma(COAD)</td>
<td><a href="images/Colon adenocarcinoma(COAD).jpg" target="_blank">Network Diagram</a></td>
<td>FMR1</td>

<td>RRP9</td>
<td>0.906549273
</td>
</tr>

<tr>


<td>Colon adenocarcinoma(COAD)</td>
<td><a href="images/Colon adenocarcinoma(COAD).jpg" target="_blank">Network Diagram</a></td>
<td>FMR1</td>

<td>KCNJ11</td>
<td>0.903975961
</td>
</tr>

<tr>


<td>Colon adenocarcinoma(COAD)</td>
<td><a href="images/Colon adenocarcinoma(COAD).jpg" target="_blank">Network Diagram</a></td>
<td>FMR1</td>

<td>GPR19</td>
<td>0.903924382
</td>
</tr>

<tr>


<td>Colon adenocarcinoma(COAD)</td>
<td><a href="images/Colon adenocarcinoma(COAD).jpg" target="_blank">Network Diagram</a></td>
<td>FMR1</td>

<td>PRKG2</td>
<td>0.902300583
</td>
</tr>

<tr>


<td>Colon adenocarcinoma(COAD)</td>
<td><a href="images/Colon adenocarcinoma(COAD).jpg" target="_blank">Network Diagram</a></td>
<td>FMR1</td>

<td>UPK1B</td>
<td>0.902149269
</td>
</tr>

<tr>


<td>Colon adenocarcinoma(COAD)</td>
<td><a href="images/Colon adenocarcinoma(COAD).jpg" target="_blank">Network Diagram</a></td>
<td>FMR1</td>

<td>DNAH5</td>
<td>0.899382986
</td>
</tr>

<tr>


<td>Colon adenocarcinoma(COAD)</td>
<td><a href="images/Colon adenocarcinoma(COAD).jpg" target="_blank">Network Diagram</a></td>
<td>FMR1</td>

<td>IRAK2</td>
<td>0.898713913
</td>
</tr>

<tr>


<td>Colon adenocarcinoma(COAD)</td>
<td><a href="images/Colon adenocarcinoma(COAD).jpg" target="_blank">Network Diagram</a></td>
<td>FMR1</td>

<td>RHOD</td>
<td>0.897201559
</td>
</tr>

<tr>


<td>Colon adenocarcinoma(COAD)</td>
<td><a href="images/Colon adenocarcinoma(COAD).jpg" target="_blank">Network Diagram</a></td>
<td>FMR1</td>

<td>HGH1</td>
<td>0.897104521
</td>
</tr>

<tr>


<td>Colon adenocarcinoma(COAD)</td>
<td><a href="images/Colon adenocarcinoma(COAD).jpg" target="_blank">Network Diagram</a></td>
<td>FMR1</td>

<td>PKD1L3</td>
<td>0.896250969
</td>
</tr>

<tr>


<td>Colon adenocarcinoma(COAD)</td>
<td><a href="images/Colon adenocarcinoma(COAD).jpg" target="_blank">Network Diagram</a></td>
<td>FMR1</td>

<td>SCGB2A1</td>
<td>0.896082606
</td>
</tr>

<tr>


<td>Colon adenocarcinoma(COAD)</td>
<td><a href="images/Colon adenocarcinoma(COAD).jpg" target="_blank">Network Diagram</a></td>
<td>FMR1</td>

<td>MELK</td>
<td>0.895551782
</td>
</tr>

<tr>


<td>Colon adenocarcinoma(COAD)</td>
<td><a href="images/Colon adenocarcinoma(COAD).jpg" target="_blank">Network Diagram</a></td>
<td>FMR1</td>

<td>AMH</td>
<td>0.894764841
</td>
</tr>

<tr>


<td>Colon adenocarcinoma(COAD)</td>
<td><a href="images/Colon adenocarcinoma(COAD).jpg" target="_blank">Network Diagram</a></td>
<td>FMR1</td>

<td>PDK4</td>
<td>0.893888544
</td>
</tr>

<tr>


<td>Colon adenocarcinoma(COAD)</td>
<td><a href="images/Colon adenocarcinoma(COAD).jpg" target="_blank">Network Diagram</a></td>
<td>FMR1</td>

<td>ULBP2</td>
<td>0.893091358
</td>
</tr>

<tr>


<td>Colon adenocarcinoma(COAD)</td>
<td><a href="images/Colon adenocarcinoma(COAD).jpg" target="_blank">Network Diagram</a></td>
<td>FMR1</td>

<td>RTN4RL2</td>
<td>0.891529302
</td>
</tr>

<tr>


<td>Colon adenocarcinoma(COAD)</td>
<td><a href="images/Colon adenocarcinoma(COAD).jpg" target="_blank">Network Diagram</a></td>
<td>FMR1</td>

<td>HUNK</td>
<td>0.891498113
</td>
</tr>

<tr>


<td>Colon adenocarcinoma(COAD)</td>
<td><a href="images/Colon adenocarcinoma(COAD).jpg" target="_blank">Network Diagram</a></td>
<td>FMR1</td>

<td>RAB39B</td>
<td>0.889917925
</td>
</tr>

<tr>


<td>Colon adenocarcinoma(COAD)</td>
<td><a href="images/Colon adenocarcinoma(COAD).jpg" target="_blank">Network Diagram</a></td>
<td>FMR1</td>

<td>SRMS</td>
<td>0.889866979
</td>
</tr>

<tr>


<td>Colon adenocarcinoma(COAD)</td>
<td><a href="images/Colon adenocarcinoma(COAD).jpg" target="_blank">Network Diagram</a></td>
<td>FMR1</td>

<td>GSC</td>
<td>0.889116866
</td>
</tr>

<tr>


<td>Colon adenocarcinoma(COAD)</td>
<td><a href="images/Colon adenocarcinoma(COAD).jpg" target="_blank">Network Diagram</a></td>
<td>FMR1</td>

<td>RDM1</td>
<td>0.888814616
</td>
</tr>

<tr>


<td>Colon adenocarcinoma(COAD)</td>
<td><a href="images/Colon adenocarcinoma(COAD).jpg" target="_blank">Network Diagram</a></td>
<td>FMR1</td>

<td>VNN1</td>
<td>0.888107344
</td>
</tr>

<tr>


<td>Colon adenocarcinoma(COAD)</td>
<td><a href="images/Colon adenocarcinoma(COAD).jpg" target="_blank">Network Diagram</a></td>
<td>FMR1</td>

<td>HBE1</td>
<td>0.887716273
</td>
</tr>

<tr>


<td>Colon adenocarcinoma(COAD)</td>
<td><a href="images/Colon adenocarcinoma(COAD).jpg" target="_blank">Network Diagram</a></td>
<td>FMR1</td>

<td>KRT35</td>
<td>0.886720059
</td>
</tr>

<tr>


<td>Colon adenocarcinoma(COAD)</td>
<td><a href="images/Colon adenocarcinoma(COAD).jpg" target="_blank">Network Diagram</a></td>
<td>FMR1</td>

<td>RASL10B</td>
<td>0.886556292
</td>
</tr>

<tr>


<td>Colon adenocarcinoma(COAD)</td>
<td><a href="images/Colon adenocarcinoma(COAD).jpg" target="_blank">Network Diagram</a></td>
<td>FMR1</td>

<td>CPA3</td>
<td>0.886052109
</td>
</tr>

<tr>


<td>Colon adenocarcinoma(COAD)</td>
<td><a href="images/Colon adenocarcinoma(COAD).jpg" target="_blank">Network Diagram</a></td>
<td>FMR1</td>

<td>SOX15</td>
<td>0.884798943
</td>
</tr>

<tr>


<td>Colon adenocarcinoma(COAD)</td>
<td><a href="images/Colon adenocarcinoma(COAD).jpg" target="_blank">Network Diagram</a></td>
<td>FMR1</td>

<td>KCNH4</td>
<td>0.88455035
</td>
</tr>

<tr>


<td>Colon adenocarcinoma(COAD)</td>
<td><a href="images/Colon adenocarcinoma(COAD).jpg" target="_blank">Network Diagram</a></td>
<td>FMR1</td>

<td>RAET1L</td>
<td>0.884251486
</td>
</tr>

<tr>


<td>Colon adenocarcinoma(COAD)</td>
<td><a href="images/Colon adenocarcinoma(COAD).jpg" target="_blank">Network Diagram</a></td>
<td>FMR1</td>

<td>RAET1G</td>
<td>0.883813752
</td>
</tr>

<tr>


<td>Colon adenocarcinoma(COAD)</td>
<td><a href="images/Colon adenocarcinoma(COAD).jpg" target="_blank">Network Diagram</a></td>
<td>FMR1</td>

<td>FAM72C</td>
<td>0.883804603
</td>
</tr>

<tr>


<td>Colon adenocarcinoma(COAD)</td>
<td><a href="images/Colon adenocarcinoma(COAD).jpg" target="_blank">Network Diagram</a></td>
<td>FMR1</td>

<td>LYPD3</td>
<td>0.883508663
</td>
</tr>

<tr>


<td>Colon adenocarcinoma(COAD)</td>
<td><a href="images/Colon adenocarcinoma(COAD).jpg" target="_blank">Network Diagram</a></td>
<td>FMR1</td>

<td>LY6D</td>
<td>0.88307962
</td>
</tr>

<tr>


<td>Colon adenocarcinoma(COAD)</td>
<td><a href="images/Colon adenocarcinoma(COAD).jpg" target="_blank">Network Diagram</a></td>
<td>FMR1</td>

<td>LYPD8</td>
<td>0.880559457
</td>
</tr>

<tr>


<td>Colon adenocarcinoma(COAD)</td>
<td><a href="images/Colon adenocarcinoma(COAD).jpg" target="_blank">Network Diagram</a></td>
<td>FMR1</td>

<td>LY6G6C</td>
<td>0.88007785
</td>
</tr>

<tr>


<td>Colon adenocarcinoma(COAD)</td>
<td><a href="images/Colon adenocarcinoma(COAD).jpg" target="_blank">Network Diagram</a></td>
<td>FMR1</td>

<td>HOXC11</td>
<td>0.879029886
</td>
</tr>

<tr>


<td>Colon adenocarcinoma(COAD)</td>
<td><a href="images/Colon adenocarcinoma(COAD).jpg" target="_blank">Network Diagram</a></td>
<td>FMR1</td>

<td>GIMAP7</td>
<td>0.878667099
</td>
</tr>

<tr>


<td>Colon adenocarcinoma(COAD)</td>
<td><a href="images/Colon adenocarcinoma(COAD).jpg" target="_blank">Network Diagram</a></td>
<td>FMR1</td>

<td>KRTAP3-1</td>
<td>0.878653459
</td>
</tr>

<tr>


<td>Colon adenocarcinoma(COAD)</td>
<td><a href="images/Colon adenocarcinoma(COAD).jpg" target="_blank">Network Diagram</a></td>
<td>FMR1</td>

<td>BHLHE40</td>
<td>0.878595545
</td>
</tr>

<tr>


<td>Colon adenocarcinoma(COAD)</td>
<td><a href="images/Colon adenocarcinoma(COAD).jpg" target="_blank">Network Diagram</a></td>
<td>FMR1</td>

<td>FOXD2</td>
<td>0.878247239
</td>
</tr>

<tr>


<td>Colon adenocarcinoma(COAD)</td>
<td><a href="images/Colon adenocarcinoma(COAD).jpg" target="_blank">Network Diagram</a></td>
<td>FMR1</td>

<td>GPR87</td>
<td>0.877914197
</td>
</tr>

<tr>


<td>Colon adenocarcinoma(COAD)</td>
<td><a href="images/Colon adenocarcinoma(COAD).jpg" target="_blank">Network Diagram</a></td>
<td>FMR1</td>

<td>KCNMB1</td>
<td>0.877139103
</td>
</tr>

<tr>


<td>Colon adenocarcinoma(COAD)</td>
<td><a href="images/Colon adenocarcinoma(COAD).jpg" target="_blank">Network Diagram</a></td>
<td>FMR1</td>

<td>ANKK1</td>
<td>0.876732553
</td>
</tr>

<tr>


<td>Colon adenocarcinoma(COAD)</td>
<td><a href="images/Colon adenocarcinoma(COAD).jpg" target="_blank">Network Diagram</a></td>
<td>FMR1</td>

<td>SCNN1G</td>
<td>0.876386654
</td>
</tr>

<tr>


<td>Colon adenocarcinoma(COAD)</td>
<td><a href="images/Colon adenocarcinoma(COAD).jpg" target="_blank">Network Diagram</a></td>
<td>FMR1</td>

<td>NAT10</td>
<td>0.875322846
</td>
</tr>

<tr>


<td>Colon adenocarcinoma(COAD)</td>
<td><a href="images/Colon adenocarcinoma(COAD).jpg" target="_blank">Network Diagram</a></td>
<td>FMR1</td>

<td>ARID3C</td>
<td>0.87528938
</td>
</tr>

<tr>


<td>Colon adenocarcinoma(COAD)</td>
<td><a href="images/Colon adenocarcinoma(COAD).jpg" target="_blank">Network Diagram</a></td>
<td>FMR1</td>

<td>ALX1</td>
<td>0.875243026
</td>
</tr>

<tr>


<td>Colon adenocarcinoma(COAD)</td>
<td><a href="images/Colon adenocarcinoma(COAD).jpg" target="_blank">Network Diagram</a></td>
<td>HNRNPC</td>

<td>TBC1D9</td>
<td>0.898903784
</td>
</tr>

<tr>


<td>Colon adenocarcinoma(COAD)</td>
<td><a href="images/Colon adenocarcinoma(COAD).jpg" target="_blank">Network Diagram</a></td>
<td>HNRNPC</td>

<td>MARCKS</td>
<td>0.894816725
</td>
</tr>

<tr>


<td>Colon adenocarcinoma(COAD)</td>
<td><a href="images/Colon adenocarcinoma(COAD).jpg" target="_blank">Network Diagram</a></td>
<td>HNRNPC</td>

<td>DUSP4</td>
<td>0.890502218
</td>
</tr>

<tr>


<td>Colon adenocarcinoma(COAD)</td>
<td><a href="images/Colon adenocarcinoma(COAD).jpg" target="_blank">Network Diagram</a></td>
<td>HNRNPC</td>

<td>KCNK15</td>
<td>0.89017255
</td>
</tr>

<tr>


<td>Colon adenocarcinoma(COAD)</td>
<td><a href="images/Colon adenocarcinoma(COAD).jpg" target="_blank">Network Diagram</a></td>
<td>HNRNPC</td>

<td>CLDN8</td>
<td>0.889347997
</td>
</tr>

<tr>


<td>Colon adenocarcinoma(COAD)</td>
<td><a href="images/Colon adenocarcinoma(COAD).jpg" target="_blank">Network Diagram</a></td>
<td>HNRNPC</td>

<td>CYP39A1</td>
<td>0.888818237
</td>
</tr>

<tr>


<td>Colon adenocarcinoma(COAD)</td>
<td><a href="images/Colon adenocarcinoma(COAD).jpg" target="_blank">Network Diagram</a></td>
<td>HNRNPC</td>

<td>CLDN9</td>
<td>0.886269865
</td>
</tr>

<tr>


<td>Colon adenocarcinoma(COAD)</td>
<td><a href="images/Colon adenocarcinoma(COAD).jpg" target="_blank">Network Diagram</a></td>
<td>HNRNPC</td>

<td>CLDN16</td>
<td>0.880549469
</td>
</tr>

<tr>


<td>Colon adenocarcinoma(COAD)</td>
<td><a href="images/Colon adenocarcinoma(COAD).jpg" target="_blank">Network Diagram</a></td>
<td>HNRNPC</td>

<td>SMTNL1</td>
<td>0.879926392
</td>
</tr>

<tr>


<td>Colon adenocarcinoma(COAD)</td>
<td><a href="images/Colon adenocarcinoma(COAD).jpg" target="_blank">Network Diagram</a></td>
<td>HNRNPC</td>

<td>EPYC</td>
<td>0.878677602
</td>
</tr>

<tr>


<td>Colon adenocarcinoma(COAD)</td>
<td><a href="images/Colon adenocarcinoma(COAD).jpg" target="_blank">Network Diagram</a></td>
<td>HNRNPC</td>

<td>DUSP2</td>
<td>0.878262552
</td>
</tr>

<tr>


<td>Colon adenocarcinoma(COAD)</td>
<td><a href="images/Colon adenocarcinoma(COAD).jpg" target="_blank">Network Diagram</a></td>
<td>HNRNPC</td>

<td>CYP4Z1</td>
<td>0.877983309
</td>
</tr>

<tr>


<td>Colon adenocarcinoma(COAD)</td>
<td><a href="images/Colon adenocarcinoma(COAD).jpg" target="_blank">Network Diagram</a></td>
<td>HNRNPC</td>

<td>TMEM114</td>
<td>0.783914316
</td>
</tr>

<tr>


<td>Colon adenocarcinoma(COAD)</td>
<td><a href="images/Colon adenocarcinoma(COAD).jpg" target="_blank">Network Diagram</a></td>
<td>HNRNPC</td>

<td>BFSP2</td>
<td>0.765962685
</td>
</tr>

<tr>


<td>Colon adenocarcinoma(COAD)</td>
<td><a href="images/Colon adenocarcinoma(COAD).jpg" target="_blank">Network Diagram</a></td>
<td>HNRNPC</td>

<td>CACNG8</td>
<td>0.759601083
</td>
</tr>

<tr>


<td>Colon adenocarcinoma(COAD)</td>
<td><a href="images/Colon adenocarcinoma(COAD).jpg" target="_blank">Network Diagram</a></td>
<td>HNRNPC</td>

<td>SMPX</td>
<td>0.751601415
</td>
</tr>

<tr>


<td>Colon adenocarcinoma(COAD)</td>
<td><a href="images/Colon adenocarcinoma(COAD).jpg" target="_blank">Network Diagram</a></td>
<td>RBM15B</td>

<td>NXT1</td>
<td>1
</td>
</tr>

<tr>


<td>Colon adenocarcinoma(COAD)</td>
<td><a href="images/Colon adenocarcinoma(COAD).jpg" target="_blank">Network Diagram</a></td>
<td>RBM15B</td>

<td>ANGPTL7</td>
<td>0.910374
</td>
</tr>

<tr>


<td>Colon adenocarcinoma(COAD)</td>
<td><a href="images/Colon adenocarcinoma(COAD).jpg" target="_blank">Network Diagram</a></td>
<td>RBM15B</td>

<td>EXOSC7</td>
<td>0.908728856
</td>
</tr>

<tr>


<td>Colon adenocarcinoma(COAD)</td>
<td><a href="images/Colon adenocarcinoma(COAD).jpg" target="_blank">Network Diagram</a></td>
<td>RBM15B</td>

<td>OMD</td>
<td>0.905667083
</td>
</tr>

<tr>


<td>Colon adenocarcinoma(COAD)</td>
<td><a href="images/Colon adenocarcinoma(COAD).jpg" target="_blank">Network Diagram</a></td>
<td>RBM15B</td>

<td>CDK1</td>
<td>0.904263219
</td>
</tr>

<tr>


<td>Colon adenocarcinoma(COAD)</td>
<td><a href="images/Colon adenocarcinoma(COAD).jpg" target="_blank">Network Diagram</a></td>
<td>RBM15B</td>

<td>MPP6</td>
<td>0.900769214
</td>
</tr>

<tr>


<td>Colon adenocarcinoma(COAD)</td>
<td><a href="images/Colon adenocarcinoma(COAD).jpg" target="_blank">Network Diagram</a></td>
<td>RBM15B</td>

<td>PAFAH1B3</td>
<td>0.898994545
</td>
</tr>

<tr>


<td>Colon adenocarcinoma(COAD)</td>
<td><a href="images/Colon adenocarcinoma(COAD).jpg" target="_blank">Network Diagram</a></td>
<td>RBM15B</td>

<td>MAN1A1</td>
<td>0.895210866
</td>
</tr>

<tr>


<td>Colon adenocarcinoma(COAD)</td>
<td><a href="images/Colon adenocarcinoma(COAD).jpg" target="_blank">Network Diagram</a></td>
<td>RBM15B</td>

<td>RAB40A</td>
<td>0.893385614
</td>
</tr>

<tr>


<td>Colon adenocarcinoma(COAD)</td>
<td><a href="images/Colon adenocarcinoma(COAD).jpg" target="_blank">Network Diagram</a></td>
<td>RBM15B</td>

<td>PPP2R2B</td>
<td>0.890735804
</td>
</tr>

<tr>


<td>Colon adenocarcinoma(COAD)</td>
<td><a href="images/Colon adenocarcinoma(COAD).jpg" target="_blank">Network Diagram</a></td>
<td>RBM15B</td>

<td>TSPAN5</td>
<td>0.886770046
</td>
</tr>

<tr>


<td>Colon adenocarcinoma(COAD)</td>
<td><a href="images/Colon adenocarcinoma(COAD).jpg" target="_blank">Network Diagram</a></td>
<td>RBM15B</td>

<td>NAT2</td>
<td>0.883793781
</td>
</tr>

<tr>


<td>Colon adenocarcinoma(COAD)</td>
<td><a href="images/Colon adenocarcinoma(COAD).jpg" target="_blank">Network Diagram</a></td>
<td>RBM15B</td>

<td>C1QL4</td>
<td>0.882372262
</td>
</tr>

<tr>


<td>Colon adenocarcinoma(COAD)</td>
<td><a href="images/Colon adenocarcinoma(COAD).jpg" target="_blank">Network Diagram</a></td>
<td>RBM15B</td>

<td>CST6</td>
<td>0.882278443
</td>
</tr>

<tr>


<td>Colon adenocarcinoma(COAD)</td>
<td><a href="images/Colon adenocarcinoma(COAD).jpg" target="_blank">Network Diagram</a></td>
<td>RBM15B</td>

<td>EXOSC2</td>
<td>0.882180387
</td>
</tr>

<tr>


<td>Colon adenocarcinoma(COAD)</td>
<td><a href="images/Colon adenocarcinoma(COAD).jpg" target="_blank">Network Diagram</a></td>
<td>RBM15B</td>

<td>CENPJ</td>
<td>0.878389505
</td>
</tr>

<tr>


<td>Colon adenocarcinoma(COAD)</td>
<td><a href="images/Colon adenocarcinoma(COAD).jpg" target="_blank">Network Diagram</a></td>
<td>RBM15B</td>

<td>SLC10A4</td>
<td>0.877896326
</td>
</tr>

<tr>


<td>Colon adenocarcinoma(COAD)</td>
<td><a href="images/Colon adenocarcinoma(COAD).jpg" target="_blank">Network Diagram</a></td>
<td>RBM15B</td>

<td>UGT2B17</td>
<td>0.875515094
</td>
</tr>

<tr>


<td>Colon adenocarcinoma(COAD)</td>
<td><a href="images/Colon adenocarcinoma(COAD).jpg" target="_blank">Network Diagram</a></td>
<td>RBM15B</td>

<td>MCM2</td>
<td>0.838997917
</td>
</tr>

<tr>


<td>Colon adenocarcinoma(COAD)</td>
<td><a href="images/Colon adenocarcinoma(COAD).jpg" target="_blank">Network Diagram</a></td>
<td>RBM15B</td>

<td>MCM7</td>
<td>0.827589918
</td>
</tr>

<tr>


<td>Colon adenocarcinoma(COAD)</td>
<td><a href="images/Colon adenocarcinoma(COAD).jpg" target="_blank">Network Diagram</a></td>
<td>RBM15B</td>

<td>EXOSC8</td>
<td>0.808927055
</td>
</tr>

<tr>


<td>Colon adenocarcinoma(COAD)</td>
<td><a href="images/Colon adenocarcinoma(COAD).jpg" target="_blank">Network Diagram</a></td>
<td>RBM15B</td>

<td>AQP2</td>
<td>0.784511502
</td>
</tr>

<tr>


<td>Colon adenocarcinoma(COAD)</td>
<td><a href="images/Colon adenocarcinoma(COAD).jpg" target="_blank">Network Diagram</a></td>
<td>RBM15B</td>

<td>SULT1B1</td>
<td>0.772513288
</td>
</tr>

<tr>


<td>Colon adenocarcinoma(COAD)</td>
<td><a href="images/Colon adenocarcinoma(COAD).jpg" target="_blank">Network Diagram</a></td>
<td>RBM15B</td>

<td>C1QTNF9</td>
<td>0.77067257
</td>
</tr>

<tr>


<td>Colon adenocarcinoma(COAD)</td>
<td><a href="images/Colon adenocarcinoma(COAD).jpg" target="_blank">Network Diagram</a></td>
<td>RBM15B</td>

<td>SLC35D3</td>
<td>0.770229582
</td>
</tr>

<tr>


<td>Colon adenocarcinoma(COAD)</td>
<td><a href="images/Colon adenocarcinoma(COAD).jpg" target="_blank">Network Diagram</a></td>
<td>RBM15B</td>

<td>EXOSC3</td>
<td>0.769094148
</td>
</tr>

<tr>


<td>Colon adenocarcinoma(COAD)</td>
<td><a href="images/Colon adenocarcinoma(COAD).jpg" target="_blank">Network Diagram</a></td>
<td>RBM15B</td>

<td>UGT1A1</td>
<td>0.767732615
</td>
</tr>

<tr>


<td>Colon adenocarcinoma(COAD)</td>
<td><a href="images/Colon adenocarcinoma(COAD).jpg" target="_blank">Network Diagram</a></td>
<td>RBM15B</td>

<td>CLDN23</td>
<td>0.767338125
</td>
</tr>

<tr>


<td>Colon adenocarcinoma(COAD)</td>
<td><a href="images/Colon adenocarcinoma(COAD).jpg" target="_blank">Network Diagram</a></td>
<td>RBM15B</td>

<td>CATSPER4</td>
<td>0.763043012
</td>
</tr>

<tr>


<td>Colon adenocarcinoma(COAD)</td>
<td><a href="images/Colon adenocarcinoma(COAD).jpg" target="_blank">Network Diagram</a></td>
<td>RBM15B</td>

<td>TMEM236</td>
<td>0.760632282
</td>
</tr>

<tr>


<td>Colon adenocarcinoma(COAD)</td>
<td><a href="images/Colon adenocarcinoma(COAD).jpg" target="_blank">Network Diagram</a></td>
<td>RBM15B</td>

<td>KLRG2</td>
<td>0.759632701
</td>
</tr>

<tr>


<td>Colon adenocarcinoma(COAD)</td>
<td><a href="images/Colon adenocarcinoma(COAD).jpg" target="_blank">Network Diagram</a></td>
<td>RBM15B</td>

<td>CCNA1</td>
<td>0.758509901
</td>
</tr>

<tr>


<td>Colon adenocarcinoma(COAD)</td>
<td><a href="images/Colon adenocarcinoma(COAD).jpg" target="_blank">Network Diagram</a></td>
<td>RBM15B</td>

<td>GALNT12</td>
<td>0.753512389
</td>
</tr>

<tr>


<td>Colon adenocarcinoma(COAD)</td>
<td><a href="images/Colon adenocarcinoma(COAD).jpg" target="_blank">Network Diagram</a></td>
<td>RBM15B</td>

<td>MS4A12</td>
<td>0.750952892
</td>
</tr>

<tr>


<td>Colon adenocarcinoma(COAD)</td>
<td><a href="images/Colon adenocarcinoma(COAD).jpg" target="_blank">Network Diagram</a></td>
<td>YTHDC1</td>

<td>KHDRBS2</td>
<td>1
</td>
</tr>

<tr>


<td>Colon adenocarcinoma(COAD)</td>
<td><a href="images/Colon adenocarcinoma(COAD).jpg" target="_blank">Network Diagram</a></td>
<td>YTHDC1</td>

<td>SUV39H1</td>
<td>0.912220553
</td>
</tr>

<tr>


<td>Colon adenocarcinoma(COAD)</td>
<td><a href="images/Colon adenocarcinoma(COAD).jpg" target="_blank">Network Diagram</a></td>
<td>YTHDC1</td>

<td>ZBTB16</td>
<td>0.896157975
</td>
</tr>

<tr>


<td>Colon adenocarcinoma(COAD)</td>
<td><a href="images/Colon adenocarcinoma(COAD).jpg" target="_blank">Network Diagram</a></td>
<td>YTHDC1</td>

<td>GATA4</td>
<td>0.880894403
</td>
</tr>

<tr>


<td>Colon adenocarcinoma(COAD)</td>
<td><a href="images/Colon adenocarcinoma(COAD).jpg" target="_blank">Network Diagram</a></td>
<td>YTHDC1</td>

<td>FCER2</td>
<td>0.787217659
</td>
</tr>

<tr>


<td>Colon adenocarcinoma(COAD)</td>
<td><a href="images/Colon adenocarcinoma(COAD).jpg" target="_blank">Network Diagram</a></td>
<td>YTHDC1</td>

<td>ICAM3</td>
<td>0.768287494
</td>
</tr>

<tr>


<td>Colon adenocarcinoma(COAD)</td>
<td><a href="images/Colon adenocarcinoma(COAD).jpg" target="_blank">Network Diagram</a></td>
<td>YTHDC1</td>

<td>ITGAX</td>
<td>0.636632165
</td>
</tr>

<tr>


<td>Colon adenocarcinoma(COAD)</td>
<td><a href="images/Colon adenocarcinoma(COAD).jpg" target="_blank">Network Diagram</a></td>
<td>YTHDC2</td>

<td>EXOSC4</td>
<td>1
</td>
</tr>

<tr>


<td>Colon adenocarcinoma(COAD)</td>
<td><a href="images/Colon adenocarcinoma(COAD).jpg" target="_blank">Network Diagram</a></td>
<td>YTHDC2</td>

<td>RTEL1</td>
<td>0.926153287
</td>
</tr>

<tr>


<td>Colon adenocarcinoma(COAD)</td>
<td><a href="images/Colon adenocarcinoma(COAD).jpg" target="_blank">Network Diagram</a></td>
<td>YTHDC2</td>

<td>ASCL2</td>
<td>0.923391307
</td>
</tr>

<tr>


<td>Colon adenocarcinoma(COAD)</td>
<td><a href="images/Colon adenocarcinoma(COAD).jpg" target="_blank">Network Diagram</a></td>
<td>YTHDC2</td>

<td>ANKRD9</td>
<td>0.920528414
</td>
</tr>

<tr>


<td>Colon adenocarcinoma(COAD)</td>
<td><a href="images/Colon adenocarcinoma(COAD).jpg" target="_blank">Network Diagram</a></td>
<td>YTHDC2</td>

<td>POLR3K</td>
<td>0.918628879
</td>
</tr>

<tr>


<td>Colon adenocarcinoma(COAD)</td>
<td><a href="images/Colon adenocarcinoma(COAD).jpg" target="_blank">Network Diagram</a></td>
<td>YTHDC2</td>

<td>S100A11</td>
<td>0.915838865
</td>
</tr>

<tr>


<td>Colon adenocarcinoma(COAD)</td>
<td><a href="images/Colon adenocarcinoma(COAD).jpg" target="_blank">Network Diagram</a></td>
<td>YTHDC2</td>

<td>GRIN2D</td>
<td>0.910623211
</td>
</tr>

<tr>


<td>Colon adenocarcinoma(COAD)</td>
<td><a href="images/Colon adenocarcinoma(COAD).jpg" target="_blank">Network Diagram</a></td>
<td>YTHDC2</td>

<td>ACADL</td>
<td>0.905553239
</td>
</tr>

<tr>


<td>Colon adenocarcinoma(COAD)</td>
<td><a href="images/Colon adenocarcinoma(COAD).jpg" target="_blank">Network Diagram</a></td>
<td>YTHDC2</td>

<td>TFCP2L1</td>
<td>0.899214881
</td>
</tr>

<tr>


<td>Colon adenocarcinoma(COAD)</td>
<td><a href="images/Colon adenocarcinoma(COAD).jpg" target="_blank">Network Diagram</a></td>
<td>YTHDC2</td>

<td>PDCD2L</td>
<td>0.896135783
</td>
</tr>

<tr>


<td>Colon adenocarcinoma(COAD)</td>
<td><a href="images/Colon adenocarcinoma(COAD).jpg" target="_blank">Network Diagram</a></td>
<td>YTHDC2</td>

<td>SYCE3</td>
<td>0.892745411
</td>
</tr>

<tr>


<td>Colon adenocarcinoma(COAD)</td>
<td><a href="images/Colon adenocarcinoma(COAD).jpg" target="_blank">Network Diagram</a></td>
<td>YTHDC2</td>

<td>RAC3</td>
<td>0.892658818
</td>
</tr>

<tr>


<td>Colon adenocarcinoma(COAD)</td>
<td><a href="images/Colon adenocarcinoma(COAD).jpg" target="_blank">Network Diagram</a></td>
<td>YTHDC2</td>

<td>KRTAP5-4</td>
<td>0.89134636
</td>
</tr>

<tr>


<td>Colon adenocarcinoma(COAD)</td>
<td><a href="images/Colon adenocarcinoma(COAD).jpg" target="_blank">Network Diagram</a></td>
<td>YTHDC2</td>

<td>MT2A</td>
<td>0.890009239
</td>
</tr>

<tr>


<td>Colon adenocarcinoma(COAD)</td>
<td><a href="images/Colon adenocarcinoma(COAD).jpg" target="_blank">Network Diagram</a></td>
<td>YTHDC2</td>

<td>PRDM12</td>
<td>0.889472032
</td>
</tr>

<tr>


<td>Colon adenocarcinoma(COAD)</td>
<td><a href="images/Colon adenocarcinoma(COAD).jpg" target="_blank">Network Diagram</a></td>
<td>YTHDC2</td>

<td>CALB1</td>
<td>0.888359038
</td>
</tr>

<tr>


<td>Colon adenocarcinoma(COAD)</td>
<td><a href="images/Colon adenocarcinoma(COAD).jpg" target="_blank">Network Diagram</a></td>
<td>YTHDC2</td>

<td>SYCE2</td>
<td>0.888072708
</td>
</tr>

<tr>


<td>Colon adenocarcinoma(COAD)</td>
<td><a href="images/Colon adenocarcinoma(COAD).jpg" target="_blank">Network Diagram</a></td>
<td>YTHDC2</td>

<td>ARL4D</td>
<td>0.887042859
</td>
</tr>

<tr>


<td>Colon adenocarcinoma(COAD)</td>
<td><a href="images/Colon adenocarcinoma(COAD).jpg" target="_blank">Network Diagram</a></td>
<td>YTHDC2</td>

<td>PNO1</td>
<td>0.885470162
</td>
</tr>

<tr>


<td>Colon adenocarcinoma(COAD)</td>
<td><a href="images/Colon adenocarcinoma(COAD).jpg" target="_blank">Network Diagram</a></td>
<td>YTHDC2</td>

<td>GNMT</td>
<td>0.885033386
</td>
</tr>

<tr>


<td>Colon adenocarcinoma(COAD)</td>
<td><a href="images/Colon adenocarcinoma(COAD).jpg" target="_blank">Network Diagram</a></td>
<td>YTHDC2</td>

<td>EGR4</td>
<td>0.884474658
</td>
</tr>

<tr>


<td>Colon adenocarcinoma(COAD)</td>
<td><a href="images/Colon adenocarcinoma(COAD).jpg" target="_blank">Network Diagram</a></td>
<td>YTHDC2</td>

<td>TFF1</td>
<td>0.883751725
</td>
</tr>

<tr>


<td>Colon adenocarcinoma(COAD)</td>
<td><a href="images/Colon adenocarcinoma(COAD).jpg" target="_blank">Network Diagram</a></td>
<td>YTHDC2</td>

<td>ANP32D</td>
<td>0.883532371
</td>
</tr>

<tr>


<td>Colon adenocarcinoma(COAD)</td>
<td><a href="images/Colon adenocarcinoma(COAD).jpg" target="_blank">Network Diagram</a></td>
<td>YTHDC2</td>

<td>GPC2</td>
<td>0.88220977
</td>
</tr>

<tr>


<td>Colon adenocarcinoma(COAD)</td>
<td><a href="images/Colon adenocarcinoma(COAD).jpg" target="_blank">Network Diagram</a></td>
<td>YTHDC2</td>

<td>CPT2</td>
<td>0.881805983
</td>
</tr>

<tr>


<td>Colon adenocarcinoma(COAD)</td>
<td><a href="images/Colon adenocarcinoma(COAD).jpg" target="_blank">Network Diagram</a></td>
<td>YTHDC2</td>

<td>MESP2</td>
<td>0.880998565
</td>
</tr>

<tr>


<td>Colon adenocarcinoma(COAD)</td>
<td><a href="images/Colon adenocarcinoma(COAD).jpg" target="_blank">Network Diagram</a></td>
<td>YTHDC2</td>

<td>CELA3B</td>
<td>0.880541307
</td>
</tr>

<tr>


<td>Colon adenocarcinoma(COAD)</td>
<td><a href="images/Colon adenocarcinoma(COAD).jpg" target="_blank">Network Diagram</a></td>
<td>YTHDC2</td>

<td>SETSIP</td>
<td>0.880497891
</td>
</tr>

<tr>


<td>Colon adenocarcinoma(COAD)</td>
<td><a href="images/Colon adenocarcinoma(COAD).jpg" target="_blank">Network Diagram</a></td>
<td>YTHDC2</td>

<td>KRT34</td>
<td>0.879985809
</td>
</tr>

<tr>


<td>Colon adenocarcinoma(COAD)</td>
<td><a href="images/Colon adenocarcinoma(COAD).jpg" target="_blank">Network Diagram</a></td>
<td>YTHDC2</td>

<td>DKK4</td>
<td>0.879241985
</td>
</tr>

<tr>


<td>Colon adenocarcinoma(COAD)</td>
<td><a href="images/Colon adenocarcinoma(COAD).jpg" target="_blank">Network Diagram</a></td>
<td>YTHDC2</td>

<td>ELOVL3</td>
<td>0.879233439
</td>
</tr>

<tr>


<td>Colon adenocarcinoma(COAD)</td>
<td><a href="images/Colon adenocarcinoma(COAD).jpg" target="_blank">Network Diagram</a></td>
<td>YTHDC2</td>

<td>ORM1</td>
<td>0.878995925
</td>
</tr>

<tr>


<td>Colon adenocarcinoma(COAD)</td>
<td><a href="images/Colon adenocarcinoma(COAD).jpg" target="_blank">Network Diagram</a></td>
<td>YTHDC2</td>

<td>INHBB</td>
<td>0.878879047
</td>
</tr>

<tr>


<td>Colon adenocarcinoma(COAD)</td>
<td><a href="images/Colon adenocarcinoma(COAD).jpg" target="_blank">Network Diagram</a></td>
<td>YTHDC2</td>

<td>FOXI2</td>
<td>0.878080806
</td>
</tr>

<tr>


<td>Colon adenocarcinoma(COAD)</td>
<td><a href="images/Colon adenocarcinoma(COAD).jpg" target="_blank">Network Diagram</a></td>
<td>YTHDC2</td>

<td>INHBC</td>
<td>0.87781154
</td>
</tr>

<tr>


<td>Colon adenocarcinoma(COAD)</td>
<td><a href="images/Colon adenocarcinoma(COAD).jpg" target="_blank">Network Diagram</a></td>
<td>YTHDC2</td>

<td>SEMA3G</td>
<td>0.877424224
</td>
</tr>

<tr>


<td>Colon adenocarcinoma(COAD)</td>
<td><a href="images/Colon adenocarcinoma(COAD).jpg" target="_blank">Network Diagram</a></td>
<td>YTHDC2</td>

<td>KRT84</td>
<td>0.876857387
</td>
</tr>

<tr>


<td>Colon adenocarcinoma(COAD)</td>
<td><a href="images/Colon adenocarcinoma(COAD).jpg" target="_blank">Network Diagram</a></td>
<td>YTHDC2</td>

<td>MAGEA3</td>
<td>0.875928933
</td>
</tr>

<tr>


<td>Colon adenocarcinoma(COAD)</td>
<td><a href="images/Colon adenocarcinoma(COAD).jpg" target="_blank">Network Diagram</a></td>
<td>YTHDC2</td>

<td>PLIN4</td>
<td>0.875883
</td>
</tr>

<tr>


<td>Colon adenocarcinoma(COAD)</td>
<td><a href="images/Colon adenocarcinoma(COAD).jpg" target="_blank">Network Diagram</a></td>
<td>YTHDC2</td>

<td>AOC3</td>
<td>0.875661781
</td>
</tr>

<tr>


<td>Colon adenocarcinoma(COAD)</td>
<td><a href="images/Colon adenocarcinoma(COAD).jpg" target="_blank">Network Diagram</a></td>
<td>YTHDC2</td>

<td>AQP5</td>
<td>0.875466239
</td>
</tr>

<tr>


<td>Colon adenocarcinoma(COAD)</td>
<td><a href="images/Colon adenocarcinoma(COAD).jpg" target="_blank">Network Diagram</a></td>
<td>YTHDC2</td>

<td>INHA</td>
<td>0.875024436
</td>
</tr>

</tbody>
</table>
</div>
 
</div>

</body>
</html>
