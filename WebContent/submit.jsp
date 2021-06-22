<%@ page language="java" contentType="text/html; charset=UTF-8"
	pageEncoding="UTF-8"%>
<%@ taglib prefix="s" uri="/struts-tags"%>

<!DOCTYPE html PUBLIC "-//W3C//DTD XHTML 1.0 Transitional//EN" "http://www.w3.org/TR/xhtml1/DTD/xhtml1-transitional.dtd">
<html xmlns="http://www.w3.org/1999/xhtml">
<head>
<meta http-equiv="Content-Type" content="text/html; charset=utf-8" />
<title>submit</title>
<script language="javascript">
function aaa(){
	if(document.form1.gene.value==''){
		alert("请输入PMID！");
		document.form1.gene.focus();
		return false;
	}
	if(!IsNum(document.form1.gene.value)){
		alert("请输入正确的 PMID！");
		document.form1.gene.focus();
		return false;
	}
	
	if(document.form1.miRNA.value==''){
		alert("请输入miRNA！");
		document.form1.miRNA.focus();
		return false;
	}
	if(document.form1.snp_id.value==''){
		alert("请输入SNP ID！");
		document.form1.snp_id.focus();
		return false;
	}
	if(document.form1.disease.value==''){
		alert("请输入disease！");
		document.form1.disease.focus();
		return false;
	}
}
function IsNum(num){
	var reNum=/^\d*$/;
	return(reNum.test(num));
	}

</script>
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

<div   id="apDiv3">

<table align="center" width="90%" border="0" cellspacing="0" cellpadding="0">
  <tr>
    <td height="50" colspan="2" ><font color="#999999" size="+2 "><strong>&nbsp;Welcome to submit information  to the MSDD database</strong> (*Required fields)</h2></td>
  </tr><td><p class="p0" style="margin-bottom:0pt; margin-top:0pt; margin-left:9px; " /><font color="#27408B" size="+1">To submit new entries to the database, select the menu "Submit". The users need to input their data into corresponding blanks and then submit the query. We will further accurate
 the submitted information to determine whether to add the new entries to the database or not.</font></p></td>
  <tr>
  </tr>
  <tr height="30"></tr>
  </table >
   <form action="submit" method="post" id="form1" name="form1">
   <a class="linkA" href="CustomTrackAction?addNewCustom=true"><i class="icon-plus"></i> Add/Manage Custom Tracks</a>
  <table align="center" width="60%" border="0" cellspacing="0" cellpadding="0">

  <tr>
    <td align="right"><font color="#FF0000">&nbsp;*</font>PMID:</td>
    
    <td  ><label for="gene"></label>
      <input type="text" name="gene" id="gene" /></td>
  </tr>
  <tr>
    <td align="right"><font color="#FF0000">&nbsp;*</font>miRNA:</td>
    <td  ><label for="miRNA"></label>
      <input type="text" name="miRNA" id="miRNA" /></td>
  </tr>
  <tr>
    <td align="right"><font color="#FF0000">&nbsp;*</font>snp id:</td>
    <td><label for="snp_id"></label>
      <input type="text" name="snp_id" id="snp_id" /></td>
  </tr>
  <tr>
    <td align="right"><font color="#FF0000">&nbsp;*</font>disease:</td>
    <td><label for="disease"></label>
      <input type="text" name="disease" id="disease" /></td>
  </tr>
  <tr>
  <td align="right">&nbsp;&nbsp; type:</td>
  <td><label for="type"></label>
    <input type="text" name="type" id="type" /></td>
  </tr>
  <tr>
    <td align="right">&nbsp;&nbsp; allele:</td>
    <td><label for="allele"></label>
      <input type="text" name="allele" id="allele" /></td>
  </tr>
  <tr>
    <td align="right">&nbsp;&nbsp; method:</td>
    <td><label for="method"></label>
      <input type="text" name="method" id="method" /></td>
  </tr>
  <tr>
    <td align="right">&nbsp;&nbsp; microRNA's effection:<br /></td>
    <td><label for="microRNA_effection"></label>
      <input type="text" name="microRNA_effection" id="microRNA_effection" /></td>
  </tr>
  <tr>
    <td align="right">&nbsp;&nbsp; description:</td>
    <td><label for="description"></label>
      <textarea name="description" id="description" cols="45" rows="5"></textarea></td>
  </tr>
  <tr>
  <td>&nbsp;</td>
  <td><input type="submit" name="button" id="button" value="submit" onclick="return aaa()" />
  	  <input type="reset" name="button" id="button" value="reset" /></td>
  </tr>
 
 
</table>
</form>

 
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

