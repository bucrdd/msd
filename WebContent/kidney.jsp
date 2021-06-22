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
<p class="center"><font  color="#0099FF" size="+2">Kidney</font></p>
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

<td><a href="http://www.ncbi.nlm.nih.gov/pubmed/?term=25213695">25213695</a></td>
<td>NULL</td>
<td>miR-149</td>
<td><a href="http://www.ncbi.nlm.nih.gov/snp/?term=rs71428439">rs71428439</a></td>
<td>clear cell renal cell carcinoma</td>
<td>stem-loop region of miRNA</td>
<td>A/G</td>
<td>genotyping/qRT-PCR/statistical analysis</td>
<td>NULL</td>
<td><a href="detail?detail=25213695&gene=NULL&mir=miR-149&disease=clear cell renal cell carcinoma&microRNA_effection=NULL"  >detail</a></td>


</tr>
<tr>

<td><a href="http://www.ncbi.nlm.nih.gov/pubmed/?term=24978643">24978643</a></td>
<td>NULL</td>
<td>miR-196a2</td>
<td><a href="http://www.ncbi.nlm.nih.gov/snp/?term=rs11614913">rs11614913</a></td>
<td>end-stage renal disease</td>
<td>pre-miRNA</td>
<td>T/C</td>
<td>SNP selection/DNA extraction/genotyping/statistical analysis</td>
<td>NULL</td>
<td><a href="detail?detail=24978643&gene=NULL&mir=miR-196a2&disease=end-stage renal disease&microRNA_effection=NULL"  >detail</a></td>


</tr>

<tr>

<td><a href="http://www.ncbi.nlm.nih.gov/pubmed/?term=24978643">24978643</a></td>
<td>NULL</td>
<td>miR-146a</td>
<td><a href="http://www.ncbi.nlm.nih.gov/snp/?term=rs2910164">rs2910164</a></td>
<td>end-stage renal disease</td>
<td>pre-miRNA</td>
<td>C/G</td>
<td>SNP selection/DNA extraction/genotyping/statistical analysis</td>
<td>NULL</td>
<td><a href="detail?detail=24978643&gene=NULL&mir=miR-146a&disease=end-stage renal disease&microRNA_effection=NULL"  >detail</a></td>


</tr>

<tr>

<td><a href="http://www.ncbi.nlm.nih.gov/pubmed/?term=24978643">24978643</a></td>
<td>NULL</td>
<td>miR-499a</td>
<td><a href="http://www.ncbi.nlm.nih.gov/snp/?term=rs3746444">rs3746444</a></td>
<td>end-stage renal disease</td>
<td>pre-miRNA</td>
<td>A/G</td>
<td>SNP selection/DNA extraction/genotyping/statistical analysis</td>
<td>NULL</td>
<td><a href="detail?detail=24978643&gene=NULL&mir=miR-499a&disease=end-stage renal disease&microRNA_effection=NULL"  >detail</a></td>


</tr>

<tr>

<td><a href="http://www.ncbi.nlm.nih.gov/pubmed/?term=24886237">24886237</a></td>
<td>PAQR6</td>
<td>miR-424</td>
<td><a href="http://www.ncbi.nlm.nih.gov/snp/?term=rs759330">rs759330</a></td>
<td>kidney stone disease</td>
<td>3'utr</td>
<td>NULL</td>
<td>genotyping/candidate gene search/determination of SNPs in candidate gene regions/sequencing/SNP genotyping by a high-resolution melting method/statistical analysis</td>
<td>gain</td>
<td><a href="detail?detail=24886237&gene=PAQR6&mir=miR-424&disease=kidney stone disease&microRNA_effection=gain"  >detail</a></td>


</tr>

<tr>

<td><a href="http://www.ncbi.nlm.nih.gov/pubmed/?term=22140441">22140441</a></td>
<td>HNF4a</td>
<td>miR-34a</td>
<td><a href="http://www.ncbi.nlm.nih.gov/snp/?term=rs11574744">rs11574744</a></td>
<td>renal cell cancer</td>
<td>3'utr</td>
<td>A/T</td>
<td>plasmid construction/transient transfection and luciferase assay/3'RACE and qRT-PCR/miRNA expression profile/in silico analysis</td>
<td>decrease</td>
<td><a href="detail?detail=22140441&gene=HNF4a&mir=miR-34a&disease=renal cell cancer&microRNA_effection=decrease"  >detail</a></td>


