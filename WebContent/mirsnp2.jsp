<%@ page language="java" contentType="text/html; charset=UTF-8"
	pageEncoding="UTF-8"%>
<%@ taglib prefix="s" uri="/struts-tags"%>
<!DOCTYPE html PUBLIC "-//W3C//DTD XHTML 1.0 Transitional//EN" "http://www.w3.org/TR/xhtml1/DTD/xhtml1-transitional.dtd">
<html xmlns="http://www.w3.org/1999/xhtml">
<head>
<meta http-equiv="Content-Type" content="text/html; charset=utf-8" />
<title></title>
<style type="text/css">
div{
overflow: auto;
}/*div中存在下拉条*/
<!--
.thumbnail span{position:relative;z-index:0;}
.thumbnail:hover{background-color:transparent;z-index:50;}
.thumbnail span{}
.thumbnail span img{border-width:0;padding:2px;position:absolute;background-color:#FFFFE0;left:-1000px;border:1px dashed gray;visibility:hidden;color:#000;text-decoration:none;padding:5px;}
.thumbnail:hover img{visibility:visible;top:-30px;left:0px;}

-->
body,td,th {
	font-family: Verdana, Geneva, sans-serif;
	}
a:link,a:visited{
 text-decoration:none;  /*超链接无下划线*/
}
a:hover{
	text-decoration:none;  /*鼠标放上去有下划线*/
}
 
body {
	margin:0 auto;
	width:1160px;
	margin-top: 20px;
	background-image:  url(images/bg010.png);
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
<div id="apDiv2">
<table width="100%" border="0" align="center" cellpadding="0" cellspacing="0">
  <tr align="center" valign="middle" bgcolor="#3A5FCD">
    <td width="100" height="25"  onMouseOver="this.style.background='#27408B'" onMouseOut="this.style.background='#3A5FCD';"><a href="home.jsp" class="ys01"><font color="#FFFFFF"/><strong>Home</strong></a></td>
    <td width="100"  height="25"  onMouseOver="this.style.background='#27408B'" onMouseOut="this.style.background='#3A5FCD';" ><a href="browse.jsp" class="ys01"><font color="#FFFFFF"/><strong>Browse</strong></a></td>
    <td width="100"  height="25"  onMouseOver="this.style.background='#27408B'" onMouseOut="this.style.background='#3A5FCD';"><a href="search.jsp" class="ys01"><font color="#FFFFFF"/><strong>Search</strong></a></td>
    <td width="100"  height="25"  onMouseOver="this.style.background='#27408B'" onMouseOut="this.style.background='#3A5FCD';"><a href="download.jsp" class="ys01"><font color="#FFFFFF"/><strong>Download</strong></a></td>
    <td width="100"  height="25"  onMouseOver="this.style.background='#27408B'" onMouseOut="this.style.background='#3A5FCD';" ><a href="submit.jsp" class="ys01"><font color="#FFFFFF"/><strong>submit</strong></a></td>
    <td width="100"  height="25"  onMouseOver="this.style.background='#27408B'" onMouseOut="this.style.background='#3A5FCD';" ><a href="help.jsp" class="ys01"><font color="#FFFFFF"/><strong>Help</strong></a></td>
   
  </tr>
</table>
</div>
<div id="apDiv1"><img src="images/logo.png" width="1100" height="150" /></div>
<div id="apDiv3">

<div style="width:95%;margin:auto">
<table border="1" bordercolor="#00CCFF">
<thead>
<tr>

<td>PMID</td>
<td>Gene</td>
<td>MicroRNA_name</td>
<td>SNP_ID</td>
<td>Disease</td>
<td>Type</td>
<td>Allele</td>
<td>Method</td>
<td>MicroRNA_effection</td>
<td>Detail</td>

</tr>
</thead>
<tbody>
<s:iterator value="#request.mirsnp2_List">
<tr>

<td><a href="http://www.ncbi.nlm.nih.gov/pubmed/?term=<s:property value="PMID"/>"><s:property value="PMID"/></a></td>
<td><s:property value="gene"></s:property></td>
<td><s:property value="microRNA_name"></s:property></td>
<td><a href="http://www.ncbi.nlm.nih.gov/snp/?term=<s:property value="SNP_ID"/>"><s:property value="SNP_ID"/></a></td>
<td><s:property value="disease"></s:property></td>
<td><s:property value="type"></s:property></td>
<td><s:property value="allele"></s:property></td>
<td><s:property value="method"></s:property></td>
<td><s:property value="microRNA_effection"></s:property></td>
<td><a href="detail?detail=<s:property value="PMID"/>"   >detail</a></td>



</tr>
</s:iterator>


</tbody>
</table>
</div>
 
</div>
<p>&nbsp;</p>
<p>&nbsp;</p>
<div id="apDiv4">
  <table width="100%" border="0" cellspacing="0" cellpadding="0">
    <tr>
      <td height="25" align="center" style="mso-spacerun:'yes'; font-family:'Calibri'; font-size:12pt; font-weight:bold; ">MSDD (miRNA SNP Disease Database) </td>
    </tr>
    <tr>
      <td height="25" align="center" valign="middle" style="mso-spacerun:'yes'; font-family:'Calibri'; font-size:10pt; font-weight:normal; ">CopyRight© 2015 College of Bioinformatics Science and Technology, Harbin Medical University, China</td>
    </tr>
    <tr>
    <td height="20" align="center" style="mso-spacerun:'yes'; font-family:'Calibri'; font-size:12pt;">Last modified:March 9,2015</td>
       </tr>
   
  </table>
</div>
</body>
</html>
