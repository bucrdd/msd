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
<p class="center"><font  color="#0099FF" size="+2">Liver</font></p>
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

<td><a href="http://www.ncbi.nlm.nih.gov/pubmed/?term=23868705">23868705</a></td>
<td>DICER1</td>
<td>miR-574-3p</td>
<td><a href="http://www.ncbi.nlm.nih.gov/snp/?term=rs1057035">rs1057035</a></td>
<td>hepatocellular carcinoma</td>
<td>3'utr</td>
<td>T/C</td>
<td>SNP selection and genotyping/luciferase construction/tansient transfection and luciferase assays/statistical analysis</td>
<td>increase</td>
<td><a href="detail?detail=23868705&gene=DICER1&mir=miR-574-3p&disease=hepatocellular carcinoma&microRNA_effection=increase"  >detail</a></td>


</tr>

<tr>

<td><a href="http://www.ncbi.nlm.nih.gov/pubmed/?term=23868705">23868705</a></td>
<td>PIWIL1</td>
<td>miR-1264</td>
<td><a href="http://www.ncbi.nlm.nih.gov/snp/?term=rs10773771">rs10773771</a></td>
<td>hepatocellular carcinoma</td>
<td>3'utr</td>
<td>T/C</td>
<td>SNP selection and genotyping/luciferase construction/tansient transfection and luciferase assays/statistical analysis</td>
<td>increase</td>
<td><a href="detail?detail=23868705&gene=PIWIL1&mir=miR-1264&disease=hepatocellular carcinoma&microRNA_effection=increase"  >detail</a></td>


</tr>

<tr>

<td><a href="http://www.ncbi.nlm.nih.gov/pubmed/?term=25739100">25739100</a></td>
<td>FOXO1</td>
<td>miR-137</td>
<td><a href="http://www.ncbi.nlm.nih.gov/snp/?term=rs17592236">rs17592236</a></td>
<td>hepatocellular carcinoma</td>
<td>3'utr</td>
<td>C/T</td>
<td>genotyping/vector construction/co-transfection/dual-luciferase assays/statistical analysis</td>
<td>decrease</td>
<td><a href="detail?detail=25739100&gene=FOXO1&mir=miR-137&disease=hepatocellular carcinoma&microRNA_effection=decrease"  >detail</a></td>


</tr>

<tr>

<td><a href="http://www.ncbi.nlm.nih.gov/pubmed/?term=25333670">25333670</a></td>
<td>Bcl-xl</td>
<td>let-7b</td>
<td><a href="http://www.ncbi.nlm.nih.gov/snp/?term=rs3208684">rs3208684</a></td>
<td>hepatocellular carcinoma</td>
<td>3'utr</td>
<td>A/C</td>
<td>construction of the vector and dual-luciferase reporter assay/transfection of miRNA mimics and vectors/western blot/statistical analysis</td>
<td>lose</td>
<td><a href="detail?detail=25333670&gene=Bcl-xl&mir=let-7b&disease=hepatocellular carcinoma&microRNA_effection=lose"  >detail</a></td>


</tr>

<tr>

<td><a href="http://www.ncbi.nlm.nih.gov/pubmed/?term=23868705">23868705</a></td>
<td>RAN</td>
<td>miR-199a-3p</td>
<td><a href="http://www.ncbi.nlm.nih.gov/snp/?term=rs3803012">rs3803012</a></td>
<td>hepatocellular carcinoma</td>
<td>3'utr</td>
<td>A/G</td>
<td>SNP selection and genotyping/luciferase construction/tansient transfection and luciferase assays/statistical analysis</td>
<td>increase</td>
<td><a href="detail?detail=23868705&gene=RAN&mir=miR-199a-3p&disease=hepatocellular carcinoma&microRNA_effection=increase"  >detail</a></td>


</tr>

<tr>

<td><a href="http://www.ncbi.nlm.nih.gov/pubmed/?term=25177719">25177719</a></td>
<td>NULL</td>
<td>miR-646</td>
<td><a href="http://www.ncbi.nlm.nih.gov/snp/?term=rs6513497">rs6513497</a></td>
<td>hepatocellular carcinoma</td>
<td>mature-miRNA</td>
<td>T/G</td>
<td>genotyping/statistical analysis</td>
<td>decrease</td>
<td><a href="detail?detail=25177719&gene=NULL&mir=miR-646&disease=hepatocellular carcinoma&microRNA_effection=decrease"  >detail</a></td>