</tr>

<tr>

<td><a href="http://www.ncbi.nlm.nih.gov/pubmed/?term=24681820">24681820</a></td>
<td>NULL</td>
<td>miR-196a2</td>
<td><a href="http://www.ncbi.nlm.nih.gov/snp/?term=rs11614913">rs11614913</a></td>
<td>renal cell cancer</td>
<td>mature-miRNA</td>
<td>T/C</td>
<td>SNP selection and geotyping/quantitative real-time reverse transcription PCR/transient transfections and luciferase reporter assay/statistical analysis</td>
<td>decrease</td>
<td><a href="detail?detail=24681820&gene=NULL&mir=miR-196a2&disease=renal cell cancer&microRNA_effection=decrease"  >detail</a></td>


</tr>

<tr>

<td><a href="http://www.ncbi.nlm.nih.gov/pubmed/?term=23118855">23118855</a></td>
<td>NULL</td>
<td>miR-27a</td>
<td><a href="http://www.ncbi.nlm.nih.gov/snp/?term=rs895819">rs895819</a></td>
<td>renal cell cancer</td>
<td>pre-miRNA</td>
<td>A/G</td>
<td>genotyping/real time PCR/statistical analysis</td>
<td>NULL</td>
<td><a href="detail?detail=23118855&gene=NULL&mir=miR-27a&disease=renal cell cancer&microRNA_effection=NULL"  >detail</a></td>


</tr>

<tr>

<td><a href="http://www.ncbi.nlm.nih.gov/pubmed/?term=24503183">24503183</a></td>
<td>NULL</td>
<td>miR-34b</td>
<td><a href="http://www.ncbi.nlm.nih.gov/snp/?term=rs4938723">rs4938723</a></td>
<td>renal cell cancer</td>
<td>promoter region of pri-miRNA</td>
<td>T/C</td>
<td>DNA extraction and genotyping/construction of reporter plasmids/transfection and luciferase reporter assays/statistical analysis</td>
<td>decrease</td>
<td><a href="detail?detail=24503183&gene=NULL&mir=miR-34b&disease=renal cell cancer&microRNA_effection=decrease"  >detail</a></td>


</tr>

<tr>

<td><a href="http://www.ncbi.nlm.nih.gov/pubmed/?term=24503183">24503183</a></td>
<td>NULL</td>
<td>miR-34c</td>
<td><a href="http://www.ncbi.nlm.nih.gov/snp/?term=rs4938723">rs4938723</a></td>
<td>renal cell cancer</td>
<td>promoter region of pri-miRNA</td>
<td>T/C</td>
<td>DNA extraction and genotyping/construction of reporter plasmids/transfection and luciferase reporter assays/statistical analysis</td>
<td>decrease</td>
<td><a href="detail?detail=24503183&gene=NULL&mir=miR-34c&disease=renal cell cancer&microRNA_effection=decrease"  >detail</a></td>


</tr>



<tr>

<td><a href="http://www.ncbi.nlm.nih.gov/pubmed/?term=22319602">22319602</a></td>
<td>HBEGF</td>
<td>miR-1207-5p</td>
<td><a href="http://www.ncbi.nlm.nih.gov/snp/?term=rs13385">rs13385</a></td>
<td>CFHR5 nephropathy</td>
<td>3'utr</td>
<td>C/T</td>
<td>transfection/western blot/real-time PCR/genotyping/statistical analysis</td>
<td>decrease</td>
<td><a href="detail?detail=22319602&gene=HBEGF&mir=miR-1207-5p&disease=CFHR5 nephropathy&microRNA_effection=decrease"  >detail</a></td>


</tr>
<tr>

<td><a href="http://www.ncbi.nlm.nih.gov/pubmed/?term=26563755">26563755</a></td>
<td>IL-6R</td>
<td>miR-125</td>
<td><a href="http://www.ncbi.nlm.nih.gov/snp/?term=rs12976445">rs12976445</a></td>
<td>diabetic nephropathy</td>
<td>pri-miRNA</td>
<td>NULL</td>
<td>real-time PCR/genotyping/western blot/luciferase reporter gene assay</td>

<td>NULL</td>
<td><a href="detail?detail=26563755&gene=IL-6R&mir=miR-125&snpid=rs12976445&disease=diabetic nephropathy&microRNA_effection=NULL"  >detail</a></td>


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
