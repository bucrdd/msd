<%@ page language="java" contentType="text/html; charset=UTF-8"
	pageEncoding="UTF-8"%>
<%@ taglib prefix="s" uri="/struts-tags"%>
<!DOCTYPE html>
<html>

<head>
<meta http-equiv="Content-Type" content="text/html; charset=utf-8" />
<meta http-equiv="X-UA-Compatible" content="IE=10; text/html; charset=utf-8" />
<link rel="stylesheet" href="css/style.css" media="screen" type="text/css" />
<link rel="stylesheet" href="css/abstract.css"/> 
 <!-- 导航-->
<title>HHMD</title>
<link rel="shortcut icon" href="images/dd.ico" />
<link rel="stylesheet" href="/msd1/css/bootstrap.min.css" />
<link rel="stylesheet" href="/msd1/css/bootstrap-responsive.min.css" />
<script type="text/javascript" src="js/jquery.min.js"></script>
	<script type="text/javascript" src="js/jquery-2.1.0.js"></script>
	<script type="text/javascript" src="js/indexFunction.js"></script>
	
	<script type="text/javascript" src="js/exporting.js"></script>
    <script src="js/consent.js"></script>
  <script type="text/javascript" src="js/highcharts-biowei.js"></script>
  <script src="js/echarts.min.js"></script> 
<!--饼图-->
	<script src="js/jquery-1.8.3.min.js"></script>
<script src="js/highcharts2.js"></script>
<script src="js/dark-unica.js"></script>
<!--input-->
<style>
a:link,a:visited{
 text-decoration:none;  /*超链接无下划线*/
}
a:hover{
	text-decoration:underline;  /*鼠标放上去有下划线*/
}
img{border:none}
body,td,th {
	font-family: Arial;
	font-size:15px;
	}

body{
background:#FFFFFF;
}
      input,
      button {
        font-family: "Cambria";
      }
      input[type=text],
      input[type=password] {
        font-size: 10px;
        min-height: 20px;
        margin: 0;
        padding: 7px 8px;
        outline: none;
        color: #333;
        background-color: #fff;
        background-repeat: no-repeat;
        background-position: right center;
        border: 1px solid #ccc;
        border-radius: 3px;
        box-shadow: inset 0 1px 2px rgba(0,0,0,0.075);
        -moz-box-sizing: border-box;
        box-sizing: border-box;
        transition: all 0.15s ease-in;
        -webkit-transition: all 0.15s ease-in 0;
        vertical-align: middle;
        width: 300px;
      }
      .button {
        position: relative;
        display: inline-block;
        margin: 0;
        padding: 8px 15px;
        font-size: 15px;
        font-weight: regular;
        color: #003F5F;
        text-shadow: 0 1px 0 rgba(255,255,255,0.9);
        white-space: nowrap;
        background-color: #eaeaea;
        background-image: -moz-linear-gradient(#fafafa, #eaeaea);
        background-image: -webkit-linear-gradient(#fafafa, #eaeaea);
        background-image: linear-gradient(#fafafa, #eaeaea);
        background-repeat: repeat-x;
        border-radius: 3px;
        border: 1px solid #ddd;
        border-bottom-color: #c5c5c5;
        box-shadow: 0 1px 3px rgba(0,0,0,.05);
        vertical-align: middle;
        cursor: pointer;
        -moz-box-sizing: border-box;
        box-sizing: border-box;
        -webkit-touch-callout: none;
        -webkit-user-select: none;
        -khtml-user-select: none;
        -moz-user-select: none;
        -ms-user-select: none;
        user-select: none;
        -webkit-appearance: none;
      }
      .button:hover,
      .button:active {
        background-position: 0 -15px;
        border-color: #ccc #ccc #b5b5b5;
      }
      .button:active {
        background-color: #dadada;
        border-color: #b5b5b5;
        background-image: none;
        box-shadow: inset 0 3px 5px rgba(0,0,0,.15);
      }
      .button:focus,
      input[type=text]:focus,
      input[type=password]:focus {
        outline: none;
        border-color: #51a7e8;
        box-shadow: inset 0 1px 2px rgba(0,0,0,.075), 0 0 5px rgba(81,167,232,.5);
      }
     
      label[for=search] {
        display: block;
        text-align: left;
      }
      #search label {
        font-weight: 200;
        padding: 5px 0;
      }
      #search input[type=text] {
        font-size: 6px;
        width: 200px;
      }
      #search .button {
        padding: 7px;
        width: 60px;
      }
 #cookieBanner {
		    display: none;
		    font-size: 14px;
		    width: 920px;
		    /*margin: 0px auto;*/
		    left:50%;
		    margin-left:-460px;
		    padding: 5px;
		    background-color: #ddd;
		    border-bottom: solid 1px #ccc;
		    position:absolute;
		    text-align: center;
		}
		
		#cookieBannerClose {
		    float: right;
		    font-weight: bold;
		    padding: 4px;
		}
		
		#cookieBannerActions {
		    text-align: center;
		    padding-top: 4px;
		}
		ul{
		list-style:none;
		}
		li{
		float:left;list-style:none;
		}
    </style>

<script>
	$(document).ready(function () {
	    $("#header-box").load("common/header.html");
	    $("#footer-box").load("common/footer.html");
	});
var _hmt = _hmt || [];
(function() {
  var hm = document.createElement("script");
  hm.src = "https://hm.baidu.com/hm.js?f5c4faa84e9bc13773c298d39ef90927";
  var s = document.getElementsByTagName("script")[0]; 
  s.parentNode.insertBefore(hm, s);
})();
	function setTab(name,cursel,n){
		for(var i=1;i<=n;i++){
			var menu=document.getElementById(name+i);
			var con=document.getElementById("con_"+name+"_"+i);
			menu.className=i==cursel?"hover":"";
			con.style.display=i==cursel?"block":"none";
		}
	}
</script>

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
<div style="width:775px;height:780px;float:left;position: relative">
	<div style="font-size:20px;margin-left:15px;margin-top:20px;display:block;float:left;width:775px;height:780px;background:#FFFFFF;border:3px solid #006192">
		<div>
			<!--<font style="float: left;" COLOR="#FFFFFF"  face="Calibri"><B>Currently, users can</B></font>  -->
			<div  style="font-size:18px;width:770px;height:40px;line-height:20px;padding-left:0px; background:#006192;">
			<ul id="breadcrum">
			<li id="one1"  onclick="setTab('one',1,4)" class="hover"><a><span class="icon icon-double-angle-right"> </span><b>Flow Chart</b></a></li>
			<li id="one2" style="margin-left:2px;" onclick="setTab('one',2,4)" ><a><span class="icon icon-double-angle-right"> </span><b>Introduction</b></a></li>
			<li id="one3" onclick="setTab('one',3,4)" ><a><span class="icon icon-double-angle-right"> </span><b>Histone modification</b></a></li>
			<li id="one4" onclick="setTab('one',4,4)" ><a><span class="icon icon-double-angle-right"> </span><b>Highlight</b></a></li>
			</ul>
			</div>
		</div>
		<div class="row-fluid" style="width:600px;">
						<div class="span6" style="font-size:25px;line-height:28px;display:block;float:left;background:#FFFFFF;width:750px;padding-left:30px;padding-top:10px;text-align:justify; text-justify:inter-ideograph;">
							<font COLOR="#535457"  >
							<div class="widget-box">
								<div class="Contentbox">
									<div id="con_one_1" class="widget-content hover">
										<!-- <p><b>New</b> - Super-Enhancer Archive is nearly the first integrated and interactive database of super-enhancers up to now as we know.</p>
										<p><b>Comprehensive</b> - It contains the super-enhancers identified in different cell/tissue types of multiple model species (Human, Mouse, Drosophila melanogaster, and Caenorhabditis elegans).</p>
										<p><b>Convenient</b> - It is convenient for biologists to query super-enhancer and its' related information of interested topics.</p>
										<p><b>Functional</b> - Function annotation could be done by integrated online analysis tools (SEA-Browser, TFBS enrichment, H3K27ac enrichment and GREAT).</p> -->
										<p>SEA version 3.0 (i) stores the newly predicted super-enhancers and enhancers of 11 species based on a more optimized rules, expands the types of Cell/Tissue/Disease from 134 to 246,
										 extends the SEs ranking factors from 1 to 3 and the number of species would be increased when the needed data emerge; (ii) includes experimentally identified and confirmed super-enhancers;
										  (iii) lists the functional compositional organization for each SEs through Hi-C data based peak calling; (iv) provides the cell-type/tissue/disease specificity of super-enhancer with an quantitative entropy value;
										   (v) includes online regulatory network supporting flexible analysis of the relationships among coding / non-coding genes and super-enhancer; (vi) supplements classification of publications related to
										    super-enhancers which should be useful for biologist following advance of super-enhancer research; (vii) updated the visualization tool “Browser View of Super-Enhancers”, which is
										     contained of abundant annotation tracks with supporting customized views in genomic scale; (viii) integrates <a target="_blank" class="linkA" href="http://amp.pharm.mssm.edu/Enrichr/">Enrichr</a> into SEA version 3.0 to process the functional significance analysis of these super enhancers.</p>
										<img alt="demo-image" src="images/lc1.png" style="height:180px" align="center">
										<!-- <p>Super-Enhancers have crucial functions in genome, just like the lighthouse illuminating the road ahead, they drive cell-type-specific extremely high expression of genes that define cell identity in development and disease.</p>
									 --></div>
									<div id="con_one_2" class="widget-content" style="display:none">
										<p>
									&nbsp;&nbsp;&nbsp;&nbsp;&nbsp; Histone modifications play important roles in chromatin remodeling, gene transcriptional regula tion, stem cell maintenance and differentiation. 
									Alterations in histone modifications may be linked to human diseases especially cancer. Mining and integration of histone modification data can be beneficial to novel biological discoveries. 
									Human Histone Modification Database focuses on the storage and integration of histone modification datasets that were obtained from laboratory experiments.
									To the best of our knowledge, there has been no special ized database that focuses on histone modifications in mammals, which hinders further systematic and in-depth data mining. </p>
									</div>
									<div id="con_one_3" class="widget-content" style="display:none" >
										<p  align="left" >&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;Histone modification refers to the process of histone N-terminal tail methylation,
										   acetylation, phosphorylation, adenosylation, ubiquitination and ADP ribosylation under
										   the action of related enzymes. By wrapping DNA around core histones (H2A, H2B, H3 and H4),
										   eukaryotic DNA is packaged into chromatin to form repetitive nucleosomes. In mammalian cells.
										   Histone modification provides accessible targets for effectors such as histone methyltransferase
										   and acetyltransferase, and has different effects on chromatin structure and gene transcription
										   according to the type and location of modification. At present, we mainly study the methyl, 
										acetyl and ubiquitin groups in various modification types through chip based technology. </p>
										</div>
									<div id="con_one_4" class="widget-content" style="display:none">
										<p>&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;The new version of HHMD v 2.0 also increases the number of histone modifications detected by ChIP-seq to 60, the number of tissues/cells to 207, and 351 disease states (disease tissue 23, cell line 328).</p>
										<p>&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;HHMD v 2.0 screens out the characteristics of differential histone modifications in tissues for 25 diseases.Based on the above data, we respectively drew the network of histone modification-gene-disease/cell line/normal tissue to visually show the relationship between histone modification and sample type. </p>
										<p>&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;Aiming at the characteristics of histone modifications identified in disease tissues/cell lines, combined with the drug target database,a histone modification-gene target network was also constructed.In addition, in order to facilitate the analysis of the regulatory functions of histone modifications, HHMD v 2.0 provides a genome visualization function, which comprehensively displays histone modifications, transcription factor target genes, super enhancers, CpG islands, gene mutations, and also adds some Hi-C,Spatial genome data of ATAC-seq.</p>
									</div>
								</div>
							</div>
						</div>
					</div>


		
	</div>

    <!--查询-->
	

	
	</div>
	<div style="margin-left:10px;width:450px; height:760px;float:left;position:relative;">
	<div  style="margin-left:15px;margin-top:20px;display:block;float:left;width:600px;height:380px;background:#FFFFFF;border:3px solid #006192">	
