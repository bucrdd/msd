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
<p class="center"><font  color="#0099FF" size="+2">Gastrointestinal</font></p>
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

<td><a href="http://www.ncbi.nlm.nih.gov/pubmed/?term=25079514">25079514</a></td>
<td>PAUF</td>
<td>miR-571</td>
<td><a href="http://www.ncbi.nlm.nih.gov/snp/?term=rs12373">rs12373</a></td>
<td>colorectal cancer</td>
<td>3'utr</td>
<td>A/C</td>
<td>SNP selection and genotyping/cloning of luciferase reporter gene and luciferase assay/statistical analysis</td>
<td>increase</td>
<td><a href="detail?detail=25079514&gene=PAUF&mir=miR-571&disease=colorectal cancer&microRNA_effection=increase"  >detail</a></td>


</tr>

<tr>

<td><a href="http://www.ncbi.nlm.nih.gov/pubmed/?term=21565628">21565628</a></td>
<td>NULL</td>
<td>miR-196a2</td>
<td><a href="http://www.ncbi.nlm.nih.gov/snp/?term=rs11614913">rs11614913</a></td>
<td>colorectal cancer</td>
<td>mature-miRNA</td>
<td>T/C</td>
<td>DNA isolation and genotyping/RNA isolation and qRT-PCR/statistical analysis</td>
<td>NULL</td>
<td><a href="detail?detail=21565628&gene=NULL&mir=miR-196a2&disease=colorectal cancer&microRNA_effection=NULL"  >detail</a></td>


</tr>

<tr>

<td><a href="http://www.ncbi.nlm.nih.gov/pubmed/?term=22606253">22606253</a></td>
<td>NULL</td>
<td>miR-608</td>
<td><a href="http://www.ncbi.nlm.nih.gov/snp/?term=rs4919510">rs4919510</a></td>
<td>colorectal cancer</td>
<td>mature-miRNA</td>
<td>C/G</td>
<td>genotyping/statistical analysis</td>
<td>NULL</td>
<td><a href="detail?detail=22606253&gene=NULL&mir=miR-608&disease=colorectal cancer&microRNA_effection=NULL"  >detail</a></td>


</tr>

<tr>

<td><a href="http://www.ncbi.nlm.nih.gov/pubmed/?term=22661538">22661538</a></td>
<td>NULL</td>
<td>miR-608</td>
<td><a href="http://www.ncbi.nlm.nih.gov/snp/?term=rs4919510">rs4919510</a></td>
<td>colorectal cancer</td>
<td>mature-miRNA</td>
<td>C/G</td>
<td>SNP selection and genotyping/statistical analysis</td>
<td>NULL</td>
<td><a href="detail?detail=22661538&gene=NULL&mir=miR-608&disease=colorectal cancer&microRNA_effection=NULL"  >detail</a></td>


</tr>

<tr>

<td><a href="http://www.ncbi.nlm.nih.gov/pubmed/?term=25222241">25222241</a></td>
<td>NULL</td>
<td>miR-27a</td>
<td><a href="http://www.ncbi.nlm.nih.gov/snp/?term=rs895819">rs895819</a></td>
<td>colorectal cancer</td>
<td>unspecificed miRNA</td>
<td>A/G</td>
<td>genotyping/statistical analysis</td>
<td>increase</td>
<td><a href="detail?detail=25222241&gene=NULL&mir=miR-27a&disease=colorectal cancer&microRNA_effection=increase"  >detail</a></td>


</tr>

<tr>

<td><a href="http://www.ncbi.nlm.nih.gov/pubmed/?term=22161766">22161766</a></td>
<td>NULL</td>
<td>miR-196a2</td>
<td><a href="http://www.ncbi.nlm.nih.gov/snp/?term=rs11614913">rs11614913</a></td>
<td>colorectal cancer</td>
<td>pre-miRNA</td>
<td>C/T</td>
<td>genotyping/statistical analysis</td>
<td>NULL</td>
<td><a href="detail?detail=22161766&gene=NULL&mir=miR-196a2&disease=colorectal cancer&microRNA_effection=NULL"  >detail</a></td>


</tr>

<tr>

<td><a href="http://www.ncbi.nlm.nih.gov/pubmed/?term=21815818">21815818</a></td>
<td>NULL</td>
<td>miR-196a2</td>
<td><a href="http://www.ncbi.nlm.nih.gov/snp/?term=rs11614913">rs11614913</a></td>
<td>colorectal cancer</td>
<td>pre-miRNA</td>
<td>T/C</td>
<td>genotyping/statistical analysis</td>
<td>NULL</td>
<td><a href="detail?detail=21815818&gene=NULL&mir=miR-196a2&disease=colorectal cancer&microRNA_effection=NULL"  >detail</a></td>


</tr>

<tr>

