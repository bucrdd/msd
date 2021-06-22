<%@ page language="java" contentType="text/html; charset=UTF-8"
	pageEncoding="UTF-8"%>
<%@ taglib prefix="s" uri="/struts-tags"%>
<!DOCTYPE html>
<html>
<head>
<meta http-equiv="Content-Type" content="text/html; charset=utf-8" />
<meta http-equiv="X-UA-Compatible" content="IE=10; text/html; charset=utf-8" />
<link rel="stylesheet" href="css/style.css" media="screen" type="text/css" /> <!-- 导航-->
<title>HHMD</title>
<link rel="shortcut icon" href="images/dd.ico" />


		<link rel="stylesheet" type="text/css" href="css/jquery.dataTables.min.css">
		
		<link rel="stylesheet" type="text/css" href="css/buttons.dataTables.min.css">
		
		<script type="text/javascript" language="javascript" src="js/jquery.js"></script>
		<script type="text/javascript" language="javascript" src="js/jquery.dataTables.js"></script>
		<script type="text/javascript" language="javascript" src="js/dataTables.buttons.min.js"></script>
		<script type="text/javascript" language="javascript" src="js/jszip.min.js"></script>
		<script type="text/javascript" language="javascript" src="js/pdfmake.min.js"></script>
		<script type="text/javascript" language="javascript" src="js/vfs_fonts.js"></script>
		<script type="text/javascript" language="javascript" src="js/buttons.html5.min.js"></script>
		<script>
		$(document).ready(function() {
			$('#example').dataTable({
			"pagingType": "full_numbers",  //显示分页所有
			//stateSave: true   //之前选择的分页
			//"searching":true,   //要不要搜索框
			//"scrollY":"200px",     //垂直滚动条
			"lengthMenu": [[10, 25, 50, -1], [10, 25, 50, "All"]],  //定制长度
			
			initComplete: function () {    //加下拉菜单
            var api = this.api();
            api.columns().indexes().flatten().each( function ( i ) {
                var column = api.column( i );
                var select = $('<select><option value=""></option></select>')
                    .appendTo( $(column.footer()).empty() )
                    .on( 'change', function () {
                        var val = $.fn.dataTable.util.escapeRegex(
                            $(this).val()
                        );
                        column
                            .search( val ? '^'+val+'$' : '', true, false )
                            .draw();
                    } );
                column.data().unique().sort().each( function ( d, j ) {
                    select.append( '<option value="'+d+'">'+d+'</option>' )
					} );
				} );
			},
			dom: 'Bfrtip',
        buttons: [
           
            
        ]
			});
		});
		</script>
<style type="text/css">
img{border:none}
body{
background:#FFFFFF;
}
.datatable tr:hover,.datatable tr.hilite
    {
    background-color:#CCC;
    color:#0000CC;
    }

.datatable th,.datatable td
{
    text-align:left;
    border:1px solid 	#ADADAD;
    padding-left:3px;
    padding-top:3px;
    padding-bottom:3px;
    padding-left:3px;
    padding-right:3px;
}
img{
border:0px;}

