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
<p class="center"><font  color="#0099FF" size="+2">Lung</font></p>
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

<td><a href="http://www.ncbi.nlm.nih.gov/pubmed/?term=25925667">25925667</a></td>
<td>EGFR</td>
<td>miR-214</td>
<td><a href="http://www.ncbi.nlm.nih.gov/snp/?term=rs884225">rs884225</a></td>
<td>chronic obstructive pulmonary disease</td>
<td>3'utr</td>
<td>T/C</td>
<td>genotyping/RNA isolation and real-time PCR/oligo transfection/apoptosis assays/western blot/luciferase reporter plasmids and luciferase assays/statistical analysis</td>
<td>decrease</td>
<td><a href="detail?detail=25925667&gene=EGFR&mir=miR-214&disease=chronic obstructive pulmonary disease&microRNA_effection=decrease"  >detail</a></td>


</tr>
<tr>

<td><a href="http://www.ncbi.nlm.nih.gov/pubmed/?term=19881472">19881472</a></td>
<td>NULL</td>
<td>miR-149</td>
<td><a href="http://www.ncbi.nlm.nih.gov/snp/?term=rs2292832">rs2292832</a></td>
<td>coal workers' pneumoconiosis</td>
<td>pre-miRNA</td>
<td>T/C</td>
<td>SNP selection and genotyping/statistical analysis</td>
<td>NULL</td>
<td><a href="detail?detail=19881472&gene=NULL&mir=miR-149&disease=coal workers' pneumoconiosis&microRNA_effection=NULL"  >detail</a></td>


</tr>

<tr>

<td><a href="http://www.ncbi.nlm.nih.gov/pubmed/?term=24146953">24146953</a></td>
<td>SET8</td>
<td>miR-502</td>
<td><a href="http://www.ncbi.nlm.nih.gov/snp/?term=rs16917496">rs16917496</a></td>
<td>non-small cell lung cancer</td>
<td>3'utr</td>
<td>T/C</td>
<td>genotyping/construction of reporter plasmids/RNA interferences,transient transfections and luciferase assays/immunohistochemistry/statistical analysis</td>
<td>increase</td>
<td><a href="detail?detail=24146953&gene=SET8&mir=miR-502&disease=non-small cell lung cancer&microRNA_effection=increase"  >detail</a></td>


</tr>

<tr>

<td><a href="http://www.ncbi.nlm.nih.gov/pubmed/?term=23143626">23143626</a></td>
<td>NULL</td>
<td>miR-196a2</td>
<td><a href="http://www.ncbi.nlm.nih.gov/snp/?term=rs11614913">rs11614913</a></td>
<td>non-small cell lung cancer</td>
<td>miRNA</td>
<td>NULL</td>
<td>genotyping/statistical analysis</td>
<td>NULL</td>
<td><a href="detail?detail=23143626&gene=NULL&mir=miR-196a2&disease=non-small cell lung cancer&microRNA_effection=NULL"  >detail</a></td>


</tr>

<tr>

<td><a href="http://www.ncbi.nlm.nih.gov/pubmed/?term=21617338">21617338</a></td>
<td>NULL</td>
<td>miR-196a2</td>
<td><a href="http://www.ncbi.nlm.nih.gov/snp/?term=rs11614913">rs11614913</a></td>
<td>non-small cell lung cancer</td>
<td>pre-miRNA</td>
<td>T/C</td>
<td>DNA extraction and genotyping/statistical analysis</td>
<td>NULL</td>
<td><a href="detail?detail=21617338&gene=NULL&mir=miR-196a2&disease=non-small cell lung cancer&microRNA_effection=NULL"  >detail</a></td>


</tr>

<tr>

<td><a href="http://www.ncbi.nlm.nih.gov/pubmed/?term=18521189">18521189</a></td>
<td>NULL</td>
<td>miR-196a2</td>
<td><a href="http://www.ncbi.nlm.nih.gov/snp/?term=rs11614913">rs11614913</a></td>
<td>non-small cell lung cancer</td>
<td>pre-miRNA</td>
<td>CC genotype(C/T)</td>
<td>gentyping/quantitative RT-PCR/transient transfections and luciferase assays/statistics</td>
<td>NULL</td>
<td><a href="detail?detail=18521189&gene=NULL&mir=miR-196a2&disease=non-small cell lung cancer&microRNA_effection=NULL"  >detail</a></td>