<td><a href="http://www.ncbi.nlm.nih.gov/pubmed/?term=21976437">21976437</a></td>
<td>NULL</td>
<td>miR-605</td>
<td><a href="http://www.ncbi.nlm.nih.gov/snp/?term=rs2043556">rs2043556</a></td>
<td>colorectal cancer</td>
<td>pre-miRNA</td>
<td>NULL</td>
<td>SNP selection and genotyping/miRNAs expression assay/statistical analysis</td>
<td>NULL</td>
<td><a href="detail?detail=21976437&gene=NULL&mir=miR-605&disease=colorectal cancer&microRNA_effection=NULL"  >detail</a></td>


</tr>

<tr>

<td><a href="http://www.ncbi.nlm.nih.gov/pubmed/?term=23898084">23898084</a></td>
<td>NULL</td>
<td>miR-146a</td>
<td><a href="http://www.ncbi.nlm.nih.gov/snp/?term=rs2910164">rs2910164</a></td>
<td>colorectal cancer</td>
<td>pre-miRNA</td>
<td>C/G</td>
<td>genotypin/statistical analysis </td>
<td>NULL</td>
<td><a href="detail?detail=23898084&gene=NULL&mir=miR-146a&disease=colorectal cancer&microRNA_effection=NULL"  >detail</a></td>


</tr>

<tr>

<td><a href="http://www.ncbi.nlm.nih.gov/pubmed/?term=24136745">24136745</a></td>
<td>NULL</td>
<td>miR-146a</td>
<td><a href="http://www.ncbi.nlm.nih.gov/snp/?term=rs2910164">rs2910164</a></td>
<td>colorectal cancer</td>
<td>pre-miRNA</td>
<td>G/C</td>
<td>genotyping/PCR/statistical analysis</td>
<td>decrease</td>
<td><a href="detail?detail=24136745&gene=NULL&mir=miR-146a&disease=colorectal cancer&microRNA_effection=decrease"  >detail</a></td>


</tr>

<tr>

<td><a href="http://www.ncbi.nlm.nih.gov/pubmed/?term=24740563">24740563</a></td>
<td>NULL</td>
<td>miR-146a</td>
<td><a href="http://www.ncbi.nlm.nih.gov/snp/?term=rs2910164">rs2910164</a></td>
<td>colorectal cancer</td>
<td>pre-miRNA</td>
<td>C/G</td>
<td>DNA isolation and genotyping/statistical analysis</td>
<td>NULL</td>
<td><a href="detail?detail=24740563&gene=NULL&mir=miR-146a&disease=colorectal cancer&microRNA_effection=NULL"  >detail</a></td>


</tr>

<tr>

<td><a href="http://www.ncbi.nlm.nih.gov/pubmed/?term=22028396">22028396</a></td>
<td>NULL</td>
<td>miR-608</td>
<td><a href="http://www.ncbi.nlm.nih.gov/snp/?term=rs4919510">rs4919510</a></td>
<td>colorectal cancer</td>
<td>pre-miRNA</td>
<td>NULL</td>
<td>SNP selection and genotyping/statistical and data analysis</td>
<td>NULL</td>
<td><a href="detail?detail=22028396&gene=NULL&mir=miR-608&disease=colorectal cancer&microRNA_effection=NULL"  >detail</a></td>


</tr>

<tr>

<td><a href="http://www.ncbi.nlm.nih.gov/pubmed/?term=22028396">22028396</a></td>
<td>NULL</td>
<td>miR-423</td>
<td><a href="http://www.ncbi.nlm.nih.gov/snp/?term=rs6505162">rs6505162</a></td>
<td>colorectal cancer</td>
<td>pre-miRNA</td>
<td>C/A</td>
<td>SNP selection and genotyping/statistical and data analysis</td>
<td>NULL</td>
<td><a href="detail?detail=22028396&gene=NULL&mir=miR-423&disease=colorectal cancer&microRNA_effection=NULL"  >detail</a></td>


</tr>

<tr>

<td><a href="http://www.ncbi.nlm.nih.gov/pubmed/?term=25977444">25977444</a></td>
<td>MBNL1</td>
<td>miR-1307</td>
<td><a href="http://www.ncbi.nlm.nih.gov/snp/?term=rs7911488">rs7911488</a></td>
<td>colorectal cancer</td>
<td>pre-miRNA</td>
<td>T/C</td>
<td>genotyping/qPCR/RNA immunoprecipitation/immunobloting/luciferase reporter assays/  </td>
<td>decrease</td>
<td><a href="detail?detail=25977444&gene=MBNL1&mir=miR-1307&disease=colorectal cancer&microRNA_effection=decrease"  >detail</a></td>


</tr>

<tr>

