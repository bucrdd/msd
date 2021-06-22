<%@ page language="java" contentType="text/html; charset=UTF-8"
	pageEncoding="UTF-8"%>
<%@ taglib prefix="s" uri="/struts-tags"%>
<!DOCTYPE html PUBLIC "-//W3C//DTD XHTML 1.0 Transitional//EN" "http://www.w3.org/TR/xhtml1/DTD/xhtml1-transitional.dtd">
<html xmlns="http://www.w3.org/1999/xhtml">
<head>
<meta http-equiv="Content-Type" content="text/html; charset=utf-8" />
<title></title>

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

<!--
.thumbnail span{position:relative;z-index:0;}
.thumbnail:hover{background-color:transparent;z-index:50;}
.thumbnail span{}
.thumbnail span img{border-width:0;padding:2px;position:absolute;background-color:#FFFFE0;left:-1000px;border:1px dashed gray;visibility:hidden;color:#000;text-decoration:none;padding:5px;}
.thumbnail:hover img{visibility:visible;top:-30px;left:0px;}

-->
body,td,th {
	font-family: Verdana, Geneva, sans-serif;
	font-size:15px;
	}
a:link,a:visited{
 text-decoration:none;  /*超链接无下划线*/
}
a:hover{
	text-decoration:none;  /*鼠标放上去有下划线*/
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
	font-style: italic;s
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
#apDiv5 {
	position:absolute;
	width:461px;
	height:640px;
	z-index:5;
	background-image: url(images/man.png);
}
#apDiv6 {
	position:absolute;
	width:23px;
	height:23px;
	z-index:1;
	left: 239px;
	top: 14px;
}
#apDiv7 {
	position:absolute;
	width:25px;
	height:34px;
	z-index:1;
	left: 1px;
	top: 45px;
}
#apDiv8 {
	position:absolute;
	width:20px;
	height:20px;
	z-index:1;
	left: -5px;
	top: 90px;
}
#apDiv9 {
	position:absolute;
	width:20px;
	height:20px;
	z-index:1;
	left: -9px;
	top: 51px;
}
#apDiv10 {
	position:absolute;
	width:20px;
	height:20px;
	z-index:1;
	left: -25px;
	top: -42px;
}
#apDiv11 {
	position:absolute;
	width:20px;
	height:20px;
	z-index:1;
	left: -3px;
	top: 60px;
}
#apDiv12 {
	position:absolute;
	width:20px;
	height:20px;
	z-index:1;
	left: 31px;
	top: 42px;
}

</style>

</head>

<body>



<div style="width:95%;margin:auto">
<table width="750" align="center" border="1" bordercolor="#999999" >

<thead >
<tr>

<td width="15%" bgcolor="#006192"><font color="#FFFFFF">Disease</font></td>
<td width="15%" bgcolor="#006192"><font color="#FFFFFF">Gene</font></td>

<td width="15%" bgcolor="#006192"><font color="#FFFFFF">Protein</font></td>
<td width="15%" bgcolor="#006192"><font color="#FFFFFF">Regulatory</font></td>

<td width="30%" bgcolor="#006192"><font color="#FFFFFF">Differential expression<sup>TCGA</sup></font></td>


<td bgcolor="#006192"><font color="#FFFFFF">Detail</font></td>

</tr>
</thead>
<tbody>



</tbody>
</table>
</div><s:iterator value="#request.gene_List">
<tr>

<td><s:property value="disease" /></td>
<td><s:property value="methylation_site" /></td>

<td><s:property value="protein" /></td>
<td><s:property value="regulatory" /></td>
<td><s:property value="geneid" /></td>

<td><a href='detail?detail=<s:property value="pmid"/>&geneid=<s:property value="geneid"/>&methylation_site=<s:property value="methylation_site"/>&species=<s:property value="species"/>&disease=<s:property value="disease"/>&regulatory=<s:property value="regulatory" />' target="_blank">detail</a></td>






</tr>
</s:iterator>


 


</body>
</html>
