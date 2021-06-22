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
<p class="center"><font  color="#0099FF" size="+2">Brain</font></p>
<table bordercolor="#999999" border="1">
<thead>
<tr>

<td >PMID</td>
<td >gene</td>
<td >microRNA_name</td>
<td >SNP_ID</td>
<td >disease</td>
<td >type<a href="help.jsp#q6"><img src="images/help.png" width="18" height="18"></img></a></td>
<td >allele</td>
<td >method</td>
<td >microRNA_effection</td>
<td>detail</td>

</tr>
</thead>
<tbody>

<tr>

<td><a href="http://www.ncbi.nlm.nih.gov/pubmed/?term=23257658">23257658</a></td>
<td>MMP-9</td>
<td>miR-491-5p</td>
<td><a href="http://www.ncbi.nlm.nih.gov/snp/?term=rs1056629">rs1056629</a></td>
<td>atherosclerotic cerebral infarction</td>
<td>3'utr</td>
<td>A/C</td>
<td>DNA extraction/genotyping/luciferase reporter constructs/transient transfection and dual-luciferase reporter/transfection/ELISA/RT-PCR/statistical analysis</td>
<td>decrease</td>
<td><a href="detail?detail=23257658&gene=MMP-9&mir=miR-491-5p&disease=atherosclerotic cerebral infarction&microRNA_effection=decrease"  >detail</a></td>


</tr>

<tr>

<td><a href="http://www.ncbi.nlm.nih.gov/pubmed/?term=25390694">25390694</a></td>
<td>VPAC-1</td>
<td>miR-525-5p</td>
<td><a href="http://www.ncbi.nlm.nih.gov/snp/?term=rs896">rs896</a></td>
<td>Alzheimer's Disease</td>
<td>3'utr</td>
<td>NULL</td>
<td>PCR amplification/transfection and dual luciferase reporter assay/statistical analysis</td>
<td>NULL</td>
<td><a href="detail?detail=25390694&gene=VPAC-1&mir=miR-525-5p&disease=Alzheimer's Disease&microRNA_effection=NULL"  >detail</a></td>


</tr>

<tr>

<td><a href="http://www.ncbi.nlm.nih.gov/pubmed/?term=21709374">21709374</a></td>
<td>OLR1</td>
<td>miR-369-3p</td>
<td><a href="http://www.ncbi.nlm.nih.gov/snp/?term=rs1050283">rs1050283</a></td>
<td>Alzheimer's Disease</td>
<td>3'utr</td>
<td>T/C</td>
<td>DNA isolation/genotyping/real time-PCR/statistical analysis</td>
<td>NULL</td>
<td><a href="detail?detail=21709374&gene=OLR1&mir=miR-369-3p&disease=Alzheimer's Disease&microRNA_effection=NULL"  >detail</a></td>


</tr>

<tr>

<td><a href="http://www.ncbi.nlm.nih.gov/pubmed/?term=22430032">22430032</a></td>
<td>NULL</td>
<td>miR-124</td>
<td><a href="http://www.ncbi.nlm.nih.gov/snp/?term=rs531564">rs531564</a></td>
<td>Alzheimer's Disease</td>
<td>pri-miRNA</td>
<td>G/C</td>
<td>northern blotting analysis/real time PCR analysis/statistical analysis</td>
<td>NULL</td>
<td><a href="detail?detail=22430032&gene=NULL&mir=miR-124&disease=Alzheimer's Disease&microRNA_effection=NULL"  >detail</a></td>


</tr>

<tr>

<td><a href="http://www.ncbi.nlm.nih.gov/pubmed/?term=24586483">24586483</a></td>
<td>NULL</td>
<td>miR-146a</td>
<td><a href="http://www.ncbi.nlm.nih.gov/snp/?term=rs57095329">rs57095329</a></td>
<td>Alzheimer's Disease</td>
<td>promoter region of miRNA</td>
<td>A/G</td>
<td>genotyping/ELISA/RNA extraction and real-time PCR/statistical analysis</td>
<td>NULL</td>
<td><a href="detail?detail=24586483&gene=NULL&mir=miR-146a&disease=Alzheimer's Disease&microRNA_effection=NULL"  >detail</a></td>