<td><a href="http://www.ncbi.nlm.nih.gov/pubmed/?term=25078482">25078482</a></td>
<td>NULL</td>
<td>miR-27a</td>
<td><a href="http://www.ncbi.nlm.nih.gov/snp/?term=rs895819">rs895819</a></td>
<td>colorectal cancer</td>
<td>pre-miRNA</td>
<td>NULL</td>
<td>DNA extraction/genotyping/statistical analysis</td>
<td>NULL</td>
<td><a href="detail?detail=25078482&gene=NULL&mir=miR-27a&disease=colorectal cancer&microRNA_effection=NULL"  >detail</a></td>


</tr>

<tr>

<td><a href="http://www.ncbi.nlm.nih.gov/pubmed/?term=24337371">24337371</a></td>
<td>NULL</td>
<td>miR-34b</td>
<td><a href="http://www.ncbi.nlm.nih.gov/snp/?term=rs4938723">rs4938723</a></td>
<td>colorectal cancer</td>
<td>pri-miRNA</td>
<td>T/C</td>
<td>genotypin/statistical analysis </td>
<td>NULL</td>
<td><a href="detail?detail=24337371&gene=NULL&mir=miR-34b&disease=colorectal cancer&microRNA_effection=NULL"  >detail</a></td>


</tr>

<tr>

<td><a href="http://www.ncbi.nlm.nih.gov/pubmed/?term=24337371">24337371</a></td>
<td>NULL</td>
<td>miR-34c</td>
<td><a href="http://www.ncbi.nlm.nih.gov/snp/?term=rs4938723">rs4938723</a></td>
<td>colorectal cancer</td>
<td>pri-miRNA</td>
<td>T/C</td>
<td>genotypin/statistical analysis </td>
<td>NULL</td>
<td><a href="detail?detail=24337371&gene=NULL&mir=miR-34c&disease=colorectal cancer&microRNA_effection=NULL"  >detail</a></td>


</tr>

<tr>

<td><a href="http://www.ncbi.nlm.nih.gov/pubmed/?term=23183747">23183747</a></td>
<td>NULL</td>
<td>miR-34b</td>
<td><a href="http://www.ncbi.nlm.nih.gov/snp/?term=rs4938723">rs4938723</a></td>
<td>colorectal cancer</td>
<td>promoter region of pri-miRNA</td>
<td>T/C</td>
<td>genotyping/statistical analysis</td>
<td>NULL</td>
<td><a href="detail?detail=23183747&gene=NULL&mir=miR-34b&disease=colorectal cancer&microRNA_effection=NULL"  >detail</a></td>


</tr>

<tr>

<td><a href="http://www.ncbi.nlm.nih.gov/pubmed/?term=23183747">23183747</a></td>
<td>NULL</td>
<td>miR-34c</td>
<td><a href="http://www.ncbi.nlm.nih.gov/snp/?term=rs4938723">rs4938723</a></td>
<td>colorectal cancer</td>
<td>promoter region of pri-miRNA</td>
<td>T/C</td>
<td>genotyping/statistical analysis</td>
<td>NULL</td>
<td><a href="detail?detail=23183747&gene=NULL&mir=miR-34c&disease=colorectal cancer&microRNA_effection=NULL"  >detail</a></td>


</tr>

<tr>

<td><a href="http://www.ncbi.nlm.nih.gov/pubmed/?term=23306950">23306950</a></td>
<td>NULL</td>
<td>miR-146a</td>
<td><a href="http://www.ncbi.nlm.nih.gov/snp/?term=rs2910164">rs2910164</a></td>
<td>colorectal cancer</td>
<td>stem region opposite to mature miRNA</td>
<td>G/C</td>
<td>genotyping/statistical analysis</td>
<td>NULL</td>
<td><a href="detail?detail=23306950&gene=NULL&mir=miR-146a&disease=colorectal cancer&microRNA_effection=NULL"  >detail</a></td>


</tr>


<tr>

<td><a href="http://www.ncbi.nlm.nih.gov/pubmed/?term=25771723">25771723</a></td>
<td>NULL</td>
<td>miR-107</td>
<td><a href="http://www.ncbi.nlm.nih.gov/snp/?term=rs2296616">rs2296616</a></td>
<td>gastric adenocarcinoma</td>
<td>promoter region of miRNA</td>
<td>T/C</td>
<td>RNA isolation and miRNA microarray/microarray data analysis/SNP selection and genotyping/real-time PCR/construction of reporter plasmids/statistical analysis</td>
<td>decrease</td>
<td><a href="detail?detail=25771723&gene=NULL&mir=miR-107&disease=gastric adenocarcinoma&microRNA_effection=decrease"  >detail</a></td>


</tr>

<tr>

