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
<p class="center"><font  color="#0099FF" size="+2">Head & Bone</font></p>
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

<td><a href="http://www.ncbi.nlm.nih.gov/pubmed/?term=20358594">20358594</a></td>
<td>NULL</td>
<td>miR-140-5p</td>
<td><a href="http://www.ncbi.nlm.nih.gov/snp/?term=rs7205289">rs7205289</a></td>
<td>nonsyndromic cleft palate</td>
<td>pre-miRNA</td>
<td>C/A</td>
<td>transfection/northern blot/statistical analysis</td>
<td>decrease</td>
<td><a href="detail?detail=20358594&gene=NULL&mir=miR-140-5p&disease=nonsyndromic cleft palate&microRNA_effection=decrease"  >detail</a></td>


</tr>
<tr>

<td><a href="http://www.ncbi.nlm.nih.gov/pubmed/?term=24603642">24603642</a></td>
<td>MSX1</td>
<td>miR-3649</td>
<td><a href="http://www.ncbi.nlm.nih.gov/snp/?term=rs12532">rs12532</a></td>
<td>nonsyndromic orofacial cleft</td>
<td>3'utr</td>
<td>G/A</td>
<td>DNA extraction and genotyping/construction of luciferase reporter plasmid/transient transfections and luciferase reporter assay/real-time quantitative PCR/statistical analysis</td>
<td>increase</td>
<td><a href="detail?detail=24603642&gene=MSX1&mir=miR-3649&disease=nonsyndromic orofacial cleft&microRNA_effection=increase"  >detail</a></td>


</tr>
<tr>

<td><a href="http://www.ncbi.nlm.nih.gov/pubmed/?term=24690080">24690080</a></td>
<td>NULL</td>
<td>miR-499a</td>
<td><a href="http://www.ncbi.nlm.nih.gov/snp/?term=rs3746444">rs3746444</a></td>
<td>oral squamous cell carcinoma</td>
<td>unspecificed miRNA</td>
<td>T/C</td>
<td>genotyping/RNA extraction/RT-PCR/statistical analysis</td>
<td>NULL</td>
<td><a href="detail?detail=24690080&gene=NULL&mir=miR-499a&disease=oral squamous cell carcinoma&microRNA_effection=NULL"  >detail</a></td>


</tr>

<tr>

<td><a href="http://www.ncbi.nlm.nih.gov/pubmed/?term=22182931">22182931</a></td>
<td>NULL</td>
<td>miR-146a</td>
<td><a href="http://www.ncbi.nlm.nih.gov/snp/?term=rs2910164">rs2910164</a></td>
<td>oral squamous cell carcinoma</td>
<td>pre-miRNA</td>
<td>G/C</td>
<td>qRT-PCR/cell proliferation/cell invasion/DNA isolation/statistial analysis</td>
<td>increase</td>
<td><a href="detail?detail=22182931&gene=NULL&mir=miR-146a&disease=oral squamous cell carcinoma&microRNA_effection=increase"  >detail</a></td>


</tr>

<tr>

<td><a href="http://www.ncbi.nlm.nih.gov/pubmed/?term=23138850">23138850</a></td>
<td>NULL</td>
<td>miR-196a2</td>
<td><a href="http://www.ncbi.nlm.nih.gov/snp/?term=rs11614913">rs11614913</a></td>
<td>oral squamous cell carcinoma</td>
<td>pre-miRNA</td>
<td>NULL</td>
<td>qRT-PCR/genotyping/cell proliferation/transwell migration assay/anchorage-independent colony formation/tumorigenesis/statistical analysis</td>
<td>NULL</td>
<td><a href="detail?detail=23138850&gene=NULL&mir=miR-196a2&disease=oral squamous cell carcinoma&microRNA_effection=NULL"  >detail</a></td>


</tr>


<tr>