</tr>

<tr>

<td><a href="http://www.ncbi.nlm.nih.gov/pubmed/?term=24377545">24377545</a></td>
<td>NULL</td>
<td>miR-196a2</td>
<td><a href="http://www.ncbi.nlm.nih.gov/snp/?term=rs11614913">rs11614913</a></td>
<td>hepatocellular carcinoma</td>
<td>unspecificed miRNA</td>
<td>C/T</td>
<td>DNA extraction and genotyping/statistical analysis</td>
<td>decrease</td>
<td><a href="detail?detail=24377545&gene=NULL&mir=miR-196a2&disease=hepatocellular carcinoma&microRNA_effection=decrease"  >detail</a></td>


</tr>

<tr>

<td><a href="http://www.ncbi.nlm.nih.gov/pubmed/?term=24377574">24377574</a></td>
<td>NULL</td>
<td>miR-196a2</td>
<td><a href="http://www.ncbi.nlm.nih.gov/snp/?term=rs11614913">rs11614913</a></td>
<td>hepatocellular carcinoma</td>
<td>unspecificed miRNA</td>
<td>C/T</td>
<td>genotyping/statistical analysis</td>
<td>NULL</td>
<td><a href="detail?detail=24377574&gene=NULL&mir=miR-196a2&disease=hepatocellular carcinoma&microRNA_effection=NULL"  >detail</a></td>


</tr>

<tr>

<td><a href="http://www.ncbi.nlm.nih.gov/pubmed/?term=24816919">24816919</a></td>
<td>NULL</td>
<td>miR-196a2</td>
<td><a href="http://www.ncbi.nlm.nih.gov/snp/?term=rs11614913">rs11614913</a></td>
<td>hepatocellular carcinoma</td>
<td>unspecificed miRNA</td>
<td>C/T</td>
<td>DNA extraction and genotyping/statistical analysis</td>
<td>NULL</td>
<td><a href="detail?detail=24816919&gene=NULL&mir=miR-196a2&disease=hepatocellular carcinoma&microRNA_effection=NULL"  >detail</a></td>


</tr>

<tr>

<td><a href="http://www.ncbi.nlm.nih.gov/pubmed/?term=25120701">25120701</a></td>
<td>NULL</td>
<td>miR-196a2</td>
<td><a href="http://www.ncbi.nlm.nih.gov/snp/?term=rs11614913">rs11614913</a></td>
<td>hepatocellular carcinoma</td>
<td>unspecificed miRNA</td>
<td>C/T</td>
<td>DNA extraction and genotyping/statistical analysis</td>
<td>NULL</td>
<td><a href="detail?detail=25120701&gene=NULL&mir=miR-196a2&disease=hepatocellular carcinoma&microRNA_effection=NULL"  >detail</a></td>


</tr>

<tr>

<td><a href="http://www.ncbi.nlm.nih.gov/pubmed/?term=22583825">22583825</a></td>
<td>NULL</td>
<td>miR-149</td>
<td><a href="http://www.ncbi.nlm.nih.gov/snp/?term=rs2292832">rs2292832</a></td>
<td>hepatocellular carcinoma</td>
<td>unspecificed miRNA</td>
<td>C/T</td>
<td>DNA extraction and genotyping/statistical analysis</td>
<td>NULL</td>
<td><a href="detail?detail=22583825&gene=NULL&mir=miR-149&disease=hepatocellular carcinoma&microRNA_effection=NULL"  >detail</a></td>


</tr>

<tr>

<td><a href="http://www.ncbi.nlm.nih.gov/pubmed/?term=25061729">25061729</a></td>
<td>NULL</td>
<td>miR-149</td>
<td><a href="http://www.ncbi.nlm.nih.gov/snp/?term=rs2292832">rs2292832</a></td>
<td>hepatocellular carcinoma</td>
<td>unspecificed miRNA</td>
<td>C/T</td>
<td>DNA extraction and genotyping/statistical amalysis</td>
<td>NULL</td>
<td><a href="detail?detail=25061729&gene=NULL&mir=miR-149&disease=hepatocellular carcinoma&microRNA_effection=NULL"  >detail</a></td>