<td><a href="http://www.ncbi.nlm.nih.gov/pubmed/?term=23430453">23430453</a></td>
<td>B7-H1</td>
<td>miR-570</td>
<td><a href="http://www.ncbi.nlm.nih.gov/snp/?term=rs4143815">rs4143815</a></td>
<td>gastric cancer</td>
<td>3'utr</td>
<td>C/G</td>
<td>SNP selection and genotyping/luciferase reporter assays/statistical analysis</td>
<td>lose</td>
<td><a href="detail?detail=23430453&gene=B7-H1&mir=miR-570&disease=gastric cancer&microRNA_effection=lose"  >detail</a></td>


</tr>

<tr>

<td><a href="http://www.ncbi.nlm.nih.gov/pubmed/?term=23688438">23688438</a></td>
<td>B7-H2</td>
<td>miR-24</td>
<td><a href="http://www.ncbi.nlm.nih.gov/snp/?term=rs4819388">rs4819388</a></td>
<td>gastric cancer</td>
<td>3'utr</td>
<td>G/A</td>
<td>genotyping/luciferase reporter assays/statistical analysis</td>
<td>lose</td>
<td><a href="detail?detail=23688438&gene=B7-H2&mir=miR-24&disease=gastric cancer&microRNA_effection=lose"  >detail</a></td>


</tr>

<tr>

<td><a href="http://www.ncbi.nlm.nih.gov/pubmed/?term=23423813">23423813</a></td>
<td>NULL</td>
<td>miR-196a2</td>
<td><a href="http://www.ncbi.nlm.nih.gov/snp/?term=rs11614913">rs11614913</a></td>
<td>gastric cancer</td>
<td>pre-miRNA</td>
<td>T/C</td>
<td>genotyping/statistical analysis</td>
<td>NULL</td>
<td><a href="detail?detail=23423813&gene=NULL&mir=miR-196a2&disease=gastric cancer&microRNA_effection=NULL"  >detail</a></td>


</tr>

<tr>

<td><a href="http://www.ncbi.nlm.nih.gov/pubmed/?term=19834808">19834808</a></td>
<td>NULL</td>
<td>miR-196a2</td>
<td><a href="http://www.ncbi.nlm.nih.gov/snp/?term=rs11614913">rs11614913</a></td>
<td>gastric cancer</td>
<td>pre-miRNA</td>
<td>T/C</td>
<td>genotyping/statistical analysis</td>
<td>NULL</td>
<td><a href="detail?detail=19834808&gene=NULL&mir=miR-196a2&disease=gastric cancer&microRNA_effection=NULL"  >detail</a></td>


</tr>

<tr>

<td><a href="http://www.ncbi.nlm.nih.gov/pubmed/?term=21073609">21073609</a></td>
<td>NULL</td>
<td>miR-196a2</td>
<td><a href="http://www.ncbi.nlm.nih.gov/snp/?term=rs11614913">rs11614913</a></td>
<td>gastric cancer</td>
<td>pre-miRNA</td>
<td>C/T</td>
<td>genotyping/statistical analysis</td>
<td>NULL</td>
<td><a href="detail?detail=21073609&gene=NULL&mir=miR-196a2&disease=gastric cancer&microRNA_effection=NULL"  >detail</a></td>


</tr>

<tr>

<td><a href="http://www.ncbi.nlm.nih.gov/pubmed/?term=24716941">24716941</a></td>
<td>NULL</td>
<td>miR-196a2</td>
<td><a href="http://www.ncbi.nlm.nih.gov/snp/?term=rs11614913">rs11614913</a></td>
<td>gastric cancer</td>
<td>pre-miRNA</td>
<td>T/C</td>
<td>genotyping/statistical analysis</td>
<td>NULL</td>
<td><a href="detail?detail=24716941&gene=NULL&mir=miR-196a2&disease=gastric cancer&microRNA_effection=NULL"  >detail</a></td>


</tr>

<tr>

<td><a href="http://www.ncbi.nlm.nih.gov/pubmed/?term=23246964">23246964</a></td>
<td>HOXA10</td>
<td>miR-27a</td>
<td><a href="http://www.ncbi.nlm.nih.gov/snp/?term=rs11671784">rs11671784</a></td>
<td>gastric cancer</td>
<td>pre-miRNA</td>
<td>G/A</td>
<td>DNA isolation and genotyping/plasmid construction/stable transfection/transformation/soft agar assay/tumorigenicity assays/qRT-PCR/miRNA transfection/transwell invasion assays/western blot/luciferase reporter assay/statistical analysis</td>
<td>NULL</td>
<td><a href="detail?detail=23246964&gene=HOXA10&mir=miR-27a&disease=gastric cancer&microRNA_effection=NULL"  >detail</a></td>


</tr>

<tr>

<td><a href="http://www.ncbi.nlm.nih.gov/pubmed/?term=21976437">21976437</a></td>
<td>NULL</td>
<td>miR-149</td>
<td><a href="http://www.ncbi.nlm.nih.gov/snp/?term=rs2292832">rs2292832</a></td>
<td>gastric cancer</td>
<td>pre-miRNA</td>
<td>NULL</td>
<td>SNP selection and genotyping/miRNAs expression assay/statistical analysis</td>
<td>NULL</td>
<td><a href="detail?detail=21976437&gene=NULL&mir=miR-149&disease=gastric cancer&microRNA_effection=NULL"  >detail</a></td>