</tr>

<tr>

<td><a href="http://www.ncbi.nlm.nih.gov/pubmed/?term=22818121">22818121</a></td>
<td>NULL</td>
<td>miR-196a2</td>
<td><a href="http://www.ncbi.nlm.nih.gov/snp/?term=rs11614913">rs11614913</a></td>
<td>non-small cell lung cancer</td>
<td>pre-miRNA</td>
<td>NULL</td>
<td>SNP selection and genotyping/statistical analysis</td>
<td>NULL</td>
<td><a href="detail?detail=22818121&gene=NULL&mir=miR-196a2&disease=non-small cell lung cancer&microRNA_effection=NULL"  >detail</a></td>


</tr>

<tr>

<td><a href="http://www.ncbi.nlm.nih.gov/pubmed/?term=23470291">23470291</a></td>
<td>NULL</td>
<td>miR-196a2</td>
<td><a href="http://www.ncbi.nlm.nih.gov/snp/?term=rs11614913">rs11614913</a></td>
<td>non-small cell lung cancer</td>
<td>pre-miRNA</td>
<td>C/T</td>
<td>genotyping/qRT-PCR/statistical analysis</td>
<td>NULL</td>
<td><a href="detail?detail=23470291&gene=NULL&mir=miR-196a2&disease=non-small cell lung cancer&microRNA_effection=NULL"  >detail</a></td>


</tr>

<tr>

<td><a href="http://www.ncbi.nlm.nih.gov/pubmed/?term=23470291">23470291</a></td>
<td>NULL</td>
<td>miR-149</td>
<td><a href="http://www.ncbi.nlm.nih.gov/snp/?term=rs2292832">rs2292832</a></td>
<td>non-small cell lung cancer</td>
<td>pre-miRNA</td>
<td>T/C</td>
<td>genotyping/qRT-PCR/statistical analysis</td>
<td>NULL</td>
<td><a href="detail?detail=23470291&gene=NULL&mir=miR-149&disease=non-small cell lung cancer&microRNA_effection=NULL"  >detail</a></td>


</tr>

<tr>

<td><a href="http://www.ncbi.nlm.nih.gov/pubmed/?term=22818121">22818121</a></td>
<td>NULL</td>
<td>miR-146a</td>
<td><a href="http://www.ncbi.nlm.nih.gov/snp/?term=rs2910164">rs2910164</a></td>
<td>non-small cell lung cancer</td>
<td>pre-miRNA</td>
<td>NULL</td>
<td>SNP selection and genotyping/statistical analysis</td>
<td>NULL</td>
<td><a href="detail?detail=22818121&gene=NULL&mir=miR-146a&disease=non-small cell lung cancer&microRNA_effection=NULL"  >detail</a></td>


</tr>

<tr>

<td><a href="http://www.ncbi.nlm.nih.gov/pubmed/?term=25154761">25154761</a></td>
<td>NULL</td>
<td>miR-146a</td>
<td><a href="http://www.ncbi.nlm.nih.gov/snp/?term=rs2910164">rs2910164</a></td>
<td>non-small cell lung cancer</td>
<td>pre-miRNA</td>
<td>NULL</td>
<td>genotyping/statistical analysis</td>
<td>NULL</td>
<td><a href="detail?detail=25154761&gene=NULL&mir=miR-146a&disease=non-small cell lung cancer&microRNA_effection=NULL"  >detail</a></td>


</tr>

<tr>

<td><a href="http://www.ncbi.nlm.nih.gov/pubmed/?term=25773791">25773791</a></td>
<td>NULL</td>
<td>miR-27a</td>
<td><a href="http://www.ncbi.nlm.nih.gov/snp/?term=rs895819">rs895819</a></td>
<td>non-small cell lung cancer</td>
<td>pre-miRNA</td>
<td>NULL</td>
<td>PCR/statistical analysis</td>
<td>NULL</td>
<td><a href="detail?detail=25773791&gene=NULL&mir=miR-27a&disease=non-small cell lung cancer&microRNA_effection=NULL"  >detail</a></td>


</tr>

<tr>