</tr>

<tr>

<td><a href="http://www.ncbi.nlm.nih.gov/pubmed/?term=25222224">25222224</a></td>
<td>NULL</td>
<td>miR-149</td>
<td><a href="http://www.ncbi.nlm.nih.gov/snp/?term=rs2292832">rs2292832</a></td>
<td>hepatocellular carcinoma</td>
<td>unspecificed miRNA</td>
<td>C/T</td>
<td>DNA extraction and genotyping/statistical analysis</td>
<td>NULL</td>
<td><a href="detail?detail=25222224&gene=NULL&mir=miR-149&disease=hepatocellular carcinoma&microRNA_effection=NULL"  >detail</a></td>


</tr>

<tr>

<td><a href="http://www.ncbi.nlm.nih.gov/pubmed/?term=24816919">24816919</a></td>
<td>NULL</td>
<td>miR-146a </td>
<td><a href="http://www.ncbi.nlm.nih.gov/snp/?term=rs2910164">rs2910164</a></td>
<td>hepatocellular carcinoma</td>
<td>unspecificed miRNA</td>
<td>G/C</td>
<td>DNA extraction and genotyping/statistical analysis</td>
<td>NULL</td>
<td><a href="detail?detail=24816919&gene=NULL&mir=miR-146a &disease=hepatocellular carcinoma&microRNA_effection=NULL"  >detail</a></td>


</tr>

<tr>

<td><a href="http://www.ncbi.nlm.nih.gov/pubmed/?term=22583825">22583825</a></td>
<td>NULL</td>
<td>miR-499</td>
<td><a href="http://www.ncbi.nlm.nih.gov/snp/?term=rs3746444">rs3746444</a></td>
<td>hepatocellular carcinoma</td>
<td>unspecificed miRNA</td>
<td>A/G</td>
<td>DNA extraction and genotyping/statistical analysis</td>
<td>NULL</td>
<td><a href="detail?detail=22583825&gene=NULL&mir=miR-499&disease=hepatocellular carcinoma&microRNA_effection=NULL"  >detail</a></td>


</tr>

<tr>

<td><a href="http://www.ncbi.nlm.nih.gov/pubmed/?term=24854593">24854593</a></td>
<td>NULL</td>
<td>miR-499</td>
<td><a href="http://www.ncbi.nlm.nih.gov/snp/?term=rs3746444">rs3746444</a></td>
<td>hepatocellular carcinoma</td>
<td>unspecificed miRNA</td>
<td>T/C</td>
<td>DNA extraction/genotyping/statistical analysis</td>
<td>NULL</td>
<td><a href="detail?detail=24854593&gene=NULL&mir=miR-499&disease=hepatocellular carcinoma&microRNA_effection=NULL"  >detail</a></td>


</tr>

<tr>

<td><a href="http://www.ncbi.nlm.nih.gov/pubmed/?term=25061729">25061729</a></td>
<td>NULL</td>
<td>miR-499</td>
<td><a href="http://www.ncbi.nlm.nih.gov/snp/?term=rs3746444">rs3746444</a></td>
<td>hepatocellular carcinoma</td>
<td>unspecificed miRNA</td>
<td>A/G</td>
<td>DNA extraction and genotyping/statistical amalysis</td>
<td>NULL</td>
<td><a href="detail?detail=25061729&gene=NULL&mir=miR-499&disease=hepatocellular carcinoma&microRNA_effection=NULL"  >detail</a></td>


</tr>

<tr>

<td><a href="http://www.ncbi.nlm.nih.gov/pubmed/?term=21080878">21080878</a></td>
<td>NULL</td>
<td>miR-196a2</td>
<td><a href="http://www.ncbi.nlm.nih.gov/snp/?term=rs11614913">rs11614913</a></td>
<td>hepatocellular carcinoma</td>
<td>pre-miRNA</td>
<td>CC genotype(C/T)</td>
<td>genotyping/qRT-PCR/statistical analysis</td>
<td>increase</td>
<td><a href="detail?detail=21080878&gene=NULL&mir=miR-196a2&disease=hepatocellular carcinoma&microRNA_effection=increase"  >detail</a></td>


