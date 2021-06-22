<%@ page language="java" contentType="text/html; charset=UTF-8"
	pageEncoding="UTF-8"%>
<%@ taglib prefix="s" uri="/struts-tags"%>
<!DOCTYPE html>
<html>
<head>
<meta http-equiv="Content-Type" content="text/html; charset=utf-8" />
<meta http-equiv="X-UA-Compatible" content="IE=10; text/html; charset=utf-8" />
<link rel="stylesheet" href="css/1/style.css" media="screen" type="text/css" /> <!-- 导航-->
<title>detail</title>
<link rel="shortcut icon" href="images/dd.ico" />
<title>HHMD</title>
<style type="text/css">
img{border:none}
body{
background:#FFFFFF;
}
.datatable th,.datatable td
{
    
    border:0px solid 	#006093;
    padding-left:18px;
    padding-right:8px;
    padding-top:8px;
   padding-bottom:8px;
    
   
}





body {
	font-family:  Arial;
		font-size:16px;
	 
	}
p{
 text-align: left;
}	
a:link {color: #003F5F} 
a:link,a:visited{
 text-decoration:none;  /*超链接无下划线*/
}
a:hover{
	text-decoration:none;  /*鼠标放上去有下划线*/
}
 
body {
	margin:0 auto;
	width:1100px;
	
	

}
p.p0 {
margin:0pt;
margin-bottom:0pt;
margin-top:0pt;
text-align:justify;
font-size:13.5000pt;
font-family:'Times New Roman';
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
	height:700px;
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
	top: 895px;
	background: url(images/bg003.gif)
}
</style>

</head>

<body>
<div style=" margin:0 auto;width:1100px;height:135px;
	z-index:1;" ><a  href="home.jsp"><img src="images/hhmd1.png"   style="height: 190px; width: 1070px"/></a></div>
<!-- 导航栏 -->
<div class="top" style="margin:0 auto;margin-top:10px;width:1200px;height:50px;z-index: 99999;position: relative">
	  <link href="css/font-awesome.css" rel="stylesheet">
		<ul id="breadcrumb">
		  <li><a href="home.jsp"><span class="icon icon-home"> </span>&nbsp;Home</a></li>
		  <li><a href="browse.jsp"><span class="icon icon-double-angle-right"> </span>&nbsp; Browse</a></li>
		  <li><a href="search.jsp"><span class="icon icon-double-angle-right"></span> &nbsp;Search</a></li>
		  <li><a href="download.jsp"><span class="icon icon-arrow-down"> </span>&nbsp; Download</a></li>
		  <li><a href="Difftools.jsp"><span class="icon icon-gear"> </span>&nbsp; DiffTools</a>
		  <li><a href="network.jsp"><span class="icon icon-rocket"> </span>&nbsp; HM_Gene_Net</a>
		  </li>
		   <!--  <li><a href="m6aprotein.jsp"><span class="icon-beaker"> </span>&nbsp;  m<sup>6</sup>A-Regulator</a></li>-->
		  <li><a href="help.jsp"><span class="icon-beaker"> </span>&nbsp; Help</a></li>
		</ul>
   

</div>
<div  style="margin:0 auto;-moz-box-shadow:1px 3px 20px #003F5F, 2px 2px 5px #003F5F; -webkit-box-shadow:1px 3px 20px #003F5F, 2px 2px 5px #003F5F; box-shadow:1px 3px 20px #003F5F, 2px 2px 5px #003F5F;width:1250px;height:1200px;z-index:3;background:#FFFFFF;"  >


<p>&nbsp;</p>
<p>&nbsp;&nbsp;&nbsp;&nbsp;<font size="+2" style=" font-family:Cambria" color="#003F5F"><em>&nbsp;&nbsp;Detail</em></font></p>


<p>&nbsp;</p>

<div style="width:95%;margin:auto">

<s:iterator value="#request.detail_List"><table>
<p><em><strong><font color="#003F5F">Basic Information:</font></strong></em></p>
<p>&nbsp;</p>
<tbody>
<table width="1000" class="datatable"  >





<tr ><td width="150" height="40" align="right" >Disease</td><td align="left" bgcolor="#D2F7FF"><s:property value="disease"></s:property></td></tr>

<tr ><td height="40" align="right" >Gene</td><td align="left" bgcolor="#A9E0ED"><s:property value="methylation_site"></s:property></td></tr>

<tr ><td height="40" align="right">Protein <font size="-2"></font></td><td bgcolor="#D2F7FF" align="left"><s:property value="protein"></s:property></td></tr>
<tr ><td height="40" align="right">Regulatory pattern<font size="-2"></font></td><td bgcolor="#A9E0ED"  align="left"><s:property value="regulatory"></s:property></td></tr>


<tr ><td height="40" align="right">Genomic location</td><td bgcolor="#D2F7FF" align="left"><s:property value="genomic_location"></s:property></td></tr>
<tr ><td height="40" align="right">Differential expression<sup>TCGA</sup></td><td bgcolor="#A9E0ED" align="left"> <s:property value="geneid"/></a></td></tr>
<tr ><td height="40" align="right">Tissue</td><td bgcolor="#A9E0ED" align="left"><s:property value="tissue"></s:property></td></tr>
<tr ><td height="40" align="right">Method</td><td bgcolor="#D2F7FF" align="left"><s:property value="method"></s:property></td></tr>
<tr ><td height="40" align="right">Species</td><td bgcolor="#D2F7FF" align="left"><s:property value="species"></s:property></td></tr>
<tr ><td height="40" align="right">Organ</td><td bgcolor="#D2F7FF" align="left"><s:property value="organ"></s:property></td></tr>

</table>
<p>&nbsp;</p>
<p><em><strong><font color="#003F5F">References:</font></strong></em></p>
<p>&nbsp;</p>
<table class="datatable" width="1000" >
<tr ><td height="40" align="right" width="150">PMID</td><td align="left" bgcolor="#A9E0ED"><a href="http://www.ncbi.nlm.nih.gov/pubmed/?term=<s:property value="pmid"/>" target="_blank"><s:property value="pmid"/></a></td></tr>
<tr><td height="40" align="right" >Title</td><td align="left" bgcolor="#D2F7FF"><s:property value="title"></s:property></td></tr>
<tr ><td align="right">Description</td>
<td align="left" bgcolor="#A9E0ED"><s:property value="description"></s:property></td></tr>

</table>
</tbody>

</s:iterator>




</div>
</div>
</div>
<p>&nbsp;</p>


</body>
</html>