<td><a href="http://www.ncbi.nlm.nih.gov/pubmed/?term=24223174">24223174</a></td>
<td>NULL</td>
<td>miR-27a</td>
<td><a href="http://www.ncbi.nlm.nih.gov/snp/?term=rs895819">rs895819</a></td>
<td>non-small cell lung cancer</td>
<td>pre-miRNA</td>
<td>A/G</td>
<td>genotypin/statistical analysis </td>
<td>NULL</td>
<td><a href="detail?detail=24223174&gene=NULL&mir=miR-27a&disease=non-small cell lung cancer&microRNA_effection=NULL"  >detail</a></td>


</tr>

<tr>

<td><a href="http://www.ncbi.nlm.nih.gov/pubmed/?term=20889907">20889907</a></td>
<td>NULL</td>
<td>miR-30c-1</td>
<td><a href="http://www.ncbi.nlm.nih.gov/snp/?term=rs928508">rs928508</a></td>
<td>non-small cell lung cancer</td>
<td>pre-miRNA</td>
<td>NULL</td>
<td>SNP selection and genotyping/quantitative reverse transcription PCR/statistical analysis</td>
<td>NULL</td>
<td><a href="detail?detail=20889907&gene=NULL&mir=miR-30c-1&disease=non-small cell lung cancer&microRNA_effection=NULL"  >detail</a></td>


</tr>

<tr>

<td><a href="http://www.ncbi.nlm.nih.gov/pubmed/?term=21524676">21524676</a></td>
<td>NULL</td>
<td>miR-146a</td>
<td><a href="http://www.ncbi.nlm.nih.gov/snp/?term=rs2910164">rs2910164</a></td>
<td>pulmonary tuberculosis</td>
<td>pre-miRNA</td>
<td>G/C</td>
<td>SNP selection/SNP genotyping/statistical analysis</td>
<td>NULL</td>
<td><a href="detail?detail=21524676&gene=NULL&mir=miR-146a&disease=pulmonary tuberculosis&microRNA_effection=NULL"  >detail</a></td>


</tr>

<tr>

<td><a href="http://www.ncbi.nlm.nih.gov/pubmed/?term=21524676">21524676</a></td>
<td>NULL</td>
<td>miR-499</td>
<td><a href="http://www.ncbi.nlm.nih.gov/snp/?term=rs3746444">rs3746444</a></td>
<td>pulmonary tuberculosis</td>
<td>pre-miRNA</td>
<td>T/C</td>
<td>SNP selection/SNP genotyping/statistical analysis</td>
<td>NULL</td>
<td><a href="detail?detail=21524676&gene=NULL&mir=miR-499&disease=pulmonary tuberculosis&microRNA_effection=NULL"  >detail</a></td>


</tr>

<tr>

<td><a href="http://www.ncbi.nlm.nih.gov/pubmed/?term=21676885">21676885</a></td>
<td>MYCL1</td>
<td>miR-1827</td>
<td><a href="http://www.ncbi.nlm.nih.gov/snp/?term=rs3134615">rs3134615</a></td>
<td>small-cell lung cancer</td>
<td>3'utr</td>
<td>G/T</td>
<td>SNP selection and genotyping /reporter gene contructs /transiect transfection and luciferase assays/tranfection and qRT-PCR/statistical analysis</td>
<td>lose</td>
<td><a href="detail?detail=21676885&gene=MYCL1&mir=miR-1827&disease=small-cell lung cancer&microRNA_effection=lose"  >detail</a></td>


</tr>
<tr>

<td><a href="http://www.ncbi.nlm.nih.gov/pubmed/?term=23232114">23232114</a></td>
<td>BIRC5</td>
<td>miR-335</td>
<td><a href="http://www.ncbi.nlm.nih.gov/snp/?term=rs2239680">rs2239680</a></td>
<td>lung cancer</td>
<td>3'utr</td>
<td>T/C</td>
<td>plasmid construction/SNP selection/genotyping/luciferase reporter assay/RT-PCR/western blotting/statistical analysis</td>
<td>decrease</td>
<td><a href="detail?detail=23232114&gene=BIRC5&mir=miR-335&disease=lung cancer&microRNA_effection=decrease"  >detail</a></td>


</tr>

<tr>

<td><a href="http://www.ncbi.nlm.nih.gov/pubmed/?term=23715500">23715500</a></td>
<td>CD133</td>
<td>miR-135a</td>
<td><a href="http://www.ncbi.nlm.nih.gov/snp/?term=rs2240688 ">rs2240688 </a></td>
<td>lung cancer</td>
<td>3'utr</td>
<td>A/C</td>
<td>SNP selection and genotyping/construction of luciferase reporters/RNA interference,transient transfections and luciferase assays/real-time PCR/western blot/immunohistochemistry/statistical analysis</td>
<td>gain</td>
<td><a href="detail?detail=23715500&gene=CD133&mir=miR-135a&disease=lung cancer&microRNA_effection=gain"  >detail</a></td>