</tr>

<tr>

<td><a href="http://www.ncbi.nlm.nih.gov/pubmed/?term=20653068">20653068</a></td>
<td>NULL</td>
<td>miR-146a</td>
<td><a href="http://www.ncbi.nlm.nih.gov/snp/?term=rs2910164">rs2910164</a></td>
<td>gastric cancer</td>
<td>pre-miRNA</td>
<td>C/G</td>
<td>genotyping/statistical analysis</td>
<td>NULL</td>
<td><a href="detail?detail=20653068&gene=NULL&mir=miR-146a&disease=gastric cancer&microRNA_effection=NULL"  >detail</a></td>


</tr>

<tr>

<td><a href="http://www.ncbi.nlm.nih.gov/pubmed/?term=21073609">21073609</a></td>
<td>NULL</td>
<td>miR-146a</td>
<td><a href="http://www.ncbi.nlm.nih.gov/snp/?term=rs2910164">rs2910164</a></td>
<td>gastric cancer</td>
<td>pre-miRNA</td>
<td>G/C</td>
<td>genotyping/statistical analysis</td>
<td>NULL</td>
<td><a href="detail?detail=21073609&gene=NULL&mir=miR-146a&disease=gastric cancer&microRNA_effection=NULL"  >detail</a></td>


</tr>

<tr>

<td><a href="http://www.ncbi.nlm.nih.gov/pubmed/?term=22455393">22455393</a></td>
<td>NULL</td>
<td>miR-146a</td>
<td><a href="http://www.ncbi.nlm.nih.gov/snp/?term=rs2910164">rs2910164</a></td>
<td>gastric cancer</td>
<td>pre-miRNA</td>
<td>G/C</td>
<td>DNA extraction and genotyping/statistical analysis</td>
<td>NULL</td>
<td><a href="detail?detail=22455393&gene=NULL&mir=miR-146a&disease=gastric cancer&microRNA_effection=NULL"  >detail</a></td>


</tr>

<tr>

<td><a href="http://www.ncbi.nlm.nih.gov/pubmed/?term=25202115">25202115</a></td>
<td>NULL</td>
<td>miR-499</td>
<td><a href="http://www.ncbi.nlm.nih.gov/snp/?term=rs3746444">rs3746444</a></td>
<td>gastric cancer</td>
<td>pre-miRNA</td>
<td>A/G</td>
<td>genotyping/statistical analysis</td>
<td>NULL</td>
<td><a href="detail?detail=25202115&gene=NULL&mir=miR-499&disease=gastric cancer&microRNA_effection=NULL"  >detail</a></td>


</tr>

<tr>

<td><a href="http://www.ncbi.nlm.nih.gov/pubmed/?term=20666778">20666778</a></td>
<td>ZBTB10</td>
<td>miR-27a</td>
<td><a href="http://www.ncbi.nlm.nih.gov/snp/?term=rs895819">rs895819</a></td>
<td>gastric cancer</td>
<td>pre-miRNA</td>
<td>A/G</td>
<td>genotyping/quantitative RT-PCR/statistics</td>
<td>increase</td>
<td><a href="detail?detail=20666778&gene=ZBTB10&mir=miR-27a&disease=gastric cancer&microRNA_effection=increase"  >detail</a></td>


</tr>

<tr>

<td><a href="http://www.ncbi.nlm.nih.gov/pubmed/?term=22108846">22108846</a></td>
<td>NULL</td>
<td>miR-30c</td>
<td><a href="http://www.ncbi.nlm.nih.gov/snp/?term=rs928508">rs928508</a></td>
<td>gastric cancer</td>
<td>pre-miRNA</td>
<td>A/G</td>
<td>DNA extraction and genotyping/RNA isolation and quantitative reverse transcription polymerase chain reaction/stasistical analysis</td>
<td>decrease</td>
<td><a href="detail?detail=22108846&gene=NULL&mir=miR-30c&disease=gastric cancer&microRNA_effection=decrease"  >detail</a></td>


</tr>

<tr>

<td><a href="http://www.ncbi.nlm.nih.gov/pubmed/?term=25399405">25399405</a></td>
<td>NULL</td>
<td>miR-27a</td>
<td><a href="http://www.ncbi.nlm.nih.gov/snp/?term=rs11671784">rs11671784</a></td>
<td>gastric cancer</td>
<td>pri-miRNA</td>
<td>G/A</td>
<td>genotyping/qRT-PCR/statistical analysis</td>
<td>NULL</td>
<td><a href="detail?detail=25399405&gene=NULL&mir=miR-27a&disease=gastric cancer&microRNA_effection=NULL"  >detail</a></td>