</tr>
<tr>

<td><a href="http://www.ncbi.nlm.nih.gov/pubmed/?term=25891929">25891929</a></td>
<td>NULL</td>
<td>miR-146a</td>
<td><a href="http://www.ncbi.nlm.nih.gov/snp/?term=rs57095329">rs57095329</a></td>
<td>drug-resistant epilepsy</td>
<td>promoter region of miRNA</td>
<td>NULL</td>
<td>genotyping/statistical analysis</td>
<td>NULL</td>
<td><a href="detail?detail=25891929&gene=NULL&mir=miR-146a&disease=drug-resistant epilepsy&microRNA_effection=NULL"  >detail</a></td>


</tr>

<tr>

<td><a href="http://www.ncbi.nlm.nih.gov/pubmed/?term=22844323">22844323</a></td>
<td>NULL</td>
<td>miR-34b</td>
<td><a href="http://www.ncbi.nlm.nih.gov/snp/?term=rs4938723">rs4938723</a></td>
<td>intracranial aneurysm</td>
<td>promoter region of target gene</td>
<td>T/C</td>
<td>genotyping/statistical analysis</td>
<td>NULL</td>
<td><a href="detail?detail=22844323&gene=NULL&mir=miR-34b&disease=intracranial aneurysm&microRNA_effection=NULL"  >detail</a></td>


</tr>

<tr>

<td><a href="http://www.ncbi.nlm.nih.gov/pubmed/?term=22844323">22844323</a></td>
<td>NULL</td>
<td>miR-34c</td>
<td><a href="http://www.ncbi.nlm.nih.gov/snp/?term=rs4938723">rs4938723</a></td>
<td>intracranial aneurysm</td>
<td>promoter region of gene</td>
<td>T/C</td>
<td>genotyping/statistical analysis</td>
<td>NULL</td>
<td><a href="detail?detail=22844323&gene=NULL&mir=miR-34c&disease=intracranial aneurysm&microRNA_effection=NULL"  >detail</a></td>


</tr>
<tr>

<td><a href="http://www.ncbi.nlm.nih.gov/pubmed/?term=24178064">24178064</a></td>
<td>NULL</td>
<td>miR-499</td>
<td><a href="http://www.ncbi.nlm.nih.gov/snp/?term=rs3746444">rs3746444</a></td>
<td>ischemic stroke</td>
<td>pre-miRNA</td>
<td>A/G</td>
<td>genotyping/statistical analysis</td>
<td>NULL</td>
<td><a href="detail?detail=24178064&gene=NULL&mir=miR-499&disease=ischemic stroke&microRNA_effection=NULL"  >detail</a></td>


</tr>

<tr>

<td><a href="http://www.ncbi.nlm.nih.gov/pubmed/?term=25867405">25867405</a></td>
<td>NULL</td>
<td>miR-149</td>
<td><a href="http://www.ncbi.nlm.nih.gov/snp/?term=rs71428439">rs71428439</a></td>
<td>ischemic stroke</td>
<td>pre-miRNA</td>
<td>NULL</td>
<td>genotyping/statistical analysis</td>
<td>NULL</td>
<td><a href="detail?detail=25867405&gene=NULL&mir=miR-149&disease=ischemic stroke&microRNA_effection=NULL"  >detail</a></td>


</tr>

<tr>

<td><a href="http://www.ncbi.nlm.nih.gov/pubmed/?term=20656788">20656788</a></td>
<td>ADCY6</td>
<td>miR-182</td>
<td><a href="http://www.ncbi.nlm.nih.gov/snp/?term=rs76481776">rs76481776</a></td>
<td>major depression</td>
<td>pre-miRNA</td>
<td>C/T</td>
<td>statistical analysis/plasmids construction/real-time quantitative reverse transcription PCR/luciferase activity assays</td>
<td>NULL</td>
<td><a href="detail?detail=20656788&gene=ADCY6&mir=miR-182&disease=major depression&microRNA_effection=NULL"  >detail</a></td>