<div style="width:597px;height:40px;line-height:40px;padding-left:30px;background:#006192;">
			<font size="5" style="float: center;" COLOR="#FFFFFF"  face="Calibri"><b>Types in histone modifications</b></font>
		</div>
		<div id="container1" style="min-width:400px;height:330px">
	<script>
	var chart = Highcharts.chart('container1', {
	chart: {
		type: 'bar'
	},
	title: {
		text: '',
		style: {
            
            color: '#003F5F',
			fontSize: '25px',
			fontFamily: 'Arial'
			
        }
	},
	xAxis: {
		categories: ['Disease Tissues', 'Normal Tissues', 'Disease CellLines', 'Normal CellLines'],
		  labels: {
            style: {
                   fontWeight: 'bold',
                   color: '#003F5F',
					fontSize: '12px',
					fontFamily: 'Arial'
					
               }
       }
	
	},
	yAxis: {
		min: 0,
		max:300,
		title: {
			text: ''
		}
	},
	legend: {
		/* 图例显示顺序反转
         * 这是因为堆叠的顺序默认是反转的，可以设置 
         * yAxis.reversedStacks = false 来达到类似的效果 
         */
		 enabled: false,
		reversed: true 
	},
	plotOptions: {
		series: {
			stacking: 'normal'
		}
	},
	series: [
	{
		name:'H4R3me2',
		data: [5, 2,2,2]
	}, {
		name:'H4K91ac',
		data: [5, 2,2,2]
	}, {
		name:'H4K8ac',
		data: [5, 2,2,2]
	}, {
		name: 'H4K5ac',
		data: [5, 2,2,2]
	}, {
		name:'H4K20me3',
		data: [5, 2,2,2]
	}, {
		name:'H4K20me1',
		data: [5, 2,2,2]
	}, {
		name:'H4K16ac',
		data: [5, 2,2,2]
	}, {
		name:'H4K12me1',
		data: [5, 2,2,2]
	}, {
		name:'H4K12ac',
		data: [5, 2,2,2]
	}, {
		name:'H4ac',
		data: [5, 2,2,2]
	}, {
		name:'H3R8me2a',
		data: [5, 2,2,2]
	}, {
		name:'H3R2me2',
		data: [5, 2,2,2]
	}, {
		name:'H3R2me1',
		data: [5, 2,2,2]
	}, {
		name:'H3Kme3',
		data: [5, 2,2,2]
	}, {
		name:'H3K9me3',
		data: [5, 2,2,2]
	}, {
		name: 'H3K9me2',
		data: [5, 2,2,2]
	}, {
		name:'H3K9me1',
		data: [5, 2,2,2]
	}, {
		name:'H3K9ac',
		data: [5, 2,2,2]
	}, {
		name:'H3K914ac',
		data: [5, 2,2,2]
	}, {
		name:'H3K79me3',
		data: [5, 2,2,2]
	}, {
		name: 'H3K79me2',
		data: [5, 2,2,2]
	}, {
		name: 'H3K79me1',
		data: [5, 2,2,2]
	}, {
		name: 'H3K56ac',
		data: [5, 2,2,2]
	}, {
		name:'H3K4me3',
		data: [5, 2,2,2]
	}, {
		name:'H3K4me2',
		data: [5, 2,2,2]
	}, {
		name:'H3K4me1',
		data: [5, 2,2,2]
	}, {
		name:'H3K4ac',
		data: [5, 2,2,2]
	}, {
		name:'H3K36me3',
		data: [5, 2,2,2]
	}, {
		name:'H3K36me2',
		data: [5, 2,2,2]
	}, {
		name:'H3K36me1',
		data: [5, 2,2,2]
	}, {
		name:'H3K36ac',
		data: [5, 2,2,2]
	}, {
		name:'H3K2me3',
		data: [5, 2,2,2]
	}, {
		name:'H3K27me3',
		data: [5, 2,2,2]
	}, {
		name:'H3K27me2',
		data: [5, 2,2,2]
	}, {
		name: 'H3K27me1',
		data: [5, 2,2,2]
	}, {
		name:'H3K27me3',
		data: [5, 2,2,2]
	}, {
		name: 'H3K27ac',
		data: [5, 2,2,2]
	}, {
		name: 'H3K23ac',
		data: [5, 2,2,2]
	}, {
		name: 'H3K18ac',
		data: [5, 2,2,2]
	}, {
		name: 'H3K14ac',
		data: [5, 2,2,2]
	}, {
		name: 'H3K122ac',
		data: [5, 2,2,2]
	}, {
		name: 'H3ac',
		data: [5, 2,2,2]
	}, {
		name: 'H2K4me2',
		data: [5, 2,2,2]
	}, {
		name: 'H2K4me1',
		data: [5, 2,2,2]
	}, {
		name: 'H2Bub1',
		data: [5, 2,2,2]
	}, {
		name: 'H2Bub',
		data: [5, 2,2,2]
	}, {
		name: 'H2BK5me1',
		data: [5, 2,2,2]
	}, {
		name: 'H2BK5ac',
		data: [5, 2,2,2]
	}, {
		name: 'H2BK20ac',
		data: [5, 2,2,2]
	}, {
		name: 'H2BK12ac',
		data: [5, 2,2,2]
	}, {
		name: 'H2BK120ub',
		data: [5, 2,2,2]
	}, {
		name: 'H2BK120ac',
		data: [5, 2,2,2]
	}, {
		name: 'H2AZ',
		data: [5, 2,2,2]
	}, {
		name: 'H2aub',
		data: [5, 2,2,2]
	},{
		name: 'H2AK9ac',
		data: [5, 2,2,2]
	},{
		name: 'H2AK5ac',
		data: [5, 2,2,2]
	},{
		name: 'H2aK119ub',
		data: [5, 2,2,2]
	},
	]
});
	</script>
	</div>
	</div>
	<div style="margin-left:15px;margin-top:20px;display:block;float:left;width:600px;height:380px;background:#FFFFFF;border:3px solid #006192">
				<div style="width:596px;height:40px;line-height:40px;padding-left:30px;background:#006192;">
			<font size="5"style="float:center;" COLOR="#FFFFFF"  face="Calibri"><b>Histone Modifications on human Chromsomes </b></font>
		</div>
		<td rowspan="5" valign="top" style="PADDING-BOTTOM: 5px; PADDING-LEFT: 50px; PADDING-RIGHT: 10px; PADDING-TOP: 5px">
		<div style="font-size:14px;display:block;float:left;background:#FFFFFF;padding-left:30px;padding-top:10px;text-align:justify; text-justify:inter-ideograph;">
			                                          <img src="images/Chromosome.png" style="width:497px; height:298px"
			                                                border="0" usemap="#ChromosomeMap" />
															<map name="ChromosomeMap">
																<area shape="rect" coords="5,9,19,10"
																	href="gtgene2?chr=chr1&start=0&end=2300000&title=1p36.33"
																	title="1p36.33" onclick="getLink(document,this)" />
																<area shape="rect" coords="5,9,19,10"
																	href="gtgene2?chr=chr1&start=0&end=2300000&title=1p36.33"
																	title="1p36.33" onclick="getLink(document,this)" />
																<area shape="rect" coords="5,10,19,13"
																	href="gtgene2?chr=chr1&start=2300000&end=5300000&title=1p36.32"
																	title="1p36.32" onclick="getLink(document,this)" />
																<area shape="rect" coords="5,13,19,15"
																	href="gtgene2?chr=chr1&start=5300000&end=7100000&title=1p36.31"
																	title="1p36.31" onclick="getLink(document,this)" />
																<area shape="rect" coords="5,15,19,16"
																	href="gtgene2?chr=chr1&start=7100000&end=9200000&title=1p36.23"
																	title="1p36.23" onclick="getLink(document,this)" />
																<area shape="rect" coords="5,16,19,20"
																	href="gtgene2?chr=chr1&start=9200000&end=12600000&title=1p36.22"
																	title="1p36.22" onclick="getLink(document,this)" />
																<area shape="rect" coords="5,20,19,24"
																	href="gtgene2?chr=chr1&start=12600000&end=16100000&title=1p36.21"
																	title="1p36.21" onclick="getLink(document,this)" />
																<area shape="rect" coords="5,24,19,30"
																	href="gtgene2?chr=chr1&start=16100000&end=20300000&title=1p36.13"
																	title="1p36.13" onclick="getLink(document,this)" />
																<area shape="rect" coords="5,30,19,32"
																	href="gtgene2?chr=chr1&start=20300000&end=23800000&title=1p36.12"
																	title="1p36.12" onclick="getLink(document,this)" />
																<area shape="rect" coords="5,32,19,35"
																	href="gtgene2?chr=chr1&start=23800000&end=27800000&title=1p36.11"
																	title="1p36.11" onclick="getLink(document,this)" />
																<area shape="rect" coords="5,35,19,38"
																	href="gtgene2?chr=chr1&start=27800000&end=30000000&title=1p35.3"
																	title="1p35.3" onclick="getLink(document,this)" />
																<area shape="rect" coords="5,38,19,39"
																	href="gtgene2?chr=chr1&start=30000000&end=32200000&title=1p35.2"
																	title="1p35.2" onclick="getLink(document,this)" />
																<area shape="rect" coords="5,39,19,42"
																	href="gtgene2?chr=chr1&start=32200000&end=34400000&title=1p35.1"
																	title="1p35.1" onclick="getLink(document,this)" />
																<area shape="rect" coords="5,42,19,47"
																	href="gtgene2?chr=chr1&start=34400000&end=39600000&title=1p34.3"
																	title="1p34.3" onclick="getLink(document,this)" />
																<area shape="rect" coords="5,47,19,51"
																	href="gtgene2?chr=chr1&start=39600000&end=43900000&title=1p34.2"
																	title="1p34.2" onclick="getLink(document,this)" />
																<area shape="rect" coords="5,51,19,57"
																	href="gtgene2?chr=chr1&start=43900000&end=46500000&title=1p34.1"
																	title="1p34.1" onclick="getLink(document,this)" />
																<area shape="rect" coords="5,57,19,61"
																	href="gtgene2?chr=chr1&start=46500000&end=51300000&title=1p33"
																	title="1p33" onclick="getLink(document,this)" />
																<area shape="rect" coords="5,61,19,66"
																	href="gtgene2?chr=chr1&start=51300000&end=56200000&title=1p32.3"
																	title="1p32.3" onclick="getLink(document,this)" />
																<area shape="rect" coords="5,66,19,69"
																	href="gtgene2?chr=chr1&start=56200000&end=58700000&title=1p32.2"
																	title="1p32.2" onclick="getLink(document,this)" />
																<area shape="rect" coords="5,69,19,74"
																	href="gtgene2?chr=chr1&start=58700000&end=60900000&title=1p32.1"
																	title="1p32.1" onclick="getLink(document,this)" />
																<area shape="rect" coords="5,74,19,78"
																	href="gtgene2?chr=chr1&start=60900000&end=68700000&title=1p31.3"
																	title="1p31.3" onclick="getLink(document,this)" />
																<area shape="rect" coords="5,78,19,83"
																	href="gtgene2?chr=chr1&start=68700000&end=69500000&title=1p31.2"
																	title="1p31.2" onclick="getLink(document,this)" />
																<area shape="rect" coords="5,83,19,94"
																	href="gtgene2?chr=chr1&start=69500000&end=84700000&title=1p31.1"
																	title="1p31.1" onclick="getLink(document,this)" />
																<area shape="rect" coords="5,94,19,100"
																	href="gtgene2?chr=chr1&start=84700000&end=88100000&title=1p22.3"
																	title="1p22.3" onclick="getLink(document,this)" />
																<area shape="rect" coords="5,100,19,104"
																	href="gtgene2?chr=chr1&start=88100000&end=92000000&title=1p22.2"
																	title="1p22.2" onclick="getLink(document,this)" />
																<area shape="rect" coords="5,104,19,109"
																	href="gtgene2?chr=chr1&start=92000000&end=94500000&title=1p22.1"
																	title="1p22.1" onclick="getLink(document,this)" />
																<area shape="rect" coords="5,109,19,114"
																	href="gtgene2?chr=chr1&start=94500000&end=99400000&title=1p21.3"
																	title="1p21.3" onclick="getLink(document,this)" />
																<area shape="rect" coords="5,114,19,115"
																	href="gtgene2?chr=chr1&start=99400000&end=102000000&title=1p21.2"
																	title="1p21.2" onclick="getLink(document,this)" />
																<area shape="rect" coords="5,115,19,119"
																	href="gtgene2?chr=chr1&start=102000000&end=107000000&title=1p21.1"
																	title="1p21.1" onclick="getLink(document,this)" />
																<area shape="rect" coords="5,119,19,123"
																	href="gtgene2?chr=chr1&start=107000000&end=111600000&title=1p13.3"
																	title="1p13.3" onclick="getLink(document,this)" />
																<area shape="rect" coords="5,123,19,126"
																	href="gtgene2?chr=chr1&start=111600000&end=115900000&title=1p13.2"
																	title="1p13.2" onclick="getLink(document,this)" />
																<area shape="rect" coords="5,126,19,130"
																	href="gtgene2?chr=chr1&start=115900000&end=117600000&title=1p13.1"
																	title="1p13.1" onclick="getLink(document,this)" />
																<area shape="rect" coords="5,130,19,133"
																	href="gtgene2?chr=chr1&start=117600000&end=120700000&title=1p12"
																	title="1p12" onclick="getLink(document,this)" />
																<area shape="rect" coords="5,133,19,134"
																	href="gtgene2?chr=chr1&start=120700000&end=121100000&title=1p11.2"
																	title="1p11.2" onclick="getLink(document,this)" />
																<area shape="rect" coords="5,134,19,139"
																	href="gtgene2?chr=chr1&start=121100000&end=124300000&title=1p11.1"
																	title="1p11.1" onclick="getLink(document,this)" />
																<area shape="rect" coords="5,139,19,142"
																	href="gtgene2?chr=chr1&start=124300000&end=128000000&title=1q11"
																	title="1q11" onclick="getLink(document,this)" />
																<area shape="rect" coords="5,142,19,158"
																	href="gtgene2?chr=chr1&start=128000000&end=142400000&title=1q12"
																	title="1q12" onclick="getLink(document,this)" />
																<area shape="rect" coords="5,158,19,163"
																	href="gtgene2?chr=chr1&start=142400000&end=148000000&title=1q21.1"
																	title="1q21.1" onclick="getLink(document,this)" />
																<area shape="rect" coords="5,163,19,167"
																	href="gtgene2?chr=chr1&start=148000000&end=149600000&title=1q21.2"
																	title="1q21.2" onclick="getLink(document,this)" />
																<area shape="rect" coords="5,167,19,172"
																	href="gtgene2?chr=chr1&start=149600000&end=153300000&title=1q21.3"
																	title="1q21.3" onclick="getLink(document,this)" />
																<area shape="rect" coords="5,172,19,176"
																	href="gtgene2?chr=chr1&start=153300000&end=154800000&title=1q22"
																	title="1q22" onclick="getLink(document,this)" />
																<area shape="rect" coords="5,176,19,182"
																	href="gtgene2?chr=chr1&start=154800000&end=157300000&title=1q23.1"
																	title="1q23.1" onclick="getLink(document,this)" />
																<area shape="rect" coords="5,182,19,186"
																	href="gtgene2?chr=chr1&start=157300000&end=158800000&title=1q23.2"
																	title="1q23.2" onclick="getLink(document,this)" />
																<area shape="rect" coords="5,186,19,192"
																	href="gtgene2?chr=chr1&start=158800000&end=163800000&title=1q23.3"
																	title="1q23.3" onclick="getLink(document,this)" />
																<area shape="rect" coords="5,192,19,194"
																	href="gtgene2?chr=chr1&start=163800000&end=165500000&title=1q24.1"
																	title="1q24.1" onclick="getLink(document,this)" />
																<area shape="rect" coords="5,194,19,197"
																	href="gtgene2?chr=chr1&start=165500000&end=169100000&title=1q24.2"
																	title="1q24.2" onclick="getLink(document,this)" />
																<area shape="rect" coords="5,197,19,200"
																	href="gtgene2?chr=chr1&start=169100000&end=171200000&title=1q24.3"
																	title="1q24.3" onclick="getLink(document,this)" />
																<area shape="rect" coords="5,200,19,203"
																	href="gtgene2?chr=chr1&start=171200000&end=174300000&title=1q25.1"
																	title="1q25.1" onclick="getLink(document,this)" />
																<area shape="rect" coords="5,203,19,206"
																	href="gtgene2?chr=chr1&start=174300000&end=178600000&title=1q25.2"
																	title="1q25.2" onclick="getLink(document,this)" />
																<area shape="rect" coords="5,206,19,213"
																	href="gtgene2?chr=chr1&start=178600000&end=184000000&title=1q25.3"
																	title="1q25.3" onclick="getLink(document,this)" />
																<area shape="rect" coords="5,213,19,217"
																	href="gtgene2?chr=chr1&start=184000000&end=189000000&title=1q31.1"
																	title="1q31.1" onclick="getLink(document,this)" />
																<area shape="rect" coords="5,217,19,219"
																	href="gtgene2?chr=chr1&start=189000000&end=192100000&title=1q31.2"
																	title="1q31.2" onclick="getLink(document,this)" />
																<area shape="rect" coords="5,219,19,223"
																	href="gtgene2?chr=chr1&start=192100000&end=197500000&title=1q31.3"
																	title="1q31.3" onclick="getLink(document,this)" />
																<area shape="rect" coords="5,223,19,231"
																	href="gtgene2?chr=chr1&start=197500000&end=205300000&title=1q32.1"
																	title="1q32.1" onclick="getLink(document,this)" />
																<area shape="rect" coords="5,231,19,235"
																	href="gtgene2?chr=chr1&start=205300000&end=209500000&title=1q32.2"
																	title="1q32.2" onclick="getLink(document,this)" />
																<area shape="rect" coords="5,235,19,238"
																	href="gtgene2?chr=chr1&start=209500000&end=212100000&title=1q32.3"
																	title="1q32.3" onclick="getLink(document,this)" />
																<area shape="rect" coords="5,238,19,244"
																	href="gtgene2?chr=chr1&start=212100000&end=222100000&title=1q41"
																	title="1q41" onclick="getLink(document,this)" />
																<area shape="rect" coords="5,244,19,246"
																	href="gtgene2?chr=chr1&start=222100000&end=222700000&title=1q42.11"
																	title="1q42.11" onclick="getLink(document,this)" />
																<area shape="rect" coords="5,246,19,249"
																	href="gtgene2?chr=chr1&start=222700000&end=225100000&title=1q42.12"
																	title="1q42.12" onclick="getLink(document,this)" />
																<area shape="rect" coords="5,249,19,255"
																	href="gtgene2?chr=chr1&start=225100000&end=228800000&title=1q42.13"
																	title="1q42.13" onclick="getLink(document,this)" />
																<area shape="rect" coords="5,255,19,259"
																	href="gtgene2?chr=chr1&start=228800000&end=232700000&title=1q42.2"
																	title="1q42.2" onclick="getLink(document,this)" />
																<area shape="rect" coords="5,259,19,262"
																	href="gtgene2?chr=chr1&start=232700000&end=234600000&title=1q42.3"
																	title="1q42.3" onclick="getLink(document,this)" />
																<area shape="rect" coords="5,262,19,269"
																	href="gtgene2?chr=chr1&start=234600000&end=241700000&title=1q43"
																	title="1q43" onclick="getLink(document,this)" />
																<area shape="rect" coords="5,269,19,276"
																	href="gtgene2?chr=chr1&start=241700000&end=247249719&title=1q44"
																	title="1q44" onclick="getLink(document,this)" />

																<area shape="rect" coords="26,17,40,24"
																	href="gtgene2?chr=chr2&start=0&end=4300000&title=2p25.3"
																	title="2p25.3" onclick="getLink(document,this)" />
																<area shape="rect" coords="26,24,40,26"
																	href="gtgene2?chr=chr2&start=4300000&end=7000000&title=2p25.2"
																	title="2p25.2" onclick="getLink(document,this)" />
																<area shape="rect" coords="26,26,40,33"
																	href="gtgene2?chr=chr2&start=7000000&end=12800000&title=2p25.1"
																	title="2p25.1" onclick="getLink(document,this)" />
																<area shape="rect" coords="26,33,40,38"
																	href="gtgene2?chr=chr2&start=12800000&end=17000000&title=2p24.3"
																	title="2p24.3" onclick="getLink(document,this)" />
																<area shape="rect" coords="26,38,40,40"
																	href="gtgene2?chr=chr2&start=17000000&end=19100000&title=2p24.2"
																	title="2p24.2" onclick="getLink(document,this)" />
																<area shape="rect" coords="26,40,40,44"
																	href="gtgene2?chr=chr2&start=19100000&end=23900000&title=2p24.1"
																	title="2p24.1" onclick="getLink(document,this)" />
																<area shape="rect" coords="26,44,40,48"
																	href="gtgene2?chr=chr2&start=23900000&end=27700000&title=2p23.3"
																	title="2p23.3" onclick="getLink(document,this)" />
																<area shape="rect" coords="26,48,40,50"
																	href="gtgene2?chr=chr2&start=27700000&end=29800000&title=2p23.2"
																	title="2p23.2" onclick="getLink(document,this)" />
																<area shape="rect" coords="26,50,40,53"
																	href="gtgene2?chr=chr2&start=29800000&end=31900000&title=2p23.1"
																	title="2p23.1" onclick="getLink(document,this)" />
																<area shape="rect" coords="26,53,40,57"
																	href="gtgene2?chr=chr2&start=31900000&end=36400000&title=2p22.3"
																	title="2p22.3" onclick="getLink(document,this)" />
																<area shape="rect" coords="26,57,40,59"
																	href="gtgene2?chr=chr2&start=36400000&end=38400000&title=2p22.2"
																	title="2p22.2" onclick="getLink(document,this)" />
																<area shape="rect" coords="26,59,40,62"
																	href="gtgene2?chr=chr2&start=38400000&end=41600000&title=2p22.1"
																	title="2p22.1" onclick="getLink(document,this)" />
																<area shape="rect" coords="26,62,40,69"
																	href="gtgene2?chr=chr2&start=41600000&end=47600000&title=2p21"
																	title="2p21" onclick="getLink(document,this)" />
																<area shape="rect" coords="26,69,40,73"
																	href="gtgene2?chr=chr2&start=47600000&end=52700000&title=2p16.3"
																	title="2p16.3" onclick="getLink(document,this)" />
																<area shape="rect" coords="26,73,40,75"
																	href="gtgene2?chr=chr2&start=52700000&end=54800000&title=2p16.2"
																	title="2p16.2" onclick="getLink(document,this)" />
																<area shape="rect" coords="26,75,40,79"
																	href="gtgene2?chr=chr2&start=54800000&end=61100000&title=2p16.1"
																	title="2p16.1" onclick="getLink(document,this)" />
																<area shape="rect" coords="26,79,40,85"
																	href="gtgene2?chr=chr2&start=61100000&end=64000000&title=2p15"
																	title="2p15" onclick="getLink(document,this)" />
																<area shape="rect" coords="26,85,40,88"
																	href="gtgene2?chr=chr2&start=64000000&end=70500000&title=2p14"
																	title="2p14" onclick="getLink(document,this)" />
																<area shape="rect" coords="26,88,40,92"
																	href="gtgene2?chr=chr2&start=70500000&end=72600000&title=2p13.3"
																	title="2p13.3" onclick="getLink(document,this)" />
																<area shape="rect" coords="26,92,40,93"
																	href="gtgene2?chr=chr2&start=72600000&end=73900000&title=2p13.2"
																	title="2p13.2" onclick="getLink(document,this)" />
																<area shape="rect" coords="26,93,40,96"
																	href="gtgene2?chr=chr2&start=73900000&end=75400000&title=2p13.1"
																	title="2p13.1" onclick="getLink(document,this)" />
																<area shape="rect" coords="26,96,40,105"
																	href="gtgene2?chr=chr2&start=75400000&end=83700000&title=2p12"
																	title="2p12" onclick="getLink(document,this)" />
																<area shape="rect" coords="26,105,40,113"
																	href="gtgene2?chr=chr2&start=83700000&end=91000000&title=2p11.2"
																	title="2p11.2" onclick="getLink(document,this)" />
																<area shape="rect" coords="26,113,40,117"
																	href="gtgene2?chr=chr2&start=91000000&end=93300000&title=2p11.1"
																	title="2p11.1" onclick="getLink(document,this)" />
																<area shape="rect" coords="26,117,40,120"
																	href="gtgene2?chr=chr2&start=93300000&end=95700000&title=2q11.1"
																	title="2q11.1" onclick="getLink(document,this)" />
																<area shape="rect" coords="26,120,40,125"
																	href="gtgene2?chr=chr2&start=95700000&end=102100000&title=2q11.2"
																	title="2q11.2" onclick="getLink(document,this)" />
																<area shape="rect" coords="26,125,40,130"
																	href="gtgene2?chr=chr2&start=102100000&end=105300000&title=2q12.1"
																	title="2q12.1" onclick="getLink(document,this)" />
																<area shape="rect" coords="26,130,40,132"
																	href="gtgene2?chr=chr2&start=105300000&end=106700000&title=2q12.2"
																	title="2q12.2" onclick="getLink(document,this)" />
																<area shape="rect" coords="26,132,40,135"
																	href="gtgene2?chr=chr2&start=106700000&end=108600000&title=2q12.3"
																	title="2q12.3" onclick="getLink(document,this)" />
																<area shape="rect" coords="26,135,40,139"
																	href="gtgene2?chr=chr2&start=108600000&end=113800000&title=2q13"
																	title="2q13" onclick="getLink(document,this)" />
																<area shape="rect" coords="26,139,40,144"
																	href="gtgene2?chr=chr2&start=113800000&end=118600000&title=2q14.1"
																	title="2q14.1" onclick="getLink(document,this)" />
																<area shape="rect" coords="26,144,40,149"
																	href="gtgene2?chr=chr2&start=118600000&end=122100000&title=2q14.2"
																	title="2q14.2" onclick="getLink(document,this)" />
																<area shape="rect" coords="26,149,40,154"
																	href="gtgene2?chr=chr2&start=122100000&end=129600000&title=2q14.3"
																	title="2q14.3" onclick="getLink(document,this)" />
																<area shape="rect" coords="26,154,40,158"
																	href="gtgene2?chr=chr2&start=129600000&end=132200000&title=2q21.1"
																	title="2q21.1" onclick="getLink(document,this)" />
																<area shape="rect" coords="26,158,40,162"
																	href="gtgene2?chr=chr2&start=132200000&end=134800000&title=2q21.2"
																	title="2q21.2" onclick="getLink(document,this)" />
																<area shape="rect" coords="26,162,40,164"
																	href="gtgene2?chr=chr2&start=134800000&end=136600000&title=2q21.3"
																	title="2q21.3" onclick="getLink(document,this)" />
																<area shape="rect" coords="26,164,40,169"
																	href="gtgene2?chr=chr2&start=136600000&end=142400000&title=2q22.1"
																	title="2q22.1" onclick="getLink(document,this)" />
																<area shape="rect" coords="26,169,40,169"
																	href="gtgene2?chr=chr2&start=142400000&end=144700000&title=2q22.2"
																	title="2q22.2" onclick="getLink(document,this)" />
																<area shape="rect" coords="26,169,40,173"
																	href="gtgene2?chr=chr2&start=144700000&end=148400000&title=2q22.3"
																	title="2q22.3" onclick="getLink(document,this)" />
																<area shape="rect" coords="26,173,40,174"
																	href="gtgene2?chr=chr2&start=148400000&end=149600000&title=2q23.1"
																	title="2q23.1" onclick="getLink(document,this)" />
																<area shape="rect" coords="26,174,40,176"
																	href="gtgene2?chr=chr2&start=149600000&end=150300000&title=2q23.2"
																	title="2q23.2" onclick="getLink(document,this)" />
																<area shape="rect" coords="26,176,40,180"
																	href="gtgene2?chr=chr2&start=150300000&end=154600000&title=2q23.3"
																	title="2q23.3" onclick="getLink(document,this)" />
																<area shape="rect" coords="26,180,40,185"
																	href="gtgene2?chr=chr2&start=154600000&end=159600000&title=2q24.1"
																	title="2q24.1" onclick="getLink(document,this)" />
																<area shape="rect" coords="26,185,40,189"
																	href="gtgene2?chr=chr2&start=159600000&end=163500000&title=2q24.2"
																	title="2q24.2" onclick="getLink(document,this)" />
																<area shape="rect" coords="26,189,40,195"
																	href="gtgene2?chr=chr2&start=163500000&end=169500000&title=2q24.3"
																	title="2q24.3" onclick="getLink(document,this)" />
																<area shape="rect" coords="26,195,40,204"
																	href="gtgene2?chr=chr2&start=169500000&end=177700000&title=2q31.1"
																	title="2q31.1" onclick="getLink(document,this)" />
																<area shape="rect" coords="26,204,40,207"
																	href="gtgene2?chr=chr2&start=177700000&end=180400000&title=2q31.2"
																	title="2q31.2" onclick="getLink(document,this)" />
																<area shape="rect" coords="26,207,40,209"
																	href="gtgene2?chr=chr2&start=180400000&end=182700000&title=2q31.3"
																	title="2q31.3" onclick="getLink(document,this)" />
																<area shape="rect" coords="26,209,40,215"
																	href="gtgene2?chr=chr2&start=182700000&end=189100000&title=2q32.1"
																	title="2q32.1" onclick="getLink(document,this)" />
																<area shape="rect" coords="26,215,40,220"
																	href="gtgene2?chr=chr2&start=189100000&end=191600000&title=2q32.2"
																	title="2q32.2" onclick="getLink(document,this)" />
																<area shape="rect" coords="26,220,40,225"
																	href="gtgene2?chr=chr2&start=191600000&end=197100000&title=2q32.3"
																	title="2q32.3" onclick="getLink(document,this)" />
																<area shape="rect" coords="26,225,40,232"
																	href="gtgene2?chr=chr2&start=197100000&end=203500000&title=2q33.1"
																	title="2q33.1" onclick="getLink(document,this)" />
																<area shape="rect" coords="26,232,40,235"
																	href="gtgene2?chr=chr2&start=203500000&end=205600000&title=2q33.2"
																	title="2q33.2" onclick="getLink(document,this)" />
																<area shape="rect" coords="26,235,40,238"
																	href="gtgene2?chr=chr2&start=205600000&end=209100000&title=2q33.3"
																	title="2q33.3" onclick="getLink(document,this)" />
																<area shape="rect" coords="26,238,40,245"
																	href="gtgene2?chr=chr2&start=209100000&end=215100000&title=2q34"
																	title="2q34" onclick="getLink(document,this)" />
																<area shape="rect" coords="26,245,40,252"
																	href="gtgene2?chr=chr2&start=215100000&end=221300000&title=2q35"
																	title="2q35" onclick="getLink(document,this)" />
																<area shape="rect" coords="26,252,40,255"
																	href="gtgene2?chr=chr2&start=221300000&end=224900000&title=2q36.1"
																	title="2q36.1" onclick="getLink(document,this)" />
																<area shape="rect" coords="26,255,40,256"
																	href="gtgene2?chr=chr2&start=224900000&end=225800000&title=2q36.2"
																	title="2q36.2" onclick="getLink(document,this)" />
																<area shape="rect" coords="26,256,40,261"
																	href="gtgene2?chr=chr2&start=225800000&end=230700000&title=2q36.3"
																	title="2q36.3" onclick="getLink(document,this)" />
																<area shape="rect" coords="26,261,40,267"
																	href="gtgene2?chr=chr2&start=230700000&end=235300000&title=2q37.1"
																	title="2q37.1" onclick="getLink(document,this)" />
																<area shape="rect" coords="26,267,40,269"
																	href="gtgene2?chr=chr2&start=235300000&end=237000000&title=2q37.2"
																	title="2q37.2" onclick="getLink(document,this)" />
																<area shape="rect" coords="26,269,40,276"
																	href="gtgene2?chr=chr2&start=237000000&end=242951149&title=2q37.3"
																	title="2q37.3" onclick="getLink(document,this)" />

																<area shape="rect" coords="49,69,62,71"
																	href="gtgene2?chr=chr3&start=0&end=3500000&title=3p26.3"
																	title="3p26.3" onclick="getLink(document,this)" />
																<area shape="rect" coords="49,71,62,73"
																	href="gtgene2?chr=chr3&start=3500000&end=5500000&title=3p26.2"
																	title="3p26.2" onclick="getLink(document,this)" />
																<area shape="rect" coords="49,73,62,76"
																	href="gtgene2?chr=chr3&start=5500000&end=8700000&title=3p26.1"
																	title="3p26.1" onclick="getLink(document,this)" />
																<area shape="rect" coords="49,76,62,80"
																	href="gtgene2?chr=chr3&start=8700000&end=11500000&title=3p25.3"
																	title="3p25.3" onclick="getLink(document,this)" />
																<area shape="rect" coords="49,80,62,84"
																	href="gtgene2?chr=chr3&start=11500000&end=12400000&title=3p25.2"
																	title="3p25.2" onclick="getLink(document,this)" />
																<area shape="rect" coords="49,84,62,87"
																	href="gtgene2?chr=chr3&start=12400000&end=14700000&title=3p25.1"
																	title="3p25.1" onclick="getLink(document,this)" />
																<area shape="rect" coords="49,87,62,92"
																	href="gtgene2?chr=chr3&start=14700000&end=23800000&title=3p24.3"
																	title="3p24.3" onclick="getLink(document,this)" />
																<area shape="rect" coords="49,92,62,93"
																	href="gtgene2?chr=chr3&start=23800000&end=26400000&title=3p24.2"
																	title="3p24.2" onclick="getLink(document,this)" />
																<area shape="rect" coords="49,93,62,97"
																	href="gtgene2?chr=chr3&start=26400000&end=30800000&title=3p24.1"
																	title="3p24.1" onclick="getLink(document,this)" />
																<area shape="rect" coords="49,97,62,100"
																	href="gtgene2?chr=chr3&start=30800000&end=32100000&title=3p23"
																	title="3p23" onclick="getLink(document,this)" />
																<area shape="rect" coords="49,100,62,104"
																	href="gtgene2?chr=chr3&start=32100000&end=36500000&title=3p22.3"
																	title="3p22.3" onclick="getLink(document,this)" />
																<area shape="rect" coords="49,104,62,105"
																	href="gtgene2?chr=chr3&start=36500000&end=39300000&title=3p22.2"
																	title="3p22.2" onclick="getLink(document,this)" />
																<area shape="rect" coords="49,105,62,108"
																	href="gtgene2?chr=chr3&start=39300000&end=43600000&title=3p22.1"
																	title="3p22.1" onclick="getLink(document,this)" />
																<area shape="rect" coords="49,108,62,113"
																	href="gtgene2?chr=chr3&start=43600000&end=44400000&title=3p21.33"
																	title="3p21.33" onclick="getLink(document,this)" />
																<area shape="rect" coords="49,113,62,116"
																	href="gtgene2?chr=chr3&start=44400000&end=44700000&title=3p21.32"
																	title="3p21.32" onclick="getLink(document,this)" />
																<area shape="rect" coords="49,116,62,127"
																	href="gtgene2?chr=chr3&start=44700000&end=51400000&title=3p21.31"
																	title="3p21.31" onclick="getLink(document,this)" />
																<area shape="rect" coords="49,127,62,130"
																	href="gtgene2?chr=chr3&start=51400000&end=51700000&title=3p21.2"
																	title="3p21.2" onclick="getLink(document,this)" />
																<area shape="rect" coords="49,130,62,135"
																	href="gtgene2?chr=chr3&start=51700000&end=54400000&title=3p21.1"
																	title="3p21.1" onclick="getLink(document,this)" />
																<area shape="rect" coords="49,135,62,138"
																	href="gtgene2?chr=chr3&start=54400000&end=58500000&title=3p14.3"
																	title="3p14.3" onclick="getLink(document,this)" />
																<area shape="rect" coords="49,138,62,143"
																	href="gtgene2?chr=chr3&start=58500000&end=63700000&title=3p14.2"
																	title="3p14.2" onclick="getLink(document,this)" />
																<area shape="rect" coords="49,143,62,146"
																	href="gtgene2?chr=chr3&start=63700000&end=71800000&title=3p14.1"
																	title="3p14.1" onclick="getLink(document,this)" />
																<area shape="rect" coords="49,146,62,151"
																	href="gtgene2?chr=chr3&start=71800000&end=74200000&title=3p13"
																	title="3p13" onclick="getLink(document,this)" />
																<area shape="rect" coords="49,151,62,155"
																	href="gtgene2?chr=chr3&start=74200000&end=81800000&title=3p12.3"
																	title="3p12.3" onclick="getLink(document,this)" />
																<area shape="rect" coords="49,155,62,157"
																	href="gtgene2?chr=chr3&start=81800000&end=83700000&title=3p12.2"
																	title="3p12.2" onclick="getLink(document,this)" />
																<area shape="rect" coords="49,157,62,160"
																	href="gtgene2?chr=chr3&start=83700000&end=87200000&title=3p12.1"
																	title="3p12.1" onclick="getLink(document,this)" />
																<area shape="rect" coords="49,160,62,160"
																	href="gtgene2?chr=chr3&start=87200000&end=89400000&title=3p11.2"
																	title="3p11.2" onclick="getLink(document,this)" />
																<area shape="rect" coords="49,160,62,163"
																	href="gtgene2?chr=chr3&start=89400000&end=91700000&title=3p11.1"
																	title="3p11.1" onclick="getLink(document,this)" />
																<area shape="rect" coords="49,163,62,166"
																	href="gtgene2?chr=chr3&start=91700000&end=93200000&title=3q11.1"
																	title="3q11.1" onclick="getLink(document,this)" />
																<area shape="rect" coords="49,166,62,168"
																	href="gtgene2?chr=chr3&start=93200000&end=99800000&title=3q11.2"
																	title="3q11.2" onclick="getLink(document,this)" />
																<area shape="rect" coords="49,168,62,172"
																	href="gtgene2?chr=chr3&start=99800000&end=101500000&title=3q12.1"
																	title="3q12.1" onclick="getLink(document,this)" />
																<area shape="rect" coords="49,172,62,173"
																	href="gtgene2?chr=chr3&start=101500000&end=102500000&title=3q12.2"
																	title="3q12.2" onclick="getLink(document,this)" />
																<area shape="rect" coords="49,173,62,176"
																	href="gtgene2?chr=chr3&start=102500000&end=104400000&title=3q12.3"
																	title="3q12.3" onclick="getLink(document,this)" />
																<area shape="rect" coords="49,176,62,180"
																	href="gtgene2?chr=chr3&start=104400000&end=107800000&title=3q13.11"
																	title="3q13.11" onclick="getLink(document,this)" />
																<area shape="rect" coords="49,180,62,183"
																	href="gtgene2?chr=chr3&start=107800000&end=109500000&title=3q13.12"
																	title="3q13.12" onclick="getLink(document,this)" />
																<area shape="rect" coords="49,183,62,186"
																	href="gtgene2?chr=chr3&start=109500000&end=112800000&title=3q13.13"
																	title="3q13.13" onclick="getLink(document,this)" />
																<area shape="rect" coords="49,186,62,188"
																	href="gtgene2?chr=chr3&start=112800000&end=115000000&title=3q13.2"
																	title="3q13.2" onclick="getLink(document,this)" />
																<area shape="rect" coords="49,188,62,191"
																	href="gtgene2?chr=chr3&start=115000000&end=118800000&title=3q13.31"
																	title="3q13.31" onclick="getLink(document,this)" />
																<area shape="rect" coords="49,191,62,193"
																	href="gtgene2?chr=chr3&start=118800000&end=120500000&title=3q13.32"
																	title="3q13.32" onclick="getLink(document,this)" />
																<area shape="rect" coords="49,193,62,196"
																	href="gtgene2?chr=chr3&start=120500000&end=123400000&title=3q13.33"
																	title="3q13.33" onclick="getLink(document,this)" />
																<area shape="rect" coords="49,196,62,198"
																	href="gtgene2?chr=chr3&start=123400000&end=125400000&title=3q21.1"
																	title="3q21.1" onclick="getLink(document,this)" />
																<area shape="rect" coords="49,198,62,201"
																	href="gtgene2?chr=chr3&start=125400000&end=127700000&title=3q21.2"
																	title="3q21.2" onclick="getLink(document,this)" />
																<area shape="rect" coords="49,201,62,206"
																	href="gtgene2?chr=chr3&start=127700000&end=131500000&title=3q21.3"
																	title="3q21.3" onclick="getLink(document,this)" />
																<area shape="rect" coords="49,206,62,210"
																	href="gtgene2?chr=chr3&start=131500000&end=135700000&title=3q22.1"
																	title="3q22.1" onclick="getLink(document,this)" />
																<area shape="rect" coords="49,210,62,213"
																	href="gtgene2?chr=chr3&start=135700000&end=137400000&title=3q22.2"
																	title="3q22.2" onclick="getLink(document,this)" />
																<area shape="rect" coords="49,213,62,215"
																	href="gtgene2?chr=chr3&start=137400000&end=140400000&title=3q22.3"
																	title="3q22.3" onclick="getLink(document,this)" />
																<area shape="rect" coords="49,215,62,220"
																	href="gtgene2?chr=chr3&start=140400000&end=144400000&title=3q23"
																	title="3q23" onclick="getLink(document,this)" />
																<area shape="rect" coords="49,220,62,226"
																	href="gtgene2?chr=chr3&start=144400000&end=150400000&title=3q24"
																	title="3q24" onclick="getLink(document,this)" />
																<area shape="rect" coords="49,226,62,229"
																	href="gtgene2?chr=chr3&start=150400000&end=153500000&title=3q25.1"
																	title="3q25.1" onclick="getLink(document,this)" />
																<area shape="rect" coords="49,229,62,232"
																	href="gtgene2?chr=chr3&start=153500000&end=156300000&title=3q25.2"
																	title="3q25.2" onclick="getLink(document,this)" />
																<area shape="rect" coords="49,232,62,234"
																	href="gtgene2?chr=chr3&start=156300000&end=158100000&title=3q25.31"
																	title="3q25.31" onclick="getLink(document,this)" />
																<area shape="rect" coords="49,234,62,236"
																	href="gtgene2?chr=chr3&start=158100000&end=159900000&title=3q25.32"
																	title="3q25.32" onclick="getLink(document,this)" />
																<area shape="rect" coords="49,236,62,237"
																	href="gtgene2?chr=chr3&start=159900000&end=161200000&title=3q25.33"
																	title="3q25.33" onclick="getLink(document,this)" />
																<area shape="rect" coords="49,237,62,243"
																	href="gtgene2?chr=chr3&start=161200000&end=169200000&title=3q26.1"
																	title="3q26.1" onclick="getLink(document,this)" />
																<area shape="rect" coords="49,243,62,245"
																	href="gtgene2?chr=chr3&start=169200000&end=172500000&title=3q26.2"
																	title="3q26.2" onclick="getLink(document,this)" />
																<area shape="rect" coords="49,245,62,248"
																	href="gtgene2?chr=chr3&start=172500000&end=177300000&title=3q26.31"
																	title="3q26.31" onclick="getLink(document,this)" />
																<area shape="rect" coords="49,248,62,251"
																	href="gtgene2?chr=chr3&start=177300000&end=180600000&title=3q26.32"
																	title="3q26.32" onclick="getLink(document,this)" />
																<area shape="rect" coords="49,251,62,253"
																	href="gtgene2?chr=chr3&start=180600000&end=184200000&title=3q26.33"
																	title="3q26.33" onclick="getLink(document,this)" />
																<area shape="rect" coords="49,253,62,256"
																	href="gtgene2?chr=chr3&start=184200000&end=186000000&title=3q27.1"
																	title="3q27.1" onclick="getLink(document,this)" />
																<area shape="rect" coords="49,256,62,258"
																	href="gtgene2?chr=chr3&start=186000000&end=187500000&title=3q27.2"
																	title="3q27.2" onclick="getLink(document,this)" />
																<area shape="rect" coords="49,258,62,260"
																	href="gtgene2?chr=chr3&start=187500000&end=189400000&title=3q27.3"
																	title="3q27.3" onclick="getLink(document,this)" />
																<area shape="rect" coords="49,260,62,266"
																	href="gtgene2?chr=chr3&start=189400000&end=193800000&title=3q28"
																	title="3q28" onclick="getLink(document,this)" />
																<area shape="rect" coords="49,266,62,275"
																	href="gtgene2?chr=chr3&start=193800000&end=199501827&title=3q29"
																	title="3q29" onclick="getLink(document,this)" />

																<area shape="rect" coords="70,78,83,81"
																	href="gtgene2?chr=chr4&start=0&end=3100000&title=4p16.3"
																	title="4p16.3" onclick="getLink(document,this)" />
																<area shape="rect" coords="70,81,83,85"
																	href="gtgene2?chr=chr4&start=3100000&end=5200000&title=4p16.2"
																	title="4p16.2" onclick="getLink(document,this)" />
																<area shape="rect" coords="70,85,83,92"
																	href="gtgene2?chr=chr4&start=5200000&end=10900000&title=4p16.1"
																	title="4p16.1" onclick="getLink(document,this)" />
																<area shape="rect" coords="70,92,83,96"
																	href="gtgene2?chr=chr4&start=10900000&end=15300000&title=4p15.33"
																	title="4p15.33" onclick="getLink(document,this)" />
																<area shape="rect" coords="70,96,83,101"
																	href="gtgene2?chr=chr4&start=15300000&end=18500000&title=4p15.32"
																	title="4p15.32" onclick="getLink(document,this)" />
																<area shape="rect" coords="70,101,83,105"
																	href="gtgene2?chr=chr4&start=18500000&end=23100000&title=4p15.31"
																	title="4p15.31" onclick="getLink(document,this)" />
																<area shape="rect" coords="70,105,83,109"
																	href="gtgene2?chr=chr4&start=23100000&end=27900000&title=4p15.2"
																	title="4p15.2" onclick="getLink(document,this)" />
																<area shape="rect" coords="70,109,83,116"
																	href="gtgene2?chr=chr4&start=27900000&end=35500000&title=4p15.1"
																	title="4p15.1" onclick="getLink(document,this)" />
																<area shape="rect" coords="70,116,83,122"
																	href="gtgene2?chr=chr4&start=35500000&end=40900000&title=4p14"
																	title="4p14" onclick="getLink(document,this)" />
																<area shape="rect" coords="70,122,83,126"
																	href="gtgene2?chr=chr4&start=40900000&end=45600000&title=4p13"
																	title="4p13" onclick="getLink(document,this)" />
																<area shape="rect" coords="70,126,83,129"
																	href="gtgene2?chr=chr4&start=45600000&end=48700000&title=4p12"
																	title="4p12" onclick="getLink(document,this)" />
																<area shape="rect" coords="70,129,83,131"
																	href="gtgene2?chr=chr4&start=48700000&end=50700000&title=4p11"
																	title="4p11" onclick="getLink(document,this)" />
																<area shape="rect" coords="70,131,83,135"
																	href="gtgene2?chr=chr4&start=50700000&end=52400000&title=4q11"
																	title="4q11" onclick="getLink(document,this)" />
																<area shape="rect" coords="70,135,83,140"
																	href="gtgene2?chr=chr4&start=52400000&end=59200000&title=4q12"
																	title="4q12" onclick="getLink(document,this)" />
																<area shape="rect" coords="70,140,83,146"
																	href="gtgene2?chr=chr4&start=59200000&end=66300000&title=4q13.1"
																	title="4q13.1" onclick="getLink(document,this)" />
																<area shape="rect" coords="70,146,83,149"
																	href="gtgene2?chr=chr4&start=66300000&end=70400000&title=4q13.2"
																	title="4q13.2" onclick="getLink(document,this)" />
																<area shape="rect" coords="70,149,83,154"
																	href="gtgene2?chr=chr4&start=70400000&end=76500000&title=4q13.3"
																	title="4q13.3" onclick="getLink(document,this)" />
																<area shape="rect" coords="70,154,83,157"
																	href="gtgene2?chr=chr4&start=76500000&end=79200000&title=4q21.1"
																	title="4q21.1" onclick="getLink(document,this)" />
																<area shape="rect" coords="70,157,83,160"
																	href="gtgene2?chr=chr4&start=79200000&end=82600000&title=4q21.21"
																	title="4q21.21" onclick="getLink(document,this)" />
																<area shape="rect" coords="70,160,83,162"
																	href="gtgene2?chr=chr4&start=82600000&end=84300000&title=4q21.22"
																	title="4q21.22" onclick="getLink(document,this)" />
																<area shape="rect" coords="70,162,83,163"
																	href="gtgene2?chr=chr4&start=84300000&end=87100000&title=4q21.23"
																	title="4q21.23" onclick="getLink(document,this)" />
																<area shape="rect" coords="70,163,83,169"
																	href="gtgene2?chr=chr4&start=87100000&end=88200000&title=4q21.3"
																	title="4q21.3" onclick="getLink(document,this)" />
																<area shape="rect" coords="70,169,83,175"
																	href="gtgene2?chr=chr4&start=88200000&end=94000000&title=4q22.1"
																	title="4q22.1" onclick="getLink(document,this)" />
																<area shape="rect" coords="70,175,83,177"
																	href="gtgene2?chr=chr4&start=94000000&end=95400000&title=4q22.2"
																	title="4q22.2" onclick="getLink(document,this)" />
																<area shape="rect" coords="70,177,83,182"
																	href="gtgene2?chr=chr4&start=95400000&end=99100000&title=4q22.3"
																	title="4q22.3" onclick="getLink(document,this)" />
																<area shape="rect" coords="70,182,83,185"
																	href="gtgene2?chr=chr4&start=99100000&end=102500000&title=4q23"
																	title="4q23" onclick="getLink(document,this)" />
																<area shape="rect" coords="70,185,83,190"
																	href="gtgene2?chr=chr4&start=102500000&end=107900000&title=4q24"
																	title="4q24" onclick="getLink(document,this)" />
																<area shape="rect" coords="70,190,83,196"
																	href="gtgene2?chr=chr4&start=107900000&end=114100000&title=4q25"
																	title="4q25" onclick="getLink(document,this)" />
																<area shape="rect" coords="70,196,83,202"
																	href="gtgene2?chr=chr4&start=114100000&end=120600000&title=4q26"
																	title="4q26" onclick="getLink(document,this)" />
																<area shape="rect" coords="70,202,83,207"
																	href="gtgene2?chr=chr4&start=120600000&end=124000000&title=4q27"
																	title="4q27" onclick="getLink(document,this)" />
																<area shape="rect" coords="70,207,83,211"
																	href="gtgene2?chr=chr4&start=124000000&end=129100000&title=4q28.1"
																	title="4q28.1" onclick="getLink(document,this)" />
																<area shape="rect" coords="70,211,83,215"
																	href="gtgene2?chr=chr4&start=129100000&end=131300000&title=4q28.2"
																	title="4q28.2" onclick="getLink(document,this)" />
																<area shape="rect" coords="70,215,83,223"
																	href="gtgene2?chr=chr4&start=131300000&end=139500000&title=4q28.3"
																	title="4q28.3" onclick="getLink(document,this)" />
																<area shape="rect" coords="70,223,83,229"
																	href="gtgene2?chr=chr4&start=139500000&end=141700000&title=4q31.1"
																	title="4q31.1" onclick="getLink(document,this)" />
																<area shape="rect" coords="70,229,83,231"
																	href="gtgene2?chr=chr4&start=141700000&end=145000000&title=4q31.21"
																	title="4q31.21" onclick="getLink(document,this)" />
																<area shape="rect" coords="70,231,83,234"
																	href="gtgene2?chr=chr4&start=145000000&end=147700000&title=4q31.22"
																	title="4q31.22" onclick="getLink(document,this)" />
																<area shape="rect" coords="70,234,83,237"
																	href="gtgene2?chr=chr4&start=147700000&end=151000000&title=4q31.23"
																	title="4q31.23" onclick="getLink(document,this)" />
																<area shape="rect" coords="70,237,83,240"
																	href="gtgene2?chr=chr4&start=151000000&end=155100000&title=4q31.3"
																	title="4q31.3" onclick="getLink(document,this)" />
																<area shape="rect" coords="70,240,83,246"
																	href="gtgene2?chr=chr4&start=155100000&end=161500000&title=4q32.1"
																	title="4q32.1" onclick="getLink(document,this)" />
																<area shape="rect" coords="70,246,83,248"
																	href="gtgene2?chr=chr4&start=161500000&end=164500000&title=4q32.2"
																	title="4q32.2" onclick="getLink(document,this)" />
																<area shape="rect" coords="70,248,83,253"
																	href="gtgene2?chr=chr4&start=164500000&end=170400000&title=4q32.3"
																	title="4q32.3" onclick="getLink(document,this)" />
																<area shape="rect" coords="70,253,83,255"
																	href="gtgene2?chr=chr4&start=170400000&end=172200000&title=4q33"
																	title="4q33" onclick="getLink(document,this)" />
																<area shape="rect" coords="70,255,83,260"
																	href="gtgene2?chr=chr4&start=172200000&end=176600000&title=4q34.1"
																	title="4q34.1" onclick="getLink(document,this)" />
																<area shape="rect" coords="70,260,83,261"
																	href="gtgene2?chr=chr4&start=176600000&end=177800000&title=4q34.2"
																	title="4q34.2" onclick="getLink(document,this)" />
																<area shape="rect" coords="70,261,83,265"
																	href="gtgene2?chr=chr4&start=177800000&end=182600000&title=4q34.3"
																	title="4q34.3" onclick="getLink(document,this)" />
																<area shape="rect" coords="70,265,83,271"
																	href="gtgene2?chr=chr4&start=182600000&end=187300000&title=4q35.1"
																	title="4q35.1" onclick="getLink(document,this)" />
																<area shape="rect" coords="70,271,83,275"
																	href="gtgene2?chr=chr4&start=187300000&end=191273063&title=4q35.2"
																	title="4q35.2" onclick="getLink(document,this)" />

																<area shape="rect" coords="90,89,103,94"
																	href="gtgene2?chr=chr5&start=0&end=4400000&title=5p15.33"
																	title="5p15.33" onclick="getLink(document,this)" />
																<area shape="rect" coords="90,94,103,96"
																	href="gtgene2?chr=chr5&start=4400000&end=6000000&title=5p15.32"
																	title="5p15.32" onclick="getLink(document,this)" />
																<area shape="rect" coords="90,96,103,98"
																	href="gtgene2?chr=chr5&start=6000000&end=8200000&title=5p15.31"
																	title="5p15.31" onclick="getLink(document,this)" />
																<area shape="rect" coords="90,98,103,103"
																	href="gtgene2?chr=chr5&start=8200000&end=15100000&title=5p15.2"
																	title="5p15.2" onclick="getLink(document,this)" />
																<area shape="rect" coords="90,103,103,106"
																	href="gtgene2?chr=chr5&start=15100000&end=18500000&title=5p15.1"
																	title="5p15.1" onclick="getLink(document,this)" />
																<area shape="rect" coords="90,106,103,111"
																	href="gtgene2?chr=chr5&start=18500000&end=23300000&title=5p14.3"
																	title="5p14.3" onclick="getLink(document,this)" />
																<area shape="rect" coords="90,111,103,111"
																	href="gtgene2?chr=chr5&start=23300000&end=24700000&title=5p14.2"
																	title="5p14.2" onclick="getLink(document,this)" />
																<area shape="rect" coords="90,111,103,116"
																	href="gtgene2?chr=chr5&start=24700000&end=29300000&title=5p14.1"
																	title="5p14.1" onclick="getLink(document,this)" />
																<area shape="rect" coords="90,116,103,121"
																	href="gtgene2?chr=chr5&start=29300000&end=34400000&title=5p13.3"
																	title="5p13.3" onclick="getLink(document,this)" />
																<area shape="rect" coords="90,121,103,125"
																	href="gtgene2?chr=chr5&start=34400000&end=38500000&title=5p13.2"
																	title="5p13.2" onclick="getLink(document,this)" />
																<area shape="rect" coords="90,125,103,128"
																	href="gtgene2?chr=chr5&start=38500000&end=42400000&title=5p13.1"
																	title="5p13.1" onclick="getLink(document,this)" />
																<area shape="rect" coords="90,128,103,131"
																	href="gtgene2?chr=chr5&start=42400000&end=45800000&title=5p12"
																	title="5p12" onclick="getLink(document,this)" />
																<area shape="rect" coords="90,131,103,134"
																	href="gtgene2?chr=chr5&start=45800000&end=47700000&title=5p11"
																	title="5p11" onclick="getLink(document,this)" />
																<area shape="rect" coords="90,134,103,139"
																	href="gtgene2?chr=chr5&start=47700000&end=50500000&title=5q11.1"
																	title="5q11.1" onclick="getLink(document,this)" />
																<area shape="rect" coords="90,139,103,146"
																	href="gtgene2?chr=chr5&start=50500000&end=58900000&title=5q11.2"
																	title="5q11.2" onclick="getLink(document,this)" />
																<area shape="rect" coords="90,146,103,150"
																	href="gtgene2?chr=chr5&start=58900000&end=63000000&title=5q12.1"
																	title="5q12.1" onclick="getLink(document,this)" />
																<area shape="rect" coords="90,150,103,151"
																	href="gtgene2?chr=chr5&start=63000000&end=63700000&title=5q12.2"
																	title="5q12.2" onclick="getLink(document,this)" />
																<area shape="rect" coords="90,151,103,155"
																	href="gtgene2?chr=chr5&start=63700000&end=66500000&title=5q12.3"
																	title="5q12.3" onclick="getLink(document,this)" />
																<area shape="rect" coords="90,155,103,159"
																	href="gtgene2?chr=chr5&start=66500000&end=68400000&title=5q13.1"
																	title="5q13.1" onclick="getLink(document,this)" />
																<area shape="rect" coords="90,159,103,162"
																	href="gtgene2?chr=chr5&start=68400000&end=73300000&title=5q13.2"
																	title="5q13.2" onclick="getLink(document,this)" />
																<area shape="rect" coords="90,162,103,165"
																	href="gtgene2?chr=chr5&start=73300000&end=76400000&title=5q13.3"
																	title="5q13.3" onclick="getLink(document,this)" />
																<area shape="rect" coords="90,165,103,172"
																	href="gtgene2?chr=chr5&start=76400000&end=81300000&title=5q14.1"
																	title="5q14.1" onclick="getLink(document,this)" />
																<area shape="rect" coords="90,172,103,175"
																	href="gtgene2?chr=chr5&start=81300000&end=82800000&title=5q14.2"
																	title="5q14.2" onclick="getLink(document,this)" />
																<area shape="rect" coords="90,175,103,183"
																	href="gtgene2?chr=chr5&start=82800000&end=91900000&title=5q14.3"
																	title="5q14.3" onclick="getLink(document,this)" />
																<area shape="rect" coords="90,183,103,188"
																	href="gtgene2?chr=chr5&start=91900000&end=97300000&title=5q15"
																	title="5q15" onclick="getLink(document,this)" />
																<area shape="rect" coords="90,188,103,192"
																	href="gtgene2?chr=chr5&start=97300000&end=102800000&title=5q21.1"
																	title="5q21.1" onclick="getLink(document,this)" />
																<area shape="rect" coords="90,192,103,194"
																	href="gtgene2?chr=chr5&start=102800000&end=104500000&title=5q21.2"
																	title="5q21.2" onclick="getLink(document,this)" />
																<area shape="rect" coords="90,194,103,199"
																	href="gtgene2?chr=chr5&start=104500000&end=109600000&title=5q21.3"
																	title="5q21.3" onclick="getLink(document,this)" />
																<area shape="rect" coords="90,199,103,202"
																	href="gtgene2?chr=chr5&start=109600000&end=111500000&title=5q22.1"
																	title="5q22.1" onclick="getLink(document,this)" />
																<area shape="rect" coords="90,202,103,203"
																	href="gtgene2?chr=chr5&start=111500000&end=113100000&title=5q22.2"
																	title="5q22.2" onclick="getLink(document,this)" />
																<area shape="rect" coords="90,203,103,206"
																	href="gtgene2?chr=chr5&start=113100000&end=115200000&title=5q22.3"
																	title="5q22.3" onclick="getLink(document,this)" />
																<area shape="rect" coords="90,206,103,211"
																	href="gtgene2?chr=chr5&start=115200000&end=121500000&title=5q23.1"
																	title="5q23.1" onclick="getLink(document,this)" />
																<area shape="rect" coords="90,211,103,217"
																	href="gtgene2?chr=chr5&start=121500000&end=127300000&title=5q23.2"
																	title="5q23.2" onclick="getLink(document,this)" />
																<area shape="rect" coords="90,217,103,220"
																	href="gtgene2?chr=chr5&start=127300000&end=130400000&title=5q23.3"
																	title="5q23.3" onclick="getLink(document,this)" />
																<area shape="rect" coords="90,220,103,226"
																	href="gtgene2?chr=chr5&start=130400000&end=135400000&title=5q31.1"
																	title="5q31.1" onclick="getLink(document,this)" />
																<area shape="rect" coords="90,226,103,229"
																	href="gtgene2?chr=chr5&start=135400000&end=139000000&title=5q31.2"
																	title="5q31.2" onclick="getLink(document,this)" />
																<area shape="rect" coords="90,229,103,235"
																	href="gtgene2?chr=chr5&start=139000000&end=143100000&title=5q31.3"
																	title="5q31.3" onclick="getLink(document,this)" />
																<area shape="rect" coords="90,235,103,241"
																	href="gtgene2?chr=chr5&start=143100000&end=147200000&title=5q32"
																	title="5q32" onclick="getLink(document,this)" />
																<area shape="rect" coords="90,241,103,245"
																	href="gtgene2?chr=chr5&start=147200000&end=152100000&title=5q33.1"
																	title="5q33.1" onclick="getLink(document,this)" />
																<area shape="rect" coords="90,245,103,249"
																	href="gtgene2?chr=chr5&start=152100000&end=155600000&title=5q33.2"
																	title="5q33.2" onclick="getLink(document,this)" />
																<area shape="rect" coords="90,249,103,252"
																	href="gtgene2?chr=chr5&start=155600000&end=159900000&title=5q33.3"
																	title="5q33.3" onclick="getLink(document,this)" />
																<area shape="rect" coords="90,252,103,259"
																	href="gtgene2?chr=chr5&start=159900000&end=167400000&title=5q34"
																	title="5q34" onclick="getLink(document,this)" />
																<area shape="rect" coords="90,259,103,264"
																	href="gtgene2?chr=chr5&start=167400000&end=172200000&title=5q35.1"
																	title="5q35.1" onclick="getLink(document,this)" />
																<area shape="rect" coords="90,264,103,268"
																	href="gtgene2?chr=chr5&start=172200000&end=176500000&title=5q35.2"
																	title="5q35.2" onclick="getLink(document,this)" />
																<area shape="rect" coords="90,268,103,275"
																	href="gtgene2?chr=chr5&start=176500000&end=180857866&title=5q35.3"
																	title="5q35.3" onclick="getLink(document,this)" />

																<area shape="rect" coords="109,96,122,97"
																	href="gtgene2?chr=chr6&start=0&end=2300000&title=6p25.3"
																	title="6p25.3" onclick="getLink(document,this)" />
																<area shape="rect" coords="109,97,122,99"
																	href="gtgene2?chr=chr6&start=2300000&end=4100000&title=6p25.2"
																	title="6p25.2" onclick="getLink(document,this)" />
																<area shape="rect" coords="109,99,122,102"
																	href="gtgene2?chr=chr6&start=4100000&end=7000000&title=6p25.1"
																	title="6p25.1" onclick="getLink(document,this)" />
																<area shape="rect" coords="109,102,122,105"
																	href="gtgene2?chr=chr6&start=7000000&end=10600000&title=6p24.3"
																	title="6p24.3" onclick="getLink(document,this)" />
																<area shape="rect" coords="109,105,122,106"
																	href="gtgene2?chr=chr6&start=10600000&end=11200000&title=6p24.2"
																	title="6p24.2" onclick="getLink(document,this)" />
																<area shape="rect" coords="109,106,122,109"
																	href="gtgene2?chr=chr6&start=11200000&end=13500000&title=6p24.1"
																	title="6p24.1" onclick="getLink(document,this)" />
																<area shape="rect" coords="109,109,122,111"
																	href="gtgene2?chr=chr6&start=13500000&end=15500000&title=6p23"
																	title="6p23" onclick="getLink(document,this)" />
																<area shape="rect" coords="109,111,122,117"
																	href="gtgene2?chr=chr6&start=15500000&end=23500000&title=6p22.3"
																	title="6p22.3" onclick="getLink(document,this)" />
																<area shape="rect" coords="109,117,122,119"
																	href="gtgene2?chr=chr6&start=23500000&end=26100000&title=6p22.2"
																	title="6p22.2" onclick="getLink(document,this)" />
																<area shape="rect" coords="109,119,122,124"
																	href="gtgene2?chr=chr6&start=26100000&end=29900000&title=6p22.1"
																	title="6p22.1" onclick="getLink(document,this)" />
																<area shape="rect" coords="109,124,122,126"
																	href="gtgene2?chr=chr6&start=29900000&end=31900000&title=6p21.33"
																	title="6p21.33" onclick="getLink(document,this)" />
																<area shape="rect" coords="109,126,122,128"
																	href="gtgene2?chr=chr6&start=31900000&end=33600000&title=6p21.32"
																	title="6p21.32" onclick="getLink(document,this)" />
																<area shape="rect" coords="109,128,122,134"
																	href="gtgene2?chr=chr6&start=33600000&end=36800000&title=6p21.31"
																	title="6p21.31" onclick="getLink(document,this)" />
																<area shape="rect" coords="109,134,122,137"
																	href="gtgene2?chr=chr6&start=36800000&end=40600000&title=6p21.2"
																	title="6p21.2" onclick="getLink(document,this)" />
																<area shape="rect" coords="109,137,122,145"
																	href="gtgene2?chr=chr6&start=40600000&end=45200000&title=6p21.1"
																	title="6p21.1" onclick="getLink(document,this)" />
																<area shape="rect" coords="109,145,122,150"
																	href="gtgene2?chr=chr6&start=45200000&end=51100000&title=6p12.3"
																	title="6p12.3" onclick="getLink(document,this)" />
																<area shape="rect" coords="109,150,122,151"
																	href="gtgene2?chr=chr6&start=51100000&end=52600000&title=6p12.2"
																	title="6p12.2" onclick="getLink(document,this)" />
																<area shape="rect" coords="109,151,122,156"
																	href="gtgene2?chr=chr6&start=52600000&end=57200000&title=6p12.1"
																	title="6p12.1" onclick="getLink(document,this)" />
																<area shape="rect" coords="109,156,122,157"
																	href="gtgene2?chr=chr6&start=57200000&end=58400000&title=6p11.2"
																	title="6p11.2" onclick="getLink(document,this)" />
																<area shape="rect" coords="109,157,122,159"
																	href="gtgene2?chr=chr6&start=58400000&end=60500000&title=6p11.1"
																	title="6p11.1" onclick="getLink(document,this)" />
																<area shape="rect" coords="109,159,122,161"
																	href="gtgene2?chr=chr6&start=60500000&end=63400000&title=6q11.1"
																	title="6q11.1" onclick="getLink(document,this)" />
																<area shape="rect" coords="109,161,122,162"
																	href="gtgene2?chr=chr6&start=63400000&end=63500000&title=6q11.2"
																	title="6q11.2" onclick="getLink(document,this)" />
																<area shape="rect" coords="109,162,122,170"
																	href="gtgene2?chr=chr6&start=63500000&end=70000000&title=6q12"
																	title="6q12" onclick="getLink(document,this)" />
																<area shape="rect" coords="109,170,122,172"
																	href="gtgene2?chr=chr6&start=70000000&end=75900000&title=6q13"
																	title="6q13" onclick="getLink(document,this)" />
																<area shape="rect" coords="109,172,122,178"
																	href="gtgene2?chr=chr6&start=75900000&end=83900000&title=6q14.1"
																	title="6q14.1" onclick="getLink(document,this)" />
																<area shape="rect" coords="109,178,122,179"
																	href="gtgene2?chr=chr6&start=83900000&end=84700000&title=6q14.2"
																	title="6q14.2" onclick="getLink(document,this)" />
																<area shape="rect" coords="109,179,122,183"
																	href="gtgene2?chr=chr6&start=84700000&end=87500000&title=6q14.3"
																	title="6q14.3" onclick="getLink(document,this)" />
																<area shape="rect" coords="109,183,122,189"
																	href="gtgene2?chr=chr6&start=87500000&end=92100000&title=6q15"
																	title="6q15" onclick="getLink(document,this)" />
																<area shape="rect" coords="109,189,122,195"
																	href="gtgene2?chr=chr6&start=92100000&end=98700000&title=6q16.1"
																	title="6q16.1" onclick="getLink(document,this)" />
																<area shape="rect" coords="109,195,122,197"
																	href="gtgene2?chr=chr6&start=98700000&end=99900000&title=6q16.2"
																	title="6q16.2" onclick="getLink(document,this)" />
																<area shape="rect" coords="109,197,122,202"
																	href="gtgene2?chr=chr6&start=99900000&end=104800000&title=6q16.3"
																	title="6q16.3" onclick="getLink(document,this)" />
																<area shape="rect" coords="109,202,122,211"
																	href="gtgene2?chr=chr6&start=104800000&end=113900000&title=6q21"
																	title="6q21" onclick="getLink(document,this)" />
																<area shape="rect" coords="109,211,122,216"
																	href="gtgene2?chr=chr6&start=113900000&end=117100000&title=6q22.1"
																	title="6q22.1" onclick="getLink(document,this)" />
																<area shape="rect" coords="109,216,122,218"
																	href="gtgene2?chr=chr6&start=117100000&end=118600000&title=6q22.2"
																	title="6q22.2" onclick="getLink(document,this)" />
																<area shape="rect" coords="109,218,122,223"
																	href="gtgene2?chr=chr6&start=118600000&end=126200000&title=6q22.31"
																	title="6q22.31" onclick="getLink(document,this)" />
																<area shape="rect" coords="109,223,122,226"
																	href="gtgene2?chr=chr6&start=126200000&end=127300000&title=6q22.32"
																	title="6q22.32" onclick="getLink(document,this)" />
																<area shape="rect" coords="109,226,122,232"
																	href="gtgene2?chr=chr6&start=127300000&end=130400000&title=6q22.33"
																	title="6q22.33" onclick="getLink(document,this)" />
																<area shape="rect" coords="109,232,122,236"
																	href="gtgene2?chr=chr6&start=130400000&end=131300000&title=6q23.1"
																	title="6q23.1" onclick="getLink(document,this)" />
																<area shape="rect" coords="109,236,122,241"
																	href="gtgene2?chr=chr6&start=131300000&end=135200000&title=6q23.2"
																	title="6q23.2" onclick="getLink(document,this)" />
																<area shape="rect" coords="109,241,122,244"
																	href="gtgene2?chr=chr6&start=135200000&end=139100000&title=6q23.3"
																	title="6q23.3" onclick="getLink(document,this)" />
																<area shape="rect" coords="109,244,122,248"
																	href="gtgene2?chr=chr6&start=139100000&end=142900000&title=6q24.1"
																	title="6q24.1" onclick="getLink(document,this)" />
																<area shape="rect" coords="109,248,122,250"
																	href="gtgene2?chr=chr6&start=142900000&end=145700000&title=6q24.2"
																	title="6q24.2" onclick="getLink(document,this)" />
																<area shape="rect" coords="109,250,122,254"
																	href="gtgene2?chr=chr6&start=145700000&end=149100000&title=6q24.3"
																	title="6q24.3" onclick="getLink(document,this)" />
																<area shape="rect" coords="109,254,122,257"
																	href="gtgene2?chr=chr6&start=149100000&end=152600000&title=6q25.1"
																	title="6q25.1" onclick="getLink(document,this)" />
																<area shape="rect" coords="109,257,122,260"
																	href="gtgene2?chr=chr6&start=152600000&end=155600000&title=6q25.2"
																	title="6q25.2" onclick="getLink(document,this)" />
																<area shape="rect" coords="109,260,122,266"
																	href="gtgene2?chr=chr6&start=155600000&end=160900000&title=6q25.3"
																	title="6q25.3" onclick="getLink(document,this)" />
																<area shape="rect" coords="109,266,122,270"
																	href="gtgene2?chr=chr6&start=160900000&end=164400000&title=6q26"
																	title="6q26" onclick="getLink(document,this)" />
																<area shape="rect" coords="109,270,122,275"
																	href="gtgene2?chr=chr6&start=164400000&end=170899992&title=6q27"
																	title="6q27" onclick="getLink(document,this)" />

																<area shape="rect" coords="130,111,143,115"
																	href="gtgene2?chr=chr7&start=0&end=2100000&title=7p22.3"
																	title="7p22.3" onclick="getLink(document,this)" />
																<area shape="rect" coords="130,115,143,118"
																	href="gtgene2?chr=chr7&start=2100000&end=4500000&title=7p22.2"
																	title="7p22.2" onclick="getLink(document,this)" />
																<area shape="rect" coords="130,118,143,121"
																	href="gtgene2?chr=chr7&start=4500000&end=7200000&title=7p22.1"
																	title="7p22.1" onclick="getLink(document,this)" />
																<area shape="rect" coords="130,121,143,126"
																	href="gtgene2?chr=chr7&start=7200000&end=13300000&title=7p21.3"
																	title="7p21.3" onclick="getLink(document,this)" />
																<area shape="rect" coords="130,126,143,127"
																	href="gtgene2?chr=chr7&start=13300000&end=15200000&title=7p21.2"
																	title="7p21.2" onclick="getLink(document,this)" />
																<area shape="rect" coords="130,127,143,131"
																	href="gtgene2?chr=chr7&start=15200000&end=19500000&title=7p21.1"
																	title="7p21.1" onclick="getLink(document,this)" />
																<area shape="rect" coords="130,131,143,136"
																	href="gtgene2?chr=chr7&start=19500000&end=24900000&title=7p15.3"
																	title="7p15.3" onclick="getLink(document,this)" />
																<area shape="rect" coords="130,136,143,139"
																	href="gtgene2?chr=chr7&start=24900000&end=28000000&title=7p15.2"
																	title="7p15.2" onclick="getLink(document,this)" />
																<area shape="rect" coords="130,139,143,143"
																	href="gtgene2?chr=chr7&start=28000000&end=31800000&title=7p15.1"
																	title="7p15.1" onclick="getLink(document,this)" />
																<area shape="rect" coords="130,143,143,146"
																	href="gtgene2?chr=chr7&start=31800000&end=35600000&title=7p14.3"
																	title="7p14.3" onclick="getLink(document,this)" />
																<area shape="rect" coords="130,146,143,147"
																	href="gtgene2?chr=chr7&start=35600000&end=37500000&title=7p14.2"
																	title="7p14.2" onclick="getLink(document,this)" />
																<area shape="rect" coords="130,147,143,152"
																	href="gtgene2?chr=chr7&start=37500000&end=43300000&title=7p14.1"
																	title="7p14.1" onclick="getLink(document,this)" />
																<area shape="rect" coords="130,152,143,157"
																	href="gtgene2?chr=chr7&start=43300000&end=46600000&title=7p13"
																	title="7p13" onclick="getLink(document,this)" />
																<area shape="rect" coords="130,157,143,161"
																	href="gtgene2?chr=chr7&start=46600000&end=49800000&title=7p12.3"
																	title="7p12.3" onclick="getLink(document,this)" />
																<area shape="rect" coords="130,161,143,163"
																	href="gtgene2?chr=chr7&start=49800000&end=50900000&title=7p12.2"
																	title="7p12.2" onclick="getLink(document,this)" />
																<area shape="rect" coords="130,163,143,165"
																	href="gtgene2?chr=chr7&start=50900000&end=53900000&title=7p12.1"
																	title="7p12.1" onclick="getLink(document,this)" />
																<area shape="rect" coords="130,165,143,169"
																	href="gtgene2?chr=chr7&start=53900000&end=57400000&title=7p11.2"
																	title="7p11.2" onclick="getLink(document,this)" />
																<area shape="rect" coords="130,169,143,172"
																	href="gtgene2?chr=chr7&start=57400000&end=59100000&title=7p11.1"
																	title="7p11.1" onclick="getLink(document,this)" />
																<area shape="rect" coords="130,172,143,176"
																	href="gtgene2?chr=chr7&start=59100000&end=61100000&title=7q11.1"
																	title="7q11.1" onclick="getLink(document,this)" />
																<area shape="rect" coords="130,176,143,181"
																	href="gtgene2?chr=chr7&start=61100000&end=66100000&title=7q11.21"
																	title="7q11.21" onclick="getLink(document,this)" />
																<area shape="rect" coords="130,181,143,185"
																	href="gtgene2?chr=chr7&start=66100000&end=71800000&title=7q11.22"
																	title="7q11.22" onclick="getLink(document,this)" />
																<area shape="rect" coords="130,185,143,192"
																	href="gtgene2?chr=chr7&start=71800000&end=77400000&title=7q11.23"
																	title="7q11.23" onclick="getLink(document,this)" />
																<area shape="rect" coords="130,192,143,199"
																	href="gtgene2?chr=chr7&start=77400000&end=86200000&title=7q21.11"
																	title="7q21.11" onclick="getLink(document,this)" />
																<area shape="rect" coords="130,199,143,202"
																	href="gtgene2?chr=chr7&start=86200000&end=88000000&title=7q21.12"
																	title="7q21.12" onclick="getLink(document,this)" />
																<area shape="rect" coords="130,202,143,204"
																	href="gtgene2?chr=chr7&start=88000000&end=90900000&title=7q21.13"
																	title="7q21.13" onclick="getLink(document,this)" />
																<area shape="rect" coords="130,204,143,207"
																	href="gtgene2?chr=chr7&start=90900000&end=92600000&title=7q21.2"
																	title="7q21.2" onclick="getLink(document,this)" />
																<area shape="rect" coords="130,207,143,211"
																	href="gtgene2?chr=chr7&start=92600000&end=97900000&title=7q21.3"
																	title="7q21.3" onclick="getLink(document,this)" />
																<area shape="rect" coords="130,211,143,219"
																	href="gtgene2?chr=chr7&start=97900000&end=104400000&title=7q22.1"
																	title="7q22.1" onclick="getLink(document,this)" />
																<area shape="rect" coords="130,219,143,223"
																	href="gtgene2?chr=chr7&start=104400000&end=105900000&title=7q22.2"
																	title="7q22.2" onclick="getLink(document,this)" />
																<area shape="rect" coords="130,223,143,225"
																	href="gtgene2?chr=chr7&start=105900000&end=107200000&title=7q22.3"
																	title="7q22.3" onclick="getLink(document,this)" />
																<area shape="rect" coords="130,225,143,229"
																	href="gtgene2?chr=chr7&start=107200000&end=114400000&title=7q31.1"
																	title="7q31.1" onclick="getLink(document,this)" />
																<area shape="rect" coords="130,229,143,233"
																	href="gtgene2?chr=chr7&start=114400000&end=117200000&title=7q31.2"
																	title="7q31.2" onclick="getLink(document,this)" />
																<area shape="rect" coords="130,233,143,237"
																	href="gtgene2?chr=chr7&start=117200000&end=120900000&title=7q31.31"
																	title="7q31.31" onclick="getLink(document,this)" />
																<area shape="rect" coords="130,237,143,239"
																	href="gtgene2?chr=chr7&start=120900000&end=123600000&title=7q31.32"
																	title="7q31.32" onclick="getLink(document,this)" />
																<area shape="rect" coords="130,239,143,241"
																	href="gtgene2?chr=chr7&start=123600000&end=126900000&title=7q31.33"
																	title="7q31.33" onclick="getLink(document,this)" />
																<area shape="rect" coords="130,241,143,243"
																	href="gtgene2?chr=chr7&start=126900000&end=129000000&title=7q32.1"
																	title="7q32.1" onclick="getLink(document,this)" />
																<area shape="rect" coords="130,243,143,246"
																	href="gtgene2?chr=chr7&start=129000000&end=130100000&title=7q32.2"
																	title="7q32.2" onclick="getLink(document,this)" />
																<area shape="rect" coords="130,246,143,249"
																	href="gtgene2?chr=chr7&start=130100000&end=132400000&title=7q32.3"
																	title="7q32.3" onclick="getLink(document,this)" />
																<area shape="rect" coords="130,249,143,254"
																	href="gtgene2?chr=chr7&start=132400000&end=137300000&title=7q33"
																	title="7q33" onclick="getLink(document,this)" />
																<area shape="rect" coords="130,254,143,258"
																	href="gtgene2?chr=chr7&start=137300000&end=142800000&title=7q34"
																	title="7q34" onclick="getLink(document,this)" />
																<area shape="rect" coords="130,258,143,262"
																	href="gtgene2?chr=chr7&start=142800000&end=147500000&title=7q35"
																	title="7q35" onclick="getLink(document,this)" />
																<area shape="rect" coords="130,262,143,267"
																	href="gtgene2?chr=chr7&start=147500000&end=152200000&title=7q36.1"
																	title="7q36.1" onclick="getLink(document,this)" />
																<area shape="rect" coords="130,267,143,271"
																	href="gtgene2?chr=chr7&start=152200000&end=154700000&title=7q36.2"
																	title="7q36.2" onclick="getLink(document,this)" />
																<area shape="rect" coords="130,271,143,275"
																	href="gtgene2?chr=chr7&start=154700000&end=158821424&title=7q36.3"
																	title="7q36.3" onclick="getLink(document,this)" />

																<area shape="rect" coords="130,128,143,129"
																	href="gtgene2?chr=chr8&start=0&end=2200000&title=8p23.3"
																	title="8p23.3" onclick="getLink(document,this)" />
																<area shape="rect" coords="130,129,143,134"
																	href="gtgene2?chr=chr8&start=2200000&end=6200000&title=8p23.2"
																	title="8p23.2" onclick="getLink(document,this)" />
																<area shape="rect" coords="130,134,143,140"
																	href="gtgene2?chr=chr8&start=6200000&end=12700000&title=8p23.1"
																	title="8p23.1" onclick="getLink(document,this)" />
																<area shape="rect" coords="130,140,143,145"
																	href="gtgene2?chr=chr8&start=12700000&end=19100000&title=8p22"
																	title="8p22" onclick="getLink(document,this)" />
																<area shape="rect" coords="130,145,143,149"
																	href="gtgene2?chr=chr8&start=19100000&end=23400000&title=8p21.3"
																	title="8p21.3" onclick="getLink(document,this)" />
																<area shape="rect" coords="130,149,143,152"
																	href="gtgene2?chr=chr8&start=23400000&end=27400000&title=8p21.2"
																	title="8p21.2" onclick="getLink(document,this)" />
																<area shape="rect" coords="130,152,143,157"
																	href="gtgene2?chr=chr8&start=27400000&end=29700000&title=8p21.1"
																	title="8p21.1" onclick="getLink(document,this)" />
																<area shape="rect" coords="130,157,143,161"
																	href="gtgene2?chr=chr8&start=29700000&end=38500000&title=8p12"
																	title="8p12" onclick="getLink(document,this)" />
																<area shape="rect" coords="130,161,143,164"
																	href="gtgene2?chr=chr8&start=38500000&end=39500000&title=8p11.23"
																	title="8p11.23" onclick="getLink(document,this)" />
																<area shape="rect" coords="130,164,143,166"
																	href="gtgene2?chr=chr8&start=39500000&end=39900000&title=8p11.22"
																	title="8p11.22" onclick="getLink(document,this)" />
																<area shape="rect" coords="130,166,143,169"
																	href="gtgene2?chr=chr8&start=39900000&end=43200000&title=8p11.21"
																	title="8p11.21" onclick="getLink(document,this)" />
																<area shape="rect" coords="130,169,143,172"
																	href="gtgene2?chr=chr8&start=43200000&end=45200000&title=8p11.1"
																	title="8p11.1" onclick="getLink(document,this)" />
																<area shape="rect" coords="130,172,143,174"
																	href="gtgene2?chr=chr8&start=45200000&end=48100000&title=8q11.1"
																	title="8q11.1" onclick="getLink(document,this)" />
																<area shape="rect" coords="130,174,143,177"
																	href="gtgene2?chr=chr8&start=48100000&end=50400000&title=8q11.21"
																	title="8q11.21" onclick="getLink(document,this)" />
																<area shape="rect" coords="130,177,143,181"
																	href="gtgene2?chr=chr8&start=50400000&end=52800000&title=8q11.22"
																	title="8q11.22" onclick="getLink(document,this)" />
																<area shape="rect" coords="130,181,143,185"
																	href="gtgene2?chr=chr8&start=52800000&end=55600000&title=8q11.23"
																	title="8q11.23" onclick="getLink(document,this)" />
																<area shape="rect" coords="130,185,143,189"
																	href="gtgene2?chr=chr8&start=55600000&end=61700000&title=8q12.1"
																	title="8q12.1" onclick="getLink(document,this)" />
																<area shape="rect" coords="130,189,143,191"
																	href="gtgene2?chr=chr8&start=61700000&end=62400000&title=8q12.2"
																	title="8q12.2" onclick="getLink(document,this)" />
																<area shape="rect" coords="130,191,143,195"
																	href="gtgene2?chr=chr8&start=62400000&end=66100000&title=8q12.3"
																	title="8q12.3" onclick="getLink(document,this)" />
																<area shape="rect" coords="130,195,143,197"
																	href="gtgene2?chr=chr8&start=66100000&end=68100000&title=8q13.1"
																	title="8q13.1" onclick="getLink(document,this)" />
																<area shape="rect" coords="130,197,143,200"
																	href="gtgene2?chr=chr8&start=68100000&end=70600000&title=8q13.2"
																	title="8q13.2" onclick="getLink(document,this)" />
																<area shape="rect" coords="130,200,143,204"
																	href="gtgene2?chr=chr8&start=70600000&end=74000000&title=8q13.3"
																	title="8q13.3" onclick="getLink(document,this)" />
																<area shape="rect" coords="130,204,143,208"
																	href="gtgene2?chr=chr8&start=74000000&end=78500000&title=8q21.11"
																	title="8q21.11" onclick="getLink(document,this)" />
																<area shape="rect" coords="130,208,143,210"
																	href="gtgene2?chr=chr8&start=78500000&end=80300000&title=8q21.12"
																	title="8q21.12" onclick="getLink(document,this)" />
																<area shape="rect" coords="130,210,143,213"
																	href="gtgene2?chr=chr8&start=80300000&end=84900000&title=8q21.13"
																	title="8q21.13" onclick="getLink(document,this)" />
																<area shape="rect" coords="130,213,143,215"
																	href="gtgene2?chr=chr8&start=84900000&end=87200000&title=8q21.2"
																	title="8q21.2" onclick="getLink(document,this)" />
																<area shape="rect" coords="130,215,143,221"
																	href="gtgene2?chr=chr8&start=87200000&end=93500000&title=8q21.3"
																	title="8q21.3" onclick="getLink(document,this)" />
																<area shape="rect" coords="130,221,143,227"
																	href="gtgene2?chr=chr8&start=93500000&end=99100000&title=8q22.1"
																	title="8q22.1" onclick="getLink(document,this)" />
																<area shape="rect" coords="130,227,143,228"
																	href="gtgene2?chr=chr8&start=99100000&end=101600000&title=8q22.2"
																	title="8q22.2" onclick="getLink(document,this)" />
																<area shape="rect" coords="130,228,143,233"
																	href="gtgene2?chr=chr8&start=101600000&end=106100000&title=8q22.3"
																	title="8q22.3" onclick="getLink(document,this)" />
																<area shape="rect" coords="130,233,143,236"
																	href="gtgene2?chr=chr8&start=106100000&end=110600000&title=8q23.1"
																	title="8q23.1" onclick="getLink(document,this)" />
																<area shape="rect" coords="130,236,143,239"
																	href="gtgene2?chr=chr8&start=110600000&end=112200000&title=8q23.2"
																	title="8q23.2" onclick="getLink(document,this)" />
																<area shape="rect" coords="130,239,143,245"
																	href="gtgene2?chr=chr8&start=112200000&end=117700000&title=8q23.3"
																	title="8q23.3" onclick="getLink(document,this)" />
																<area shape="rect" coords="130,245,143,247"
																	href="gtgene2?chr=chr8&start=117700000&end=119200000&title=8q24.11"
																	title="8q24.11" onclick="getLink(document,this)" />
																<area shape="rect" coords="130,247,143,250"
																	href="gtgene2?chr=chr8&start=119200000&end=122500000&title=8q24.12"
																	title="8q24.12" onclick="getLink(document,this)" />
																<area shape="rect" coords="130,250,143,256"
																	href="gtgene2?chr=chr8&start=122500000&end=127300000&title=8q24.13"
																	title="8q24.13" onclick="getLink(document,this)" />
																<area shape="rect" coords="130,256,143,259"
																	href="gtgene2?chr=chr8&start=127300000&end=131500000&title=8q24.21"
																	title="8q24.21" onclick="getLink(document,this)" />
																<area shape="rect" coords="130,259,143,264"
																	href="gtgene2?chr=chr8&start=131500000&end=136500000&title=8q24.22"
																	title="8q24.22" onclick="getLink(document,this)" />
																<area shape="rect" coords="130,264,143,266"
																	href="gtgene2?chr=chr8&start=136500000&end=140000000&title=8q24.23"
																	title="8q24.23" onclick="getLink(document,this)" />
																<area shape="rect" coords="130,266,143,274"
																	href="gtgene2?chr=chr8&start=140000000&end=146274826&title=8q24.3"
																	title="8q24.3" onclick="getLink(document,this)" />

																<area shape="rect" coords="151,128,164,129"
																	href="gtgene2?chr=chr8&start=0&end=2200000&title=8p23.3"
																	title="8p23.3" onclick="getLink(document,this)" />
																<area shape="rect" coords="151,129,164,134"
																	href="gtgene2?chr=chr8&start=2200000&end=6200000&title=8p23.2"
																	title="8p23.2" onclick="getLink(document,this)" />
																<area shape="rect" coords="151,134,164,140"
																	href="gtgene2?chr=chr8&start=6200000&end=12700000&title=8p23.1"
																	title="8p23.1" onclick="getLink(document,this)" />
																<area shape="rect" coords="151,140,164,145"
																	href="gtgene2?chr=chr8&start=12700000&end=19100000&title=8p22"
																	title="8p22" onclick="getLink(document,this)" />
																<area shape="rect" coords="151,145,164,149"
																	href="gtgene2?chr=chr8&start=19100000&end=23400000&title=8p21.3"
																	title="8p21.3" onclick="getLink(document,this)" />
																<area shape="rect" coords="151,149,164,152"
																	href="gtgene2?chr=chr8&start=23400000&end=27400000&title=8p21.2"
																	title="8p21.2" onclick="getLink(document,this)" />
																<area shape="rect" coords="151,152,164,157"
																	href="gtgene2?chr=chr8&start=27400000&end=29700000&title=8p21.1"
																	title="8p21.1" onclick="getLink(document,this)" />
																<area shape="rect" coords="151,157,164,161"
																	href="gtgene2?chr=chr8&start=29700000&end=38500000&title=8p12"
																	title="8p12" onclick="getLink(document,this)" />
																<area shape="rect" coords="151,161,164,164"
																	href="gtgene2?chr=chr8&start=38500000&end=39500000&title=8p11.23"
																	title="8p11.23" onclick="getLink(document,this)" />
																<area shape="rect" coords="151,164,164,166"
																	href="gtgene2?chr=chr8&start=39500000&end=39900000&title=8p11.22"
																	title="8p11.22" onclick="getLink(document,this)" />
																<area shape="rect" coords="151,166,164,169"
																	href="gtgene2?chr=chr8&start=39900000&end=43200000&title=8p11.21"
																	title="8p11.21" onclick="getLink(document,this)" />
																<area shape="rect" coords="151,169,164,172"
																	href="gtgene2?chr=chr8&start=43200000&end=45200000&title=8p11.1"
																	title="8p11.1" onclick="getLink(document,this)" />
																<area shape="rect" coords="151,172,164,174"
																	href="gtgene2?chr=chr8&start=45200000&end=48100000&title=8q11.1"
																	title="8q11.1" onclick="getLink(document,this)" />
																<area shape="rect" coords="151,174,164,177"
																	href="gtgene2?chr=chr8&start=48100000&end=50400000&title=8q11.21"
																	title="8q11.21" onclick="getLink(document,this)" />
																<area shape="rect" coords="151,177,164,181"
																	href="gtgene2?chr=chr8&start=50400000&end=52800000&title=8q11.22"
																	title="8q11.22" onclick="getLink(document,this)" />
																<area shape="rect" coords="151,181,164,185"
																	href="gtgene2?chr=chr8&start=52800000&end=55600000&title=8q11.23"
																	title="8q11.23" onclick="getLink(document,this)" />
																<area shape="rect" coords="151,185,164,189"
																	href="gtgene2?chr=chr8&start=55600000&end=61700000&title=8q12.1"
																	title="8q12.1" onclick="getLink(document,this)" />
																<area shape="rect" coords="151,189,164,191"
																	href="gtgene2?chr=chr8&start=61700000&end=62400000&title=8q12.2"
																	title="8q12.2" onclick="getLink(document,this)" />
																<area shape="rect" coords="151,191,164,195"
																	href="gtgene2?chr=chr8&start=62400000&end=66100000&title=8q12.3"
																	title="8q12.3" onclick="getLink(document,this)" />
																<area shape="rect" coords="151,195,164,197"
																	href="gtgene2?chr=chr8&start=66100000&end=68100000&title=8q13.1"
																	title="8q13.1" onclick="getLink(document,this)" />
																<area shape="rect" coords="151,197,164,200"
																	href="gtgene2?chr=chr8&start=68100000&end=70600000&title=8q13.2"
																	title="8q13.2" onclick="getLink(document,this)" />
																<area shape="rect" coords="151,200,164,204"
																	href="gtgene2?chr=chr8&start=70600000&end=74000000&title=8q13.3"
																	title="8q13.3" onclick="getLink(document,this)" />
																<area shape="rect" coords="151,204,164,208"
																	href="gtgene2?chr=chr8&start=74000000&end=78500000&title=8q21.11"
																	title="8q21.11" onclick="getLink(document,this)" />
																<area shape="rect" coords="151,208,164,210"
																	href="gtgene2?chr=chr8&start=78500000&end=80300000&title=8q21.12"
																	title="8q21.12" onclick="getLink(document,this)" />
																<area shape="rect" coords="151,210,164,213"
																	href="gtgene2?chr=chr8&start=80300000&end=84900000&title=8q21.13"
																	title="8q21.13" onclick="getLink(document,this)" />
																<area shape="rect" coords="151,213,164,215"
																	href="gtgene2?chr=chr8&start=84900000&end=87200000&title=8q21.2"
																	title="8q21.2" onclick="getLink(document,this)" />
																<area shape="rect" coords="151,215,164,221"
																	href="gtgene2?chr=chr8&start=87200000&end=93500000&title=8q21.3"
																	title="8q21.3" onclick="getLink(document,this)" />
																<area shape="rect" coords="151,221,164,227"
																	href="gtgene2?chr=chr8&start=93500000&end=99100000&title=8q22.1"
																	title="8q22.1" onclick="getLink(document,this)" />
																<area shape="rect" coords="151,227,164,228"
																	href="gtgene2?chr=chr8&start=99100000&end=101600000&title=8q22.2"
																	title="8q22.2" onclick="getLink(document,this)" />
																<area shape="rect" coords="151,228,164,233"
																	href="gtgene2?chr=chr8&start=101600000&end=106100000&title=8q22.3"
																	title="8q22.3" onclick="getLink(document,this)" />
																<area shape="rect" coords="151,233,164,236"
																	href="gtgene2?chr=chr8&start=106100000&end=110600000&title=8q23.1"
																	title="8q23.1" onclick="getLink(document,this)" />
																<area shape="rect" coords="151,236,164,239"
																	href="gtgene2?chr=chr8&start=110600000&end=112200000&title=8q23.2"
																	title="8q23.2" onclick="getLink(document,this)" />
																<area shape="rect" coords="151,239,164,245"
																	href="gtgene2?chr=chr8&start=112200000&end=117700000&title=8q23.3"
																	title="8q23.3" onclick="getLink(document,this)" />
																<area shape="rect" coords="151,245,164,247"
																	href="gtgene2?chr=chr8&start=117700000&end=119200000&title=8q24.11"
																	title="8q24.11" onclick="getLink(document,this)" />
																<area shape="rect" coords="151,247,164,250"
																	href="gtgene2?chr=chr8&start=119200000&end=122500000&title=8q24.12"
																	title="8q24.12" onclick="getLink(document,this)" />
																<area shape="rect" coords="151,250,164,256"
																	href="gtgene2?chr=chr8&start=122500000&end=127300000&title=8q24.13"
																	title="8q24.13" onclick="getLink(document,this)" />
																<area shape="rect" coords="151,256,164,259"
																	href="gtgene2?chr=chr8&start=127300000&end=131500000&title=8q24.21"
																	title="8q24.21" onclick="getLink(document,this)" />
																<area shape="rect" coords="151,259,164,264"
																	href="gtgene2?chr=chr8&start=131500000&end=136500000&title=8q24.22"
																	title="8q24.22" onclick="getLink(document,this)" />
																<area shape="rect" coords="151,264,164,266"
																	href="gtgene2?chr=chr8&start=136500000&end=140000000&title=8q24.23"
																	title="8q24.23" onclick="getLink(document,this)" />
																<area shape="rect" coords="151,266,164,274"
																	href="gtgene2?chr=chr8&start=140000000&end=146274826&title=8q24.3"
																	title="8q24.3" onclick="getLink(document,this)" />

																<area shape="rect" coords="172,134,185,136"
																	href="gtgene2?chr=chr9&start=0&end=2200000&title=9p24.3"
																	title="9p24.3" onclick="getLink(document,this)" />
																<area shape="rect" coords="172,136,185,138"
																	href="gtgene2?chr=chr9&start=2200000&end=4600000&title=9p24.2"
																	title="9p24.2" onclick="getLink(document,this)" />
																<area shape="rect" coords="172,138,185,141"
																	href="gtgene2?chr=chr9&start=4600000&end=9000000&title=9p24.1"
																	title="9p24.1" onclick="getLink(document,this)" />
																<area shape="rect" coords="172,141,185,146"
																	href="gtgene2?chr=chr9&start=9000000&end=14100000&title=9p23"
																	title="9p23" onclick="getLink(document,this)" />
																<area shape="rect" coords="172,146,185,149"
																	href="gtgene2?chr=chr9&start=14100000&end=16600000&title=9p22.3"
																	title="9p22.3" onclick="getLink(document,this)" />
																<area shape="rect" coords="172,149,185,151"
																	href="gtgene2?chr=chr9&start=16600000&end=18500000&title=9p22.2"
																	title="9p22.2" onclick="getLink(document,this)" />
																<area shape="rect" coords="172,151,185,153"
																	href="gtgene2?chr=chr9&start=18500000&end=19900000&title=9p22.1"
																	title="9p22.1" onclick="getLink(document,this)" />
																<area shape="rect" coords="172,153,185,156"
																	href="gtgene2?chr=chr9&start=19900000&end=25500000&title=9p21.3"
																	title="9p21.3" onclick="getLink(document,this)" />
																<area shape="rect" coords="172,156,185,158"
																	href="gtgene2?chr=chr9&start=25500000&end=28100000&title=9p21.2"
																	title="9p21.2" onclick="getLink(document,this)" />
																<area shape="rect" coords="172,158,185,163"
																	href="gtgene2?chr=chr9&start=28100000&end=32800000&title=9p21.1"
																	title="9p21.1" onclick="getLink(document,this)" />
																<area shape="rect" coords="172,163,185,168"
																	href="gtgene2?chr=chr9&start=32800000&end=36300000&title=9p13.3"
																	title="9p13.3" onclick="getLink(document,this)" />
																<area shape="rect" coords="172,168,185,170"
																	href="gtgene2?chr=chr9&start=36300000&end=38000000&title=9p13.2"
																	title="9p13.2" onclick="getLink(document,this)" />
																<area shape="rect" coords="172,170,185,172"
																	href="gtgene2?chr=chr9&start=38000000&end=40200000&title=9p13.1"
																	title="9p13.1" onclick="getLink(document,this)" />
																<area shape="rect" coords="172,172,185,175"
																	href="gtgene2?chr=chr9&start=40200000&end=42400000&title=9p12"
																	title="9p12" onclick="getLink(document,this)" />
																<area shape="rect" coords="172,175,185,179"
																	href="gtgene2?chr=chr9&start=42400000&end=46700000&title=9p11.2"
																	title="9p11.2" onclick="getLink(document,this)" />
																<area shape="rect" coords="172,179,185,180"
																	href="gtgene2?chr=chr9&start=46700000&end=51800000&title=9p11.1"
																	title="9p11.1" onclick="getLink(document,this)" />
																<area shape="rect" coords="172,180,185,185"
																	href="gtgene2?chr=chr9&start=51800000&end=60300000&title=9q11"
																	title="9q11" onclick="getLink(document,this)" />
																<area shape="rect" coords="172,185,185,195"
																	href="gtgene2?chr=chr9&start=60300000&end=70000000&title=9q12"
																	title="9q12" onclick="getLink(document,this)" />
																<area shape="rect" coords="172,195,185,199"
																	href="gtgene2?chr=chr9&start=70000000&end=70500000&title=9q13"
																	title="9q13" onclick="getLink(document,this)" />
																<area shape="rect" coords="172,199,185,202"
																	href="gtgene2?chr=chr9&start=70500000&end=72700000&title=9q21.11"
																	title="9q21.11" onclick="getLink(document,this)" />
																<area shape="rect" coords="172,202,185,203"
																	href="gtgene2?chr=chr9&start=72700000&end=73100000&title=9q21.12"
																	title="9q21.12" onclick="getLink(document,this)" />
																<area shape="rect" coords="172,203,185,207"
																	href="gtgene2?chr=chr9&start=73100000&end=79300000&title=9q21.13"
																	title="9q21.13" onclick="getLink(document,this)" />
																<area shape="rect" coords="172,207,185,210"
																	href="gtgene2?chr=chr9&start=79300000&end=80300000&title=9q21.2"
																	title="9q21.2" onclick="getLink(document,this)" />
																<area shape="rect" coords="172,210,185,213"
																	href="gtgene2?chr=chr9&start=80300000&end=83400000&title=9q21.31"
																	title="9q21.31" onclick="getLink(document,this)" />
																<area shape="rect" coords="172,213,185,217"
																	href="gtgene2?chr=chr9&start=83400000&end=86100000&title=9q21.32"
																	title="9q21.32" onclick="getLink(document,this)" />
																<area shape="rect" coords="172,217,185,220"
																	href="gtgene2?chr=chr9&start=86100000&end=89600000&title=9q21.33"
																	title="9q21.33" onclick="getLink(document,this)" />
																<area shape="rect" coords="172,220,185,225"
																	href="gtgene2?chr=chr9&start=89600000&end=91000000&title=9q22.1"
																	title="9q22.1" onclick="getLink(document,this)" />
																<area shape="rect" coords="172,225,185,226"
																	href="gtgene2?chr=chr9&start=91000000&end=93000000&title=9q22.2"
																	title="9q22.2" onclick="getLink(document,this)" />
																<area shape="rect" coords="172,226,185,229"
																	href="gtgene2?chr=chr9&start=93000000&end=95600000&title=9q22.31"
																	title="9q22.31" onclick="getLink(document,this)" />
																<area shape="rect" coords="172,229,185,232"
																	href="gtgene2?chr=chr9&start=95600000&end=98200000&title=9q22.32"
																	title="9q22.32" onclick="getLink(document,this)" />
																<area shape="rect" coords="172,232,185,234"
																	href="gtgene2?chr=chr9&start=98200000&end=101600000&title=9q22.33"
																	title="9q22.33" onclick="getLink(document,this)" />
																<area shape="rect" coords="172,234,185,239"
																	href="gtgene2?chr=chr9&start=101600000&end=107200000&title=9q31.1"
																	title="9q31.1" onclick="getLink(document,this)" />
																<area shape="rect" coords="172,239,185,241"
																	href="gtgene2?chr=chr9&start=107200000&end=110300000&title=9q31.2"
																	title="9q31.2" onclick="getLink(document,this)" />
																<area shape="rect" coords="172,241,185,243"
																	href="gtgene2?chr=chr9&start=110300000&end=113900000&title=9q31.3"
																	title="9q31.3" onclick="getLink(document,this)" />
																<area shape="rect" coords="172,243,185,249"
																	href="gtgene2?chr=chr9&start=113900000&end=116700000&title=9q32"
																	title="9q32" onclick="getLink(document,this)" />
																<area shape="rect" coords="172,249,185,253"
																	href="gtgene2?chr=chr9&start=116700000&end=122000000&title=9q33.1"
																	title="9q33.1" onclick="getLink(document,this)" />
																<area shape="rect" coords="172,253,185,256"
																	href="gtgene2?chr=chr9&start=122000000&end=125800000&title=9q33.2"
																	title="9q33.2" onclick="getLink(document,this)" />
																<area shape="rect" coords="172,256,185,257"
																	href="gtgene2?chr=chr9&start=125800000&end=129300000&title=9q33.3"
																	title="9q33.3" onclick="getLink(document,this)" />
																<area shape="rect" coords="172,257,185,263"
																	href="gtgene2?chr=chr9&start=129300000&end=132500000&title=9q34.11"
																	title="9q34.11" onclick="getLink(document,this)" />
																<area shape="rect" coords="172,263,185,264"
																	href="gtgene2?chr=chr9&start=132500000&end=132800000&title=9q34.12"
																	title="9q34.12" onclick="getLink(document,this)" />
																<area shape="rect" coords="172,264,185,266"
																	href="gtgene2?chr=chr9&start=132800000&end=134900000&title=9q34.13"
																	title="9q34.13" onclick="getLink(document,this)" />
																<area shape="rect" coords="172,266,185,268"
																	href="gtgene2?chr=chr9&start=134900000&end=136600000&title=9q34.2"
																	title="9q34.2" onclick="getLink(document,this)" />
																<area shape="rect" coords="172,268,185,275"
																	href="gtgene2?chr=chr9&start=136600000&end=140273252&title=9q34.3"
																	title="9q34.3" onclick="getLink(document,this)" />

																<area shape="rect" coords="193,133,206,137"
																	href="gtgene2?chr=chr10&start=0&end=3000000&title=10p15.3"
																	title="10p15.3" onclick="getLink(document,this)" />
																<area shape="rect" coords="193,137,206,139"
																	href="gtgene2?chr=chr10&start=3000000&end=3800000&title=10p15.2"
																	title="10p15.2" onclick="getLink(document,this)" />
																<area shape="rect" coords="193,139,206,144"
																	href="gtgene2?chr=chr10&start=3800000&end=6700000&title=10p15.1"
																	title="10p15.1" onclick="getLink(document,this)" />
																<area shape="rect" coords="193,144,206,148"
																	href="gtgene2?chr=chr10&start=6700000&end=12300000&title=10p14"
																	title="10p14" onclick="getLink(document,this)" />
																<area shape="rect" coords="193,148,206,154"
																	href="gtgene2?chr=chr10&start=12300000&end=17300000&title=10p13"
																	title="10p13" onclick="getLink(document,this)" />
																<area shape="rect" coords="193,154,206,156"
																	href="gtgene2?chr=chr10&start=17300000&end=19900000&title=10p12.33"
																	title="10p12.33" onclick="getLink(document,this)" />
																<area shape="rect" coords="193,156,206,158"
																	href="gtgene2?chr=chr10&start=19900000&end=20500000&title=10p12.32"
																	title="10p12.32" onclick="getLink(document,this)" />
																<area shape="rect" coords="193,158,206,161"
																	href="gtgene2?chr=chr10&start=20500000&end=22800000&title=10p12.31"
																	title="10p12.31" onclick="getLink(document,this)" />
																<area shape="rect" coords="193,161,206,162"
																	href="gtgene2?chr=chr10&start=22800000&end=24100000&title=10p12.2"
																	title="10p12.2" onclick="getLink(document,this)" />
																<area shape="rect" coords="193,162,206,166"
																	href="gtgene2?chr=chr10&start=24100000&end=28300000&title=10p12.1"
																	title="10p12.1" onclick="getLink(document,this)" />
																<area shape="rect" coords="193,166,206,169"
																	href="gtgene2?chr=chr10&start=28300000&end=31400000&title=10p11.23"
																	title="10p11.23" onclick="getLink(document,this)" />
																<area shape="rect" coords="193,169,206,172"
																	href="gtgene2?chr=chr10&start=31400000&end=34500000&title=10p11.22"
																	title="10p11.22" onclick="getLink(document,this)" />
																<area shape="rect" coords="193,172,206,175"
																	href="gtgene2?chr=chr10&start=34500000&end=38800000&title=10p11.21"
																	title="10p11.21" onclick="getLink(document,this)" />
																<area shape="rect" coords="193,175,206,178"
																	href="gtgene2?chr=chr10&start=38800000&end=40300000&title=10p11.1"
																	title="10p11.1" onclick="getLink(document,this)" />
																<area shape="rect" coords="193,178,206,183"
																	href="gtgene2?chr=chr10&start=40300000&end=42100000&title=10q11.1"
																	title="10q11.1" onclick="getLink(document,this)" />
																<area shape="rect" coords="193,183,206,186"
																	href="gtgene2?chr=chr10&start=42100000&end=46100000&title=10q11.21"
																	title="10q11.21" onclick="getLink(document,this)" />
																<area shape="rect" coords="193,186,206,190"
																	href="gtgene2?chr=chr10&start=46100000&end=50100000&title=10q11.22"
																	title="10q11.22" onclick="getLink(document,this)" />
																<area shape="rect" coords="193,190,206,193"
																	href="gtgene2?chr=chr10&start=50100000&end=53300000&title=10q11.23"
																	title="10q11.23" onclick="getLink(document,this)" />
																<area shape="rect" coords="193,193,206,199"
																	href="gtgene2?chr=chr10&start=53300000&end=61200000&title=10q21.1"
																	title="10q21.1" onclick="getLink(document,this)" />
																<area shape="rect" coords="193,199,206,201"
																	href="gtgene2?chr=chr10&start=61200000&end=64800000&title=10q21.2"
																	title="10q21.2" onclick="getLink(document,this)" />
																<area shape="rect" coords="193,201,206,205"
																	href="gtgene2?chr=chr10&start=64800000&end=71300000&title=10q21.3"
																	title="10q21.3" onclick="getLink(document,this)" />
																<area shape="rect" coords="193,205,206,212"
																	href="gtgene2?chr=chr10&start=71300000&end=74600000&title=10q22.1"
																	title="10q22.1" onclick="getLink(document,this)" />
																<area shape="rect" coords="193,212,206,215"
																	href="gtgene2?chr=chr10&start=74600000&end=77400000&title=10q22.2"
																	title="10q22.2" onclick="getLink(document,this)" />
																<area shape="rect" coords="193,215,206,221"
																	href="gtgene2?chr=chr10&start=77400000&end=82000000&title=10q22.3"
																	title="10q22.3" onclick="getLink(document,this)" />
																<area shape="rect" coords="193,221,206,224"
																	href="gtgene2?chr=chr10&start=82000000&end=87900000&title=10q23.1"
																	title="10q23.1" onclick="getLink(document,this)" />
																<area shape="rect" coords="193,224,206,227"
																	href="gtgene2?chr=chr10&start=87900000&end=89600000&title=10q23.2"
																	title="10q23.2" onclick="getLink(document,this)" />
																<area shape="rect" coords="193,227,206,231"
																	href="gtgene2?chr=chr10&start=89600000&end=92900000&title=10q23.31"
																	title="10q23.31" onclick="getLink(document,this)" />
																<area shape="rect" coords="193,231,206,233"
																	href="gtgene2?chr=chr10&start=92900000&end=94200000&title=10q23.32"
																	title="10q23.32" onclick="getLink(document,this)" />
																<area shape="rect" coords="193,233,206,237"
																	href="gtgene2?chr=chr10&start=94200000&end=98000000&title=10q23.33"
																	title="10q23.33" onclick="getLink(document,this)" />
																<area shape="rect" coords="193,237,206,239"
																	href="gtgene2?chr=chr10&start=98000000&end=99400000&title=10q24.1"
																	title="10q24.1" onclick="getLink(document,this)" />
																<area shape="rect" coords="193,239,206,241"
																	href="gtgene2?chr=chr10&start=99400000&end=102000000&title=10q24.2"
																	title="10q24.2" onclick="getLink(document,this)" />
																<area shape="rect" coords="193,241,206,243"
																	href="gtgene2?chr=chr10&start=102000000&end=103000000&title=10q24.31"
																	title="10q24.31" onclick="getLink(document,this)" />
																<area shape="rect" coords="193,243,206,245"
																	href="gtgene2?chr=chr10&start=103000000&end=104900000&title=10q24.32"
																	title="10q24.32" onclick="getLink(document,this)" />
																<area shape="rect" coords="193,245,206,246"
																	href="gtgene2?chr=chr10&start=104900000&end=105700000&title=10q24.33"
																	title="10q24.33" onclick="getLink(document,this)" />
																<area shape="rect" coords="193,246,206,250"
																	href="gtgene2?chr=chr10&start=105700000&end=111800000&title=10q25.1"
																	title="10q25.1" onclick="getLink(document,this)" />
																<area shape="rect" coords="193,250,206,253"
																	href="gtgene2?chr=chr10&start=111800000&end=114900000&title=10q25.2"
																	title="10q25.2" onclick="getLink(document,this)" />
																<area shape="rect" coords="193,253,206,255"
																	href="gtgene2?chr=chr10&start=114900000&end=119100000&title=10q25.3"
																	title="10q25.3" onclick="getLink(document,this)" />
																<area shape="rect" coords="193,255,206,258"
																	href="gtgene2?chr=chr10&start=119100000&end=121700000&title=10q26.11"
																	title="10q26.11" onclick="getLink(document,this)" />
																<area shape="rect" coords="193,258,206,261"
																	href="gtgene2?chr=chr10&start=121700000&end=123100000&title=10q26.12"
																	title="10q26.12" onclick="getLink(document,this)" />
																<area shape="rect" coords="193,261,206,266"
																	href="gtgene2?chr=chr10&start=123100000&end=127400000&title=10q26.13"
																	title="10q26.13" onclick="getLink(document,this)" />
																<area shape="rect" coords="193,266,206,270"
																	href="gtgene2?chr=chr10&start=127400000&end=130500000&title=10q26.2"
																	title="10q26.2" onclick="getLink(document,this)" />
																<area shape="rect" coords="193,270,206,276"
																	href="gtgene2?chr=chr10&start=130500000&end=135374737&title=10q26.3"
																	title="10q26.3" onclick="getLink(document,this)" />

																<area shape="rect" coords="213,133,226,137"
																	href="gtgene2?chr=chr11&start=0&end=2800000&title=11p15.5"
																	title="11p15.5" onclick="getLink(document,this)" />
																<area shape="rect" coords="213,137,226,140"
																	href="gtgene2?chr=chr11&start=2800000&end=10700000&title=11p15.4"
																	title="11p15.4" onclick="getLink(document,this)" />
																<area shape="rect" coords="213,140,226,146"
																	href="gtgene2?chr=chr11&start=10700000&end=12600000&title=11p15.3"
																	title="11p15.3" onclick="getLink(document,this)" />
																<area shape="rect" coords="213,146,226,149"
																	href="gtgene2?chr=chr11&start=12600000&end=16100000&title=11p15.2"
																	title="11p15.2" onclick="getLink(document,this)" />
																<area shape="rect" coords="213,149,226,155"
																	href="gtgene2?chr=chr11&start=16100000&end=21600000&title=11p15.1"
																	title="11p15.1" onclick="getLink(document,this)" />
																<area shape="rect" coords="213,155,226,159"
																	href="gtgene2?chr=chr11&start=21600000&end=26000000&title=11p14.3"
																	title="11p14.3" onclick="getLink(document,this)" />
																<area shape="rect" coords="213,159,226,160"
																	href="gtgene2?chr=chr11&start=26000000&end=27200000&title=11p14.2"
																	title="11p14.2" onclick="getLink(document,this)" />
																<area shape="rect" coords="213,160,226,164"
																	href="gtgene2?chr=chr11&start=27200000&end=31000000&title=11p14.1"
																	title="11p14.1" onclick="getLink(document,this)" />
																<area shape="rect" coords="213,164,226,171"
																	href="gtgene2?chr=chr11&start=31000000&end=36400000&title=11p13"
																	title="11p13" onclick="getLink(document,this)" />
																<area shape="rect" coords="213,171,226,174"
																	href="gtgene2?chr=chr11&start=36400000&end=43400000&title=11p12"
																	title="11p12" onclick="getLink(document,this)" />
																<area shape="rect" coords="213,174,226,179"
																	href="gtgene2?chr=chr11&start=43400000&end=48800000&title=11p11.2"
																	title="11p11.2" onclick="getLink(document,this)" />
																<area shape="rect" coords="213,179,226,184"
																	href="gtgene2?chr=chr11&start=48800000&end=51400000&title=11p11.12"
																	title="11p11.12" onclick="getLink(document,this)" />
																<area shape="rect" coords="213,184,226,186"
																	href="gtgene2?chr=chr11&start=51400000&end=52900000&title=11p11.11"
																	title="11p11.11" onclick="getLink(document,this)" />
																<area shape="rect" coords="213,186,226,189"
																	href="gtgene2?chr=chr11&start=52900000&end=56400000&title=11q11"
																	title="11q11" onclick="getLink(document,this)" />
																<area shape="rect" coords="213,189,226,194"
																	href="gtgene2?chr=chr11&start=56400000&end=59700000&title=11q12.1"
																	title="11q12.1" onclick="getLink(document,this)" />
																<area shape="rect" coords="213,194,226,195"
																	href="gtgene2?chr=chr11&start=59700000&end=61400000&title=11q12.2"
																	title="11q12.2" onclick="getLink(document,this)" />
																<area shape="rect" coords="213,195,226,198"
																	href="gtgene2?chr=chr11&start=61400000&end=63100000&title=11q12.3"
																	title="11q12.3" onclick="getLink(document,this)" />
																<area shape="rect" coords="213,198,226,204"
																	href="gtgene2?chr=chr11&start=63100000&end=67100000&title=11q13.1"
																	title="11q13.1" onclick="getLink(document,this)" />
																<area shape="rect" coords="213,204,226,207"
																	href="gtgene2?chr=chr11&start=67100000&end=69200000&title=11q13.2"
																	title="11q13.2" onclick="getLink(document,this)" />
																<area shape="rect" coords="213,207,226,213"
																	href="gtgene2?chr=chr11&start=69200000&end=70700000&title=11q13.3"
																	title="11q13.3" onclick="getLink(document,this)" />
																<area shape="rect" coords="213,213,226,216"
																	href="gtgene2?chr=chr11&start=70700000&end=74900000&title=11q13.4"
																	title="11q13.4" onclick="getLink(document,this)" />
																<area shape="rect" coords="213,216,226,219"
																	href="gtgene2?chr=chr11&start=74900000&end=76700000&title=11q13.5"
																	title="11q13.5" onclick="getLink(document,this)" />
																<area shape="rect" coords="213,219,226,224"
																	href="gtgene2?chr=chr11&start=76700000&end=85300000&title=11q14.1"
																	title="11q14.1" onclick="getLink(document,this)" />
																<area shape="rect" coords="213,224,226,226"
																	href="gtgene2?chr=chr11&start=85300000&end=87900000&title=11q14.2"
																	title="11q14.2" onclick="getLink(document,this)" />
																<area shape="rect" coords="213,226,226,230"
																	href="gtgene2?chr=chr11&start=87900000&end=92300000&title=11q14.3"
																	title="11q14.3" onclick="getLink(document,this)" />
																<area shape="rect" coords="213,230,226,234"
																	href="gtgene2?chr=chr11&start=92300000&end=96700000&title=11q21"
																	title="11q21" onclick="getLink(document,this)" />
																<area shape="rect" coords="213,234,226,238"
																	href="gtgene2?chr=chr11&start=96700000&end=101600000&title=11q22.1"
																	title="11q22.1" onclick="getLink(document,this)" />
																<area shape="rect" coords="213,238,226,240"
																	href="gtgene2?chr=chr11&start=101600000&end=102400000&title=11q22.2"
																	title="11q22.2" onclick="getLink(document,this)" />
																<area shape="rect" coords="213,240,226,245"
																	href="gtgene2?chr=chr11&start=102400000&end=110000000&title=11q22.3"
																	title="11q22.3" onclick="getLink(document,this)" />
																<area shape="rect" coords="213,245,226,248"
																	href="gtgene2?chr=chr11&start=110000000&end=112800000&title=11q23.1"
																	title="11q23.1" onclick="getLink(document,this)" />
																<area shape="rect" coords="213,248,226,252"
																	href="gtgene2?chr=chr11&start=112800000&end=115400000&title=11q23.2"
																	title="11q23.2" onclick="getLink(document,this)" />
																<area shape="rect" coords="213,252,226,260"
																	href="gtgene2?chr=chr11&start=115400000&end=120700000&title=11q23.3"
																	title="11q23.3" onclick="getLink(document,this)" />
																<area shape="rect" coords="213,260,226,262"
																	href="gtgene2?chr=chr11&start=120700000&end=123500000&title=11q24.1"
																	title="11q24.1" onclick="getLink(document,this)" />
																<area shape="rect" coords="213,262,226,267"
																	href="gtgene2?chr=chr11&start=123500000&end=127400000&title=11q24.2"
																	title="11q24.2" onclick="getLink(document,this)" />
																<area shape="rect" coords="213,267,226,270"
																	href="gtgene2?chr=chr11&start=127400000&end=130300000&title=11q24.3"
																	title="11q24.3" onclick="getLink(document,this)" />
																<area shape="rect" coords="213,270,226,275"
																	href="gtgene2?chr=chr11&start=130300000&end=134452384&title=11q25"
																	title="11q25" onclick="getLink(document,this)" />

																<area shape="rect" coords="233,143,246,146"
																	href="gtgene2?chr=chr12&start=0&end=3100000&title=12p13.33"
																	title="12p13.33" onclick="getLink(document,this)" />
																<area shape="rect" coords="233,146,246,149"
																	href="gtgene2?chr=chr12&start=3100000&end=5300000&title=12p13.32"
																	title="12p13.32" onclick="getLink(document,this)" />
																<area shape="rect" coords="233,149,246,154"
																	href="gtgene2?chr=chr12&start=5300000&end=10000000&title=12p13.31"
																	title="12p13.31" onclick="getLink(document,this)" />
																<area shape="rect" coords="233,154,246,157"
																	href="gtgene2?chr=chr12&start=10000000&end=12600000&title=12p13.2"
																	title="12p13.2" onclick="getLink(document,this)" />
																<area shape="rect" coords="233,157,246,159"
																	href="gtgene2?chr=chr12&start=12600000&end=14800000&title=12p13.1"
																	title="12p13.1" onclick="getLink(document,this)" />
																<area shape="rect" coords="233,159,246,164"
																	href="gtgene2?chr=chr12&start=14800000&end=19900000&title=12p12.3"
																	title="12p12.3" onclick="getLink(document,this)" />
																<area shape="rect" coords="233,164,246,165"
																	href="gtgene2?chr=chr12&start=19900000&end=21200000&title=12p12.2"
																	title="12p12.2" onclick="getLink(document,this)" />
																<area shape="rect" coords="233,165,246,170"
																	href="gtgene2?chr=chr12&start=21200000&end=26300000&title=12p12.1"
																	title="12p12.1" onclick="getLink(document,this)" />
																<area shape="rect" coords="233,170,246,172"
																	href="gtgene2?chr=chr12&start=26300000&end=27700000&title=12p11.23"
																	title="12p11.23" onclick="getLink(document,this)" />
																<area shape="rect" coords="233,172,246,174"
																	href="gtgene2?chr=chr12&start=27700000&end=30600000&title=12p11.22"
																	title="12p11.22" onclick="getLink(document,this)" />
																<area shape="rect" coords="233,174,246,176"
																	href="gtgene2?chr=chr12&start=30600000&end=33200000&title=12p11.21"
																	title="12p11.21" onclick="getLink(document,this)" />
																<area shape="rect" coords="233,176,246,179"
																	href="gtgene2?chr=chr12&start=33200000&end=35400000&title=12p11.1"
																	title="12p11.1" onclick="getLink(document,this)" />
																<area shape="rect" coords="233,179,246,181"
																	href="gtgene2?chr=chr12&start=35400000&end=36500000&title=12q11"
																	title="12q11" onclick="getLink(document,this)" />
																<area shape="rect" coords="233,181,246,188"
																	href="gtgene2?chr=chr12&start=36500000&end=44600000&title=12q12"
																	title="12q12" onclick="getLink(document,this)" />
																<area shape="rect" coords="233,188,246,191"
																	href="gtgene2?chr=chr12&start=44600000&end=47400000&title=12q13.11"
																	title="12q13.11" onclick="getLink(document,this)" />
																<area shape="rect" coords="233,191,246,194"
																	href="gtgene2?chr=chr12&start=47400000&end=48400000&title=12q13.12"
																	title="12q13.12" onclick="getLink(document,this)" />
																<area shape="rect" coords="233,194,246,200"
																	href="gtgene2?chr=chr12&start=48400000&end=53100000&title=12q13.13"
																	title="12q13.13" onclick="getLink(document,this)" />
																<area shape="rect" coords="233,200,246,203"
																	href="gtgene2?chr=chr12&start=53100000&end=55200000&title=12q13.2"
																	title="12q13.2" onclick="getLink(document,this)" />
																<area shape="rect" coords="233,203,246,205"
																	href="gtgene2?chr=chr12&start=55200000&end=56300000&title=12q13.3"
																	title="12q13.3" onclick="getLink(document,this)" />
																<area shape="rect" coords="233,205,246,209"
																	href="gtgene2?chr=chr12&start=56300000&end=61400000&title=12q14.1"
																	title="12q14.1" onclick="getLink(document,this)" />
																<area shape="rect" coords="233,209,246,211"
																	href="gtgene2?chr=chr12&start=61400000&end=63400000&title=12q14.2"
																	title="12q14.2" onclick="getLink(document,this)" />
																<area shape="rect" coords="233,211,246,213"
																	href="gtgene2?chr=chr12&start=63400000&end=66000000&title=12q14.3"
																	title="12q14.3" onclick="getLink(document,this)" />
																<area shape="rect" coords="233,213,246,218"
																	href="gtgene2?chr=chr12&start=66000000&end=69800000&title=12q15"
																	title="12q15" onclick="getLink(document,this)" />
																<area shape="rect" coords="233,218,246,220"
																	href="gtgene2?chr=chr12&start=69800000&end=74100000&title=12q21.1"
																	title="12q21.1" onclick="getLink(document,this)" />
																<area shape="rect" coords="233,220,246,224"
																	href="gtgene2?chr=chr12&start=74100000&end=78700000&title=12q21.2"
																	title="12q21.2" onclick="getLink(document,this)" />
																<area shape="rect" coords="233,224,246,229"
																	href="gtgene2?chr=chr12&start=78700000&end=85100000&title=12q21.31"
																	title="12q21.31" onclick="getLink(document,this)" />
																<area shape="rect" coords="233,229,246,230"
																	href="gtgene2?chr=chr12&start=85100000&end=87500000&title=12q21.32"
																	title="12q21.32" onclick="getLink(document,this)" />
																<area shape="rect" coords="233,230,246,234"
																	href="gtgene2?chr=chr12&start=87500000&end=91200000&title=12q21.33"
																	title="12q21.33" onclick="getLink(document,this)" />
																<area shape="rect" coords="233,234,246,238"
																	href="gtgene2?chr=chr12&start=91200000&end=94800000&title=12q22"
																	title="12q22" onclick="getLink(document,this)" />
																<area shape="rect" coords="233,238,246,242"
																	href="gtgene2?chr=chr12&start=94800000&end=100000000&title=12q23.1"
																	title="12q23.1" onclick="getLink(document,this)" />
																<area shape="rect" coords="233,242,246,243"
																	href="gtgene2?chr=chr12&start=100000000&end=102400000&title=12q23.2"
																	title="12q23.2" onclick="getLink(document,this)" />
																<area shape="rect" coords="233,243,246,248"
																	href="gtgene2?chr=chr12&start=102400000&end=107500000&title=12q23.3"
																	title="12q23.3" onclick="getLink(document,this)" />
																<area shape="rect" coords="233,248,246,251"
																	href="gtgene2?chr=chr12&start=107500000&end=110200000&title=12q24.11"
																	title="12q24.11" onclick="getLink(document,this)" />
																<area shape="rect" coords="233,251,246,254"
																	href="gtgene2?chr=chr12&start=110200000&end=110800000&title=12q24.12"
																	title="12q24.12" onclick="getLink(document,this)" />
																<area shape="rect" coords="233,254,246,256"
																	href="gtgene2?chr=chr12&start=110800000&end=112800000&title=12q24.13"
																	title="12q24.13" onclick="getLink(document,this)" />
																<area shape="rect" coords="233,256,246,258"
																	href="gtgene2?chr=chr12&start=112800000&end=115300000&title=12q24.21"
																	title="12q24.21" onclick="getLink(document,this)" />
																<area shape="rect" coords="233,258,246,260"
																	href="gtgene2?chr=chr12&start=115300000&end=116700000&title=12q24.22"
																	title="12q24.22" onclick="getLink(document,this)" />
																<area shape="rect" coords="233,260,246,263"
																	href="gtgene2?chr=chr12&start=116700000&end=119100000&title=12q24.23"
																	title="12q24.23" onclick="getLink(document,this)" />
																<area shape="rect" coords="233,263,246,267"
																	href="gtgene2?chr=chr12&start=119100000&end=124500000&title=12q24.31"
																	title="12q24.31" onclick="getLink(document,this)" />
																<area shape="rect" coords="233,267,246,270"
																	href="gtgene2?chr=chr12&start=124500000&end=128700000&title=12q24.32"
																	title="12q24.32" onclick="getLink(document,this)" />
																<area shape="rect" coords="233,270,246,274"
																	href="gtgene2?chr=chr12&start=128700000&end=132349534&title=12q24.33"
																	title="12q24.33" onclick="getLink(document,this)" />

																<area shape="rect" coords="254,158,267,163"
																	href="gtgene2?chr=chr13&start=0&end=3800000&title=13p13"
																	title="13p13" onclick="getLink(document,this)" />
																<area shape="rect" coords="254,163,267,168"
																	href="gtgene2?chr=chr13&start=3800000&end=8300000&title=13p12"
																	title="13p12" onclick="getLink(document,this)" />
																<area shape="rect" coords="254,168,267,175"
																	href="gtgene2?chr=chr13&start=8300000&end=13500000&title=13p11.2"
																	title="13p11.2" onclick="getLink(document,this)" />
																<area shape="rect" coords="254,175,267,179"
																	href="gtgene2?chr=chr13&start=13500000&end=16000000&title=13p11.1"
																	title="13p11.1" onclick="getLink(document,this)" />
																<area shape="rect" coords="254,179,267,182"
																	href="gtgene2?chr=chr13&start=16000000&end=18400000&title=13q11"
																	title="13q11" onclick="getLink(document,this)" />
																<area shape="rect" coords="254,182,267,185"
																	href="gtgene2?chr=chr13&start=18400000&end=22200000&title=13q12.11"
																	title="13q12.11" onclick="getLink(document,this)" />
																<area shape="rect" coords="254,185,267,187"
																	href="gtgene2?chr=chr13&start=22200000&end=24400000&title=13q12.12"
																	title="13q12.12" onclick="getLink(document,this)" />
																<area shape="rect" coords="254,187,267,190"
																	href="gtgene2?chr=chr13&start=24400000&end=26700000&title=13q12.13"
																	title="13q12.13" onclick="getLink(document,this)" />
																<area shape="rect" coords="254,190,267,191"
																	href="gtgene2?chr=chr13&start=26700000&end=27800000&title=13q12.2"
																	title="13q12.2" onclick="getLink(document,this)" />
																<area shape="rect" coords="254,191,267,195"
																	href="gtgene2?chr=chr13&start=27800000&end=31100000&title=13q12.3"
																	title="13q12.3" onclick="getLink(document,this)" />
																<area shape="rect" coords="254,195,267,198"
																	href="gtgene2?chr=chr13&start=31100000&end=32900000&title=13q13.1"
																	title="13q13.1" onclick="getLink(document,this)" />
																<area shape="rect" coords="254,198,267,200"
																	href="gtgene2?chr=chr13&start=32900000&end=34700000&title=13q13.2"
																	title="13q13.2" onclick="getLink(document,this)" />
																<area shape="rect" coords="254,200,267,205"
																	href="gtgene2?chr=chr13&start=34700000&end=39500000&title=13q13.3"
																	title="13q13.3" onclick="getLink(document,this)" />
																<area shape="rect" coords="254,205,267,210"
																	href="gtgene2?chr=chr13&start=39500000&end=44300000&title=13q14.11"
																	title="13q14.11" onclick="getLink(document,this)" />
																<area shape="rect" coords="254,210,267,212"
																	href="gtgene2?chr=chr13&start=44300000&end=45900000&title=13q14.12"
																	title="13q14.12" onclick="getLink(document,this)" />
																<area shape="rect" coords="254,212,267,214"
																	href="gtgene2?chr=chr13&start=45900000&end=46200000&title=13q14.13"
																	title="13q14.13" onclick="getLink(document,this)" />
																<area shape="rect" coords="254,214,267,217"
																	href="gtgene2?chr=chr13&start=46200000&end=48900000&title=13q14.2"
																	title="13q14.2" onclick="getLink(document,this)" />
																<area shape="rect" coords="254,217,267,221"
																	href="gtgene2?chr=chr13&start=48900000&end=52200000&title=13q14.3"
																	title="13q14.3" onclick="getLink(document,this)" />
																<area shape="rect" coords="254,221,267,225"
																	href="gtgene2?chr=chr13&start=52200000&end=57600000&title=13q21.1"
																	title="13q21.1" onclick="getLink(document,this)" />
																<area shape="rect" coords="254,225,267,227"
																	href="gtgene2?chr=chr13&start=57600000&end=60500000&title=13q21.2"
																	title="13q21.2" onclick="getLink(document,this)" />
																<area shape="rect" coords="254,227,267,230"
																	href="gtgene2?chr=chr13&start=60500000&end=64100000&title=13q21.31"
																	title="13q21.31" onclick="getLink(document,this)" />
																<area shape="rect" coords="254,230,267,233"
																	href="gtgene2?chr=chr13&start=64100000&end=67200000&title=13q21.32"
																	title="13q21.32" onclick="getLink(document,this)" />
																<area shape="rect" coords="254,233,267,237"
																	href="gtgene2?chr=chr13&start=67200000&end=72100000&title=13q21.33"
																	title="13q21.33" onclick="getLink(document,this)" />
																<area shape="rect" coords="254,237,267,240"
																	href="gtgene2?chr=chr13&start=72100000&end=74200000&title=13q22.1"
																	title="13q22.1" onclick="getLink(document,this)" />
																<area shape="rect" coords="254,240,267,242"
																	href="gtgene2?chr=chr13&start=74200000&end=76000000&title=13q22.2"
																	title="13q22.2" onclick="getLink(document,this)" />
																<area shape="rect" coords="254,242,267,243"
																	href="gtgene2?chr=chr13&start=76000000&end=77800000&title=13q22.3"
																	title="13q22.3" onclick="getLink(document,this)" />
																<area shape="rect" coords="254,243,267,249"
																	href="gtgene2?chr=chr13&start=77800000&end=86500000&title=13q31.1"
																	title="13q31.1" onclick="getLink(document,this)" />
																<area shape="rect" coords="254,249,267,251"
																	href="gtgene2?chr=chr13&start=86500000&end=88800000&title=13q31.2"
																	title="13q31.2" onclick="getLink(document,this)" />
																<area shape="rect" coords="254,251,267,254"
																	href="gtgene2?chr=chr13&start=88800000&end=93800000&title=13q31.3"
																	title="13q31.3" onclick="getLink(document,this)" />
																<area shape="rect" coords="254,254,267,257"
																	href="gtgene2?chr=chr13&start=93800000&end=97000000&title=13q32.1"
																	title="13q32.1" onclick="getLink(document,this)" />
																<area shape="rect" coords="254,257,267,259"
																	href="gtgene2?chr=chr13&start=97000000&end=98100000&title=13q32.2"
																	title="13q32.2" onclick="getLink(document,this)" />
																<area shape="rect" coords="254,259,267,262"
																	href="gtgene2?chr=chr13&start=98100000&end=100500000&title=13q32.3"
																	title="13q32.3" onclick="getLink(document,this)" />
																<area shape="rect" coords="254,262,267,265"
																	href="gtgene2?chr=chr13&start=100500000&end=103700000&title=13q33.1"
																	title="13q33.1" onclick="getLink(document,this)" />
																<area shape="rect" coords="254,265,267,267"
																	href="gtgene2?chr=chr13&start=103700000&end=105800000&title=13q33.2"
																	title="13q33.2" onclick="getLink(document,this)" />
																<area shape="rect" coords="254,267,267,270"
																	href="gtgene2?chr=chr13&start=105800000&end=109100000&title=13q33.3"
																	title="13q33.3" onclick="getLink(document,this)" />
																<area shape="rect" coords="254,270,267,275"
																	href="gtgene2?chr=chr13&start=109100000&end=114142980&title=13q34"
																	title="13q34" onclick="getLink(document,this)" />

																<area shape="rect" coords="275,164,288,169"
																	href="gtgene2?chr=chr14&start=0&end=3100000&title=14p13"
																	title="14p13" onclick="getLink(document,this)" />
																<area shape="rect" coords="275,169,288,174"
																	href="gtgene2?chr=chr14&start=3100000&end=6700000&title=14p12"
																	title="14p12" onclick="getLink(document,this)" />
																<area shape="rect" coords="275,174,288,186"
																	href="gtgene2?chr=chr14&start=6700000&end=13600000&title=14p11.2"
																	title="14p11.2" onclick="getLink(document,this)" />
																<area shape="rect" coords="275,186,288,189"
																	href="gtgene2?chr=chr14&start=13600000&end=15600000&title=14p11.1"
																	title="14p11.1" onclick="getLink(document,this)" />
																<area shape="rect" coords="275,189,288,193"
																	href="gtgene2?chr=chr14&start=15600000&end=19100000&title=14q11.1"
																	title="14q11.1" onclick="getLink(document,this)" />
																<area shape="rect" coords="275,193,288,200"
																	href="gtgene2?chr=chr14&start=19100000&end=23600000&title=14q11.2"
																	title="14q11.2" onclick="getLink(document,this)" />
																<area shape="rect" coords="275,200,288,205"
																	href="gtgene2?chr=chr14&start=23600000&end=31800000&title=14q12"
																	title="14q12" onclick="getLink(document,this)" />
																<area shape="rect" coords="275,205,288,208"
																	href="gtgene2?chr=chr14&start=31800000&end=34100000&title=14q13.1"
																	title="14q13.1" onclick="getLink(document,this)" />
																<area shape="rect" coords="275,208,288,210"
																	href="gtgene2?chr=chr14&start=34100000&end=35600000&title=14q13.2"
																	title="14q13.2" onclick="getLink(document,this)" />
																<area shape="rect" coords="275,210,288,212"
																	href="gtgene2?chr=chr14&start=35600000&end=36900000&title=14q13.3"
																	title="14q13.3" onclick="getLink(document,this)" />
																<area shape="rect" coords="275,212,288,216"
																	href="gtgene2?chr=chr14&start=36900000&end=41000000&title=14q21.1"
																	title="14q21.1" onclick="getLink(document,this)" />
																<area shape="rect" coords="275,216,288,217"
																	href="gtgene2?chr=chr14&start=41000000&end=43200000&title=14q21.2"
																	title="14q21.2" onclick="getLink(document,this)" />
																<area shape="rect" coords="275,217,288,222"
																	href="gtgene2?chr=chr14&start=43200000&end=48300000&title=14q21.3"
																	title="14q21.3" onclick="getLink(document,this)" />
																<area shape="rect" coords="275,222,288,225"
																	href="gtgene2?chr=chr14&start=48300000&end=52300000&title=14q22.1"
																	title="14q22.1" onclick="getLink(document,this)" />
																<area shape="rect" coords="275,225,288,227"
																	href="gtgene2?chr=chr14&start=52300000&end=54400000&title=14q22.2"
																	title="14q22.2" onclick="getLink(document,this)" />
																<area shape="rect" coords="275,227,288,230"
																	href="gtgene2?chr=chr14&start=54400000&end=55800000&title=14q22.3"
																	title="14q22.3" onclick="getLink(document,this)" />
																<area shape="rect" coords="275,230,288,233"
																	href="gtgene2?chr=chr14&start=55800000&end=61200000&title=14q23.1"
																	title="14q23.1" onclick="getLink(document,this)" />
																<area shape="rect" coords="275,233,288,235"
																	href="gtgene2?chr=chr14&start=61200000&end=64000000&title=14q23.2"
																	title="14q23.2" onclick="getLink(document,this)" />
																<area shape="rect" coords="275,235,288,238"
																	href="gtgene2?chr=chr14&start=64000000&end=67000000&title=14q23.3"
																	title="14q23.3" onclick="getLink(document,this)" />
																<area shape="rect" coords="275,238,288,243"
																	href="gtgene2?chr=chr14&start=67000000&end=69300000&title=14q24.1"
																	title="14q24.1" onclick="getLink(document,this)" />
																<area shape="rect" coords="275,243,288,246"
																	href="gtgene2?chr=chr14&start=69300000&end=72900000&title=14q24.2"
																	title="14q24.2" onclick="getLink(document,this)" />
																<area shape="rect" coords="275,246,288,249"
																	href="gtgene2?chr=chr14&start=72900000&end=78400000&title=14q24.3"
																	title="14q24.3" onclick="getLink(document,this)" />
																<area shape="rect" coords="275,249,288,253"
																	href="gtgene2?chr=chr14&start=78400000&end=82600000&title=14q31.1"
																	title="14q31.1" onclick="getLink(document,this)" />
																<area shape="rect" coords="275,253,288,254"
																	href="gtgene2?chr=chr14&start=82600000&end=84000000&title=14q31.2"
																	title="14q31.2" onclick="getLink(document,this)" />
																<area shape="rect" coords="275,254,288,258"
																	href="gtgene2?chr=chr14&start=84000000&end=88900000&title=14q31.3"
																	title="14q31.3" onclick="getLink(document,this)" />
																<area shape="rect" coords="275,258,288,260"
																	href="gtgene2?chr=chr14&start=88900000&end=90500000&title=14q32.11"
																	title="14q32.11" onclick="getLink(document,this)" />
																<area shape="rect" coords="275,260,288,262"
																	href="gtgene2?chr=chr14&start=90500000&end=92800000&title=14q32.12"
																	title="14q32.12" onclick="getLink(document,this)" />
																<area shape="rect" coords="275,262,288,264"
																	href="gtgene2?chr=chr14&start=92800000&end=95400000&title=14q32.13"
																	title="14q32.13" onclick="getLink(document,this)" />
																<area shape="rect" coords="275,264,288,265"
																	href="gtgene2?chr=chr14&start=95400000&end=100400000&title=14q32.2"
																	title="14q32.2" onclick="getLink(document,this)" />
																<area shape="rect" coords="275,265,288,268"
																	href="gtgene2?chr=chr14&start=100400000&end=102200000&title=14q32.31"
																	title="14q32.31" onclick="getLink(document,this)" />
																<area shape="rect" coords="275,268,288,271"
																	href="gtgene2?chr=chr14&start=102200000&end=103000000&title=14q32.32"
																	title="14q32.32" onclick="getLink(document,this)" />
																<area shape="rect" coords="275,271,288,275"
																	href="gtgene2?chr=chr14&start=103000000&end=106368585&title=14q32.33"
																	title="14q32.33" onclick="getLink(document,this)" />
																<area shape="rect" coords="296,165,309,169"
																	href="gtgene2?chr=chr15&start=0&end=3500000&title=15p13"
																	title="15p13" onclick="getLink(document,this)" />
																<area shape="rect" coords="296,169,309,176"
																	href="gtgene2?chr=chr15&start=3500000&end=7900000&title=15p12"
																	title="15p12" onclick="getLink(document,this)" />
																<area shape="rect" coords="296,176,309,185"
																	href="gtgene2?chr=chr15&start=7900000&end=14100000&title=15p11.2"
																	title="15p11.2" onclick="getLink(document,this)" />
																<area shape="rect" coords="296,185,309,189"
																	href="gtgene2?chr=chr15&start=14100000&end=17000000&title=15p11.1"
																	title="15p11.1" onclick="getLink(document,this)" />
																<area shape="rect" coords="296,189,309,191"
																	href="gtgene2?chr=chr15&start=17000000&end=18400000&title=15q11.1"
																	title="15q11.1" onclick="getLink(document,this)" />
																<area shape="rect" coords="296,191,309,198"
																	href="gtgene2?chr=chr15&start=18400000&end=23300000&title=15q11.2"
																	title="15q11.2" onclick="getLink(document,this)" />
																<area shape="rect" coords="296,198,309,202"
																	href="gtgene2?chr=chr15&start=23300000&end=25700000&title=15q12"
																	title="15q12" onclick="getLink(document,this)" />
																<area shape="rect" coords="296,202,309,205"
																	href="gtgene2?chr=chr15&start=25700000&end=28000000&title=15q13.1"
																	title="15q13.1" onclick="getLink(document,this)" />
																<area shape="rect" coords="296,205,309,207"
																	href="gtgene2?chr=chr15&start=28000000&end=29000000&title=15q13.2"
																	title="15q13.2" onclick="getLink(document,this)" />
																<area shape="rect" coords="296,207,309,212"
																	href="gtgene2?chr=chr15&start=29000000&end=31400000&title=15q13.3"
																	title="15q13.3" onclick="getLink(document,this)" />
																<area shape="rect" coords="296,212,309,216"
																	href="gtgene2?chr=chr15&start=31400000&end=37900000&title=15q14"
																	title="15q14" onclick="getLink(document,this)" />
																<area shape="rect" coords="296,216,309,220"
																	href="gtgene2?chr=chr15&start=37900000&end=40700000&title=15q15.1"
																	title="15q15.1" onclick="getLink(document,this)" />
																<area shape="rect" coords="296,220,309,221"
																	href="gtgene2?chr=chr15&start=40700000&end=41400000&title=15q15.2"
																	title="15q15.2" onclick="getLink(document,this)" />
																<area shape="rect" coords="296,221,309,224"
																	href="gtgene2?chr=chr15&start=41400000&end=42700000&title=15q15.3"
																	title="15q15.3" onclick="getLink(document,this)" />
																<area shape="rect" coords="296,224,309,228"
																	href="gtgene2?chr=chr15&start=42700000&end=47600000&title=15q21.1"
																	title="15q21.1" onclick="getLink(document,this)" />
																<area shape="rect" coords="296,228,309,231"
																	href="gtgene2?chr=chr15&start=47600000&end=51100000&title=15q21.2"
																	title="15q21.2" onclick="getLink(document,this)" />
																<area shape="rect" coords="296,231,309,235"
																	href="gtgene2?chr=chr15&start=51100000&end=55800000&title=15q21.3"
																	title="15q21.3" onclick="getLink(document,this)" />
																<area shape="rect" coords="296,235,309,237"
																	href="gtgene2?chr=chr15&start=55800000&end=57100000&title=15q22.1"
																	title="15q22.1" onclick="getLink(document,this)" />
																<area shape="rect" coords="296,237,309,239"
																	href="gtgene2?chr=chr15&start=57100000&end=61500000&title=15q22.2"
																	title="15q22.2" onclick="getLink(document,this)" />
																<area shape="rect" coords="296,239,309,243"
																	href="gtgene2?chr=chr15&start=61500000&end=64900000&title=15q22.31"
																	title="15q22.31" onclick="getLink(document,this)" />
																<area shape="rect" coords="296,243,309,245"
																	href="gtgene2?chr=chr15&start=64900000&end=65000000&title=15q22.32"
																	title="15q22.32" onclick="getLink(document,this)" />
																<area shape="rect" coords="296,245,309,247"
																	href="gtgene2?chr=chr15&start=65000000&end=65300000&title=15q22.33"
																	title="15q22.33" onclick="getLink(document,this)" />
																<area shape="rect" coords="296,247,309,249"
																	href="gtgene2?chr=chr15&start=65300000&end=70400000&title=15q23"
																	title="15q23" onclick="getLink(document,this)" />
																<area shape="rect" coords="296,249,309,252"
																	href="gtgene2?chr=chr15&start=70400000&end=73100000&title=15q24.1"
																	title="15q24.1" onclick="getLink(document,this)" />
																<area shape="rect" coords="296,252,309,253"
																	href="gtgene2?chr=chr15&start=73100000&end=74400000&title=15q24.2"
																	title="15q24.2" onclick="getLink(document,this)" />
																<area shape="rect" coords="296,253,309,254"
																	href="gtgene2?chr=chr15&start=74400000&end=76100000&title=15q24.3"
																	title="15q24.3" onclick="getLink(document,this)" />
																<area shape="rect" coords="296,254,309,257"
																	href="gtgene2?chr=chr15&start=76100000&end=79500000&title=15q25.1"
																	title="15q25.1" onclick="getLink(document,this)" />
																<area shape="rect" coords="296,257,309,259"
																	href="gtgene2?chr=chr15&start=79500000&end=83000000&title=15q25.2"
																	title="15q25.2" onclick="getLink(document,this)" />
																<area shape="rect" coords="296,259,309,262"
																	href="gtgene2?chr=chr15&start=83000000&end=86900000&title=15q25.3"
																	title="15q25.3" onclick="getLink(document,this)" />
																<area shape="rect" coords="296,262,309,268"
																	href="gtgene2?chr=chr15&start=86900000&end=92100000&title=15q26.1"
																	title="15q26.1" onclick="getLink(document,this)" />
																<area shape="rect" coords="296,268,309,271"
																	href="gtgene2?chr=chr15&start=92100000&end=96300000&title=15q26.2"
																	title="15q26.2" onclick="getLink(document,this)" />
																<area shape="rect" coords="296,271,309,275"
																	href="gtgene2?chr=chr15&start=96300000&end=100338915&title=15q26.3"
																	title="15q26.3" onclick="getLink(document,this)" />

																<area shape="rect" coords="316,182,329,188"
																	href="gtgene2?chr=chr16&start=0&end=6300000&title=16p13.3"
																	title="16p13.3" onclick="getLink(document,this)" />
																<area shape="rect" coords="316,188,329,192"
																	href="gtgene2?chr=chr16&start=6300000&end=10300000&title=16p13.2"
																	title="16p13.2" onclick="getLink(document,this)" />
																<area shape="rect" coords="316,192,329,196"
																	href="gtgene2?chr=chr16&start=10300000&end=12500000&title=16p13.13"
																	title="16p13.13" onclick="getLink(document,this)" />
																<area shape="rect" coords="316,196,329,199"
																	href="gtgene2?chr=chr16&start=12500000&end=14700000&title=16p13.12"
																	title="16p13.12" onclick="getLink(document,this)" />
																<area shape="rect" coords="316,199,329,201"
																	href="gtgene2?chr=chr16&start=14700000&end=16700000&title=16p13.11"
																	title="16p13.11" onclick="getLink(document,this)" />
																<area shape="rect" coords="316,201,329,204"
																	href="gtgene2?chr=chr16&start=16700000&end=20500000&title=16p12.3"
																	title="16p12.3" onclick="getLink(document,this)" />
																<area shape="rect" coords="316,204,329,208"
																	href="gtgene2?chr=chr16&start=20500000&end=21700000&title=16p12.2"
																	title="16p12.2" onclick="getLink(document,this)" />
																<area shape="rect" coords="316,208,329,210"
																	href="gtgene2?chr=chr16&start=21700000&end=27600000&title=16p12.1"
																	title="16p12.1" onclick="getLink(document,this)" />
																<area shape="rect" coords="316,210,329,216"
																	href="gtgene2?chr=chr16&start=27600000&end=34400000&title=16p11.2"
																	title="16p11.2" onclick="getLink(document,this)" />
																<area shape="rect" coords="316,216,329,218"
																	href="gtgene2?chr=chr16&start=34400000&end=38200000&title=16p11.1"
																	title="16p11.1" onclick="getLink(document,this)" />
																<area shape="rect" coords="316,218,329,221"
																	href="gtgene2?chr=chr16&start=38200000&end=40700000&title=16q11.1"
																	title="16q11.1" onclick="getLink(document,this)" />
																<area shape="rect" coords="316,221,329,231"
																	href="gtgene2?chr=chr16&start=40700000&end=45500000&title=16q11.2"
																	title="16q11.2" onclick="getLink(document,this)" />
																<area shape="rect" coords="316,231,329,235"
																	href="gtgene2?chr=chr16&start=45500000&end=51200000&title=16q12.1"
																	title="16q12.1" onclick="getLink(document,this)" />
																<area shape="rect" coords="316,235,329,239"
																	href="gtgene2?chr=chr16&start=51200000&end=54500000&title=16q12.2"
																	title="16q12.2" onclick="getLink(document,this)" />
																<area shape="rect" coords="316,239,329,242"
																	href="gtgene2?chr=chr16&start=54500000&end=56700000&title=16q13"
																	title="16q13" onclick="getLink(document,this)" />
																<area shape="rect" coords="316,242,329,248"
																	href="gtgene2?chr=chr16&start=56700000&end=65200000&title=16q21"
																	title="16q21" onclick="getLink(document,this)" />
																<area shape="rect" coords="316,248,329,255"
																	href="gtgene2?chr=chr16&start=65200000&end=69400000&title=16q22.1"
																	title="16q22.1" onclick="getLink(document,this)" />
																<area shape="rect" coords="316,255,329,256"
																	href="gtgene2?chr=chr16&start=69400000&end=69800000&title=16q22.2"
																	title="16q22.2" onclick="getLink(document,this)" />
																<area shape="rect" coords="316,256,329,260"
																	href="gtgene2?chr=chr16&start=69800000&end=73300000&title=16q22.3"
																	title="16q22.3" onclick="getLink(document,this)" />
																<area shape="rect" coords="316,260,329,264"
																	href="gtgene2?chr=chr16&start=73300000&end=78200000&title=16q23.1"
																	title="16q23.1" onclick="getLink(document,this)" />
																<area shape="rect" coords="316,264,329,266"
																	href="gtgene2?chr=chr16&start=78200000&end=80500000&title=16q23.2"
																	title="16q23.2" onclick="getLink(document,this)" />
																<area shape="rect" coords="316,266,329,268"
																	href="gtgene2?chr=chr16&start=80500000&end=82700000&title=16q23.3"
																	title="16q23.3" onclick="getLink(document,this)" />
																<area shape="rect" coords="316,268,329,271"
																	href="gtgene2?chr=chr16&start=82700000&end=85600000&title=16q24.1"
																	title="16q24.1" onclick="getLink(document,this)" />
																<area shape="rect" coords="316,271,329,273"
																	href="gtgene2?chr=chr16&start=85600000&end=87200000&title=16q24.2"
																	title="16q24.2" onclick="getLink(document,this)" />
																<area shape="rect" coords="316,273,329,275"
																	href="gtgene2?chr=chr16&start=87200000&end=88827254&title=16q24.3"
																	title="16q24.3" onclick="getLink(document,this)" />

																<area shape="rect" coords="336,185,349,192"
																	href="gtgene2?chr=chr17&start=0&end=3600000&title=17p13.3"
																	title="17p13.3" onclick="getLink(document,this)" />
																<area shape="rect" coords="336,192,349,194"
																	href="gtgene2?chr=chr17&start=3600000&end=6800000&title=17p13.2"
																	title="17p13.2" onclick="getLink(document,this)" />
																<area shape="rect" coords="336,194,349,201"
																	href="gtgene2?chr=chr17&start=6800000&end=11200000&title=17p13.1"
																	title="17p13.1" onclick="getLink(document,this)" />
																<area shape="rect" coords="336,201,349,204"
																	href="gtgene2?chr=chr17&start=11200000&end=15900000&title=17p12"
																	title="17p12" onclick="getLink(document,this)" />
																<area shape="rect" coords="336,204,349,213"
																	href="gtgene2?chr=chr17&start=15900000&end=22100000&title=17p11.2"
																	title="17p11.2" onclick="getLink(document,this)" />
																<area shape="rect" coords="336,213,349,216"
																	href="gtgene2?chr=chr17&start=22100000&end=22200000&title=17p11.1"
																	title="17p11.1" onclick="getLink(document,this)" />
																<area shape="rect" coords="336,216,349,219"
																	href="gtgene2?chr=chr17&start=22200000&end=23200000&title=17q11.1"
																	title="17q11.1" onclick="getLink(document,this)" />
																<area shape="rect" coords="336,219,349,224"
																	href="gtgene2?chr=chr17&start=23200000&end=28800000&title=17q11.2"
																	title="17q11.2" onclick="getLink(document,this)" />
																<area shape="rect" coords="336,224,349,227"
																	href="gtgene2?chr=chr17&start=28800000&end=35400000&title=17q12"
																	title="17q12" onclick="getLink(document,this)" />
																<area shape="rect" coords="336,227,349,230"
																	href="gtgene2?chr=chr17&start=35400000&end=35600000&title=17q21.1"
																	title="17q21.1" onclick="getLink(document,this)" />
																<area shape="rect" coords="336,230,349,233"
																	href="gtgene2?chr=chr17&start=35600000&end=37800000&title=17q21.2"
																	title="17q21.2" onclick="getLink(document,this)" />
																<area shape="rect" coords="336,233,349,238"
																	href="gtgene2?chr=chr17&start=37800000&end=41900000&title=17q21.31"
																	title="17q21.31" onclick="getLink(document,this)" />
																<area shape="rect" coords="336,238,349,241"
																	href="gtgene2?chr=chr17&start=41900000&end=44800000&title=17q21.32"
																	title="17q21.32" onclick="getLink(document,this)" />
																<area shape="rect" coords="336,241,349,244"
																	href="gtgene2?chr=chr17&start=44800000&end=47600000&title=17q21.33"
																	title="17q21.33" onclick="getLink(document,this)" />
																<area shape="rect" coords="336,244,349,247"
																	href="gtgene2?chr=chr17&start=47600000&end=54900000&title=17q22"
																	title="17q22" onclick="getLink(document,this)" />
																<area shape="rect" coords="336,247,349,248"
																	href="gtgene2?chr=chr17&start=54900000&end=55600000&title=17q23.1"
																	title="17q23.1" onclick="getLink(document,this)" />
																<area shape="rect" coords="336,248,349,252"
																	href="gtgene2?chr=chr17&start=55600000&end=58400000&title=17q23.2"
																	title="17q23.2" onclick="getLink(document,this)" />
																<area shape="rect" coords="336,252,349,254"
																	href="gtgene2?chr=chr17&start=58400000&end=59900000&title=17q23.3"
																	title="17q23.3" onclick="getLink(document,this)" />
																<area shape="rect" coords="336,254,349,255"
																	href="gtgene2?chr=chr17&start=59900000&end=61600000&title=17q24.1"
																	title="17q24.1" onclick="getLink(document,this)" />
																<area shape="rect" coords="336,255,349,258"
																	href="gtgene2?chr=chr17&start=61600000&end=64600000&title=17q24.2"
																	title="17q24.2" onclick="getLink(document,this)" />
																<area shape="rect" coords="336,258,349,262"
																	href="gtgene2?chr=chr17&start=64600000&end=68400000&title=17q24.3"
																	title="17q24.3" onclick="getLink(document,this)" />
																<area shape="rect" coords="336,262,349,265"
																	href="gtgene2?chr=chr17&start=68400000&end=72200000&title=17q25.1"
																	title="17q25.1" onclick="getLink(document,this)" />
																<area shape="rect" coords="336,265,349,268"
																	href="gtgene2?chr=chr17&start=72200000&end=72900000&title=17q25.2"
																	title="17q25.2" onclick="getLink(document,this)" />
																<area shape="rect" coords="336,268,349,275"
																	href="gtgene2?chr=chr17&start=72900000&end=78774742&title=17q25.3"
																	title="17q25.3" onclick="getLink(document,this)" />

																<area shape="rect" coords="357,191,370,193"
																	href="gtgene2?chr=chr18&start=0&end=2900000&title=18p11.32"
																	title="18p11.32" onclick="getLink(document,this)" />
																<area shape="rect" coords="357,193,370,199"
																	href="gtgene2?chr=chr18&start=2900000&end=7200000&title=18p11.31"
																	title="18p11.31" onclick="getLink(document,this)" />
																<area shape="rect" coords="357,199,370,200"
																	href="gtgene2?chr=chr18&start=7200000&end=8500000&title=18p11.23"
																	title="18p11.23" onclick="getLink(document,this)" />
																<area shape="rect" coords="357,200,370,203"
																	href="gtgene2?chr=chr18&start=8500000&end=10900000&title=18p11.22"
																	title="18p11.22" onclick="getLink(document,this)" />
																<area shape="rect" coords="357,203,370,209"
																	href="gtgene2?chr=chr18&start=10900000&end=15400000&title=18p11.21"
																	title="18p11.21" onclick="getLink(document,this)" />
																<area shape="rect" coords="357,209,370,214"
																	href="gtgene2?chr=chr18&start=15400000&end=16100000&title=18p11.1"
																	title="18p11.1" onclick="getLink(document,this)" />
																<area shape="rect" coords="357,214,370,218"
																	href="gtgene2?chr=chr18&start=16100000&end=17300000&title=18q11.1"
																	title="18q11.1" onclick="getLink(document,this)" />
																<area shape="rect" coords="357,218,370,224"
																	href="gtgene2?chr=chr18&start=17300000&end=23300000&title=18q11.2"
																	title="18q11.2" onclick="getLink(document,this)" />
																<area shape="rect" coords="357,224,370,231"
																	href="gtgene2?chr=chr18&start=23300000&end=31000000&title=18q12.1"
																	title="18q12.1" onclick="getLink(document,this)" />
																<area shape="rect" coords="357,231,370,234"
																	href="gtgene2?chr=chr18&start=31000000&end=35500000&title=18q12.2"
																	title="18q12.2" onclick="getLink(document,this)" />
																<area shape="rect" coords="357,234,370,240"
																	href="gtgene2?chr=chr18&start=35500000&end=41800000&title=18q12.3"
																	title="18q12.3" onclick="getLink(document,this)" />
																<area shape="rect" coords="357,240,370,247"
																	href="gtgene2?chr=chr18&start=41800000&end=46400000&title=18q21.1"
																	title="18q21.1" onclick="getLink(document,this)" />
																<area shape="rect" coords="357,247,370,251"
																	href="gtgene2?chr=chr18&start=46400000&end=52000000&title=18q21.2"
																	title="18q21.2" onclick="getLink(document,this)" />
																<area shape="rect" coords="357,251,370,254"
																	href="gtgene2?chr=chr18&start=52000000&end=54400000&title=18q21.31"
																	title="18q21.31" onclick="getLink(document,this)" />
																<area shape="rect" coords="357,254,370,257"
																	href="gtgene2?chr=chr18&start=54400000&end=57100000&title=18q21.32"
																	title="18q21.32" onclick="getLink(document,this)" />
																<area shape="rect" coords="357,257,370,259"
																	href="gtgene2?chr=chr18&start=57100000&end=59800000&title=18q21.33"
																	title="18q21.33" onclick="getLink(document,this)" />
																<area shape="rect" coords="357,259,370,264"
																	href="gtgene2?chr=chr18&start=59800000&end=64900000&title=18q22.1"
																	title="18q22.1" onclick="getLink(document,this)" />
																<area shape="rect" coords="357,264,370,267"
																	href="gtgene2?chr=chr18&start=64900000&end=66900000&title=18q22.2"
																	title="18q22.2" onclick="getLink(document,this)" />
																<area shape="rect" coords="357,267,370,270"
																	href="gtgene2?chr=chr18&start=66900000&end=71300000&title=18q22.3"
																	title="18q22.3" onclick="getLink(document,this)" />
																<area shape="rect" coords="357,270,370,275"
																	href="gtgene2?chr=chr18&start=71300000&end=76117153&title=18q23"
																	title="18q23" onclick="getLink(document,this)" />

																<area shape="rect" coords="379,201,392,211"
																	href="gtgene2?chr=chr19&start=0&end=6900000&title=19p13.3"
																	title="19p13.3" onclick="getLink(document,this)" />
																<area shape="rect" coords="379,211,392,216"
																	href="gtgene2?chr=chr19&start=6900000&end=12600000&title=19p13.2"
																	title="19p13.2" onclick="getLink(document,this)" />
																<area shape="rect" coords="379,216,392,219"
																	href="gtgene2?chr=chr19&start=12600000&end=13800000&title=19p13.13"
																	title="19p13.13" onclick="getLink(document,this)" />
																<area shape="rect" coords="379,219,392,222"
																	href="gtgene2?chr=chr19&start=13800000&end=16100000&title=19p13.12"
																	title="19p13.12" onclick="getLink(document,this)" />
																<area shape="rect" coords="379,222,392,229"
																	href="gtgene2?chr=chr19&start=16100000&end=19800000&title=19p13.11"
																	title="19p13.11" onclick="getLink(document,this)" />
																<area shape="rect" coords="379,229,392,233"
																	href="gtgene2?chr=chr19&start=19800000&end=26700000&title=19p12"
																	title="19p12" onclick="getLink(document,this)" />
																<area shape="rect" coords="379,233,392,236"
																	href="gtgene2?chr=chr19&start=26700000&end=28500000&title=19p11"
																	title="19p11" onclick="getLink(document,this)" />
																<area shape="rect" coords="379,236,392,239"
																	href="gtgene2?chr=chr19&start=28500000&end=30200000&title=19q11"
																	title="19q11" onclick="getLink(document,this)" />
																<area shape="rect" coords="379,239,392,244"
																	href="gtgene2?chr=chr19&start=30200000&end=37100000&title=19q12"
																	title="19q12" onclick="getLink(document,this)" />
																<area shape="rect" coords="379,244,392,247"
																	href="gtgene2?chr=chr19&start=37100000&end=40300000&title=19q13.11"
																	title="19q13.11" onclick="getLink(document,this)" />
																<area shape="rect" coords="379,247,392,250"
																	href="gtgene2?chr=chr19&start=40300000&end=43000000&title=19q13.12"
																	title="19q13.12" onclick="getLink(document,this)" />
																<area shape="rect" coords="379,250,392,253"
																	href="gtgene2?chr=chr19&start=43000000&end=43400000&title=19q13.13"
																	title="19q13.13" onclick="getLink(document,this)" />
																<area shape="rect" coords="379,253,392,256"
																	href="gtgene2?chr=chr19&start=43400000&end=47800000&title=19q13.2"
																	title="19q13.2" onclick="getLink(document,this)" />
																<area shape="rect" coords="379,256,392,258"
																	href="gtgene2?chr=chr19&start=47800000&end=50000000&title=19q13.31"
																	title="19q13.31" onclick="getLink(document,this)" />
																<area shape="rect" coords="379,258,392,261"
																	href="gtgene2?chr=chr19&start=50000000&end=53800000&title=19q13.32"
																	title="19q13.32" onclick="getLink(document,this)" />
																<area shape="rect" coords="379,261,392,266"
																	href="gtgene2?chr=chr19&start=53800000&end=57600000&title=19q13.33"
																	title="19q13.33" onclick="getLink(document,this)" />
																<area shape="rect" coords="379,266,392,269"
																	href="gtgene2?chr=chr19&start=57600000&end=59100000&title=19q13.41"
																	title="19q13.41" onclick="getLink(document,this)" />
																<area shape="rect" coords="379,269,392,271"
																	href="gtgene2?chr=chr19&start=59100000&end=61400000&title=19q13.42"
																	title="19q13.42" onclick="getLink(document,this)" />
																<area shape="rect" coords="379,271,392,275"
																	href="gtgene2?chr=chr19&start=61400000&end=63811651&title=19q13.43"
																	title="19q13.43" onclick="getLink(document,this)" />

																<area shape="rect" coords="398,206,411,212"
																	href="gtgene2?chr=chr20&start=0&end=5000000&title=20p13"
																	title="20p13" onclick="getLink(document,this)" />
																<area shape="rect" coords="398,212,411,214"
																	href="gtgene2?chr=chr20&start=5000000&end=9000000&title=20p12.3"
																	title="20p12.3" onclick="getLink(document,this)" />
																<area shape="rect" coords="398,214,411,216"
																	href="gtgene2?chr=chr20&start=9000000&end=11900000&title=20p12.2"
																	title="20p12.2" onclick="getLink(document,this)" />
																<area shape="rect" coords="398,216,411,222"
																	href="gtgene2?chr=chr20&start=11900000&end=17800000&title=20p12.1"
																	title="20p12.1" onclick="getLink(document,this)" />
																<area shape="rect" coords="398,222,411,226"
																	href="gtgene2?chr=chr20&start=17800000&end=21200000&title=20p11.23"
																	title="20p11.23" onclick="getLink(document,this)" />
																<area shape="rect" coords="398,226,411,228"
																	href="gtgene2?chr=chr20&start=21200000&end=22300000&title=20p11.22"
																	title="20p11.22" onclick="getLink(document,this)" />
																<area shape="rect" coords="398,228,411,232"
																	href="gtgene2?chr=chr20&start=22300000&end=25700000&title=20p11.21"
																	title="20p11.21" onclick="getLink(document,this)" />
																<area shape="rect" coords="398,232,411,234"
																	href="gtgene2?chr=chr20&start=25700000&end=27100000&title=20p11.1"
																	title="20p11.1" onclick="getLink(document,this)" />
																<area shape="rect" coords="398,234,411,238"
																	href="gtgene2?chr=chr20&start=27100000&end=28400000&title=20q11.1"
																	title="20q11.1" onclick="getLink(document,this)" />
																<area shape="rect" coords="398,238,411,240"
																	href="gtgene2?chr=chr20&start=28400000&end=31500000&title=20q11.21"
																	title="20q11.21" onclick="getLink(document,this)" />
																<area shape="rect" coords="398,240,411,242"
																	href="gtgene2?chr=chr20&start=31500000&end=33900000&title=20q11.22"
																	title="20q11.22" onclick="getLink(document,this)" />
																<area shape="rect" coords="398,242,411,246"
																	href="gtgene2?chr=chr20&start=33900000&end=37100000&title=20q11.23"
																	title="20q11.23" onclick="getLink(document,this)" />
																<area shape="rect" coords="398,246,411,249"
																	href="gtgene2?chr=chr20&start=37100000&end=41100000&title=20q12"
																	title="20q12" onclick="getLink(document,this)" />
																<area shape="rect" coords="398,249,411,252"
																	href="gtgene2?chr=chr20&start=41100000&end=41600000&title=20q13.11"
																	title="20q13.11" onclick="getLink(document,this)" />
																<area shape="rect" coords="398,252,411,255"
																	href="gtgene2?chr=chr20&start=41600000&end=45800000&title=20q13.12"
																	title="20q13.12" onclick="getLink(document,this)" />
																<area shape="rect" coords="398,255,411,261"
																	href="gtgene2?chr=chr20&start=45800000&end=49200000&title=20q13.13"
																	title="20q13.13" onclick="getLink(document,this)" />
																<area shape="rect" coords="398,261,411,265"
																	href="gtgene2?chr=chr20&start=49200000&end=54400000&title=20q13.2"
																	title="20q13.2" onclick="getLink(document,this)" />
																<area shape="rect" coords="398,265,411,268"
																	href="gtgene2?chr=chr20&start=54400000&end=55900000&title=20q13.31"
																	title="20q13.31" onclick="getLink(document,this)" />
																<area shape="rect" coords="398,268,411,270"
																	href="gtgene2?chr=chr20&start=55900000&end=57900000&title=20q13.32"
																	title="20q13.32" onclick="getLink(document,this)" />
																<area shape="rect" coords="398,270,411,275"
																	href="gtgene2?chr=chr20&start=57900000&end=62435964&title=20q13.33"
																	title="20q13.33" onclick="getLink(document,this)" />

																<area shape="rect" coords="418,217,431,222"
																	href="gtgene2?chr=chr21&start=0&end=2900000&title=21p13"
																	title="21p13" onclick="getLink(document,this)" />
																<area shape="rect" coords="418,222,431,229"
																	href="gtgene2?chr=chr21&start=2900000&end=6300000&title=21p12"
																	title="21p12" onclick="getLink(document,this)" />
																<area shape="rect" coords="418,229,431,235"
																	href="gtgene2?chr=chr21&start=6300000&end=10000000&title=21p11.2"
																	title="21p11.2" onclick="getLink(document,this)" />
																<area shape="rect" coords="418,235,431,239"
																	href="gtgene2?chr=chr21&start=10000000&end=12300000&title=21p11.1"
																	title="21p11.1" onclick="getLink(document,this)" />
																<area shape="rect" coords="418,239,431,241"
																	href="gtgene2?chr=chr21&start=12300000&end=13200000&title=21q11.1"
																	title="21q11.1" onclick="getLink(document,this)" />
																<area shape="rect" coords="418,241,431,245"
																	href="gtgene2?chr=chr21&start=13200000&end=15300000&title=21q11.2"
																	title="21q11.2" onclick="getLink(document,this)" />
																<area shape="rect" coords="418,245,431,252"
																	href="gtgene2?chr=chr21&start=15300000&end=22900000&title=21q21.1"
																	title="21q21.1" onclick="getLink(document,this)" />
																<area shape="rect" coords="418,252,431,255"
																	href="gtgene2?chr=chr21&start=22900000&end=25800000&title=21q21.2"
																	title="21q21.2" onclick="getLink(document,this)" />
																<area shape="rect" coords="418,255,431,259"
																	href="gtgene2?chr=chr21&start=25800000&end=30500000&title=21q21.3"
																	title="21q21.3" onclick="getLink(document,this)" />
																<area shape="rect" coords="418,259,431,261"
																	href="gtgene2?chr=chr21&start=30500000&end=34700000&title=21q22.11"
																	title="21q22.11" onclick="getLink(document,this)" />
																<area shape="rect" coords="418,261,431,264"
																	href="gtgene2?chr=chr21&start=34700000&end=36700000&title=21q22.12"
																	title="21q22.12" onclick="getLink(document,this)" />
																<area shape="rect" coords="418,264,431,266"
																	href="gtgene2?chr=chr21&start=36700000&end=38600000&title=21q22.13"
																	title="21q22.13" onclick="getLink(document,this)" />
																<area shape="rect" coords="418,266,431,269"
																	href="gtgene2?chr=chr21&start=38600000&end=41400000&title=21q22.2"
																	title="21q22.2" onclick="getLink(document,this)" />
																<area shape="rect" coords="418,269,431,275"
																	href="gtgene2?chr=chr21&start=41400000&end=46944323&title=21q22.3"
																	title="21q22.3" onclick="getLink(document,this)" />

																<area shape="rect" coords="439,213,452,217"
																	href="gtgene2?chr=chr22&start=0&end=3000000&title=22p13"
																	title="22p13" onclick="getLink(document,this)" />
																<area shape="rect" coords="439,217,452,223"
																	href="gtgene2?chr=chr22&start=3000000&end=6600000&title=22p12"
																	title="22p12" onclick="getLink(document,this)" />
																<area shape="rect" coords="439,223,452,228"
																	href="gtgene2?chr=chr22&start=6600000&end=9600000&title=22p11.2"
																	title="22p11.2" onclick="getLink(document,this)" />
																<area shape="rect" coords="439,228,452,232"
																	href="gtgene2?chr=chr22&start=9600000&end=11800000&title=22p11.1"
																	title="22p11.1" onclick="getLink(document,this)" />
																<area shape="rect" coords="439,232,452,237"
																	href="gtgene2?chr=chr22&start=11800000&end=16300000&title=22q11.1"
																	title="22q11.1" onclick="getLink(document,this)" />
																<area shape="rect" coords="439,237,452,242"
																	href="gtgene2?chr=chr22&start=16300000&end=20500000&title=22q11.21"
																	title="22q11.21" onclick="getLink(document,this)" />
																<area shape="rect" coords="439,242,452,245"
																	href="gtgene2?chr=chr22&start=20500000&end=21800000&title=22q11.22"
																	title="22q11.22" onclick="getLink(document,this)" />
																<area shape="rect" coords="439,245,452,248"
																	href="gtgene2?chr=chr22&start=21800000&end=24300000&title=22q11.23"
																	title="22q11.23" onclick="getLink(document,this)" />
																<area shape="rect" coords="439,248,452,251"
																	href="gtgene2?chr=chr22&start=24300000&end=27900000&title=22q12.1"
																	title="22q12.1" onclick="getLink(document,this)" />
																<area shape="rect" coords="439,251,452,254"
																	href="gtgene2?chr=chr22&start=27900000&end=30500000&title=22q12.2"
																	title="22q12.2" onclick="getLink(document,this)" />
																<area shape="rect" coords="439,254,452,257"
																	href="gtgene2?chr=chr22&start=30500000&end=35900000&title=22q12.3"
																	title="22q12.3" onclick="getLink(document,this)" />
																<area shape="rect" coords="439,257,452,263"
																	href="gtgene2?chr=chr22&start=35900000&end=39300000&title=22q13.1"
																	title="22q13.1" onclick="getLink(document,this)" />
																<area shape="rect" coords="439,263,452,265"
																	href="gtgene2?chr=chr22&start=39300000&end=42600000&title=22q13.2"
																	title="22q13.2" onclick="getLink(document,this)" />
																<area shape="rect" coords="439,265,452,271"
																	href="gtgene2?chr=chr22&start=42600000&end=47000000&title=22q13.31"
																	title="22q13.31" onclick="getLink(document,this)" />
																<area shape="rect" coords="439,271,452,273"
																	href="gtgene2?chr=chr22&start=47000000&end=48200000&title=22q13.32"
																	title="22q13.32" onclick="getLink(document,this)" />
																<area shape="rect" coords="439,273,452,275"
																	href="gtgene2?chr=chr22&start=48200000&end=49691432&title=22q13.33"
																	title="22q13.33" onclick="getLink(document,this)" />

																<area shape="rect" coords="460,122,473,127"
																	href="gtgene2?chr=chrX&start=0&end=4300000&title=Xp22.33"
																	title="Xp22.33" onclick="getLink(document,this)" />
																<area shape="rect" coords="460,127,473,130"
																	href="gtgene2?chr=chrX&start=4300000&end=6000000&title=Xp22.32"
																	title="Xp22.32" onclick="getLink(document,this)" />
																<area shape="rect" coords="460,130,473,137"
																	href="gtgene2?chr=chrX&start=6000000&end=9500000&title=Xp22.31"
																	title="Xp22.31" onclick="getLink(document,this)" />
																<area shape="rect" coords="460,137,473,140"
																	href="gtgene2?chr=chrX&start=9500000&end=17100000&title=Xp22.2"
																	title="Xp22.2" onclick="getLink(document,this)" />
																<area shape="rect" coords="460,140,473,146"
																	href="gtgene2?chr=chrX&start=17100000&end=19200000&title=Xp22.13"
																	title="Xp22.13" onclick="getLink(document,this)" />
																<area shape="rect" coords="460,146,473,147"
																	href="gtgene2?chr=chrX&start=19200000&end=21800000&title=Xp22.12"
																	title="Xp22.12" onclick="getLink(document,this)" />
																<area shape="rect" coords="460,147,473,149"
																	href="gtgene2?chr=chrX&start=21800000&end=24900000&title=Xp22.11"
																	title="Xp22.11" onclick="getLink(document,this)" />
																<area shape="rect" coords="460,149,473,154"
																	href="gtgene2?chr=chrX&start=24900000&end=29400000&title=Xp21.3"
																	title="Xp21.3" onclick="getLink(document,this)" />
																<area shape="rect" coords="460,154,473,154"
																	href="gtgene2?chr=chrX&start=29400000&end=31500000&title=Xp21.2"
																	title="Xp21.2" onclick="getLink(document,this)" />
																<area shape="rect" coords="460,154,473,160"
																	href="gtgene2?chr=chrX&start=31500000&end=37500000&title=Xp21.1"
																	title="Xp21.1" onclick="getLink(document,this)" />
																<area shape="rect" coords="460,160,473,165"
																	href="gtgene2?chr=chrX&start=37500000&end=42300000&title=Xp11.4"
																	title="Xp11.4" onclick="getLink(document,this)" />
																<area shape="rect" coords="460,165,473,169"
																	href="gtgene2?chr=chrX&start=42300000&end=47300000&title=Xp11.3"
																	title="Xp11.3" onclick="getLink(document,this)" />
																<area shape="rect" coords="460,169,473,174"
																	href="gtgene2?chr=chrX&start=47300000&end=49700000&title=Xp11.23"
																	title="Xp11.23" onclick="getLink(document,this)" />
																<area shape="rect" coords="460,174,473,178"
																	href="gtgene2?chr=chrX&start=49700000&end=54700000&title=Xp11.22"
																	title="Xp11.22" onclick="getLink(document,this)" />
																<area shape="rect" coords="460,178,473,179"
																	href="gtgene2?chr=chrX&start=54700000&end=56600000&title=Xp11.21"
																	title="Xp11.21" onclick="getLink(document,this)" />
																<area shape="rect" coords="460,179,473,180"
																	href="gtgene2?chr=chrX&start=56600000&end=59500000&title=Xp11.1"
																	title="Xp11.1" onclick="getLink(document,this)" />
																<area shape="rect" coords="460,180,473,184"
																	href="gtgene2?chr=chrX&start=59500000&end=65000000&title=Xq11.1"
																	title="Xq11.1" onclick="getLink(document,this)" />
																<area shape="rect" coords="460,184,473,186"
																	href="gtgene2?chr=chrX&start=65000000&end=65100000&title=Xq11.2"
																	title="Xq11.2" onclick="getLink(document,this)" />
																<area shape="rect" coords="460,186,473,190"
																	href="gtgene2?chr=chrX&start=65100000&end=67700000&"
																	title="Xq12" onclick="getLink(document,this)" />
																<area shape="rect" coords="460,190,473,195"
																	href="gtgene2?chr=chrX&start=67700000&end=72200000"
																	title="Xq13.1" onclick="getLink(document,this)" />
																<area shape="rect" coords="460,195,473,199"
																	href="gtgene2?chr=chrX&start=72200000&end=73800000"
																	title="Xq13.2" onclick="getLink(document,this)" />
																<area shape="rect" coords="460,199,473,202"
																	href="gtgene2?chr=chrX&start=73800000&end=76000000"
																	title="Xq13.3" onclick="getLink(document,this)" />
																<area shape="rect" coords="460,202,473,207"
																	href="gtgene2?chr=chrX&start=76000000&end=84500000"
																	title="Xq21.1" onclick="getLink(document,this)" />
																<area shape="rect" coords="460,207,473,208"
																	href="gtgene2?chr=chrX&start=84500000&end=86200000"
																	title="Xq21.2" onclick="getLink(document,this)" />
																<area shape="rect" coords="460,208,473,213"
																	href="gtgene2?chr=chrX&start=86200000&end=91900000"
																	title="Xq21.31" onclick="getLink(document,this)" />
																<area shape="rect" coords="460,213,473,215"
																	href="gtgene2?chr=chrX&start=91900000&end=93500000"
																	title="Xq21.32" onclick="getLink(document,this)" />
																<area shape="rect" coords="460,215,473,219"
																	href="gtgene2?chr=chrX&start=93500000&end=98200000"
																	title="Xq21.33" onclick="getLink(document,this)" />
																<area shape="rect" coords="460,219,473,224"
																	href="gtgene2?chr=chrX&start=98200000&end=102500000"
																	title="Xq22.1" onclick="getLink(document,this)" />
																<area shape="rect" coords="460,224,473,226"
																	href="gtgene2?chr=chrX&start=102500000&end=103600000"
																	title="Xq22.2" onclick="getLink(document,this)" />
																<area shape="rect" coords="460,226,473,230"
																	href="gtgene2?chr=chrX&start=103600000&end=110500000"
																	title="Xq22.3" onclick="getLink(document,this)" />
																<area shape="rect" coords="460,230,473,234"
																	href="gtgene2?chr=chrX&start=110500000&end=116800000"
																	title="Xq23" onclick="getLink(document,this)" />
																<area shape="rect" coords="460,234,473,240"
																	href="gtgene2?chr=chrX&start=116800000&end=120700000"
																	title="Xq24" onclick="getLink(document,this)" />
																<area shape="rect" coords="460,240,473,248"
																	href="gtgene2?chr=chrX&start=120700000&end=129800000"
																	title="Xq25" onclick="getLink(document,this)" />
																<area shape="rect" coords="460,248,473,251"
																	href="gtgene2?chr=chrX&start=129800000&end=130300000"
																	title="Xq26.1" onclick="getLink(document,this)" />
																<area shape="rect" coords="460,251,473,254"
																	href="gtgene2?chr=chrX&start=130300000&end=133500000"
																	title="Xq26.2" onclick="getLink(document,this)" />
																<area shape="rect" coords="460,254,473,258"
																	href="gtgene2?chr=chrX&start=133500000&end=137800000"
																	title="Xq26.3" onclick="getLink(document,this)" />
																<area shape="rect" coords="460,258,473,261"
																	href="gtgene2?chr=chrX&start=137800000&end=140100000"
																	title="Xq27.1" onclick="getLink(document,this)" />
																<area shape="rect" coords="460,261,473,263"
																	href="gtgene2?chr=chrX&start=140100000&end=141900000"
																	title="Xq27.2" onclick="getLink(document,this)" />
																<area shape="rect" coords="460,263,473,267"
																	href="gtgene2?chr=chrX&start=141900000&end=146900000"
																	title="Xq27.3" onclick="getLink(document,this)" />
																<area shape="rect" coords="460,267,473,275"
																	href="gtgene2?chr=chrX&start=146900000&end=154913754"
																	title="Xq28" onclick="getLink(document,this)" />

																<area shape="rect" coords="482,209,495,211"
																	href="gtgene2?chr=chrY&start=0&end=1700000"
																	title="Yp11.32" onclick="getLink(document,this)" />
																<area shape="rect" coords="482,211,495,214"
																	href="gtgene2?chr=chrY&start=1700000&end=3300000"
																	title="Yp11.31" onclick="getLink(document,this)" />
																<area shape="rect" coords="482,214,495,228"
																	href="gtgene2?chr=chrY&start=3300000&end=11200000"
																	title="Yp11.2" onclick="getLink(document,this)" />
																<area shape="rect" coords="482,228,495,228"
																	href="gtgene2?chr=chrY&start=11200000&end=11300000"
																	title="Yp11.1" onclick="getLink(document,this)" />
																<area shape="rect" coords="482,228,495,231"
																	href="gtgene2?chr=chrY&start=11300000&end=12500000"
																	title="Yq11.1" onclick="getLink(document,this)" />
																<area shape="rect" coords="482,231,495,234"
																	href="gtgene2?chr=chrY&start=12500000&end=14300000"
																	title="Yq11.21" onclick="getLink(document,this)" />
																<area shape="rect" coords="482,234,495,239"
																	href="gtgene2?chr=chrY&start=14300000&end=19000000"
																	title="Yq11.221" onclick="getLink(document,this)" />
																<area shape="rect" coords="482,239,495,243"
																	href="gtgene2?chr=chrY&start=19000000&end=21300000&"
																	title="Yq11.222" onclick="getLink(document,this)" />
																<area shape="rect" coords="482,243,495,247"
																	href="gtgene2?chr=chrY&start=21300000&end=25400000"
																	title="Yq11.223" onclick="getLink(document,this)" />
																<area shape="rect" coords="482,247,495,251"
																	href="gtgene2?chr=chrY&start=25400000&end=27200000"
																	title="Yq11.23" onclick="getLink(document,this)" />
																<area shape="rect" coords="482,251,495,275"
																	href="gtgene2?chr=chrY&start=27200000&end=57772954"
																	title="Yq12" onclick="getLink(document,this)" />

															</map>
															</div>
                                                            </td>
				</div>
	</div>
	<div style="width:450px; height:780px;float:right;position:relative;">
	<div style="margin-right:10px;margin-top:20px;display:block;float:right;width:550px;height:780px;background:#FFFFFF;border:3px solid #006192;">
		<div style="width:547px;height:40px;line-height:40px;padding-left:30px;background:#006192;">
			<font size="5" style="float: center;" COLOR="#FFFFFF"  face="Calibri"><b>Histone modifications in types</b></font>
		</div>
		<div id="container" style="min-width:530px;height:700px">
		<iframe height="700px" name="m6aprotein" src="bingtu.jsp"  scrolling="auto" frameborder="0" width="100%" ></iframe></div>
	</div>
	

</div>
 </div>


<!--底下一堆-->


&nbsp;<div style="font-size:25px;-moz-box-shadow:1px 3px 20px #003F5F, 2px 2px 5px #003F5F; -webkit-box-shadow:1px 3px 20px #003F5F, 2px 2px 5px #003F5F; box-shadow:1px 3px 20px #003F5F, 2px 2px 5px #003F5F;margin-top:10px; margin:0 auto;width:1970px;height:75px;
	z-index:1;">
	
	<p><font COLOR="#191970" face="Calibri"><b>2021 © School of Life Science and Technology, Computational Biology Research Center | Harbin, 150001, Heilongjiang,P.R. China </b></font>
<script type="text/javascript" src="//rc.revolvermaps.com/0/0/3.js?i=2hqstc5qj5p&amp;b=0&amp;s=40&amp;m=5&amp;cl=ffffff&amp;co=010020&amp;cd=aa0000&amp;v0=60&amp;v1=60&amp;r=1" async="async"></script></p>
	<p><font COLOR="#191970" face="Calibri"><b>Contact us : zhangtyo@hit.edu.cn</b></font></p>
	</div>


	<p>&nbsp;</p>
	
</body>
</html>