<td><a href="http://www.ncbi.nlm.nih.gov/pubmed/?term=21934093">21934093</a></td>
<td>TNFAIP2</td>
<td>miR-184</td>
<td><a href="http://www.ncbi.nlm.nih.gov/snp/?term=rs8126">rs8126</a></td>
<td>squamous cell carcinoma of the head and neck</td>
<td>3'utr</td>
<td>T/C</td>
<td>genotyping/real-time RT-PCR/cloning and site-directed mutagenesis/transienr transfection and luciferase assay/statistical analysis</td>
<td>NULL</td>
<td><a href="detail?detail=21934093&gene=TNFAIP2&mir=miR-184&disease=squamous cell carcinoma of the head and neck&microRNA_effection=NULL"  >detail</a></td>


</tr>

<tr>

<td><a href="http://www.ncbi.nlm.nih.gov/pubmed/?term=23271051">23271051</a></td>
<td>CASP3</td>
<td>miR-885-5p</td>
<td><a href="http://www.ncbi.nlm.nih.gov/snp/?term=rs1049253">rs1049253</a></td>
<td>squamous cell carcinoma of the head and neck</td>
<td>3'utr</td>
<td>T/C</td>
<td>transfection and real-time PCR/reporter constructs transfection and luciferase assays/western blot/statistical analysis</td>
<td>increase</td>
<td><a href="detail?detail=23271051&gene=CASP3&mir=miR-885-5p&disease=squamous cell carcinoma of the head and neck&microRNA_effection=increase"  >detail</a></td>


</tr>

<tr>

<td><a href="http://www.ncbi.nlm.nih.gov/pubmed/?term=20549817">20549817</a></td>
<td>NULL</td>
<td>miR-146a</td>
<td><a href="http://www.ncbi.nlm.nih.gov/snp/?term=rs2910164">rs2910164</a></td>
<td>squamous cell carcinoma of the head and neck</td>
<td>pre-miRNA</td>
<td>G/C</td>
<td>genotyping/statistical analysis</td>
<td>NULL</td>
<td><a href="detail?detail=20549817&gene=NULL&mir=miR-146a&disease=squamous cell carcinoma of the head and neck&microRNA_effection=NULL"  >detail</a></td>


</tr>

<tr>

<td><a href="http://www.ncbi.nlm.nih.gov/pubmed/?term=20549817">20549817</a></td>
<td>NULL</td>
<td>miR-149</td>
<td><a href="http://www.ncbi.nlm.nih.gov/snp/?term=rs2292832">rs2292832</a></td>
<td>squamous cell carcinoma of the head and neck</td>
<td>pre-miRNA</td>
<td>G/T</td>
<td>genotyping/statistical analysis</td>
<td>NULL</td>
<td><a href="detail?detail=20549817&gene=NULL&mir=miR-149&disease=squamous cell carcinoma of the head and neck&microRNA_effection=NULL"  >detail</a></td>


</tr>

<tr>

<td><a href="http://www.ncbi.nlm.nih.gov/pubmed/?term=20549817">20549817</a></td>
<td>NULL</td>
<td>miR-196a2</td>
<td><a href="http://www.ncbi.nlm.nih.gov/snp/?term=rs11614913">rs11614913</a></td>
<td>squamous cell carcinoma of the head and neck</td>
<td>pre-miRNA</td>
<td>C/T</td>
<td>genotyping/statistical analysis</td>
<td>NULL</td>
<td><a href="detail?detail=20549817&gene=NULL&mir=miR-196a2&disease=squamous cell carcinoma of the head and neck&microRNA_effection=NULL"  >detail</a></td>


</tr>

<tr>

<td><a href="http://www.ncbi.nlm.nih.gov/pubmed/?term=20549817">20549817</a></td>
<td>NULL</td>
<td>miR-499</td>
<td><a href="http://www.ncbi.nlm.nih.gov/snp/?term=rs3746444">rs3746444</a></td>
<td>squamous cell carcinoma of the head and neck</td>
<td>pre-miRNA</td>
<td>A/G</td>
<td>genotyping/statistical analysis</td>
<td>NULL</td>
<td><a href="detail?detail=20549817&gene=NULL&mir=miR-499&disease=squamous cell carcinoma of the head and neck&microRNA_effection=NULL"  >detail</a></td>