</tr>

<tr>

<td><a href="http://www.ncbi.nlm.nih.gov/pubmed/?term=24760009">24760009</a></td>
<td>NULL</td>
<td>let-7a</td>
<td><a href="http://www.ncbi.nlm.nih.gov/snp/?term=rs629367">rs629367</a></td>
<td>gastric cancer</td>
<td>pri-miRNA</td>
<td>A/C</td>
<td>genotyping/RNA extraction and real-time PCR</td>
<td>increase</td>
<td><a href="detail?detail=24760009&gene=NULL&mir=let-7a&disease=gastric cancer&microRNA_effection=increase"  >detail</a></td>


</tr>

<tr>

<td><a href="http://www.ncbi.nlm.nih.gov/pubmed/?term=25399405">25399405</a></td>
<td>NULL</td>
<td>miR-27a</td>
<td><a href="http://www.ncbi.nlm.nih.gov/snp/?term=rs895819">rs895819</a></td>
<td>gastric cancer</td>
<td>pri-miRNA</td>
<td>A/G</td>
<td>genotyping/qRT-PCR/statistical analysis</td>
<td>NULL</td>
<td><a href="detail?detail=25399405&gene=NULL&mir=miR-27a&disease=gastric cancer&microRNA_effection=NULL"  >detail</a></td>


</tr>

<tr>

<td><a href="http://www.ncbi.nlm.nih.gov/pubmed/?term=25474430">25474430</a></td>
<td>NULL</td>
<td>miR-196a2</td>
<td><a href="http://www.ncbi.nlm.nih.gov/snp/?term=rs35010275">rs35010275</a></td>
<td>gastric cancer</td>
<td>promoter region of miRNA</td>
<td>G/C</td>
<td>DNA isolation and genotyping/RNA isolation and qRT-PCR/construction of reporter plasmids/transfection and luciferase assay/electrophoretic mobility shift assay/statistical analysis</td>
<td>NULL</td>
<td><a href="detail?detail=25474430&gene=NULL&mir=miR-196a2&disease=gastric cancer&microRNA_effection=NULL"  >detail</a></td>


</tr>

<tr>

<td><a href="http://www.ncbi.nlm.nih.gov/pubmed/?term=25445498">25445498</a></td>
<td>NULL</td>
<td>miR-146a</td>
<td><a href="http://www.ncbi.nlm.nih.gov/snp/?term=rs11614913">rs11614913</a></td>
<td>hirschsprung disease</td>
<td>pre-miRNA</td>
<td>NULL</td>
<td>SNP selection and genotyping/quantitative real time-PCR/statistical analysis</td>
<td>NULL</td>
<td><a href="detail?detail=25445498&gene=NULL&mir=miR-146a&disease=hirschsprung disease&microRNA_effection=NULL"  >detail</a></td>


</tr>
<tr>

<td><a href="http://www.ncbi.nlm.nih.gov/pubmed/?term=23543085">23543085</a></td>
<td>NULL</td>
<td>miR-196a2</td>
<td><a href="http://www.ncbi.nlm.nih.gov/snp/?term=rs11614913">rs11614913</a></td>
<td>ulcerative colitis</td>
<td>pre-miRNA</td>
<td>NULL</td>
<td>genotyping/statistical analysis</td>
<td>NULL</td>
<td><a href="detail?detail=23543085&gene=NULL&mir=miR-196a2&disease=ulcerative colitis&microRNA_effection=NULL"  >detail</a></td>


</tr>

<tr>

<td><a href="http://www.ncbi.nlm.nih.gov/pubmed/?term=20848167">20848167</a></td>
<td>NULL</td>
<td>miR-196a2</td>
<td><a href="http://www.ncbi.nlm.nih.gov/snp/?term=rs11614913">rs11614913</a></td>
<td>ulcerative colitis</td>
<td>pre-miRNA</td>
<td>T/C</td>
<td>genotyping/stasistical analysis</td>
<td>NULL</td>
<td><a href="detail?detail=20848167&gene=NULL&mir=miR-196a2&disease=ulcerative colitis&microRNA_effection=NULL"  >detail</a></td>


</tr>

<tr>

<td><a href="http://www.ncbi.nlm.nih.gov/pubmed/?term=20848167">20848167</a></td>
<td>NULL</td>
<td>miR-499</td>
<td><a href="http://www.ncbi.nlm.nih.gov/snp/?term=rs3746444">rs3746444</a></td>
<td>ulcerative colitis</td>
<td>pre-miRNA</td>
<td>A/G</td>
<td>genotyping/stasistical analysis</td>
<td>NULL</td>
<td><a href="detail?detail=20848167&gene=NULL&mir=miR-499&disease=ulcerative colitis&microRNA_effection=NULL"  >detail</a></td>


