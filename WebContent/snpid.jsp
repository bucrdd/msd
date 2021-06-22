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
<s:iterator value="#request.snpid_List">
<tr>


<td><s:property value="disease"></s:property></td>
<td><a href="images/<s:property value="disease"/>.jpg" target="_blank">Network Diagram</a></td>
<td><s:property value="protein"></s:property></td>

<td><s:property value="node"></s:property></td>
<td><s:property value="score"></s:property></td>
</tr>
</s:iterator>
</tbody>
</table>
</div>
 
</div>

</body>
</html>