</tr>

<tr>

<td><a href="http://www.ncbi.nlm.nih.gov/pubmed/?term=25408584">25408584</a></td>
<td>NULL</td>
<td>miR-604</td>
<td><a href="http://www.ncbi.nlm.nih.gov/snp/?term=rs2368392">rs2368392</a></td>
<td>hepatocellular carcinoma</td>
<td>pre-miRNA</td>
<td>NULL</td>
<td>genotyping/statistical analysis</td>
<td>NULL</td>
<td><a href="detail?detail=25408584&gene=NULL&mir=miR-604&disease=hepatocellular carcinoma&microRNA_effection=NULL"  >detail</a></td>


</tr>

<tr>

<td><a href="http://www.ncbi.nlm.nih.gov/pubmed/?term=18711148">18711148</a></td>
<td>NULL</td>
<td>miR-146a</td>
<td><a href="http://www.ncbi.nlm.nih.gov/snp/?term=rs2910164">rs2910164</a></td>
<td>hepatocellular carcinoma</td>
<td>pre-miRNA</td>
<td>G/C</td>
<td>genotyping/statistical analysis/northern blot analysis/bromodeoxyuridine incorporation assay/colony formation assay</td>
<td>decrease</td>
<td><a href="detail?detail=18711148&gene=NULL&mir=miR-146a&disease=hepatocellular carcinoma&microRNA_effection=decrease"  >detail</a></td>


</tr>

<tr>

<td><a href="http://www.ncbi.nlm.nih.gov/pubmed/?term=23679271">23679271</a></td>
<td>NULL</td>
<td>miR-499</td>
<td><a href="http://www.ncbi.nlm.nih.gov/snp/?term=rs3746444">rs3746444</a></td>
<td>hepatocellular carcinoma</td>
<td>pre-miRNA</td>
<td>A/G</td>
<td>genotyping/statistical analysis</td>
<td>NULL</td>
<td><a href="detail?detail=23679271&gene=NULL&mir=miR-499&disease=hepatocellular carcinoma&microRNA_effection=NULL"  >detail</a></td>


</tr>

<tr>

<td><a href="http://www.ncbi.nlm.nih.gov/pubmed/?term=24587132">24587132</a></td>
<td>NULL</td>
<td>miR-499</td>
<td><a href="http://www.ncbi.nlm.nih.gov/snp/?term=rs3746444">rs3746444</a></td>
<td>hepatocellular carcinoma</td>
<td>pre-miRNA</td>
<td>NULL</td>
<td>DNA extraction/genotyping/real-time PCR/statistical analysis</td>
<td>NULL</td>
<td><a href="detail?detail=24587132&gene=NULL&mir=miR-499&disease=hepatocellular carcinoma&microRNA_effection=NULL"  >detail</a></td>


</tr>

<tr>

<td><a href="http://www.ncbi.nlm.nih.gov/pubmed/?term=22011248">22011248</a></td>
<td>NULL</td>
<td>miR-218</td>
<td><a href="http://www.ncbi.nlm.nih.gov/snp/?term=rs11134527">rs11134527</a></td>
<td>hepatocellular carcinoma</td>
<td>pri-miRNA</td>
<td>A/G</td>
<td>genotyping/statistical analysis</td>
<td>NULL</td>
<td><a href="detail?detail=22011248&gene=NULL&mir=miR-218&disease=hepatocellular carcinoma&microRNA_effection=NULL"  >detail</a></td>


</tr>

<tr>

<td><a href="http://www.ncbi.nlm.nih.gov/pubmed/?term=24248733">24248733</a></td>
<td>NULL</td>
<td>miR-196a2</td>
<td><a href="http://www.ncbi.nlm.nih.gov/snp/?term=rs12304647">rs12304647</a></td>
<td>hepatocellular carcinoma</td>
<td>pri-miRNA</td>
<td>A/C</td>
<td>genotyping/statistical analysis</td>
<td>NULL</td>
<td><a href="detail?detail=24248733&gene=NULL&mir=miR-196a2&disease=hepatocellular carcinoma&microRNA_effection=NULL"  >detail</a></td>


</tr>

<tr>