</tr>

<tr>

<td><a href="http://www.ncbi.nlm.nih.gov/pubmed/?term=20585341">20585341</a></td>
<td>NULL</td>
<td>miR-100</td>
<td><a href="http://www.ncbi.nlm.nih.gov/snp/?term=rs1834306">rs1834306</a></td>
<td>colon cancer</td>
<td>pri-miRNA</td>
<td>C/T</td>
<td>selection of genes and polymorphisms/genotyping/statistical analysis</td>
<td>NULL</td>
<td><a href="detail?detail=20585341&gene=NULL&mir=miR-100&disease=colon cancer&microRNA_effection=NULL"  >detail</a></td>


</tr>

<tr>

<td><a href="http://www.ncbi.nlm.nih.gov/pubmed/?term=20585341">20585341</a></td>
<td>NULL</td>
<td>miR-26a-1</td>
<td><a href="http://www.ncbi.nlm.nih.gov/snp/?term=rs7372209">rs7372209</a></td>
<td>colon cancer</td>
<td>pri-miRNA</td>
<td>C/T</td>
<td>selection of genes and polymorphisms/genotyping/statistical analysis</td>
<td>NULL</td>
<td><a href="detail?detail=20585341&gene=NULL&mir=miR-26a-1&disease=colon cancer&microRNA_effection=NULL"  >detail</a></td>


</tr>


<tr>

<td><a href="http://www.ncbi.nlm.nih.gov/pubmed/?term=21278745">21278745</a></td>
<td>IRGM </td>
<td>miR-196 </td>
<td><a href="http://www.ncbi.nlm.nih.gov/snp/?term=rs10065172">rs10065172</a></td>
<td>Crohn's disease</td>
<td>exon region of target gene</td>
<td>C/T</td>
<td>miRNA and plasmid transfection/miRNA in situ hybridization/TMA construction and immunohistochemistry/laser capture microdissection/fluorescence microscopy/statistical analysis</td>
<td>decrease</td>
<td><a href="detail?detail=21278745&gene=IRGM &mir=miR-196 &disease=Crohn's disease&microRNA_effection=decrease"  >detail</a></td>


</tr>

<tr>

<td><a href="http://www.ncbi.nlm.nih.gov/pubmed/?term=23543085">23543085</a></td>
<td>NULL</td>
<td>miR-146a</td>
<td><a href="http://www.ncbi.nlm.nih.gov/snp/?term=rs2910164">rs2910164</a></td>
<td>Crohn's disease</td>
<td>pre-miRNA</td>
<td>NULL</td>
<td>genotyping/statistical analysis</td>
<td>NULL</td>
<td><a href="detail?detail=23543085&gene=NULL&mir=miR-146a&disease=Crohn's disease&microRNA_effection=NULL"  >detail</a></td>


</tr>


<tr>

<td><a href="http://www.ncbi.nlm.nih.gov/pubmed/?term=23613822">23613822</a></td>
<td>IRAK1</td>
<td>miR-146a</td>
<td><a href="http://www.ncbi.nlm.nih.gov/snp/?term=rs2910164">rs2910164</a></td>
<td>H. pylori-associated gastric lesions</td>
<td>pre-miRNA</td>
<td>G/C</td>
<td>genotyping/statistical analysis</td>
<td>NULL</td>
<td><a href="detail?detail=23613822&gene=IRAK1&mir=miR-146a&disease=H. pylori-associated gastric lesions&microRNA_effection=NULL"  >detail</a></td>


</tr>

<tr>

<td><a href="http://www.ncbi.nlm.nih.gov/pubmed/?term=23613822">23613822</a></td>
<td>TRAF6</td>
<td>miR-146a</td>
<td><a href="http://www.ncbi.nlm.nih.gov/snp/?term=rs2910164">rs2910164</a></td>
<td>H. pylori-associated gastric lesions</td>
<td>pre-miRNA</td>
<td>G/C</td>
<td>genotyping/statistical analysis</td>
<td>NULL</td>
<td><a href="detail?detail=23613822&gene=TRAF6&mir=miR-146a&disease=H. pylori-associated gastric lesions&microRNA_effection=NULL"  >detail</a></td>


</tr>



<tr>

<td><a href="http://www.ncbi.nlm.nih.gov/pubmed/?term=20721625">20721625</a></td>
<td>NULL</td>
<td>miR-146a </td>
<td><a href="http://www.ncbi.nlm.nih.gov/snp/?term=rs2910164">rs2910164</a></td>
<td>severe gastric atrophy </td>
<td>pre-miRNA</td>
<td>G/C</td>
<td>genotyping/statistical analysis</td>
<td>NULL</td>
<td><a href="detail?detail=20721625&gene=NULL&mir=miR-146a &disease=severe gastric atrophy &microRNA_effection=NULL"  >detail</a></td>