</tr>

<tr>

<td><a href="http://www.ncbi.nlm.nih.gov/pubmed/?term=20656788">20656788</a></td>
<td>CLOCK</td>
<td>miR-182</td>
<td><a href="http://www.ncbi.nlm.nih.gov/snp/?term=rs76481776">rs76481776</a></td>
<td>major depression</td>
<td>pre-miRNA</td>
<td>C/T</td>
<td>statistical analysis/plasmids construction/real-time quantitative reverse transcription PCR/luciferase activity assays</td>
<td>NULL</td>
<td><a href="detail?detail=20656788&gene=CLOCK&mir=miR-182&disease=major depression&microRNA_effection=NULL"  >detail</a></td>


</tr>

<tr>

<td><a href="http://www.ncbi.nlm.nih.gov/pubmed/?term=20656788">20656788</a></td>
<td>DSIP</td>
<td>miR-182</td>
<td><a href="http://www.ncbi.nlm.nih.gov/snp/?term=rs76481776">rs76481776</a></td>
<td>major depression</td>
<td>pre-miRNA</td>
<td>C/T</td>
<td>statistical analysis/plasmids construction/real-time quantitative reverse transcription PCR/luciferase activity assays</td>
<td>NULL</td>
<td><a href="detail?detail=20656788&gene=DSIP&mir=miR-182&disease=major depression&microRNA_effection=NULL"  >detail</a></td>


</tr>


<tr>

<td><a href="http://www.ncbi.nlm.nih.gov/pubmed/?term=18252210">18252210</a></td>
<td>FGF20</td>
<td>miR-433</td>
<td><a href="http://www.ncbi.nlm.nih.gov/snp/?term=rs12720208">rs12720208</a></td>
<td>parkinson disease</td>
<td>3'utr</td>
<td>NULL</td>
<td>DNA extraction and genotyping/luciferase assay/immunoblot analysis/statistical analysis</td>
<td>NULL</td>
<td><a href="detail?detail=18252210&gene=FGF20&mir=miR-433&disease=parkinson disease&microRNA_effection=NULL"  >detail</a></td>


</tr>
<tr>

<td><a href="http://www.ncbi.nlm.nih.gov/pubmed/?term=23332465">23332465</a></td>
<td>RGS4</td>
<td>miR-124</td>
<td><a href="http://www.ncbi.nlm.nih.gov/snp/?term=rs10759">rs10759</a></td>
<td>schizophrenia</td>
<td>3'utr</td>
<td>A/C</td>
<td>genotyping/luciferase assay/statistical analysis</td>
<td>increase</td>
<td><a href="detail?detail=23332465&gene=RGS4&mir=miR-124&disease=schizophrenia&microRNA_effection=increase"  >detail</a></td>


</tr>

<tr>

<td><a href="http://www.ncbi.nlm.nih.gov/pubmed/?term=23786914">23786914</a></td>
<td>TCF4</td>
<td>miR-137</td>
<td><a href="http://www.ncbi.nlm.nih.gov/snp/?term=rs1625579">rs1625579</a></td>
<td>schizophrenia</td>
<td>unspecificed miRNA</td>
<td>TT genotype(T/G)</td>
<td>genotyping/real-time PCR</td>
<td>decrease</td>
<td><a href="detail?detail=23786914&gene=TCF4&mir=miR-137&disease=schizophrenia&microRNA_effection=decrease"  >detail</a></td>


</tr>

<tr>

<td><a href="http://www.ncbi.nlm.nih.gov/pubmed/?term=25250332">25250332</a></td>
<td>NULL</td>
<td>miR-137</td>
<td><a href="http://www.ncbi.nlm.nih.gov/snp/?term=rs1625579">rs1625579</a></td>
<td>schizophrenia</td>
<td>pre-miRNA</td>
<td>NULL</td>
<td>DNA extraction and genotyping/statistical analysis</td>
<td>NULL</td>
<td><a href="detail?detail=25250332&gene=NULL&mir=miR-137&disease=schizophrenia&microRNA_effection=NULL"  >detail</a></td>


