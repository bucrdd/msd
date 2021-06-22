<%@ page language="java" contentType="text/html; charset=UTF-8"
	pageEncoding="UTF-8"%>
<%@ taglib prefix="s" uri="/struts-tags"%>
<!DOCTYPE html PUBLIC "-//W3C//DTD XHTML 1.0 Transitional//EN" "http://www.w3.org/TR/xhtml1/DTD/xhtml1-transitional.dtd">
<html xmlns="http://www.w3.org/1999/xhtml">
<head>
<meta http-equiv="Content-Type" content="text/html; charset=utf-8" />
<title>Search</title>



<style type="text/css">
body,td,th {
	font-family: Verdana, Geneva, sans-serif;
	}
div{
overflow: auto;
}/*div中存在下拉条*/

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
font-size:10.5000pt;
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
	height:400px;
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
	height:100px;
	z-index:4;
	top: 795px;
	background: url(images/bg003.gif)
}
#apDiv5 {
	position:absolute;
	width:200px;
	height:400px;
	z-index:5;
	top: 195px;
}
#apDiv6 {
	position:absolute;
	width:1100px;
	height:400px;
	z-index:5;
	top: 195px;
}
#apDiv7 {
	position:absolute;
	width:1100px;
	height:600px;
	z-index:5;
	top: 195px;
	background:url(images/bg009.png)
}
.p1 {
	font-weight: bold;
	font-style: italic;
}
.p2 {
	font-weight: bold;
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
<div id="apDiv7">
<s:form id="Form3_1" name="Form3_1" action="disease2" method="post" theme="simple">
<script language="javascript">
function CheckAll(form) 
{ 
for (var i=0;i<form.elements.length;i++) 
    { 
    var e = form.elements[i]; 
    if (e.name != 'chkall') 
       e.checked = form.chkall.checked; 
    } 
} 
</script>
<input type="submit" name="Submit" onclick="return aaa()" value="Search selected gene(s)"/>
<input name="disease2" type="checkbox" id="chkall"  onclick="CheckAll(this.form)"></input>
      select all

<table border="1" bordercolor="#999999">
<thead>
<tr>

<td>select</td>
<td>Disease</td>



</tr>
</thead>
<tbody>
<s:iterator value="#request.disease_List">
<tr>

<td><input type="checkbox" name="disease2" value="<s:property value="disease"></s:property>"></input></td>
<td><s:property value="disease"></s:property></td>

</tr>
</s:iterator>


</tbody>
</table>
</s:form>
  
</div>
</body>
</html>
