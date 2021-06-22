<%@ page language="java" contentType="text/html; charset=UTF-8"
	pageEncoding="UTF-8"%>
<%@ taglib prefix="s" uri="/struts-tags"%>
<!DOCTYPE html PUBLIC "-//W3C//DTD XHTML 1.0 Transitional//EN" "http://www.w3.org/TR/xhtml1/DTD/xhtml1-transitional.dtd">
<html xmlns="http://www.w3.org/1999/xhtml">
<head>
<meta http-equiv="Content-Type" content="text/html; charset=utf-8" />
<title>home</title>
<style type="text/css">
.center {
	text-align: center;
}
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
	font-size: 11px;
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
        <td width="100" height="25"  onMouseOver="this.style.background='#27408B'" onMouseOut="this.style.background='#3A5FCD';"><a href="home.jsp" class="ys01"><font color="#FFFFFF"/><font size="3"><strong>Home</strong></font></a></td>
    <td width="100"  height="25"  onMouseOver="this.style.background='#27408B'" onMouseOut="this.style.background='#3A5FCD';" ><a href="browse.jsp" class="ys01"><font color="#FFFFFF"/><font size="3"><strong>Browse</strong></font></a></td>
    <td width="100"  height="25"  onMouseOver="this.style.background='#27408B'" onMouseOut="this.style.background='#3A5FCD';"><a href="search.jsp" class="ys01"><font color="#FFFFFF"/><font size="3"><strong>Search</strong></font></a></td>
    <td width="100"  height="25"  onMouseOver="this.style.background='#27408B'" onMouseOut="this.style.background='#3A5FCD';"><a href="download.jsp" class="ys01"><font color="#FFFFFF"/><font size="3"><strong>Download</strong></font></a></td>
    <td width="100"  height="25"  onMouseOver="this.style.background='#27408B'" onMouseOut="this.style.background='#3A5FCD';" ><a href="submit.jsp" class="ys01"><font color="#FFFFFF"/><font size="3"><strong>submit</strong></font></a></td>
    <td width="100"  height="25"  onMouseOver="this.style.background='#27408B'" onMouseOut="this.style.background='#3A5FCD';" ><a href="help.jsp" class="ys01"><font color="#FFFFFF"/><font size="3"><strong>Help</strong></font></a></td>
  </tr>
</table>
</div>
<div id="apDiv1"><img src="images/logo.png" width="1100" height="150" /></div>
<div id="apDiv3">

<div style="width:95%;margin:auto">
<p class="center"><font  color="#0099FF" size="+2">Heart</font></p>
<table bordercolor="#999999" border="1">
<thead>
<tr>

<td>PMID</td>
<td>gene</td>
<td>microRNA_name</td>
<td>SNP_ID</td>
<td>disease</td>
<td>type<a href="help.jsp#q6"><img src="images/help.png" width="18" height="18"></img></a></td>
<td>allele</td>
<td>method</td>
<td>microRNA_effection</td>
<td>detail</td>

</tr>
</thead>
<tbody>

<tr>

<td><a href="http://www.ncbi.nlm.nih.gov/pubmed/?term=22159951">22159951</a></td>
<td>NULL</td>
<td>miR-196a2</td>
<td><a href="http://www.ncbi.nlm.nih.gov/snp/?term=rs11614913">rs11614913</a></td>
<td>coronary artery disease</td>
<td>pre-miRNA&nbsp;&nbsp;&nbsp;</td>
<td>T/C</td>
<td>genotyping/statistical analysis</td>
<td>NULL</td>
<td><a href="detail?detail=22159951&gene=NULL&mir=miR-196a2&disease=coronary artery disease&microRNA_effection=NULL"  >detail</a></td>


</tr>

<tr>

