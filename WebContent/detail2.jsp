<%@ page language="java" contentType="text/html; charset=UTF-8"
	pageEncoding="UTF-8"%>
<%@ taglib prefix="s" uri="/struts-tags"%>
<!DOCTYPE html PUBLIC "-//W3C//DTD XHTML 1.0 Transitional//EN" "http://www.w3.org/TR/xhtml1/DTD/xhtml1-transitional.dtd">
<html xmlns="http://www.w3.org/1999/xhtml">
<head>
<meta http-equiv="Content-Type" content="text/html; charset=utf-8" />
<title>detail</title>
<style type="text/css">



body,td,th {
	font-family: Verdana, Geneva, sans-serif;
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
	height:500px;
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
	top: 695px;
	background: url(images/bg003.gif)
}
</style>

</head>

<body>





<div style="width:95%;margin:auto">
<table width="800px" border="0" bordercolor="#00CCFF" cellpadding="0" cellspacing="0">

<tbody>
<s:iterator value="#request.detail_List">
<tr bgcolor="#99CCFF"><td width="20%">PMID</td><td><a href="http://www.ncbi.nlm.nih.gov/pubmed/?term=<s:property value="PMID"/>" target="_blank"><s:property value="PMID"/></a></td></tr>
<tr><td>title</td><td><s:property value="title"></s:property></td></tr>
<tr bgcolor="#99CCFF"><td>gene</td><td><s:property value="gene"></s:property></td></tr>
<tr ><td>miRNA</td><td><s:property value="microRNA_name"></s:property></td></tr>
<tr bgcolor="#99CCFF"><td>SNP ID</td><td><a href="http://www.ncbi.nlm.nih.gov/snp/?term=<s:property value="SNP_ID"/>" target="_blank"><s:property value="SNP_ID"/></a></td></tr>
<tr ><td>disease</td><td><s:property value="disease"></s:property></td></tr>
<tr bgcolor="#99CCFF"><td>abbr</td><td><s:property value="abbr"></s:property></td></tr>
<tr ><td>type</td><td><s:property value="type"></s:property></td></tr>
<tr bgcolor="#99CCFF"><td>allele</td><td><s:property value="allele"></s:property></td></tr>
<tr ><td>microRNA effection</td><td><s:property value="microRNA_effection"></s:property></td>
</tr>
<tr bgcolor="#99CCFF"><td>method</td>
<td ><s:property value="method"></s:property></td></tr>

<tr ><td>tissue/cell line</td><td ><s:property value="tissue"></s:property></td></tr>
<tr bgcolor="#99CCFF"><td>description</td>
<td ><s:property value="discription"></s:property></td></tr>




</s:iterator>


</tbody>
</table>
</div>



</body>
</html>