</tr>
<tr>

<td><a href="http://www.ncbi.nlm.nih.gov/pubmed/?term=21744077">21744077</a></td>
<td>NULL</td>
<td>miR-146a</td>
<td><a href="http://www.ncbi.nlm.nih.gov/snp/?term=rs2910164">rs2910164</a></td>
<td>adult glioma</td>
<td>pre-miRNA</td>
<td>G/C</td>
<td>genotyping/statistical analysis</td>
<td>NULL</td>
<td><a href="detail?detail=21744077&gene=NULL&mir=miR-146a&disease=adult glioma&microRNA_effection=NULL"  >detail</a></td>


</tr>
<tr>

<td><a href="http://www.ncbi.nlm.nih.gov/pubmed/?term=21744077">21744077</a></td>
<td>NULL</td>
<td>miR-146a</td>
<td><a href="http://www.ncbi.nlm.nih.gov/snp/?term=rs2910164">rs2910164</a></td>
<td>adult glioma</td>
<td>pre-miRNA</td>
<td>G/C</td>
<td>genotyping/statistical analysis</td>
<td>NULL</td>
<td><a href="detail?detail=21744077&gene=NULL&mir=miR-146a&disease=adult glioma&microRNA_effection=NULL"  >detail</a></td>


</tr>

<tr>

<td><a href="http://www.ncbi.nlm.nih.gov/pubmed/?term=25012956">25012956</a></td>
<td>RAD52</td>
<td>miR-let-7</td>
<td><a href="http://www.ncbi.nlm.nih.gov/snp/?term=rs7963551">rs7963551</a></td>
<td>glioma</td>
<td>3'utr</td>
<td>A/C</td>
<td>SNP selection and genotyping/statistical analysis</td>
<td>decrease</td>
<td><a href="detail?detail=25012956&gene=RAD52&mir=miR-let-7&disease=glioma&microRNA_effection=decrease"  >detail</a></td>


</tr>

<tr>

<td><a href="http://www.ncbi.nlm.nih.gov/pubmed/?term=23430406">23430406</a></td>
<td>NULL</td>
<td>miR-196a2</td>
<td><a href="http://www.ncbi.nlm.nih.gov/snp/?term=rs11614913">rs11614913</a></td>
<td>glioma</td>
<td>mature-miRNA</td>
<td>C/T</td>
<td>genotyping/statistical analysis</td>
<td>NULL</td>
<td><a href="detail?detail=23430406&gene=NULL&mir=miR-196a2&disease=glioma&microRNA_effection=NULL"  >detail</a></td>


</tr>

<tr>

<td><a href="http://www.ncbi.nlm.nih.gov/pubmed/?term=20229273">20229273</a></td>
<td>NULL</td>
<td>miR-196a</td>
<td><a href="http://www.ncbi.nlm.nih.gov/snp/?term=rs11614913">rs11614913</a></td>
<td>glioma</td>
<td>unspecificed miRNA</td>
<td>T/C</td>
<td>DNA extration and genotyping/statistical analysis</td>
<td>NULL</td>
<td><a href="detail?detail=20229273&gene=NULL&mir=miR-196a&disease=glioma&microRNA_effection=NULL"  >detail</a></td>


</tr>

<tr>

<td><a href="http://www.ncbi.nlm.nih.gov/pubmed/?term=23430406">23430406</a></td>
<td>NULL</td>
<td>miR-146a</td>
<td><a href="http://www.ncbi.nlm.nih.gov/snp/?term=rs2910164">rs2910164</a></td>
<td>glioma</td>
<td>stem region opposite to mature-miRNA</td>
<td>G/C</td>
<td>genotyping/statistical analysis</td>
<td>NULL</td>
<td><a href="detail?detail=23430406&gene=NULL&mir=miR-146a&disease=glioma&microRNA_effection=NULL"  >detail</a></td>