</tr>

<tr>

<td><a href="http://www.ncbi.nlm.nih.gov/pubmed/?term=26302683">26302683</a></td>
<td>NULL</td>
<td>miR-27a</td>
<td><a href="http://www.ncbi.nlm.nih.gov/snp/?term=rs895819">rs895819</a></td>
<td>colorectal cancer</td>
<td>miRNA</td>
<td>T/G</td>
<td>genotyping</td>

<td>NULL</td>
<td><a href="detail?detail=26302683&gene=NULL&mir=miR-27a&snpid=rs895819&disease=colorectal cancer&microRNA_effection=NULL"  >detail</a></td>


</tr>
<tr>

<td><a href="http://www.ncbi.nlm.nih.gov/pubmed/?term=26527885">26527885</a></td>
<td>NULL</td>
<td>miR-27a</td>
<td><a href="http://www.ncbi.nlm.nih.gov/snp/?term=rs895819">rs895819</a></td>
<td>colorectal cancer</td>
<td>pre-miRNA</td>
<td>NULL</td>
<td>genotyping</td>

<td>NULL</td>
<td><a href="detail?detail=26527885&gene=NULL&mir=miR-27a&snpid=rs895819&disease=colorectal cancer&microRNA_effection=NULL"  >detail</a></td>


</tr>

<tr>

<td><a href="http://www.ncbi.nlm.nih.gov/pubmed/?term=26547791">26547791</a></td>
<td>PXR</td>
<td>miR-129-5p</td>
<td><a href="http://www.ncbi.nlm.nih.gov/snp/?term=rs3814058">rs3814058</a></td>
<td>colorectal cancer</td>
<td>3'utr</td>
<td>C/T</td>
<td>genotyping/luciferase assay/qPCR</td>

<td>gain</td>
<td><a href="detail?detail=26547791&gene=PXR&mir=miR-129-5p&snpid=rs3814058&disease=colorectal cancer&microRNA_effection=gain"  >detail</a></td>


</tr>
<tr>

<td><a href="http://www.ncbi.nlm.nih.gov/pubmed/?term=26905585">26905585</a></td>
<td>lnc-LAMC2-1:1</td>
<td>miR-128-3p</td>
<td><a href="http://www.ncbi.nlm.nih.gov/snp/?term=rs2147578">rs2147578</a></td>
<td>colorectal cancer</td>
<td>exonic</td>
<td>G/C</td>
<td>genotyping/luciferase reporter assay</td>

<td>gain</td>
<td><a href="detail?detail=26905585&gene=lnc-LAMC2-1:1&mir=miR-128-3p&snpid=rs2147578&disease=colorectal cancer&microRNA_effection=gain"  >detail</a></td>


</tr>

<tr>

<td><a href="http://www.ncbi.nlm.nih.gov/pubmed/?term=26787495">26787495</a></td>
<td>5-HT3E</td>
<td>miR-510</td>
<td><a href="http://www.ncbi.nlm.nih.gov/snp/?term=rs56109847">rs56109847</a></td>
<td>diarrhea predominant irritable bowel syndrome</td>
<td>3'utr</td>
<td>G/A</td>
<td>genotyping/qRT-PCR/western blot/luciferase reporter assay</td>

<td>decrease</td>
<td><a href="detail?detail=26787495&gene=5-HT3E&mir=miR-510&snpid=rs56109847&disease=diarrhea predominant irritable bowel syndrome&microRNA_effection=decrease"  >detail</a></td>


</tr>


<tr>

<td><a href="http://www.ncbi.nlm.nih.gov/pubmed/?term=26394032">26394032</a></td>
<td>PSMD10</td>
<td>miR-505</td>
<td><a href="http://www.ncbi.nlm.nih.gov/snp/?term=rs111638916">rs111638916</a></td>
<td>gastric cancer</td>
<td>3'utr</td>
<td>G/A</td>
<td>genotyping/real-time PCR/dual luciferase reporter assay</td>

<td>decrease</td>
<td><a href="detail?detail=26394032&gene=PSMD10&mir=miR-505&snpid=rs111638916&disease=gastric cancer&microRNA_effection=decrease"  >detail</a></td>


</tr>
<tr>

<td><a href="http://www.ncbi.nlm.nih.gov/pubmed/?term=26597478">26597478</a></td>
<td>NULL</td>
<td>miR-499</td>
<td><a href="http://www.ncbi.nlm.nih.gov/snp/?term=rs3746444">rs3746444</a></td>
<td>gastric cancer</td>
<td>miRNA</td>
<td>NULL</td>
<td>genotyping</td>

<td>NULL</td>
<td><a href="detail?detail=26597478&gene=NULL&mir=miR-499&snpid=rs3746444&disease=gastric cancer&microRNA_effection=NULL"  >detail</a></td>


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