<!--
.thumbnail span{position:relative;z-index:0;}
.thumbnail:hover{background-color:transparent;z-index:50;}
.thumbnail span{}
.thumbnail span img{border-width:0;padding:2px;position:absolute;background-color:#FFFFE0;left:-1000px;border:1px dashed gray;visibility:hidden;color:#000;text-decoration:none;padding:5px;}
.thumbnail:hover img{visibility:visible;top:-30px;left:0px;}

-->
body,td,th {
	font-family: Arial;
	font-size: 11px;
	}
a:link {color: #B71D1D} 
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
<div style="margin:0 auto;width:1970px;height:135px;z-index:1;" ><a  href="home.jsp"><img src="images/HHMD8.png" style="height: 190px; width: 1970px"/></a></div>
<!-- 导航栏 -->
<div class="top" style="font-size:25px;margin:0 auto;margin-top:20px;width:1900px;height:45px;z-index: 99999;position: relative">
	  <link href="css/font-awesome.css" rel="stylesheet">
		<ul id="breadcrumb">
          <li><a href="home.jsp"><span class="icon icon-home"> </span>&nbsp;Home</a></li>
		  <li><a href="search.jsp"><span class="icon icon-search""></span> &nbsp;Search</a></li>
		  <li><a href="download.jsp"><span class="icon icon-arrow-down"> </span>&nbsp; Download</a></li>
		  <li><a href="Difftools.jsp"><span class="icon icon-gear"> </span>&nbsp; DiffTools</a>
		  <li><a href="network.jsp"><span class="icon icon-rocket"> </span>&nbsp; HM_Gene_Net</a>
		  </li>
		   <!--  <li><a href="m6aprotein.jsp"><span class="icon-beaker"> </span>&nbsp;  m<sup>6</sup>A-Regulator</a></li>-->
		  <li><a href="help.jsp"><span class="icon-beaker"> </span>&nbsp; Help</a></li>
		</ul>
</div>
<div  style="margin:0 auto;-moz-box-shadow:1px 3px 20px #003F5F, 2px 2px 5px #003F5F; -webkit-box-shadow:1px 3px 20px #003F5F, 2px 2px 5px #003F5F; box-shadow:1px 3px 20px #003F5F, 2px 2px 5px #003F5F;width:1970px;height:820px;z-index:3;background:#FFFFFF;position:relative;"  >
<p>&nbsp;</p>
<p>&nbsp;</p>
<div style="font-size: 18px;margin-left:60px;margin-top:35px;display:block;float:left;width:980px;height:50px;background:#FFFFFF;text-align:justify; text-justify:inter-ideograph;">
     <font color="#27408B"> <B>Our database provides downloads of experimentally supported data (<a href="download/m6add-experiment.zip">zip</a>) and all high-throughput data (<a href="download/m6add-high-throughput.zip">zip</a>).</B>
	</font></div>
<div style="width:95%;margin:auto">
<table id="example" class="display" cellspacing="0">
<thead>
<tr>

<td width="10%" ><font >Data name</font></td>
<td width="10%" ><font >Source</font></td>
<td width="10%" ><font >Data Type</font></td>
<td width="10%" ><font >Pubmed</font></td>
<td width="30%" ><font >Title</font></td>
<td width="10%" ><font>Data</font></td>



</tr>
</thead>
<tbody>

<tr >
<td>Esophagus.zip</td>
<td>GSE94487</td>
<td>bed</td>
<td>NA</td>
<td>Epigenetic repression via DNA methylation and trimethylation of H3K27 alters gene expression in esophageal adenocarcinoma [ChIP-Seq]</td>
<td><a href="download/GSE37001.zip"><img src="images/download-icon.jpg" width="25" height="26" /></a></td>
</tr>

<tr >
<td>Monocytes.zip</td>
<td>GSE62908</td>
<td>bed</td>
<td>25793379</td>
<td>ChIP-seq mapping of histone modifications in CD14++ CD16- monocytes from septic disease patients</td>
<td><a href="download/GSE37002.zip"><img src="images/download-icon.jpg" width="25" height="26" /></a></td>
</tr>


<tr >
<td>T cells.zip</td>
<td>GSE122826;GSE130140</td>
<td>bed</td>
<td>31492853;32933554</td>
<td>ChIP seq of primary CD4+ T cells;Cancer-specific CTCF binding facilitates oncogenic transcriptional dysregulation</td>
<td><a href="download/GSE37003.zip"><img src="images/download-icon.jpg" width="25" height="26" /></a></td>
</tr>


<tr >
<td>H9.zip</td>
<td>GSE122128;GSE76626;GSE24447</td>
<td>bed</td>
<td>30397335;27926872;21160473</td>
<td>Genome-wide transcription factor binding and histone mark profiling in pluripotent and lineage-committed cells;Characterization of EZH2-deficient human embryonic stem cells [ChIP-seq and bulk RNA-seq];A unique chromatin signature uncovers early developmental enhancers in humans</td>
<td><a href="download/GSE37004.zip"><img src="images/download-icon.jpg" width="25" height="26" /></a></td>
</tr>



<tr >
<td>FiPSC.zip</td>
<td>GSE97033</td>
<td>bed</td>
<td>29030344</td>
<td>Cell Type-Specific Chromatin Signatures Underline Regulatory DNA Elements in Human Induced Pluripotent Stem Cells and Somatic Cells</td>
<td><a href="download/GSE37002.zip"><img src="images/download-icon.jpg" width="25" height="26" /></a></td>
</tr>



<tr >
<td>EiPSCs.zip</td>
<td>GSE97033</td>
<td>bed</td>
<td>29030344</td>
<td>Cell Type-Specific Chromatin Signatures Underline Regulatory DNA Elements in Human Induced Pluripotent Stem Cells and Somatic Cells</td>
<td><a href="download/GSE37002.zip"><img src="images/download-icon.jpg" width="25" height="26" /></a></td>
</tr>


<tr >
<td>CiPSCs.zip</td>
<td>GSE97033</td>
<td>bed</td>
<td>29030344</td>
<td>Cell Type-Specific Chromatin Signatures Underline Regulatory DNA Elements in Human Induced Pluripotent Stem Cells and Somatic Cells</td>
<td><a href="download/GSE37002.zip"><img src="images/download-icon.jpg" width="25" height="26" /></a></td>
</tr>


<tr >
<td>FX52.zip</td>
<td>GSE102684</td>
<td>bed</td>
<td>29456084</td>
<td>Rescue of Fragile X syndrome by DNA methylation editing of the FMR1 [ChIP-seq II]</td>
<td><a href="download/GSE37002.zip"><img src="images/download-icon.jpg" width="25" height="26" /></a></td>
</tr>


<tr >
<td>HEK293T.zip</td>
<td>GSE129548;GSE51633</td>
<td>bed</td>
<td>31547883;24360279</td>
<td>CGGBP1 regulates chromatin barrier activity and CTCF occupancy at repeats;Brd4 and JMJD6-associated Anti-pause Enhancers in Regulation of Transcriptional Pause Release</td>
<td><a href="download/GSE37002.zip"><img src="images/download-icon.jpg" width="25" height="26" /></a></td>
</tr>


<tr >
<td>WI-38.zip</td>
<td>GSE41048</td>
<td>bed</td>
<td>23064413</td>
<td>Epigenetic polymorphism and the stochastic formation of differentially methylated regions in normal and cancerous tissues (ChIP-Seq and MeDIP-Seq)</td>
<td><a href="download/GSE37002.zip"><img src="images/download-icon.jpg" width="25" height="26" /></a></td>
</tr>


<tr >
<td>293T-Rex.zip</td>
<td>GSE60409</td>
<td>bed</td>
<td>25519132</td>
<td>AUTS2 confers transcriptional activation to PRC1 in the CNS (ChIP-Seq)</td>
<td><a href="download/GSE37002.zip"><img src="images/download-icon.jpg" width="25" height="26" /></a></td>
</tr>


<tr >
<td>H1.zip</td>
<td>GSE60604;GSE26320</td>
<td>bed</td>
<td>25945737;21441907;</td>
<td>An alternative pluripotent state confers interspecies chimaeric competency [ChIP-seq];Mapping and analysis of chromatin state dynamics in nine human cell types (ChIP-Seq)</td>
<td><a href="download/GSE37002.zip"><img src="images/download-icon.jpg" width="25" height="26" /></a></td>
</tr>


<tr >
<td>CyT49.zip</td>
<td>GSE54471</td>
<td>bed</td>
<td>25842977</td>
<td>Developmental Competence Encoded at the Level of Enhancers</td>
<td><a href="download/GSE37002.zip"><img src="images/download-icon.jpg" width="25" height="26" /></a></td>
</tr>


<tr >
<td>ESC.zip</td>
<td>GSE76082;GSE43152;GSE145327</td>
<td>bed</td>
<td>28475175;24172870</td>
<td>Genome-wide maps of chromatin state during the differentiation of hESC into hNECs (ChIP-Seq);A unique epigenetic signature is associated with active DNA replication loci in human embryonic stem cells;Loss of extreme long-range enhancers in human neural crest drives a craniofacial disorder</td>
<td><a href="download/GSE37002.zip"><img src="images/download-icon.jpg" width="25" height="26" /></a></td>
</tr>


<tr >
<td>HEK293.zip</td>
<td>GSE101646;GSE89052;GSE81696;GSE67317;GSE60378;GSE147785;GSE130135</td>
<td>bed</td>
<td>29089422;27926874;26338712;31171701</td>
<td>A cryptic Tudor domain links BRWD2/PHIP to COMPASS-mediated histone H3K4 methylation;KDM2B is a Histone H3K79 Demethylase and Induces Transcriptional Repression via SIRT1-mediated Chromatin Silencing;Multivalent histone and DNA engagement by a PHD/BRD/PWWP triple reader cassette recruits ZMYND8 to K14ac-rich chromatin;A role for Widely Interspaced Zinc finger (WIZ) in retention of the G9a methyltransferase on chromatin;Genomic distribution of Spindlin1, H3K4me3 and H3K9me3 in HEK293 cells;BAHCC1 couples H3K27me3 to gene silencing and tumorigenesis via a conserved BAH module;De-differentiation by Adenovirus E1A Due to Inactivation of Hippo Pathway Effectors YAP and TAZ [ChIP-seq]</td>
<td><a href="download/GSE37002.zip"><img src="images/download-icon.jpg" width="25" height="26" /></a></td>
</tr>






</tbody>
</table>
</div>
 
</div>
<p>&nbsp;</p>
<div style="font-size:25px;margin-top:20px;-moz-box-shadow:1px 3px 20px #003F5F, 2px 2px 5px #003F5F; -webkit-box-shadow:1px 3px 20px #003F5F, 2px 2px 5px #003F5F; box-shadow:1px 3px 20px #003F5F, 2px 2px 5px #003F5F;margin-top:10px; margin:0 auto;width:1970px;height:65px;
	z-index:1;">
	<p>&ensp;</p>
<font COLOR="#191970" face="Calibri"><b>2021 © School of Life Science and Technology, Computational Biology Research Center | Harbin, 150001, Heilongjiang,P.R. China </b> </font>
	</div>
	<p>&nbsp;</p>
</body>
</html>