</tr>

<tr>

<td><a href="http://www.ncbi.nlm.nih.gov/pubmed/?term=25071529">25071529</a></td>
<td>DCP1B</td>
<td>miR-138-5p</td>
<td><a href="http://www.ncbi.nlm.nih.gov/snp/?term=rs9882688">rs9882688</a></td>
<td>memory performance</td>
<td>3'utr</td>
<td>NULL</td>
<td>genotyping/statistical analysis</td>
<td>NULL</td>
<td><a href="detail?detail=25071529&gene=DCP1B&mir=miR-138-5p&disease=memory performance&microRNA_effection=NULL"  >detail</a></td>


</tr>
<tr>

<td><a href="http://www.ncbi.nlm.nih.gov/pubmed/?term=25074322">25074322</a></td>
<td>JAG2</td>
<td>miR-1224-3p</td>
<td><a href="http://www.ncbi.nlm.nih.gov/snp/?term=rs3742943">rs3742943</a></td>
<td>prion disease</td>
<td>3'utr</td>
<td>G/A</td>
<td>DNA constructs and site-directed mutagenesis/transfection</td>
<td>decrease</td>
<td><a href="detail?detail=25074322&gene=JAG2&mir=miR-1224-3p&disease=prion disease&microRNA_effection=decrease"  >detail</a></td>


</tr>

<tr>

<td><a href="http://www.ncbi.nlm.nih.gov/pubmed/?term=25074322">25074322</a></td>
<td>GABRa4</td>
<td>miR-26a-5p</td>
<td><a href="http://www.ncbi.nlm.nih.gov/snp/?term=rs9291296">rs9291296</a></td>
<td>prion disease</td>
<td>3'utr</td>
<td>T/C</td>
<td>DNA constructs and site-directed mutagenesis/transfection</td>
<td>increase</td>
<td><a href="detail?detail=25074322&gene=GABRa4&mir=miR-26a-5p&disease=prion disease&microRNA_effection=increase"  >detail</a></td>


</tr>

<tr>

<td><a href="http://www.ncbi.nlm.nih.gov/pubmed/?term=26047307">26047307</a></td>
<td>NULL</td>
<td>let-7</td>
<td><a href="http://www.ncbi.nlm.nih.gov/snp/?term=rs10877887">rs10877887</a></td>
<td>major depressive disorder</td>
<td>promoter region of miRNA</td>
<td>NULL</td>
<td>genotyping</td>

<td>NULL</td>
<td><a href="detail?detail=26047307&gene=NULL&mir=let-7&snpid=rs10877887&disease=major depressive disorder&microRNA_effection=NULL"  >detail</a></td>


</tr>

<tr>

<td><a href="http://www.ncbi.nlm.nih.gov/pubmed/?term=26047307">26047307</a></td>
<td>NULL</td>
<td>let-7</td>
<td><a href="http://www.ncbi.nlm.nih.gov/snp/?term=rs13293512">rs13293512</a></td>
<td>major depressive disorder</td>
<td>promoter region of miRNA</td>
<td>NULL</td>
<td>genotyping</td>

<td>NULL</td>
<td><a href="detail?detail=26047307&gene=NULL&mir=let-7&snpid=rs13293512&disease=major depressive disorder&microRNA_effection=NULL"  >detail</a></td>


</tr>
<tr>

<td><a href="http://www.ncbi.nlm.nih.gov/pubmed/?term=26145533">26145533</a></td>
<td>PHOX2B</td>
<td>miR-204</td>
<td><a href="http://www.ncbi.nlm.nih.gov/snp/?term=rs1063611">rs1063611</a></td>
<td>neuroblastoma</td>
<td>3'utr</td>
<td>A/T</td>
<td>genotyping/real-time PCR</td>

<td>decrease</td>
<td><a href="detail?detail=26145533&gene=PHOX2B&mir=miR-204&snpid=rs1063611&disease=neuroblastoma&microRNA_effection=decrease"  >detail</a></td>


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