<td><a href="http://www.ncbi.nlm.nih.gov/pubmed/?term=24103425">24103425</a></td>
<td>NULL</td>
<td>let-7</td>
<td><a href="http://www.ncbi.nlm.nih.gov/snp/?term=rs10877887">rs10877887</a></td>
<td>hepatocellular carcinoma</td>
<td>promoter region of miRNA</td>
<td>T/C</td>
<td>genotyping/statistical analysis</td>
<td>NULL</td>
<td><a href="detail?detail=24103425&gene=NULL&mir=let-7&disease=hepatocellular carcinoma&microRNA_effection=NULL"  >detail</a></td>


</tr>

<tr>

<td><a href="http://www.ncbi.nlm.nih.gov/pubmed/?term=23632240">23632240</a></td>
<td>NULL</td>
<td>miR-34b</td>
<td><a href="http://www.ncbi.nlm.nih.gov/snp/?term=rs4938723">rs4938723</a></td>
<td>hepatocellular carcinoma</td>
<td>promoter region of miRNA</td>
<td>T/C</td>
<td>genotyping/statistical analysis</td>
<td>NULL</td>
<td><a href="detail?detail=23632240&gene=NULL&mir=miR-34b&disease=hepatocellular carcinoma&microRNA_effection=NULL"  >detail</a></td>


</tr>

<tr>

<td><a href="http://www.ncbi.nlm.nih.gov/pubmed/?term=23632240">23632240</a></td>
<td>NULL</td>
<td>miR-34c</td>
<td><a href="http://www.ncbi.nlm.nih.gov/snp/?term=rs4938723">rs4938723</a></td>
<td>hepatocellular carcinoma</td>
<td>promoter region of miRNA</td>
<td>T/C</td>
<td>genotyping/statistical analysis</td>
<td>NULL</td>
<td><a href="detail?detail=23632240&gene=NULL&mir=miR-34c&disease=hepatocellular carcinoma&microRNA_effection=NULL"  >detail</a></td>


</tr>

<tr>

<td><a href="http://www.ncbi.nlm.nih.gov/pubmed/?term=24416400">24416400</a></td>
<td>MCM7</td>
<td>miR-106b-25</td>
<td><a href="http://www.ncbi.nlm.nih.gov/snp/?term=rs999885">rs999885</a></td>
<td>hepatocellular carcinoma</td>
<td>promoter region of miRNA</td>
<td>A/G</td>
<td>genotyping/statistical analysis</td>
<td>increase</td>
<td><a href="detail?detail=24416400&gene=MCM7&mir=miR-106b-25&disease=hepatocellular carcinoma&microRNA_effection=increase"  >detail</a></td>


</tr>

<tr>

<td><a href="http://www.ncbi.nlm.nih.gov/pubmed/?term=24118778">24118778</a></td>
<td>NULL</td>
<td>miR-218</td>
<td><a href="http://www.ncbi.nlm.nih.gov/snp/?term=rs11134527">rs11134527</a></td>
<td>hepatocellular carcinoma</td>
<td>promoter region of pre-miRNA</td>
<td>NULL</td>
<td>genotyping/statistical analysis</td>
<td>NULL</td>
<td><a href="detail?detail=24118778&gene=NULL&mir=miR-218&disease=hepatocellular carcinoma&microRNA_effection=NULL"  >detail</a></td>


</tr>

<tr>

<td><a href="http://www.ncbi.nlm.nih.gov/pubmed/?term=24615520">24615520</a></td>
<td>NULL</td>
<td>miR-146a</td>
<td><a href="http://www.ncbi.nlm.nih.gov/snp/?term=rs2910164">rs2910164</a></td>
<td>hepatocellular carcinoma</td>
<td>stem region next to mature-miRNA</td>
<td>G/C</td>
<td>DNA extraction and genotyping/statistical analysis</td>
<td>NULL</td>
<td><a href="detail?detail=24615520&gene=NULL&mir=miR-146a&disease=hepatocellular carcinoma&microRNA_effection=NULL"  >detail</a></td>


</tr>

<tr>