<td><a href="http://www.ncbi.nlm.nih.gov/pubmed/?term=24447667">24447667</a></td>
<td>NULL</td>
<td>miR-146a</td>
<td><a href="http://www.ncbi.nlm.nih.gov/snp/?term=rs2910164">rs2910164</a></td>
<td>coronary artery disease</td>
<td>pre-miRNA</td>
<td>G/C</td>
<td>DNA extraction and genotyping/real-time qRT-PCR/statistical analysis</td>
<td>increase</td>
<td><a href="detail?detail=24447667&gene=NULL&mir=miR-146a&disease=coronary artery disease&microRNA_effection=increase"  >detail</a></td>


</tr>

<tr>

<td><a href="http://www.ncbi.nlm.nih.gov/pubmed/?term=22159951">22159951</a></td>
<td>NULL</td>
<td>miR-499</td>
<td><a href="http://www.ncbi.nlm.nih.gov/snp/?term=rs3746444">rs3746444</a></td>
<td>coronary artery disease</td>
<td>pre-miRNA</td>
<td>A/G</td>
<td>genotyping/statistical analysis</td>
<td>NULL</td>
<td><a href="detail?detail=22159951&gene=NULL&mir=miR-499&disease=coronary artery disease&microRNA_effection=NULL"  >detail</a></td>


</tr>

<tr>

<td><a href="http://www.ncbi.nlm.nih.gov/pubmed/?term=23583740">23583740</a></td>
<td>GATA4</td>
<td>miR-583</td>
<td><a href="http://www.ncbi.nlm.nih.gov/snp/?term=rs3203358">rs3203358</a></td>
<td>congenital heart defect</td>
<td>3'utr</td>
<td>C/G</td>
<td>plasmid construction/cell transfection and luciferase assay/statistical analysis</td>
<td>decrease</td>
<td><a href="detail?detail=23583740&gene=GATA4&mir=miR-583&disease=congenital heart defect&microRNA_effection=decrease"  >detail</a></td>


</tr>

<tr>

<td><a href="http://www.ncbi.nlm.nih.gov/pubmed/?term=19514064">19514064</a></td>
<td>HOXB8</td>
<td>miR-196a2</td>
<td><a href="http://www.ncbi.nlm.nih.gov/snp/?term=rs11614913">rs11614913</a></td>
<td>congenital heart defect</td>
<td>pre-miRNA</td>
<td>T/C</td>
<td>SNP selection and genotyping/quantitative RT-PCR/transient transfections and luciferase assays/statistical analysis</td>
<td>NULL</td>
<td><a href="detail?detail=19514064&gene=HOXB8&mir=miR-196a2&disease=congenital heart defect&microRNA_effection=NULL"  >detail</a></td>


</tr>

<tr>

<td><a href="http://www.ncbi.nlm.nih.gov/pubmed/?term=19514064">19514064</a></td>
<td>HOXB8</td>
<td>miR-196a2</td>
<td><a href="http://www.ncbi.nlm.nih.gov/snp/?term=rs11614913">rs11614913</a></td>
<td>congenital heart defect</td>
<td>pre-miRNA</td>
<td>T/C</td>
<td>SNP selection and genotyping/quantitative RT-PCR</td>
<td>increase</td>
<td><a href="detail?detail=19514064&gene=HOXB8&mir=miR-196a2&disease=congenital heart defect&microRNA_effection=increase"  >detail</a></td>


</tr>

<tr>

<td><a href="http://www.ncbi.nlm.nih.gov/pubmed/?term=24676100">24676100</a></td>
<td>TCF21</td>
<td>miR-224</td>
<td><a href="http://www.ncbi.nlm.nih.gov/snp/?term=rs12190287">rs12190287</a></td>
<td>coronary heart disease</td>
<td>3'utr</td>
<td>NULL</td>
<td>qPCR/dual-luciferase assay/immunohistochemistry/ISH/statistical analysis</td>
<td>loss</td>
<td><a href="detail?detail=24676100&gene=TCF21&mir=miR-224&disease=coronary heart disease&microRNA_effection=loss"  >detail</a></td>


</tr>

<tr>