</tr>

<tr>

<td><a href="http://www.ncbi.nlm.nih.gov/pubmed/?term=23715500">23715500</a></td>
<td>CD133</td>
<td>miR-135b</td>
<td><a href="http://www.ncbi.nlm.nih.gov/snp/?term=rs2240688 ">rs2240688 </a></td>
<td>lung cancer</td>
<td>3'utr</td>
<td>A/C</td>
<td>SNP selection and genotyping/construction of luciferase reporters/RNA interference,transient transfections and luciferase assays/real-time PCR/western blot/immunohistochemistry/statistical analysis</td>
<td>gain</td>
<td><a href="detail?detail=23715500&gene=CD133&mir=miR-135b&disease=lung cancer&microRNA_effection=gain"  >detail</a></td>


</tr>

<tr>

<td><a href="http://www.ncbi.nlm.nih.gov/pubmed/?term=22114071">22114071</a></td>
<td>NBS1</td>
<td>miR-629</td>
<td><a href="http://www.ncbi.nlm.nih.gov/snp/?term=rs2735383">rs2735383</a></td>
<td>lung cancer</td>
<td>3'utr</td>
<td>G/C</td>
<td>genotyping/construction of reporter plasmids/RNA interferences,transient transfection and luciferase assays/real-time PCR/western blotting/mutagen sensitivity assay/statistical analysis</td>
<td>NULL</td>
<td><a href="detail?detail=22114071&gene=NBS1&mir=miR-629&disease=lung cancer&microRNA_effection=NULL"  >detail</a></td>


</tr>

<tr>

<td><a href="http://www.ncbi.nlm.nih.gov/pubmed/?term=22349819">22349819</a></td>
<td>REV3L</td>
<td>miR-25</td>
<td><a href="http://www.ncbi.nlm.nih.gov/snp/?term=rs465646">rs465646</a></td>
<td>lung cancer</td>
<td>3'utr</td>
<td>T/C</td>
<td>genotyping/construction of reporter plasmids/transfection/luciferase assays/SPR experiments/immunostaining/statistical analysis</td>
<td>decrease</td>
<td><a href="detail?detail=22349819&gene=REV3L&mir=miR-25&disease=lung cancer&microRNA_effection=decrease"  >detail</a></td>


</tr>

<tr>

<td><a href="http://www.ncbi.nlm.nih.gov/pubmed/?term=22349819">22349819</a></td>
<td>REV3L</td>
<td>miR-32</td>
<td><a href="http://www.ncbi.nlm.nih.gov/snp/?term=rs465646">rs465646</a></td>
<td>lung cancer</td>
<td>3'utr</td>
<td>T/C</td>
<td>genotyping/construction of reporter plasmids/transfection/luciferase assays/SPR experiments/immunostaining/statistical analysis</td>
<td>decrease</td>
<td><a href="detail?detail=22349819&gene=REV3L&mir=miR-32&disease=lung cancer&microRNA_effection=decrease"  >detail</a></td>


</tr>



<tr>

<td><a href="http://www.ncbi.nlm.nih.gov/pubmed/?term=23159078">23159078</a></td>
<td>NULL</td>
<td>miR-30c</td>
<td><a href="http://www.ncbi.nlm.nih.gov/snp/?term=rs928508">rs928508</a></td>
<td>lung cancer</td>
<td>flank region of miRNA </td>
<td>A/G</td>
<td>genotyping/real-time PCR/statistical analysis</td>
<td>NULL</td>
<td><a href="detail?detail=23159078&gene=NULL&mir=miR-30c&disease=lung cancer&microRNA_effection=NULL"  >detail</a></td>


</tr>

<tr>

<td><a href="http://www.ncbi.nlm.nih.gov/pubmed/?term=21671485">21671485</a></td>
<td>NULL</td>
<td>miR-605</td>
<td><a href="http://www.ncbi.nlm.nih.gov/snp/?term=rs2043556">rs2043556</a></td>
<td>lung cancer</td>
<td>unspecificed miRNA</td>
<td>NULL</td>
<td>genotyping/statistical analysis</td>
<td>NULL</td>
<td><a href="detail?detail=21671485&gene=NULL&mir=miR-605&disease=lung cancer&microRNA_effection=NULL"  >detail</a></td>