<td><a href="http://www.ncbi.nlm.nih.gov/pubmed/?term=20309940">20309940</a></td>
<td>NULL</td>
<td>miR-34b</td>
<td><a href="http://www.ncbi.nlm.nih.gov/snp/?term=rs4938723">rs4938723</a></td>
<td>primary hepatocellular carcinoma</td>
<td>pri-miRNA </td>
<td>T/C</td>
<td>genotyping/statistical analysis</td>
<td>NULL</td>
<td><a href="detail?detail=20309940&gene=NULL&mir=miR-34b&disease=primary hepatocellular carcinoma&microRNA_effection=NULL"  >detail</a></td>


</tr>

<tr>

<td><a href="http://www.ncbi.nlm.nih.gov/pubmed/?term=20309940">20309940</a></td>
<td>NULL</td>
<td>miR-34c</td>
<td><a href="http://www.ncbi.nlm.nih.gov/snp/?term=rs4938723">rs4938723</a></td>
<td>primary hepatocellular carcinoma</td>
<td>pri-miRNA </td>
<td>T/C</td>
<td>genotyping/statistical analysis</td>
<td>NULL</td>
<td><a href="detail?detail=20309940&gene=NULL&mir=miR-34c&disease=primary hepatocellular carcinoma&microRNA_effection=NULL"  >detail</a></td>


</tr>


<tr>

<td><a href="http://www.ncbi.nlm.nih.gov/pubmed/?term=24729511">24729511</a></td>
<td>RAD52</td>
<td>let-7</td>
<td><a href="http://www.ncbi.nlm.nih.gov/snp/?term=rs7963551">rs7963551</a></td>
<td>HBV-related HCC</td>
<td>3'utr</td>
<td>A/C</td>
<td>SNP selection and genotyping/real-time PCR/statistical analysis</td>
<td>increase</td>
<td><a href="detail?detail=24729511&gene=RAD52&mir=let-7&disease=HBV-related HCC&microRNA_effection=increase"  >detail</a></td>


</tr>

<tr>

<td><a href="http://www.ncbi.nlm.nih.gov/pubmed/?term=20188135">20188135</a></td>
<td>NULL</td>
<td>miR-196a2</td>
<td><a href="http://www.ncbi.nlm.nih.gov/snp/?term=rs11614913">rs11614913</a></td>
<td>HBV-related HCC</td>
<td>pre-miRNA</td>
<td>T/C</td>
<td>DNA extraction and genotyping assays/stasistical analysis</td>
<td>NULL</td>
<td><a href="detail?detail=20188135&gene=NULL&mir=miR-196a2&disease=HBV-related HCC&microRNA_effection=NULL"  >detail</a></td>


</tr>

<tr>

<td><a href="http://www.ncbi.nlm.nih.gov/pubmed/?term=24341744">24341744</a></td>
<td>NULL</td>
<td>miR-323b</td>
<td><a href="http://www.ncbi.nlm.nih.gov/snp/?term=rs56103835">rs56103835</a></td>
<td>hepatitis B </td>
<td>pre-miRNA</td>
<td>C/T</td>
<td>genotyping/plasmid constructs and transfection/statistical analysis</td>
<td>NULL</td>
<td><a href="detail?detail=24341744&gene=NULL&mir=miR-323b&disease=hepatitis B &microRNA_effection=NULL"  >detail</a></td>


</tr>
<tr>

<td><a href="http://www.ncbi.nlm.nih.gov/pubmed/?term=21604580">21604580</a></td>
<td>NULL</td>
<td>miR-196a2</td>
<td><a href="http://www.ncbi.nlm.nih.gov/snp/?term=rs11614913">rs11614913</a></td>
<td>hepatitis C</td>
<td>miRNA</td>
<td>T/C</td>
<td>PCR/statistical analysis</td>
<td>NULL</td>
<td><a href="detail?detail=21604580&gene=NULL&mir=miR-196a2&disease=hepatitis C&microRNA_effection=NULL"  >detail</a></td>


</tr>

<tr>

<td><a href="http://www.ncbi.nlm.nih.gov/pubmed/?term=24383923">24383923</a></td>
<td>IL-28B</td>
<td>miR-155</td>
<td><a href="http://www.ncbi.nlm.nih.gov/snp/?term=rs12979860">rs12979860</a></td>
<td>hepatitis C </td>
<td>promoter region of miRNA</td>
<td>NULL</td>
<td>ELISAs/RNA isolation and real-time PCR/western blotting/transfection and reporter gene assays/transfection/genotyping/statistical analysis</td>
<td>NULL</td>
<td><a href="detail?detail=24383923&gene=IL-28B&mir=miR-155&disease=hepatitis C &microRNA_effection=NULL"  >detail</a></td>