</tr>

<tr>

<td><a href="http://www.ncbi.nlm.nih.gov/pubmed/?term=23219900">23219900</a></td>
<td>NULL</td>
<td>miR-146a</td>
<td><a href="http://www.ncbi.nlm.nih.gov/snp/?term=rs2910164">rs2910164</a></td>
<td>squamous cell carcinoma of the head and neck</td>
<td>pre-miRNA</td>
<td>G/C</td>
<td>genotypin/statistical analysis </td>
<td>NULL</td>
<td><a href="detail?detail=23219900&gene=NULL&mir=miR-146a&disease=squamous cell carcinoma of the head and neck&microRNA_effection=NULL"  >detail</a></td>


</tr>

<tr>

<td><a href="http://www.ncbi.nlm.nih.gov/pubmed/?term=23219900">23219900</a></td>
<td>NULL</td>
<td>miR-196a2</td>
<td><a href="http://www.ncbi.nlm.nih.gov/snp/?term=rs11614913">rs11614913</a></td>
<td>squamous cell carcinoma of the head and neck</td>
<td>pre-miRNA</td>
<td>C/T</td>
<td>genotypin/statistical analysis </td>
<td>NULL</td>
<td><a href="detail?detail=23219900&gene=NULL&mir=miR-196a2&disease=squamous cell carcinoma of the head and neck&microRNA_effection=NULL"  >detail</a></td>


</tr>

<tr>

<td><a href="http://www.ncbi.nlm.nih.gov/pubmed/?term=23267167">23267167</a></td>
<td>NULL</td>
<td>miR-146a</td>
<td><a href="http://www.ncbi.nlm.nih.gov/snp/?term=rs2910164">rs2910164</a></td>
<td>squamous cell carcinoma of the head and neck</td>
<td>pre-miRNA</td>
<td>G/C</td>
<td>genotyping/statistical analysis</td>
<td>NULL</td>
<td><a href="detail?detail=23267167&gene=NULL&mir=miR-146a&disease=squamous cell carcinoma of the head and neck&microRNA_effection=NULL"  >detail</a></td>


</tr>

<tr>

<td><a href="http://www.ncbi.nlm.nih.gov/pubmed/?term=23272122">23272122</a></td>
<td>NULL</td>
<td>miR-149</td>
<td><a href="http://www.ncbi.nlm.nih.gov/snp/?term=rs2292832">rs2292832</a></td>
<td>squamous cell carcinoma of the head and neck</td>
<td>pre-miRNA</td>
<td>C/T</td>
<td>DNA extraction/genotyping/qRT-PCR/transient expression and knockdown of expression/transwell migration assay/ISH/plasmid construction,viral infection and late-RT-qPCR/statistical analysis</td>
<td>increase</td>
<td><a href="detail?detail=23272122&gene=NULL&mir=miR-149&disease=squamous cell carcinoma of the head and neck&microRNA_effection=increase"  >detail</a></td>


</tr>

<tr>

<td><a href="http://www.ncbi.nlm.nih.gov/pubmed/?term=22012839">22012839</a></td>
<td>NULL</td>
<td>miR-140</td>
<td><a href="http://www.ncbi.nlm.nih.gov/snp/?term=rs7205289">rs7205289</a></td>
<td>cleft palate</td>
<td>pre-miRNA</td>
<td>C/A</td>
<td>in situ hybridization(ISH) and fluorescence in situ hybridization(FISH)/luciferase reporter constructs/western blot/contruction and transfection of recombinant expression/quantitive real-time RT-PCR/SNP genotyping/statistic analysis</td>
<td>decrease</td>
<td><a href="detail?detail=22012839&gene=NULL&mir=miR-140&disease=cleft palate&microRNA_effection=decrease"  >detail</a></td>


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