</tr>

<tr>

<td><a href="http://www.ncbi.nlm.nih.gov/pubmed/?term=19293314">19293314</a></td>
<td>NULL</td>
<td>miR-196a2</td>
<td><a href="http://www.ncbi.nlm.nih.gov/snp/?term=rs11614913">rs11614913</a></td>
<td>lung cancer</td>
<td>pre-miRNA</td>
<td>T/C</td>
<td>genotyping/statistical analysis</td>
<td>NULL</td>
<td><a href="detail?detail=19293314&gene=NULL&mir=miR-196a2&disease=lung cancer&microRNA_effection=NULL"  >detail</a></td>


</tr>

<tr>

<td><a href="http://www.ncbi.nlm.nih.gov/pubmed/?term=24144839">24144839</a></td>
<td>NULL</td>
<td>miR-146a</td>
<td><a href="http://www.ncbi.nlm.nih.gov/snp/?term=rs2910164">rs2910164</a></td>
<td>lung cancer</td>
<td>pre-miRNA</td>
<td>C/G</td>
<td>genotyping/qRT-PCR/statistical analysis</td>
<td>NULL</td>
<td><a href="detail?detail=24144839&gene=NULL&mir=miR-146a&disease=lung cancer&microRNA_effection=NULL"  >detail</a></td>


</tr>

<tr>

<td><a href="http://www.ncbi.nlm.nih.gov/pubmed/?term=25966223">25966223</a></td>
<td>NULL</td>
<td>let-7</td>
<td><a href="http://www.ncbi.nlm.nih.gov/snp/?term=rs10877887">rs10877887</a></td>
<td>lung cancer</td>
<td>promoter region of miRNA</td>
<td>NULL</td>
<td>DNA extraction and genotyping/statistical analysis</td>
<td>NULL</td>
<td><a href="detail?detail=25966223&gene=NULL&mir=let-7&disease=lung cancer&microRNA_effection=NULL"  >detail</a></td>


</tr>

<tr>

<td><a href="http://www.ncbi.nlm.nih.gov/pubmed/?term=26316738">26316738</a></td>
<td>KRAS</td>
<td>let-7g</td>
<td><a href="http://www.ncbi.nlm.nih.gov/snp/?term=rs712">rs712</a></td>
<td>chronic obstructive pulmonary disease</td>
<td>3'utr</td>
<td>NULL</td>
<td>genotyping/western blot/luciferase reporter assay</td>

<td>lose</td>
<td><a href="detail?detail=26316738&gene=KRAS&mir=let-7g&snpid=rs712&disease=chronic obstructive pulmonary disease&microRNA_effection=lose"  >detail</a></td>


</tr>

<tr>

<td><a href="http://www.ncbi.nlm.nih.gov/pubmed/?term=25925667">25925667</a></td>
<td>EGFR</td>
<td>miR-214</td>
<td><a href="http://www.ncbi.nlm.nih.gov/snp/?term=rs884225">rs884225</a></td>
<td>chronic obstructive pulmonary disease</td>
<td>3'utr</td>
<td>T/C</td>
<td>genotyping/RNA isolation and real-time PCR/oligo transfection/apoptosis assays/western blot/luciferase reporter plasmids and luciferase assays</td>

<td>decrease</td>
<td><a href="detail?detail=25925667&gene=EGFR&mir=miR-214&snpid=rs884225&disease=chronic obstructive pulmonary disease&microRNA_effection=decrease"  >detail</a></td>


</tr>


<tr>

<td><a href="http://www.ncbi.nlm.nih.gov/pubmed/?term=26235181">26235181</a></td>
<td>NULL</td>
<td>miR-146a</td>
<td><a href="http://www.ncbi.nlm.nih.gov/snp/?term=rs2910164">rs2910164</a></td>
<td>lung cancer</td>
<td>pre-miRNA</td>
<td>G/C</td>
<td>genotyping</td>

<td>NULL</td>
<td><a href="detail?detail=26235181&gene=NULL&mir=miR-146a&snpid=rs2910164&disease=lung cancer&microRNA_effection=NULL"  >detail</a></td>


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