</tr>


<tr>

<td><a href="http://www.ncbi.nlm.nih.gov/pubmed/?term=20309940">20309940</a></td>
<td>NULL</td>
<td>miR-34b</td>
<td><a href="http://www.ncbi.nlm.nih.gov/snp/?term=rs4938723">rs4938723</a></td>
<td>primary hepatocellular carcinoma</td>
<td>pri-miRNA </td>
<td>T/C</td>
<td>genotyping/statistical analysis</td>
<td>NULL</td>
<td><a href="detail?detail=20309940&gene=NULL&mir=miR-34b&disease=primary hepatocellular carcinoma&microRNA_effection=NULL"  >detail</a></td>


</tr>

<tr>

<td><a href="http://www.ncbi.nlm.nih.gov/pubmed/?term=20309940">20309940</a></td>
<td>NULL</td>
<td>miR-34c</td>
<td><a href="http://www.ncbi.nlm.nih.gov/snp/?term=rs4938723">rs4938723</a></td>
<td>primary hepatocellular carcinoma</td>
<td>pri-miRNA </td>
<td>T/C</td>
<td>genotyping/statistical analysis</td>
<td>NULL</td>
<td><a href="detail?detail=20309940&gene=NULL&mir=miR-34c&disease=primary hepatocellular carcinoma&microRNA_effection=NULL"  >detail</a></td>


</tr>
<tr>

<td><a href="http://www.ncbi.nlm.nih.gov/pubmed/?term=26365437">26365437</a></td>
<td>NULL</td>
<td>miR-196a2</td>
<td><a href="http://www.ncbi.nlm.nih.gov/snp/?term=rs11614913">rs11614913</a></td>
<td>hepatocellular carcinoma</td>
<td>miRNA</td>
<td>C/T</td>
<td>genotyping/qRT-PCR</td>

<td>increase</td>
<td><a href="detail?detail=26365437&gene=NULL&mir=miR-196a2&snpid=rs11614913&disease=hepatocellular carcinoma&microRNA_effection=increase"  >detail</a></td>


</tr>

<tr>

<td><a href="http://www.ncbi.nlm.nih.gov/pubmed/?term=26464719">26464719</a></td>
<td>NULL</td>
<td>miR-146a</td>
<td><a href="http://www.ncbi.nlm.nih.gov/snp/?term=rs2910164">rs2910164</a></td>
<td>hepatocellular carcinoma</td>
<td>miRNA</td>
<td>NULL</td>
<td>genotyping</td>

<td>NULL</td>
<td><a href="detail?detail=26464719&gene=NULL&mir=miR-146a&snpid=rs2910164&disease=hepatocellular carcinoma&microRNA_effection=NULL"  >detail</a></td>


</tr>
<tr>

<td><a href="http://www.ncbi.nlm.nih.gov/pubmed/?term=26753964">26753964</a></td>
<td>NULL</td>
<td>miR-492</td>
<td><a href="http://www.ncbi.nlm.nih.gov/snp/?term=rs2289030">rs2289030</a></td>
<td>hepatocellular carcinoma</td>
<td>miRNA</td>
<td>G/C</td>
<td>genotyping</td>

<td>NULL</td>
<td><a href="detail?detail=26753964&gene=NULL&mir=miR-492&snpid=rs2289030&disease=hepatocellular carcinoma&microRNA_effection=NULL"  >detail</a></td>


</tr>
<tr>

<td><a href="http://www.ncbi.nlm.nih.gov/pubmed/?term=26815502">26815502</a></td>
<td>NULL</td>
<td>miR-608</td>
<td><a href="http://www.ncbi.nlm.nih.gov/snp/?term=rs4919510">rs4919510</a></td>
<td>hepatocellular carcinoma</td>
<td>miRNA</td>
<td>NULL</td>
<td>genotyping</td>

<td>NULL</td>
<td><a href="detail?detail=26815502&gene=NULL&mir=miR-608&snpid=rs4919510&disease=hepatocellular carcinoma&microRNA_effection=NULL"  >detail</a></td>


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