<td><a href="http://www.ncbi.nlm.nih.gov/pubmed/?term=22647417">22647417</a></td>
<td>MTHFR</td>
<td>miR-149</td>
<td><a href="http://www.ncbi.nlm.nih.gov/snp/?term=rs4846049">rs4846049</a></td>
<td>coronary heart disease</td>
<td>3'utr</td>
<td>G/T</td>
<td>luciferase analysis</td>
<td>NULL</td>
<td><a href="detail?detail=22647417&gene=MTHFR&mir=miR-149&disease=coronary heart disease&microRNA_effection=NULL"  >detail</a></td>


</tr>

<tr>

<td><a href="http://www.ncbi.nlm.nih.gov/pubmed/?term=24972764">24972764</a></td>
<td>NULL</td>
<td>miR-196a2</td>
<td><a href="http://www.ncbi.nlm.nih.gov/snp/?term=rs11614913">rs11614913</a></td>
<td>cardiovascular disease</td>
<td>pre-miRNA</td>
<td>T/C</td>
<td>genotyping/statistical analysis</td>
<td>NULL</td>
<td><a href="detail?detail=24972764&gene=NULL&mir=miR-196a2&disease=cardiovascular disease&microRNA_effection=NULL"  >detail</a></td>


</tr>
<tr>

<td><a href="http://www.ncbi.nlm.nih.gov/pubmed/?term=20488170">20488170</a></td>
<td>NULL</td>
<td>miR-196a2</td>
<td><a href="http://www.ncbi.nlm.nih.gov/snp/?term=rs11614913">rs11614913</a></td>
<td>dilated cardiomyopathy</td>
<td>pre-miRNA</td>
<td>C/T</td>
<td>genotyping/statistical analysis</td>
<td>NULL</td>
<td><a href="detail?detail=20488170&gene=NULL&mir=miR-196a2&disease=dilated cardiomyopathy&microRNA_effection=NULL"  >detail</a></td>


</tr>

<tr>

<td><a href="http://www.ncbi.nlm.nih.gov/pubmed/?term=20488170">20488170</a></td>
<td>NULL</td>
<td>miR-499</td>
<td><a href="http://www.ncbi.nlm.nih.gov/snp/?term=rs3746444">rs3746444</a></td>
<td>dilated cardiomyopathy</td>
<td>pre-miRNA</td>
<td>A/G</td>
<td>genotyping/statistical analysis</td>
<td>NULL</td>
<td><a href="detail?detail=20488170&gene=NULL&mir=miR-499&disease=dilated cardiomyopathy&microRNA_effection=NULL"  >detail</a></td>


</tr>

<tr>

<td><a href="http://www.ncbi.nlm.nih.gov/pubmed/?term=25033200">25033200</a></td>
<td>VPS4a</td>
<td>miR-16</td>
<td><a href="http://www.ncbi.nlm.nih.gov/snp/?term=rs16958754">rs16958754</a></td>
<td>heart failure</td>
<td>3'utr</td>
<td>C/T</td>
<td>RNA isolation and Real Time Quantitive PCR/Dual Luciferase Reporter Assay/Western Analysis/Cell number and Apoptosis/Statistics</td>
<td>lose</td>
<td><a href="detail?detail=25033200&gene=VPS4a&mir=miR-16&disease=heart failure&microRNA_effection=lose"  >detail</a></td>


</tr>
<tr>

<td><a href="http://www.ncbi.nlm.nih.gov/pubmed/?term=23873935">23873935</a></td>
<td>NULL</td>
<td>miR-149</td>
<td><a href="http://www.ncbi.nlm.nih.gov/snp/?term=rs71428439">rs71428439</a></td>
<td>myocardial infarction</td>
<td>stem-loop region of miRNA</td>
<td>A/G</td>
<td>construction of miRNA expression vectors/qRT-PCR/northern blot analysis/reporter constructions and luciferase assay/immunoblotting/statistical analysis</td>
<td>NULL</td>
<td><a href="detail?detail=23873935&gene=NULL&mir=miR-149&disease=myocardial infarction&microRNA_effection=NULL"  >detail</a></td>


</tr>




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
