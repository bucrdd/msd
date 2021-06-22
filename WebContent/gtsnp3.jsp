<%@ page language="java" contentType="text/html; charset=UTF-8"
	pageEncoding="UTF-8"%>
<%@ taglib prefix="s" uri="/struts-tags"%>
<!DOCTYPE html PUBLIC "-//W3C//DTD XHTML 1.0 Transitional//EN" "http://www.w3.org/TR/xhtml1/DTD/xhtml1-transitional.dtd">
<html xmlns="http://www.w3.org/1999/xhtml">
<head>
<meta http-equiv="Content-Type" content="text/html; charset=utf-8" />
<title>SNP</title>
<style type="text/css">
div{
overflow: auto;
}/*div中存在下拉条*/

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
	background:url(images/bg-0006.gif)
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
<table border="0"><tr><td height="10"></td></tr></table>
<table border="1" bordercolor="#999999">
<thead>
<tr>

<td>PMID</td>
<td>Gene</td>
<td>MicroRNA_name</td>
<td>SNP_ID</td>
<td>Disease</td>
<td>Type<a href="help.jsp#q6"><img src="images/help.png" width="18" height="18"></img></a></td>
<td>Allele</td>

<td>MicroRNA_effection</td>
<td>Detail</td>

</tr>
</thead>
<tbody>
<s:iterator value="#request.gtsnp_total">
<tr>

<td><a href="http://www.ncbi.nlm.nih.gov/pubmed/?term=<s:property value="PMID"/>"><s:property value="PMID"/></a></td>
<td><s:property value="gene"></s:property></td>
<td><s:property value="microRNA_name"></s:property></td>
<td><a href="http://www.ncbi.nlm.nih.gov/snp/?term=<s:property value="SNP_ID"/>"><s:property value="SNP_ID"/></a></td>
<td><s:property value="disease"></s:property></td>
<td><s:property value="type"></s:property></td>
<td><s:property value="allele"></s:property></td>

<td><s:property value="microRNA_effection"></s:property></td>
<td><a href="detail?detail=<s:property value="PMID"/>&gene=<s:property value="gene"/>&mir=<s:property value="microRNA_name"/>&snpid=<s:property value="SNP_ID"/>&disease=<s:property value="disease"/>&microRNA_effection=<s:property value="microRNA_effection" />"  >detail</a></td>



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
