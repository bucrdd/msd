<%@ page language="java" contentType="text/html; charset=UTF-8"
	pageEncoding="UTF-8"%>
<%@ taglib prefix="s" uri="/struts-tags"%>
<!DOCTYPE html>
<html>
<head>
<meta http-equiv="Content-Type" content="text/html; charset=utf-8" />
<meta http-equiv="X-UA-Compatible" content="IE=10; text/html; charset=utf-8" />
<link rel="stylesheet" href="css/style.css" media="screen" type="text/css" />
<link rel="stylesheet" type="text/css" href="/msd1/css/chromosomeView.css" />
	<link rel="stylesheet" type="text/css" href="/msd1/css/SpryMenuBarHorizontal.css" />
	<link rel="stylesheet" type="text/css" href="/msd1/css/SpryMenuBarVertical.css" />
	<link rel="stylesheet" type="text/css" href="/msd1/css/genomeTab.css" />
	<script type="text/javascript" src="js/jquery4BrowserView.js"></script>
	<script type="text/javascript" src="js/json4BrowserView.js"></script>
	<script type="text/javascript" src="js/SpryMenuBar.js"></script>
	<script type="text/javascript" src="js/jquery-1.8.3.min.js"></script> 
	<script language="JavaScript" src="js/MzTreeView10.js"></script> 
<title>HHMD</title>
<link rel="shortcut icon" href="images/dd.ico" />

 <style>
    A.MzTreeview
    {
      font-size: 20pt;
      padding-left: 15px;
    }
    </style>
<style type="text/css">
img{border:none}
body{
background:#FFFFFF;
}
body,td,th {
	font-family: Arial;
	font-size:15px;
	}



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
font-size:10.5000pt;
font-family:'Times New Roman';
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
	height:600px;
	z-index:3;
	top: 195px;
	
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
	top: 795px;
	background: url(images/bg003.gif)
}
#apDiv5 {
	position:absolute;
	width:1100px;
	height:400px;
	z-index:5;
	top: 195px;
}
 tr{
       border:0px solid #ccc;    
    }
.menuview{
width:96%;
padding-left:0%;
padding-right:2%;
border:solid 1px #CDCDCD;
border-top: none;
}
input,button {
        font-family: "Cambria";
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
</style>

<script>
	$(document).ready(function () {
	    $("#header-box").load("http://218.8.241.248:8080/SEA3/common/header.html");
	    $("#footer-box").load("http://218.8.241.248:8080/SEA3/common/footer.html");
	    
		var genomeTab = {
			speed:300,
			containerWidth:$('.genome-panel').outerWidth(),
			containerHeight:$('.genome-panel').outerHeight(),
			tabWidth:$('.genome-tab').outerWidth(),
			
			init:function(){
			    $('.genome-panel').css('height',genomeTab.containerHeight + 'px');
			
			    $('a.genome-tab').click(function(event){
			
			        if ($('.genome-panel').hasClass('open')) {
			            $('.genome-panel').animate({left:'-' + genomeTab.containerWidth}, genomeTab.speed)
			            .removeClass('open');
			        } else {
			            $('.genome-panel').animate({left:'0'},  genomeTab.speed)
			            .addClass('open');
			        }
			        event.preventDefault();
			    });
			}
		};
		genomeTab.init();
	});
	function replaceDoc() {
    	window.location.reload();
	};
/**	window.onload=function FatherFindChildElement(){
  		var _iframe = document.getElementById('fatherID').contentWindow;
 		var _div =_iframe.document.getElementById('s1');
		//var aa=$("#fatherID").contents().find("#t");
   		window.alert(_div.input.value);
   	}; */
	</script>
	<script>
	function appendTree2Tr(trId, treeStr) {
		var d = document.createElement("div");
		d.innerHTML = treeStr;
		var treeElem = d.childNodes[0]; 
		document.getElementById(trId).appendChild(treeElem);
	};
	function Download(){
                 var download = $("#download");
                 download.append("<a id=\"down\" href=\"download/GSE90642.zip\" target=\"_blank\" download=\"download/GSE90642.zip\" style=\"display:none\">下载该文件</a>");
                 console.log(download);
                 $("#down")[0].click();
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

								

 <!-- <div  style="margin:0 auto;-moz-box-shadow:1px 3px 20px #003F5F, 2px 2px 5px #003F5F; -webkit-box-shadow:1px 3px 20px #003F5F, 2px 2px 5px #003F5F; box-shadow:1px 3px 20px #003F5F, 2px 2px 5px #003F5F;width:1200px;height:600px;z-index:3;background:#FFFFFF;"  > 
<iframe  src="browse2.jsp" style="height:600px ; width:100%" frameborder="0">
</iframe>
</div>-->



<s:form  id="Form2_1" name="Form2_1" action="gtgene" method="post" theme="simple">
							<div style=" margin-top:2px;;margin:0 auto;width:1970px;height:50px;z-index:3;background:#006192;">
									<table class="menuviewtable">
									<tr>
										<td style="width:10%;align:center; ">
											<input type="button"  class="addremove" id="2divaddremove" onclick="hidenDiv('2div')"/>
										</td>
										<td style="width:90%;  text-align:left; font-size:30px; color:#FFFFFF" face="Calibri"><nobr>Difference analysis by DiffBind</td>
									</tr>
									</table></div>

								<div class="menuview" id="2div" style="margin:0 auto;-moz-box-shadow:1px 3px 20px #003F5F, 2px 2px 5px #003F5F;  width:1970px;z-index:3;background:#FFFFFF; border:3px solid #006192"" >
									 <p>&nbsp;</p><p>&nbsp;</p>
									 <table class="menuviewtable">
									  
									  <tr>
	<td id="disease" width="230" height="100"></td>
   
    <td id="normal" width="230" height="100"></td>
    
    <td id="diseaseCell" width="230" height="100"></td>
   
    <td id="normalCell" width="230" height="100"></td>
 
    <td width="2" height="100" id="test1"></td>

  </tr>
	</table>
	<br>
  <td >&nbsp;</td>
   <td >&nbsp;</td>
    <td >&nbsp;</td>
  <td align="left">

 <button class="button" type="submit" value="Submit" onclick="Download()" style="width: 110px; height:50px; font-size:20px;">Submit</button>
  <button class="button" type="reset" value="Reset" onclick="replaceDoc()" style="width: 110px; height:50px; font-size:20px;">Reset</button>
  	  </td>
  	 <p>&nbsp;</p><p>&nbsp;</p>
</div>
  	<script language="JavaScript">
    var diseaseTree = new MzTreeView("diseaseTree");
    diseaseTree.icons["property"] = "property.gif";
    diseaseTree.icons["css"] = "collection.gif";
    diseaseTree.icons["object"]  = "root2.jpg";
    diseaseTree.icons["book"]  = "book1.gif";
    diseaseTree.iconsExpand["book"] = "bookopen.gif";  
    diseaseTree.setIconPath("images/"); 
    diseaseTree.nodes["-1_Dis"] = "text:Disease tissues;";
	diseaseTree.nodes["Dis_H3K4me3"] = "text:H3K4me3;";
	diseaseTree.nodes["H3K4me3_PrimaryBreastTumor"]= "text:<a style=\"font-size:20px\"><input id=\"H4R3\" type=\"checkbox\" name=\"diseasetheName\" value=\"primary breast tumor_H3K4me3_dt\"><b>Breast cancer</b></a>;";//value 在四个表中必须都是唯一的
	diseaseTree.nodes["H3K4me3_CCRCC"]= "text:<a style=\"font-size:20px\"><input id=\"H4R3\" type=\"checkbox\" name=\"diseasetheName\" value=\"ccRCC tumor tissue_H3K4me3_dt\"><b>ccRCC tumor</b></a>;";//value 在四个表中必须都是唯一的
	diseaseTree.nodes["Dis_H3K4me1"] = "text:H3K4me1;";
	diseaseTree.nodes["H3K4me1_CCRCC"]= "text:<a style=\"font-size:20px\"><input id=\"H4R3\" type=\"checkbox\" name=\"diseasetheName\" value=\"ccRCC tumor tissue_H3K4me1_dt\"><b>ccRCC tumor</b></a>;";//value 在四个表中必须都是唯一的;
	diseaseTree.nodes["Dis_H3K27me3"] = "text:H3K27me3;";
	diseaseTree.nodes["H3K27me3_PrimaryBreastTumor"]= "text:<a style=\"font-size:20px\"><input id=\"H4R3\" type=\"checkbox\" name=\"diseasetheName\" value=\"primary breast tumor_H3K27me3_dt\"><b>primary breast tumor</b></a>;";//value 在四个表中必须都是唯一的
	diseaseTree.nodes["Dis_H3K27ac"] = "text:H3K27ac;";
	diseaseTree.nodes["H3K27ac_AD"]= "text:<a style=\"font-size:20px\"><input id=\"H4R3\" type=\"checkbox\" name=\"diseasetheName\" value=\"AD Entorhinal cortex_H3K27ac_dt\"><b>AD Entorhinal cortex</b></a>;";//value 在四个表中必须都是唯一的
	diseaseTree.nodes["H3K27ac_CCRCC"]= "text:<a style=\"font-size:20px\"><input id=\"H4R3\" type=\"checkbox\" name=\"diseasetheName\" value=\"ccRCC tumor tissue_H3K27ac_dt\"><b>ccRCC tumor</b></a>;";//value 在四个表中必须都是唯一的
    diseaseTree.nodes["H3K27ac_UterineTumor"]= "text:<a style=\"font-size:20px\"><input id=\"H4R3\" type=\"checkbox\" name=\"diseasetheName\" value=\"Leiomyoma_H3K27ac_dt\"><b>Leiomyoma</b></a>;";//value 在四个表中必须都是唯一的    
    diseaseTree.nodes["H3K27ac_DCM"]= "text:<a style=\"font-size:20px\"><input id=\"H4R3\" type=\"checkbox\" name=\"diseasetheName\" value=\"DCM adult left ventricle_H3K27ac_dt\"><b>dilated cardiomyopathy left ventricle</b></a>;";//value 在四个表中必须都是唯一的    
	appendTree2Tr("disease", diseaseTree.toString());
//////////////////////////////////////////////////
	var normalTree = new MzTreeView("normalTree");
 	normalTree.icons["property"] = "property.gif";
    normalTree.icons["css"] = "collection.gif";
    normalTree.icons["object"]  = "root2.jpg";
    normalTree.icons["book"]  = "book1.gif"; 
    normalTree.iconsExpand["book"] = "bookopen.gif"; 
    normalTree.setIconPath("images/");
	normalTree.nodes["-1_Dis"] = "text:Normal tissues;";
    normalTree.nodes["Dis_H3K4me3"] = "text:H3K4me3;";
	normalTree.nodes["H3K4me3_CervicalCarcinoma"]= "text:<a style=\"font-size:20px\"><input id=\"H4R3\" type=\"checkbox\" name=\"normaltheName\" value=\"endometrial_H3K4me3_nt\"><b>endometrium</b></a>;";//value 在四个表中必须都是唯一的
	normalTree.nodes["H3K4me3_CCRCC"]= "text:<a style=\"font-size:20px\"><input id=\"H4R3\" type=\"checkbox\" name=\"normaltheName\" value=\"adjacent normal kidney tissue_H3K4me3_nt\"><b>kidney tissue</b></a>;";//value 在四个表中必须都是唯一的
    normalTree.nodes["Dis_H3K4me1"] = "text:H3K4me1;";
	normalTree.nodes["H3K4me1_CCRCC"]= "text:<a style=\"font-size:20px\"><input id=\"H4R3\" type=\"checkbox\" name=\"normaltheName\" value=\"adjacent normal kidney tissue_H3K4me1_nt\"><b>kidney tissue</b></a>;";//value 在四个表中必须都是唯一的
	normalTree.nodes["H3K4me1_EndometrialAdenocarcinoma"]= "text:<a style=\"font-size:20px\"><input id=\"H4R3\" type=\"checkbox\" name=\"normaltheName\" value=\"endometrial_H3K4me1_nt\"><b>endometrium</b></a>;";//value 在四个表中必须都是唯一的
    normalTree.nodes["Dis_H3K27me3"] = "text:H3K27me3;";
    normalTree.nodes["H3K27me3_CervicalCarcinoma"]= "text:<a style=\"font-size:20px\"><input id=\"H4R3\" type=\"checkbox\" name=\"normaltheName\" value=\"endometrial_H3K27me3_nt\"><b>endometrium</b></a>;";//value 在四个表中必须都是唯一的
	normalTree.nodes["Dis_H3K27ac"] = "text:H3K27ac;";
	normalTree.nodes["H3K27ac_CervicalCarcinoma"]= "text:<a style=\"font-size:20px\"><input id=\"H4R3\" type=\"checkbox\" name=\"normaltheName\" value=\"endometrial_H3K27ac_nt\"><b>endometrium</b></a>;";//value 在四个表中必须都是唯一的
	normalTree.nodes["H3K27ac_AD"]= "text:<a style=\"font-size:20px\"><input id=\"H4R3\" type=\"checkbox\" name=\"normaltheName\" value=\"Entorhinal cortex_H3K27ac_nt\"><b>entorhinal cortex</b></a>;";//value 在四个表中必须都是唯一的
	normalTree.nodes["H3K27ac_CCRCC"]= "text:<a style=\"font-size:20px\"><input id=\"H4R3\" type=\"checkbox\" name=\"normaltheName\" value=\"adjacent normal kidney tissue_H3K27ac_nt\"><b>kidney tissue</b></a>;";//value 在四个表中必须都是唯一的
	normalTree.nodes["H3K27ac_UterineTumor"]= "text:<a style=\"font-size:20px\"><input id=\"H4R3\" type=\"checkbox\" name=\"normaltheName\" value=\"Myometrium_H3K27ac_nt\"><b>myometrium tissue</b></a>;";//value 在四个表中必须都是唯一的
	normalTree.nodes["H3K27ac_IdiopathicDilatedCardiomyopathy"]= "text:<a style=\"font-size:20px\"><input id=\"H4R3\" type=\"checkbox\" name=\"normaltheName\" value=\"adult left ventricle_H3K27ac_nt\"><b>left ventricle tissue</b></a>;";//value 在四个表中必须都是唯一的
    appendTree2Tr("normal", normalTree.toString());
////////////////////////////////////////////////////////
	var diseaseCellTree = new MzTreeView("diseaseCellTree");
 	diseaseCellTree.icons["property"] = "property.gif";
    diseaseCellTree.icons["css"] = "collection.gif";
    diseaseCellTree.icons["object"]  = "root2.jpg";
    diseaseCellTree.icons["book"]  = "book1.gif";
    diseaseCellTree.iconsExpand["book"] = "bookopen.gif";  
    diseaseCellTree.setIconPath("images/"); 
	diseaseCellTree.nodes["-1_Dis"] = "text:Disease CellLines;";
    diseaseCellTree.nodes["Dis_H3K4me3"] = "text:H3K4me3;";
	diseaseCellTree.nodes["H3K4me3_hepatitisC"]= "text:<a style=\"font-size:20px\"><input id=\"H4R3\" type=\"checkbox\" name=\"diseaseCelltheName\" value=\"HCV infected Huh-7.5 cells_H3K4me3_dc\"><b>HCV infected Huh-7.5 cells</b></a>;";//value 在四个表中必须都是唯一的
	diseaseCellTree.nodes["H3K4me3_CervicalCarcinoma"]= "text:<a style=\"font-size:20px\"><input id=\"H4R3\" type=\"checkbox\" name=\"diseaseCelltheName\" value=\"HeLa_H3K4me3_dc\"><b>HeLa cells</b></a>;";//value 在四个表中必须都是唯一的
	diseaseCellTree.nodes["H3K4me3_ProstateCarcinoma"]= "text:<a style=\"font-size:20px\"><input id=\"H4R3\" type=\"checkbox\" name=\"diseaseCelltheName\" value=\"DU145_H3K4me3_dc\"><b>DU145 cells</b></a>;";//value 在四个表中必须都是唯一的
	diseaseCellTree.nodes["H3K4me3_1"]= "text:<a style=\"font-size:20px\"><input id=\"H4R3\" type=\"checkbox\" name=\"diseaseCelltheName\" value=\"AU565_H3K4me3_dc\"><b>AU565 cells</b></a>;";//value 在四个表中必须都是唯一的
	diseaseCellTree.nodes["H3K4me3_2"]= "text:<a style=\"font-size:20px\"><input id=\"H4R3\" type=\"checkbox\" name=\"diseaseCelltheName\" value=\"HCC1937_H3K4me3_dc\"><b>HCC1937 cells</b></a>;";//value 在四个表中必须都是唯一的
	diseaseCellTree.nodes["H3K4me3_3"]= "text:<a style=\"font-size:20px\"><input id=\"H4R3\" type=\"checkbox\" name=\"diseaseCelltheName\" value=\"HCC1954_H3K4me3_dc\"><b>HCC1954 cells</b></a>;";//value 在四个表中必须都是唯一的
	diseaseCellTree.nodes["H3K4me3_4"]= "text:<a style=\"font-size:20px\"><input id=\"H4R3\" type=\"checkbox\" name=\"diseaseCelltheName\" value=\"MB231_H3K4me3_dc\"><b>MB231 cells</b></a>;";//value 在四个表中必须都是唯一的
	diseaseCellTree.nodes["H3K4me3_5r"]= "text:<a style=\"font-size:20px\"><input id=\"H4R3\" type=\"checkbox\" name=\"diseaseCelltheName\" value=\"MB361_H3K4me3_dc\"><b>MB361 cells</b></a>;";//value 在四个表中必须都是唯一的
	diseaseCellTree.nodes["H3K4me3_Br5Cancer"]= "text:<a style=\"font-size:20px\"><input id=\"H4R3\" type=\"checkbox\" name=\"diseaseCelltheName\" value=\"MB436_H3K4me3_dc\"><b>MB436 cells</b></a>;";//value 在四个表中必须都是唯一的
	diseaseCellTree.nodes["H3K4me3_Breast7Cancer"]= "text:<a style=\"font-size:20px\"><input id=\"H4R3\" type=\"checkbox\" name=\"diseaseCelltheName\" value=\"MB468_H3K4me3_dc\"><b>MB468 cells</b></a>;";//value 在四个表中必须都是唯一的
	diseaseCellTree.nodes["H3K4me3_Breast8Cancer"]= "text:<a style=\"font-size:20px\"><input id=\"H4R3\" type=\"checkbox\" name=\"diseaseCelltheName\" value=\"MCF7_H3K4me3_dc\"><b>MCF7 cells</b></a>;";//value 在四个表中必须都是唯一的
	diseaseCellTree.nodes["H3K4me3_BreastC9ancer"]= "text:<a style=\"font-size:20px\"><input id=\"H4R3\" type=\"checkbox\" name=\"diseaseCelltheName\" value=\"MDA-MB-231_H3K4me3_dc\"><b>MDA-MB-231 cells</b></a>;";//value 在四个表中必须都是唯一的
	diseaseCellTree.nodes["H3K4me3_BreastCa7ncer"]= "text:<a style=\"font-size:20px\"><input id=\"H4R3\" type=\"checkbox\" name=\"diseaseCelltheName\" value=\"SKBR3_H3K4me3_dc\"><b>SKBR3 cells</b></a>;";//value 在四个表中必须都是唯一的
	diseaseCellTree.nodes["H3K4me3_BreastCa6ncer"]= "text:<a style=\"font-size:20px\"><input id=\"H4R3\" type=\"checkbox\" name=\"diseaseCelltheName\" value=\"UACC812_H3K4me3_dc\"><b>UACC812 cells</b></a>;";//value 在四个表中必须都是唯一的
	diseaseCellTree.nodes["H3K4me3_Brea5stCancer"]= "text:<a style=\"font-size:20px\"><input id=\"H4R3\" type=\"checkbox\" name=\"diseaseCelltheName\" value=\"ZR751_H3K4me3_dc\"><b>ZR751 cells</b></a>;";//value 在四个表中必须都是唯一的
	diseaseCellTree.nodes["H3K4me3_Graves"]= "text:<a style=\"font-size:20px\"><input id=\"H4R3\" type=\"checkbox\" name=\"diseaseCelltheName\" value=\"Graves patient CD4 cell_H3K4me3_dc\"><b>Graves patient CD4  cells</b></a>;";//value 在四个表中必须都是唯一的
	diseaseCellTree.nodes["H3K4me3_Grav5es"]= "text:<a style=\"font-size:20px\"><input id=\"H4R3\" type=\"checkbox\" name=\"diseaseCelltheName\" value=\"Graves patient CD8 cell_H3K4me3_dc\"><b>Graves patient CD8  cells</b></a>;";//value 在四个表中必须都是唯一的
	
	diseaseCellTree.nodes["Dis_H3K4me1"] = "text:H3K4me1;";
	diseaseCellTree.nodes["H3K4me1_ProstateCarci5noma"]= "text:<a style=\"font-size:20px\"><input id=\"H4R3\" type=\"checkbox\" name=\"diseaseCelltheName\" value=\"DU145_H3K4me1_dc\"><b>DU145 cells</b></a>;";//value 在四个表中必须都是唯一的
	diseaseCellTree.nodes["H3K4me1_BreastCanc5er"]= "text:<a style=\"font-size:20px\"><input id=\"H4R3\" type=\"checkbox\" name=\"diseaseCelltheName\" value=\"AU565_H3K4me1_dc\"><b>AU565 cells</b></a>;";//value 在四个表中必须都是唯一的
	diseaseCellTree.nodes["H3K4me1_BreastCan5cer"]= "text:<a style=\"font-size:20px\"><input id=\"H4R3\" type=\"checkbox\" name=\"diseaseCelltheName\" value=\"HCC1937_H3K4me1_dc\"><b>HCC1937 cells</b></a>;";//value 在四个表中必须都是唯一的
	diseaseCellTree.nodes["H3K4me1_BreastC5ancer"]= "text:<a style=\"font-size:20px\"><input id=\"H4R3\" type=\"checkbox\" name=\"diseaseCelltheName\" value=\"HCC1954_H3K4me1_dc\"><b>HCC1954 cells</b></a>;";//value 在四个表中必须都是唯一的
	diseaseCellTree.nodes["H3K4me1_Brea5stCancer"]= "text:<a style=\"font-size:20px\"><input id=\"H4R3\" type=\"checkbox\" name=\"diseaseCelltheName\" value=\"MB231_H3K4me1_dc\"><b>MB231 cells</b></a>;";//value 在四个表中必须都是唯一的
	diseaseCellTree.nodes["H3K4me1_Bre5astCancer"]= "text:<a style=\"font-size:20px\"><input id=\"H4R3\" type=\"checkbox\" name=\"diseaseCelltheName\" value=\"MB361_H3K4me1_dc\"><b>MB361 cells</b></a>;";//value 在四个表中必须都是唯一的
	diseaseCellTree.nodes["H3K4me1_Br5eastCancer"]= "text:<a style=\"font-size:20px\"><input id=\"H4R3\" type=\"checkbox\" name=\"diseaseCelltheName\" value=\"MB436_H3K4me1_dc\"><b>MB436 cells</b></a>;";//value 在四个表中必须都是唯一的
	diseaseCellTree.nodes["H3K4me1_Brea4stCancer"]= "text:<a style=\"font-size:20px\"><input id=\"H4R3\" type=\"checkbox\" name=\"diseaseCelltheName\" value=\"MB468_H3K4me1_dc\"><b>MB468 cells</b></a>;";//value 在四个表中必须都是唯一的
	diseaseCellTree.nodes["H3K4me1_BreastCance4r"]= "text:<a style=\"font-size:20px\"><input id=\"H4R3\" type=\"checkbox\" name=\"diseaseCelltheName\" value=\"MCF7_H3K4me1_dc\"><b>MCF7 cells</b></a>;";//value 在四个表中必须都是唯一的
	diseaseCellTree.nodes["H3K4me1_BreastCanc4er"]= "text:<a style=\"font-size:20px\"><input id=\"H4R3\" type=\"checkbox\" name=\"diseaseCelltheName\" value=\"MDA-MB-231_H3K4me1_dc\"><b>MDA-MB-231 cells</b></a>;";//value 在四个表中必须都是唯一的
	diseaseCellTree.nodes["H3K4me1_BreastCan4cer"]= "text:<a style=\"font-size:20px\"><input id=\"H4R3\" type=\"checkbox\" name=\"diseaseCelltheName\" value=\"SKBR3_H3K4me1_dc\"><b>SKBR3 cells</b></a>;";//value 在四个表中必须都是唯一的
	diseaseCellTree.nodes["H3K4me1_BreastCa4ncer"]= "text:<a style=\"font-size:20px\"><input id=\"H4R3\" type=\"checkbox\" name=\"diseaseCelltheName\" value=\"UACC812_H3K4me1_dc\"><b>UACC812 cells</b></a>;";//value 在四个表中必须都是唯一的
	diseaseCellTree.nodes["H3K4me1_BreastC4ancer"]= "text:<a style=\"font-size:20px\"><input id=\"H4R3\" type=\"checkbox\" name=\"diseaseCelltheName\" value=\"ZR751_H3K4me1_dc\"><b>ZR751 cells</b></a>;";//value 在四个表中必须都是唯一的
	diseaseCellTree.nodes["Dis_H3K4ac"] = "text:H3K4ac;";
	diseaseCellTree.nodes["H3K4ac_BreastCancer"]= "text:<a style=\"font-size:20px\"><input id=\"H4R3\" type=\"checkbox\" name=\"diseaseCelltheName\" value=\"MCF7_H3K4ac_dc\"><b>MCF7 cells</b></a>;";//value 在四个表中必须都是唯一的
	diseaseCellTree.nodes["Dis_H3K9ac"] = "text:H3K9ac;";
	diseaseCellTree.nodes["H3K9ac_hepatitisC"]= "text:<a style=\"font-size:20px\"><input id=\"H4R3\" type=\"checkbox\" name=\"diseaseCelltheName\" value=\"HCV infected Huh-7.5 cells_H3K9ac_dc\"><b>HCV infected Huh-7.5 cells</b></a>;";//value 在四个表中必须都是唯一的
	diseaseCellTree.nodes["Dis_H3K9me3"] = "text:H3K9me3;";
	diseaseCellTree.nodes["H3K9me3_hepatitisC"]= "text:<a style=\"font-size:20px\"><input id=\"H4R3\" type=\"checkbox\" name=\"diseaseCelltheName\" value=\"HCV infected Huh-7.5 cells_H3K9me3_dc\"><b>HCV infected Huh-7.5 cells</b></a>;";//value 在四个表中必须都是唯一的
               diseaseCellTree.nodes["H3K9me3_ProstateCarcinoma"]= "text:<a style=\"font-size:20px\"><input id=\"H4R3\" type=\"checkbox\" name=\"diseaseCelltheName\" value=\"22Rv1_H3K9me3_dc\"><b>HCV infected Huh-7.5 cells</b></a>;";//value 在四个表中必须都是唯一的
	diseaseCellTree.nodes["H3K9me3_BreastCance1r"]= "text:<a style=\"font-size:20px\"><input id=\"H4R3\" type=\"checkbox\" name=\"diseaseCelltheName\" value=\"AU565_H3K9me3_dc\"><b>AU565 cells</b></a>;";//value 在四个表中必须都是唯一的
	diseaseCellTree.nodes["H3K9me3_BreastCanc2er"]= "text:<a style=\"font-size:20px\"><input id=\"H4R3\" type=\"checkbox\" name=\"diseaseCelltheName\" value=\"HCC1937_H3K9me3_dc\"><b>HCC1937 cells</b></a>;";//value 在四个表中必须都是唯一的
	diseaseCellTree.nodes["H3K9me3_BreastCan3cer"]= "text:<a style=\"font-size:20px\"><input id=\"H4R3\" type=\"checkbox\" name=\"diseaseCelltheName\" value=\"HCC1954_H3K9me3_dc\"><b>HCC1954 cells</b></a>;";//value 在四个表中必须都是唯一的
	diseaseCellTree.nodes["H3K9me3_BreastCa3ncer"]= "text:<a style=\"font-size:20px\"><input id=\"H4R3\" type=\"checkbox\" name=\"diseaseCelltheName\" value=\"MB231_H3K9me3_dc\"><b>MB231 cells</b></a>;";//value 在四个表中必须都是唯一的
	diseaseCellTree.nodes["H3K9me3_BreastC3ancer"]= "text:<a style=\"font-size:20px\"><input id=\"H4R3\" type=\"checkbox\" name=\"diseaseCelltheName\" value=\"MB361_H3K9me3_dc\"><b>MB361 cells</b></a>;";//value 在四个表中必须都是唯一的
	diseaseCellTree.nodes["H3K9me3_Breast3Cancer"]= "text:<a style=\"font-size:20px\"><input id=\"H4R3\" type=\"checkbox\" name=\"diseaseCelltheName\" value=\"MB436_H3K9me3_dc\"><b>MB436 cells</b></a>;";//value 在四个表中必须都是唯一的
	diseaseCellTree.nodes["H3K9me3_Breas3tCancer"]= "text:<a style=\"font-size:20px\"><input id=\"H4R3\" type=\"checkbox\" name=\"diseaseCelltheName\" value=\"MB468_H3K9me3_dc\"><b>MB468 cells</b></a>;";//value 在四个表中必须都是唯一的
	diseaseCellTree.nodes["H3K9me3_Brea3stCancer"]= "text:<a style=\"font-size:20px\"><input id=\"H4R3\" type=\"checkbox\" name=\"diseaseCelltheName\" value=\"MCF7_H3K9me3_dc\"><b>MCF7 cells</b></a>;";//value 在四个表中必须都是唯一的
	diseaseCellTree.nodes["H3K9me3_Bre3astCancer"]= "text:<a style=\"font-size:20px\"><input id=\"H4R3\" type=\"checkbox\" name=\"diseaseCelltheName\" value=\"MDA-MB-231_H3K9me3_dc\"><b>MDA-MB-231 cells</b></a>;";//value 在四个表中必须都是唯一的
	diseaseCellTree.nodes["H3K9me3_Bre3astCancer"]= "text:<a style=\"font-size:20px\"><input id=\"H4R3\" type=\"checkbox\" name=\"diseaseCelltheName\" value=\"SKBR3_H3K9me3_dc\"><b>SKBR3 cells</b></a>;";//value 在四个表中必须都是唯一的
	diseaseCellTree.nodes["H3K9me3_Br3eastCancer"]= "text:<a style=\"font-size:20px\"><input id=\"H4R3\" type=\"checkbox\" name=\"diseaseCelltheName\" value=\"UACC812_H3K9me3_dc\"><b>UACC812 cells</b></a>;";//value 在四个表中必须都是唯一的
	diseaseCellTree.nodes["H3K9me3_B3reastCancer"]= "text:<a style=\"font-size:20px\"><input id=\"H4R3\" type=\"checkbox\" name=\"diseaseCelltheName\" value=\"ZR751_H3K9me3_dc\"><b>ZR751 cells</b></a>;";//value 在四个表中必须都是唯一的
	diseaseCellTree.nodes["Dis_H3K27me3"] = "text:H3K27me3;";
    diseaseCellTree.nodes["H3K27me3_hepatitisC"]= "text:<a style=\"font-size:20px\"><input id=\"H4R3\" type=\"checkbox\" name=\"diseaseCelltheName\" value=\"HCV infected Huh-7.5 cells_H3K27me3_dc\"><b>HCV infected Huh-7.5 cells</b></a>;";//value 在四个表中必须都是唯一的
	diseaseCellTree.nodes["H3K27me3_CervicalCarcinoma"]= "text:<a style=\"font-size:20px\"><input id=\"H4R3\" type=\"checkbox\" name=\"diseaseCelltheName\" value=\"HeLa_H3K27me3_dc\"><b>HeLa cells</b></a>;";//value 在四个表中必须都是唯一的
	diseaseCellTree.nodes["H3K27me3_ProstateCarcinom1a"]= "text:<a style=\"font-size:20px\"><input id=\"H4R3\" type=\"checkbox\" name=\"diseaseCelltheName\" value=\"22Rv1_H3K27me3_dc\"><b>22Rv1 cells</b></a>;";//value 在四个表中必须都是唯一的
	diseaseCellTree.nodes["H3K27me3_ProstateCarcinoma"]= "text:<a style=\"font-size:20px\"><input id=\"H4R3\" type=\"checkbox\" name=\"diseaseCelltheName\" value=\"DU145_H3K27me3_dc\"><b>DU145 cells</b></a>;";//value 在四个表中必须都是唯一的
	diseaseCellTree.nodes["H3K27me3_BreastCance1r"]= "text:<a style=\"font-size:20px\"><input id=\"H4R3\" type=\"checkbox\" name=\"diseaseCelltheName\" value=\"AU565_H3K27me3_dc\"><b>AU565 cells</b></a>;";//value 在四个表中必须都是唯一的
	diseaseCellTree.nodes["H3K27me3_BreastCanc1er"]= "text:<a style=\"font-size:20px\"><input id=\"H4R3\" type=\"checkbox\" name=\"diseaseCelltheName\" value=\"HCC1937_H3K27me3_dc\"><b>HCC1937 cells</b></a>;";//value 在四个表中必须都是唯一的
	diseaseCellTree.nodes["H3K27me3_BreastCan1cer"]= "text:<a style=\"font-size:20px\"><input id=\"H4R3\" type=\"checkbox\" name=\"diseaseCelltheName\" value=\"HCC1954_H3K27me3_dc\"><b>HCC1954 cells</b></a>;";//value 在四个表中必须都是唯一的
	diseaseCellTree.nodes["H3K27me3_BreastCa1ncer"]= "text:<a style=\"font-size:20px\"><input id=\"H4R3\" type=\"checkbox\" name=\"diseaseCelltheName\" value=\"MB231_H3K27me3_dc\"><b>MB231 cells</b></a>;";//value 在四个表中必须都是唯一的
	diseaseCellTree.nodes["H3K27me3_BreastC1ancer"]= "text:<a style=\"font-size:20px\"><input id=\"H4R3\" type=\"checkbox\" name=\"diseaseCelltheName\" value=\"MB361_H3K27me3_dc\"><b>MB361 cells</b></a>;";//value 在四个表中必须都是唯一的
	diseaseCellTree.nodes["H3K27me3_Breast1Cancer"]= "text:<a style=\"font-size:20px\"><input id=\"H4R3\" type=\"checkbox\" name=\"diseaseCelltheName\" value=\"MB436_H3K27me3_dc\"><b>MB436 cells</b></a>;";//value 在四个表中必须都是唯一的
	diseaseCellTree.nodes["H3K27me3_Breas1tCancer"]= "text:<a style=\"font-size:20px\"><input id=\"H4R3\" type=\"checkbox\" name=\"diseaseCelltheName\" value=\"MB468_H3K27me3_dc\"><b>MB468 cells</b></a>;";//value 在四个表中必须都是唯一的
	diseaseCellTree.nodes["H3K27me3_Brea1stCancer"]= "text:<a style=\"font-size:20px\"><input id=\"H4R3\" type=\"checkbox\" name=\"diseaseCelltheName\" value=\"MCF7_H3K27me3_dc\"><b>MCF7 cells</b></a>;";//value 在四个表中必须都是唯一的
	diseaseCellTree.nodes["H3K27me3_Bre1astCancer"]= "text:<a style=\"font-size:20px\"><input id=\"H4R3\" type=\"checkbox\" name=\"diseaseCelltheName\" value=\"MDA-MB-231_H3K27me3_dc\"><b>MDA-MB-231 cells</b></a>;";//value 在四个表中必须都是唯一的
	diseaseCellTree.nodes["H3K27me3_Br1eastCancer"]= "text:<a style=\"font-size:20px\"><input id=\"H4R3\" type=\"checkbox\" name=\"diseaseCelltheName\" value=\"SKBR3_H3K27me3_dc\"><b>SKBR3 cells</b></a>;";//value 在四个表中必须都是唯一的
	diseaseCellTree.nodes["H3K27me3_B1reastCancer"]= "text:<a style=\"font-size:20px\"><input id=\"H4R3\" type=\"checkbox\" name=\"diseaseCelltheName\" value=\"UACC812_H3K27me3_dc\"><b>UACC812 cells</b></a>;";//value 在四个表中必须都是唯一的
	diseaseCellTree.nodes["H3K27me3_Br2eastCancer"]= "text:<a style=\"font-size:20px\"><input id=\"H4R3\" type=\"checkbox\" name=\"diseaseCelltheName\" value=\"ZR751_H3K27me3_dc\"><b>ZR751 cells</b></a>;";//value 在四个表中必须都是唯一的
	diseaseCellTree.nodes["Dis_H3K27ac"] = "text:H3K27ac;";
	diseaseCellTree.nodes["H3K27ac_CervicalCarcinoma"]= "text:<a style=\"font-size:20px\"><input id=\"H4R3\" type=\"checkbox\" name=\"diseaseCelltheName\" value=\"HeLa_H3K27ac_dc\"><b>HeLa cells</b></a>;";//value 在四个表中必须都是唯一的
	diseaseCellTree.nodes["H3K27ac_ProstateCarcinoma"]= "text:<a style=\"font-size:20px\"><input id=\"H4R3\" type=\"checkbox\" name=\"diseaseCelltheName\" value=\"22Rv1_H3K27ac_dc\"><b>22Rv1 cells</b></a>;";//value 在四个表中必须都是唯一的
	diseaseCellTree.nodes["H3K27ac_RenalCance4r"]= "text:<a style=\"font-size:20px\"><input id=\"H4R3\" type=\"checkbox\" name=\"diseaseCelltheName\" value=\"OS-RC2_H3K27ac_dc\"><b>OS-RC2 cells</b></a>;";//value 在四个表中必须都是唯一的
	diseaseCellTree.nodes["H3K27ac_RenalCanc4er"]= "text:<a style=\"font-size:20px\"><input id=\"H4R3\" type=\"checkbox\" name=\"diseaseCelltheName\" value=\"786-M1A_H3K27ac_dc\"><b>786-M1A cells</b></a>;";//value 在四个表中必须都是唯一的
	diseaseCellTree.nodes["H3K27ac_RenalCa4ncer"]= "text:<a style=\"font-size:20px\"><input id=\"H4R3\" type=\"checkbox\" name=\"diseaseCelltheName\" value=\"786-O_H3K27ac_dc\"><b>786-O cells</b></a>;";//value 在四个表中必须都是唯一的
	diseaseCellTree.nodes["H3K27ac_BreastC4ancer"]= "text:<a style=\"font-size:20px\"><input id=\"H4R3\" type=\"checkbox\" name=\"diseaseCelltheName\" value=\"AU565_H3K27ac_dc\"><b>AU565 cells</b></a>;";//value 在四个表中必须都是唯一的
	diseaseCellTree.nodes["H3K27ac_Breast5Cancer"]= "text:<a style=\"font-size:20px\"><input id=\"H4R3\" type=\"checkbox\" name=\"diseaseCelltheName\" value=\"HCC1937_H3K27ac_dc\"><b>HCC1937 cells</b></a>;";//value 在四个表中必须都是唯一的
	diseaseCellTree.nodes["H3K27ac_Breas6tCancer"]= "text:<a style=\"font-size:20px\"><input id=\"H4R3\" type=\"checkbox\" name=\"diseaseCelltheName\" value=\"HCC1954_H3K27ac_dc\"><b>HCC1954 cells</b></a>;";//value 在四个表中必须都是唯一的
	diseaseCellTree.nodes["H3K27ac_Brea7stCancer"]= "text:<a style=\"font-size:20px\"><input id=\"H4R3\" type=\"checkbox\" name=\"diseaseCelltheName\" value=\"MB231_H3K27ac_dc\"><b>MB231 cells</b></a>;";//value 在四个表中必须都是唯一的
	diseaseCellTree.nodes["H3K27ac_Bre8astCancer"]= "text:<a style=\"font-size:20px\"><input id=\"H4R3\" type=\"checkbox\" name=\"diseaseCelltheName\" value=\"MB361_H3K27ac_dc\"><b>MB361 cells</b></a>;";//value 在四个表中必须都是唯一的
	diseaseCellTree.nodes["H3K27ac_Br9eastCancer"]= "text:<a style=\"font-size:20px\"><input id=\"H4R3\" type=\"checkbox\" name=\"diseaseCelltheName\" value=\"MB436_H3K27ac_dc\"><b>MB436 cells</b></a>;";//value 在四个表中必须都是唯一的
	diseaseCellTree.nodes["H3K27ac_B9reastCancer"]= "text:<a style=\"font-size:20px\"><input id=\"H4R3\" type=\"checkbox\" name=\"diseaseCelltheName\" value=\"MB468_H3K27ac_dc\"><b>MB468 cells</b></a>;";//value 在四个表中必须都是唯一的
	diseaseCellTree.nodes["H3K27ac_BreastCance8r"]= "text:<a style=\"font-size:20px\"><input id=\"H4R3\" type=\"checkbox\" name=\"diseaseCelltheName\" value=\"MCF7_H3K27ac_dc\"><b>MCF7 cells</b></a>;";//value 在四个表中必须都是唯一的
	diseaseCellTree.nodes["H3K27ac_BreastCanc8er"]= "text:<a style=\"font-size:20px\"><input id=\"H4R3\" type=\"checkbox\" name=\"diseaseCelltheName\" value=\"MDA-MB-231_H3K27ac_dc\"><b>MDA-MB-231 cells</b></a>;";//value 在四个表中必须都是唯一的
	diseaseCellTree.nodes["H3K27ac_BreastCan8cer"]= "text:<a style=\"font-size:20px\"><input id=\"H4R3\" type=\"checkbox\" name=\"diseaseCelltheName\" value=\"SKBR3_H3K27ac_dc\"><b>SKBR3 cells</b></a>;";//value 在四个表中必须都是唯一的
	diseaseCellTree.nodes["H3K27ac_BreastCa8ncer"]= "text:<a style=\"font-size:20px\"><input id=\"H4R3\" type=\"checkbox\" name=\"diseaseCelltheName\" value=\"UACC812_H3K27ac_dc\"><b>UACC812 cells</b></a>;";//value 在四个表中必须都是唯一的
	diseaseCellTree.nodes["H3K27ac_BreastC8ancer"]= "text:<a style=\"font-size:20px\"><input id=\"H4R3\" type=\"checkbox\" name=\"diseaseCelltheName\" value=\"ZR751_H3K27ac_dc\"><b>ZR751 cells</b></a>;";//value 在四个表中必须都是唯一的
	diseaseCellTree.nodes["H3K27ac_TCellLeukemia"]= "text:<a style=\"font-size:20px\"><input id=\"H4R3\" type=\"checkbox\" name=\"diseaseCelltheName\" value=\"TL-Om1_H3K27ac_dc\"><b>TL-Om1 cells</b></a>;";//value 在四个表中必须都是唯一的
	diseaseCellTree.nodes["H3K27ac_Graves"]= "text:<a style=\"font-size:20px\"><input id=\"H4R3\" type=\"checkbox\" name=\"diseaseCelltheName\" value=\"Graves patient CD4 cell_H3K27ac_dc\"><b>Graves patient CD4  cells</b></a>;";//value 在四个表中必须都是唯一的
	diseaseCellTree.nodes["H3K27ac_Grav6es"]= "text:<a style=\"font-size:20px\"><input id=\"H4R3\" type=\"checkbox\" name=\"diseaseCelltheName\" value=\"Graves patient CD8 cell_H3K27ac_dc\"><b>Graves patient CD8  cells</b></a>;";//value 在四个表中必须都是唯一的
	diseaseCellTree.nodes["Dis_H3K36me3"] = "text:H3K36me3;";
	diseaseCellTree.nodes["H3K36me3_ProstateCarcinoma"]= "text:<a style=\"font-size:20px\"><input id=\"H4R3\" type=\"checkbox\" name=\"diseaseCelltheName\" value=\"22Rv1_H3K36me3_dc\"><b>22Rv1 cells</b></a>;";//value 在四个表中必须都是唯一的
	diseaseCellTree.nodes["Dis_H3K79me2"] = "text:H3K79me2;";
	diseaseCellTree.nodes["H3K79me2_BreastCance0r"]= "text:<a style=\"font-size:20px\"><input id=\"H4R3\" type=\"checkbox\" name=\"diseaseCelltheName\" value=\"AU565_H3K79me2_dc\"><b>AU565 cells</b></a>;";//value 在四个表中必须都是唯一的
	diseaseCellTree.nodes["H3K79me2_BreastCanc0er"]= "text:<a style=\"font-size:20px\"><input id=\"H4R3\" type=\"checkbox\" name=\"diseaseCelltheName\" value=\"HCC1937_H3K79me2_dc\"><b>HCC1937 cells</b></a>;";//value 在四个表中必须都是唯一的
	diseaseCellTree.nodes["H3K79me2_BreastCan0cer"]= "text:<a style=\"font-size:20px\"><input id=\"H4R3\" type=\"checkbox\" name=\"diseaseCelltheName\" value=\"HCC1954_H3K79me2_dc\"><b>HCC1954 cells</b></a>;";//value 在四个表中必须都是唯一的
	diseaseCellTree.nodes["H3K79me2_BreastCa0ncer"]= "text:<a style=\"font-size:20px\"><input id=\"H4R3\" type=\"checkbox\" name=\"diseaseCelltheName\" value=\"MB231_H3K79me2_dc\"><b>MB231 cells</b></a>;";//value 在四个表中必须都是唯一的
	diseaseCellTree.nodes["H3K79me2_Breast0Cancer"]= "text:<a style=\"font-size:20px\"><input id=\"H4R3\" type=\"checkbox\" name=\"diseaseCelltheName\" value=\"MB361_H3K79me2_dc\"><b>MB361 cells</b></a>;";//value 在四个表中必须都是唯一的
	diseaseCellTree.nodes["H3K79me2_Bre0astCancer"]= "text:<a style=\"font-size:20px\"><input id=\"H4R3\" type=\"checkbox\" name=\"diseaseCelltheName\" value=\"MB436_H3K79me2_dc\"><b>MB436 cells</b></a>;";//value 在四个表中必须都是唯一的
	diseaseCellTree.nodes["H3K79me2_BreastCancer"]= "text:<a style=\"font-size:20px\"><input id=\"H4R3\" type=\"checkbox\" name=\"diseaseCelltheName\" value=\"MB468_H3K79me2_dc\"><b>MB468 cells</b></a>;";//value 在四个表中必须都是唯一的
	diseaseCellTree.nodes["H3K79me2_B0reastCancer"]= "text:<a style=\"font-size:20px\"><input id=\"H4R3\" type=\"checkbox\" name=\"diseaseCelltheName\" value=\"MCF7_H3K79me2_dc\"><b>MCF7 cells</b></a>;";//value 在四个表中必须都是唯一的
	diseaseCellTree.nodes["H3K79me2_Br00eastCancer"]= "text:<a style=\"font-size:20px\"><input id=\"H4R3\" type=\"checkbox\" name=\"diseaseCelltheName\" value=\"SKBR3_H3K79me2_dc\"><b>SKBR3 cells</b></a>;";//value 在四个表中必须都是唯一的
	diseaseCellTree.nodes["H3K79me2_Brea00stCancer"]= "text:<a style=\"font-size:20px\"><input id=\"H4R3\" type=\"checkbox\" name=\"diseaseCelltheName\" value=\"UACC812_H3K79me2_dc\"><b>UACC812 cells</b></a>;";//value 在四个表中必须都是唯一的
	diseaseCellTree.nodes["H3K79me2_Breast000Cancer"]= "text:<a style=\"font-size:20px\"><input id=\"H4R3\" type=\"checkbox\" name=\"diseaseCelltheName\" value=\"ZR751_H3K79me2_dc\"><b>ZR751 cells</b></a>;";//value 在四个表中必须都是唯一的
    appendTree2Tr("diseaseCell", diseaseCellTree.toString());
/////////////////////////////////////////////////////////   
    var normalCellTree = new MzTreeView("normalCellTree");
 	normalCellTree.icons["property"] = "property.gif";
    normalCellTree.icons["css"] = "collection.gif";
    normalCellTree.icons["object"]  = "root2.jpg";
    normalCellTree.icons["book"]  = "book1.gif"; 
    normalCellTree.iconsExpand["book"] = "bookopen.gif";  
    normalCellTree.setIconPath("images/");
	normalCellTree.nodes["-1_Dis"] = "text:Normal CellLines;";
	normalCellTree.nodes["Dis_H3K4me3"] = "text:H3K4me3;";
	normalCellTree.nodes["H3K4me3_hepatitisC"]= "text:<a style=\"font-size:20px\"><input id=\"H4R3\" type=\"checkbox\" name=\"normalCelltheName\" value=\"non-infected Huh-7.5 cells_H3K4me3_nc\"><b>non infected Huh-7.5 cells</b></a>;";//value 在四个表中必须都是唯一的
	normalCellTree.nodes["H3K4me3_ProstateCarcinoma"]= "text:<a style=\"font-size:20px\"><input id=\"H4R3\" type=\"checkbox\" name=\"normalCelltheName\" value=\"RWPE1_H3K4me3_nc\"><b>RWPE1 cells</b></a>;";//value 在四个表中必须都是唯一的
	normalCellTree.nodes["H3K4me3_pediatricCrohnsdisease"]= "text:<a style=\"font-size:20px\"><input id=\"H4R3\" type=\"checkbox\" name=\"normalCelltheName\" value=\"control Intestinal epithelial cells_H3K4me3_nc\"><b>Intestinal epithelial cells</b></a>;";//value 在四个表中必须都是唯一的
	normalCellTree.nodes["H3K4me3_BreastCancer"]= "text:<a style=\"font-size:20px\"><input id=\"H4R3\" type=\"checkbox\" name=\"normalCelltheName\" value=\"MCF10A_H3K4me3_nc\"><b>MCF10A cells</b></a>;";//value 在四个表中必须都是唯一的
	normalCellTree.nodes["H3K4me3_TCellLeukemia"]= "text:<a style=\"font-size:20px\"><input id=\"H4R3\" type=\"checkbox\" name=\"normalCelltheName\" value=\"primary CD4+ T cells_H3K4me3_nc\"><b>CD4+ T cells</b></a>;";//value 在四个表中必须都是唯一的
	normalCellTree.nodes["H3K4me3_Graves"]= "text:<a style=\"font-size:20px\"><input id=\"H4R3\" type=\"checkbox\" name=\"normalCelltheName\" value=\"healthy control CD4 cell_H3K4me3_nc\"><b>CD4 cells</b></a>;";//value 在四个表中必须都是唯一的
	
    normalCellTree.nodes["Dis_H3K4me1"] = "text:H3K4me1;";
	normalCellTree.nodes["H3K4me1_ProstateCarcinoma"]= "text:<a style=\"font-size:20px\"><input id=\"H4R3\" type=\"checkbox\" name=\"normalCelltheName\" value=\"RWPE1_H3K4me1_nc\"><b>RWPE1 cells</b></a>;";//value 在四个表中必须都是唯一的
	normalCellTree.nodes["H3K4me1_idiopatheticPulmonaryFibrosis"]= "text:<a style=\"font-size:20px\"><input id=\"H4R3\" type=\"checkbox\" name=\"normalCelltheName\" value=\"Human Lung Fibroblasts Control_H3K4me1_nc\"><b>Lung Fibroblasts cells</b></a>;";//value 在四个表中必须都是唯一的
	
	normalCellTree.nodes["Dis_H3K4ac"] =  "text:H3K4ac;";
	normalCellTree.nodes["H3K4ac_BreastCancer"]= "text:<a style=\"font-size:20px\"><input id=\"H4R3\" type=\"checkbox\" name=\"normalCelltheName\" value=\"MCF10A_H3K4ac_nc\"><b>MCF10A cells</b></a>;";//value 在四个表中必须都是唯一的
	
	normalCellTree.nodes["Dis_H3K9ac"] =  "text:H3K9ac;";
	normalCellTree.nodes["H3K9ac_hepatitisC"]= "text:<a style=\"font-size:20px\"><input id=\"H4R3\" type=\"checkbox\" name=\"normalCelltheName\" value=\"non-infected Huh-7.5 cells_H3K9ac_nc\"><b>non infected Huh-7.5 cells</b></a>;";//value 在四个表中必须都是唯一的
	
	normalCellTree.nodes["Dis_H3K9me3"] = "text:H3K9me3;";
	normalCellTree.nodes["H3K9me3_hepatitisC"]= "text:<a style=\"font-size:20px\"><input id=\"H4R3\" type=\"checkbox\" name=\"normalCelltheName\" value=\"non-infected Huh-7.5 cells_H3K9me3_nc\"><b>non infected Huh-7.5 cells</b></a>;";//value 在四个表中必须都是唯一的
	normalCellTree.nodes["H3K9me3_ProstateCarcinoma"]= "text:<a style=\"font-size:20px\"><input id=\"H4R3\" type=\"checkbox\" name=\"normalCelltheName\" value=\"RWPE1_H3K9me3_nc\"><b>RWPE1 cells</b></a>;";//value 在四个表中必须都是唯一的
	normalCellTree.nodes["H3K9me3_BreastCancer"]= "text:<a style=\"font-size:20px\"><input id=\"H4R3\" type=\"checkbox\" name=\"normalCelltheName\" value=\"226LDM_H3K9me3_nc\"><b>226LDM cells</b></a>;";//value 在四个表中必须都是唯一的
	
	normalCellTree.nodes["Dis_H3K27me3"] ="text:H3K27me3;";
	normalCellTree.nodes["H3K27me3_hepatitisC"]= "text:<a style=\"font-size:20px\"><input id=\"H4R3\" type=\"checkbox\" name=\"normalCelltheName\" value=\"non-infected Huh-7.5 cells_H3K27me3_nc\"><b>non infected Huh-7.5 cells</b></a>;";//value 在四个表中必须都是唯一的
	normalCellTree.nodes["H3K27me3_CervicalCarcinoma"]= "text:<a style=\"font-size:20px\"><input id=\"H4R3\" type=\"checkbox\" name=\"normalCelltheName\" value=\"endometrial epithelial cell_H3K27me3_nc\"><b>endometrial epithelial cells</b></a>;";//value 在四个表中必须都是唯一的
	normalCellTree.nodes["H3K27me3_ProstateCarcinoma"]= "text:<a style=\"font-size:20px\"><input id=\"H4R3\" type=\"checkbox\" name=\"normalCelltheName\" value=\"RWPE1_H3K27me3_nc\"><b>RWPE1 cells</b></a>;";//value 在四个表中必须都是唯一的
	normalCellTree.nodes["H3K27me3_BreastCancer"]= "text:<a style=\"font-size:20px\"><input id=\"H4R3\" type=\"checkbox\" name=\"normalCelltheName\" value=\"MCF10A_H3K27me3_nc\"><b>MCF10A cells</b></a>;";//value 在四个表中必须都是唯一的
	
	normalCellTree.nodes["Dis_H3K27ac"] = "text:H3K27ac;";
	normalCellTree.nodes["H3K27ac_CervicalCarcinoma"]= "text:<a style=\"font-size:20px\"><input id=\"H4R3\" type=\"checkbox\" name=\"normalCelltheName\" value=\"endometrial epithelial cell_H3K27ac_nc\"><b>endometrial epithelial cells</b></a>;";//value 在四个表中必须都是唯一的
	normalCellTree.nodes["H3K27ac_ProstateCarcinoma"]= "text:<a style=\"font-size:20px\"><input id=\"H4R3\" type=\"checkbox\" name=\"normalCelltheName\" value=\"RWPE1_H3K27ac_nc\"><b>RWPE1 cells</b></a>;";//value 在四个表中必须都是唯一的
	normalCellTree.nodes["H3K27ac_TCellLeukemia"]= "text:<a style=\"font-size:20px\"><input id=\"H4R3\" type=\"checkbox\" name=\"normalCelltheName\" value=\"primary CD4+ T cells_H3K27ac_nc\"><b>CD4+ T cells</b></a>;";//value 在四个表中必须都是唯一的
	normalCellTree.nodes["H3K27ac_Graves"]= "text:<a style=\"font-size:20px\"><input id=\"H4R3\" type=\"checkbox\" name=\"normalCelltheName\" value=\"healthy control CD8 cell_H3K27ac_nc\"><b>CD8 cells</b></a>;";//value 在四个表中必须都是唯一的
	normalCellTree.nodes["H3K27ac_EndometrialAdenocarcinoma"]= "text:<a style=\"font-size:20px\"><input id=\"H4R3\" type=\"checkbox\" name=\"normalCelltheName\" value=\"endometrial epithelial cell_H3K27ac_nc\"><b>iendometrial epithelial cells</b></a>;";//value 在四个表中必须都是唯一的
	
	normalCellTree.nodes["Dis_H3K36me3"] ="text:H3K36me3;";
	normalCellTree.nodes["H3K36me3_ProstateCarcinoma"]= "text:<a style=\"font-size:20px\"><input id=\"H4R3\" type=\"checkbox\" name=\"normalCelltheName\" value=\"RWPE1_H3K36me3_nc\"><b>RWPE1 cells</b></a>;";//value 在四个表中必须都是唯一的
	normalCellTree.nodes["H3K36me3_TCellLeukemia"]= "text:<a style=\"font-size:20px\"><input id=\"H4R3\" type=\"checkbox\" name=\"normalCelltheName\" value=\"primary CD4+ T cells_H3K36me3_nc\"><b>CD4+ T cells</b></a>;";//value 在四个表中必须都是唯一的
	
	normalCellTree.nodes["Dis_H3K79me2"] ="text:H3K79me2;";
	normalCellTree.nodes["H3K79me2_BreastCancer"]= "text:<a style=\"font-size:20px\"><input id=\"H4R3\" type=\"checkbox\" name=\"normalCelltheName\" value=\"MCF10A_H3K79me2_nc\"><b>MCF10A cells</b></a>;";//value 在四个表中必须都是唯一的
	
    appendTree2Tr("normalCell", normalCellTree.toString());
</script>
</s:form>

<br>
<s:form id="Form3_1" name="Form3_1" action="mirgene2" method="post" theme="simple">

		
							<div style=" margin-top:2px;;margin:0 auto;width:1970px;height:50px;z-index:3;background:#006192;">
									<table class="menuviewtable">
									<tr>
										<td style="width:10%;align:center; ">
											<input type="button"  class="addremove" id="1divaddremove" onclick="hidenDiv('1div')"/>
										</td>
										<td style="width:90%;  text-align:left; font-size:30px; color:#FFFFFF" face="Calibri"><nobr>Difference analysis by PePr</td>
									</tr>
									</table></div>
									<div class="menuview" id="1div" style="margin:0 auto;-moz-box-shadow:1px 3px 20px #003F5F, 2px 2px 5px #003F5F;  width:1970px;z-index:3;background:#FFFFFF; border:3px solid #006192"" >
									 <p>&nbsp;</p><p>&nbsp;</p>
									 <table class="menuviewtable">
									  
									  <tr>
	<td id="disease1" width="230" height="100"></td>
   
    <td id="normal1" width="230" height="100"></td>
    
    <td id="diseaseCell1" width="230" height="100"></td>
   
    <td id="normalCell1" width="230" height="100"></td>
 
    <td width="2" height="100" id="test1"></td>

  </tr>
	</table>
	<br>
  <td >&nbsp;</td>
   <td >&nbsp;</td>
    <td >&nbsp;</td>
  <td align="left">

 <button class="button" type="submit" value="Submit" style="width: 110px; height:50px; font-size:20px;">Submit</button>
  <button class="button" type="reset" value="Reset" onclick="replaceDoc()" style="width: 110px; height:50px; font-size:20px;">Reset</button>
  	  </td>
  	 <p>&nbsp;</p><p>&nbsp;</p>
</div>
 <script language="JavaScript">
    var diseaseTree1 = new MzTreeView("diseaseTree1");
    diseaseTree1.icons["property"] = "property.gif";
    diseaseTree1.icons["css"] = "collection.gif";
    diseaseTree1.icons["object"]  = "root2.jpg";
    diseaseTree1.icons["book"]  = "book1.gif";
    diseaseTree1.iconsExpand["book"] = "bookopen.gif";  
    diseaseTree1.setIconPath("images/"); 
    diseaseTree1.nodes["-1_Dis"] = "text:Disease tissues;";
    diseaseTree1.nodes["Dis_H3K4me3"] = "text:H3K4me3;";
    diseaseTree1.nodes["H3K4me3_1"]= "text:<a style=\"font-size:20px\"><input id=\"H4R3\" type=\"checkbox\" name=\"diseasetheName\" value=\"primary breast tumor_H3K4me3_dt\"><b>Breast cancer</b></a>;";//value 在四个表中必须都是唯一的
    diseaseTree1.nodes["H3K4me3_2"]= "text:<a style=\"font-size:20px\"><input id=\"H4R3\" type=\"checkbox\" name=\"diseasetheName\" value=\"ccRCC tumor tissue_H3K4me3_dt\"><b>ccRCC tumor</b></a>;";//value 在四个表中必须都是唯一的
   diseaseTree1.nodes["H3K4me3_B3"]= "text:<a style=\"font-size:20px\"><input id=\"H4R3\" type=\"checkbox\" name=\"diseasetheName\" value=\"primary brain rhabdoid tumor tissue_H3K4me3_dt\"><b>brain rhabdoid tumor</b></a>;";//value 在四个表中必须都是唯一的
    diseaseTree1.nodes["Dis_H3K4me1"] = "text:H3K4me1;";
	diseaseTree1.nodes["H3K4me1_C4"]= "text:<a style=\"font-size:20px\"><input id=\"H4R3\" type=\"checkbox\" name=\"diseasetheName\" value=\"ccRCC tumor tissue_H3K4me1_dt\"><b>ccRCC tumor</b></a>;";//value 在四个表中必须都是唯一的
    diseaseTree1.nodes["H3K4me1_B4"]= "text:<a style=\"font-size:20px\"><input id=\"H4R3\" type=\"checkbox\" name=\"diseasetheName\" value=\"primary brain rhabdoid tumor tissue_H3K4me1_dt\"><b>brain rhabdoid tumor</b></a>;";//value 在四个表中必须都是唯一的
    diseaseTree1.nodes["Dis_H3K27me3"] = "text:H3K27me3;";
	diseaseTree1.nodes["H3K27me3_5"]= "text:<a style=\"font-size:20px\"><input id=\"H4R3\" type=\"checkbox\" name=\"diseasetheName\" value=\"primary breast tumor_H3K27me3_dt\"><b>primary breast tumor</b></a>;";//value 在四个表中必须都是唯一的
    diseaseTree1.nodes["Dis_H3K27ac"] = "text:H3K27ac	;";
    diseaseTree1.nodes["H3K27ac_B6"]= "text:<a style=\"font-size:20px\"><input id=\"H4R3\" type=\"checkbox\" name=\"diseasetheName\" value=\"primary brain rhabdoid tumor tissue_H3K27ac_dt\"><b>brain rhabdoid tumor</b></a>;";//value 在四个表中必须都是唯一的
    diseaseTree1.nodes["H3K27ac_7"]= "text:<a style=\"font-size:20px\"><input id=\"H4R3\" type=\"checkbox\" name=\"diseasetheName\" value=\"ccRCC tumor tissue_H3K27ac_dt\"><b>ccRCC tumor</b></a>;";//value 在四个表中必须都是唯一的
    diseaseTree1.nodes["H3K27ac_8"]= "text:<a style=\"font-size:20px\"><input id=\"H4R3\" type=\"checkbox\" name=\"diseasetheName\" value=\"primary diffuse large B cell lymphoma tumor_H3K27ac_dt\"><b>primary diffuse large B cell lymphoma tumor</b></a>;";//value 在四个表中必须都是唯一的    
    diseaseTree1.nodes["H3K27ac_9"]= "text:<a style=\"font-size:20px\"><input id=\"H4R3\" type=\"checkbox\" name=\"diseasetheName\" value=\"Leiomyoma_H3K27ac_dt\"><b>Leiomyoma</b></a>;";//value 在四个表中必须都是唯一的    
    appendTree2Tr("disease1", diseaseTree1.toString());
//////////////////////////////////////////////////
	var normalTree1 = new MzTreeView("normalTree1");
 	normalTree1.icons["property"] = "property.gif";
    normalTree1.icons["css"] = "collection.gif";
    normalTree1.icons["object"]  = "root2.jpg";
    normalTree1.icons["book"]  = "book1.gif"; 
    normalTree1.iconsExpand["book"] = "bookopen.gif"; 
    normalTree1.setIconPath("images/");
	normalTree1.nodes["-1_Dis"] = "text:Normal tissues;";
	normalTree1.nodes["Dis_H3K4me3"] = "text:H3K4me3;";
    normalTree1.nodes["H3K4me3_CervicalCarcinoma"]= "text:<a style=\"font-size:20px\"><input id=\"H4R3\" type=\"checkbox\" name=\"normaltheName\" value=\"endometrial_H3K4me3_nt\"><b>endometrium</b></a>;";//value 在四个表中必须都是唯一的
    normalTree1.nodes["H3K4me3_ProstateCarcinoma"]= "text:<a style=\"font-size:20px\"><input id=\"H4R3\" type=\"checkbox\" name=\"normaltheName\" value=\"prostate tissue_H3K4me3_nt\"><b>prostate</b></a>;";//value 在四个表中必须都是唯一的
    normalTree1.nodes["H3K4me3_CCRCC"]= "text:<a style=\"font-size:20px\"><input id=\"H4R3\" type=\"checkbox\" name=\"normaltheName\" value=\"adjacent normal kidney tissue_H3K4me3_nt\"><b>kidney tissue</b></a>;";//value 在四个表中必须都是唯一的
    normalTree1.nodes["H3K4me3_BrainRhabdoidTumor"]= "text:<a style=\"font-size:20px\"><input id=\"H4R3\" type=\"checkbox\" name=\"normaltheName\" value=\"Lateral Amygdala_H3K4me3_nt\"><b>lateral amygdala</b></a>;";//value 在四个表中必须都是唯一的
    normalTree1.nodes["H3K4me3_PancreaticDuctalAdenocarcinoma"]= "text:<a style=\"font-size:20px\"><input id=\"H4R3\" type=\"checkbox\" name=\"normaltheName\" value=\"pancreas_H3K4me3_nt\"><b>pancreas tissue</b></a>;";//value 在四个表中必须都是唯一的	
    normalTree1.nodes["Dis_H3K4me1"] = "text:H3K4me1;";
    normalTree1.nodes["H3K4me1_ProstateCarcinoma"]= "text:<a style=\"font-size:20px\"><input id=\"H4R3\" type=\"checkbox\" name=\"normaltheName\" value=\"prostate tissue_H3K4me1_nt\"><b>prostate</b></a>;";//value 在四个表中必须都是唯一的
    normalTree1.nodes["H3K4me1_CCRCC"]= "text:<a style=\"font-size:20px\"><input id=\"H4R3\" type=\"checkbox\" name=\"normaltheName\" value=\"adjacent normal kidney tissue_H3K4me1_nt\"><b>kidney tissue</b></a>;";//value 在四个表中必须都是唯一的
    normalTree1.nodes["H3K4me1_BrainRhabdoidTumor"]= "text:<a style=\"font-size:20px\"><input id=\"H4R3\" type=\"checkbox\" name=\"normaltheName\" value=\"Lateral Amygdala_H3K4me1_nt\"><b>lateral amygdala</b></a>;";//value 在四个表中必须都是唯一的
    normalTree1.nodes["H3K4me1_PancreaticDuctalAdenocarcinoma"]= "text:<a style=\"font-size:20px\"><input id=\"H4R3\" type=\"checkbox\" name=\"normaltheName\" value=\"pancreas_H3K4me1_nt\"><b>pancreas tissue</b></a>;";//value 在四个表中必须都是唯一的
    normalTree1.nodes["H3K4me1_EndometrialAdenocarcinoma"]= "text:<a style=\"font-size:20px\"><input id=\"H4R3\" type=\"checkbox\" name=\"normaltheName\" value=\"endometrial_H3K4me1_nt\"><b>endometrium</b></a>;";//value 在四个表中必须都是唯一的
    normalTree1.nodes["Dis_H3K27me3"] ="text:H3K27me3;";
    normalTree1.nodes["H3K27me3_CervicalCarcinoma"]= "text:<a style=\"font-size:20px\"><input id=\"H4R3\" type=\"checkbox\" name=\"normaltheName\" value=\"endometrial_H3K27me3_nt\"><b>endometrium</b></a>;";//value 在四个表中必须都是唯一的
    normalTree1.nodes["H3K27me3_BrainRhabdoidTumor"]= "text:<a style=\"font-size:20px\"><input id=\"H4R3\" type=\"checkbox\" name=\"normaltheName\" value=\"Lateral Amygdala_H3K27me3_nt\"><b>lateral amygdala</b></a>;";//value 在四个表中必须都是唯一的
    normalTree1.nodes["H3K27me3_melanoma"]= "text:<a style=\"font-size:20px\"><input id=\"H4R3\" type=\"checkbox\" name=\"normaltheName\" value=\"skin_H3K27me3_nt\"><b>skin tissue</b></a>;";//value 在四个表中必须都是唯一的
    normalTree1.nodes["Dis_H3K27ac"] = "text:H3K27ac;";
    normalTree1.nodes["H3K27ac_CervicalCarcinoma"]= "text:<a style=\"font-size:20px\"><input id=\"H4R3\" type=\"checkbox\" name=\"normaltheName\" value=\"endometrial_H3K27ac_nt\"><b>endometrium</b></a>;";//value 在四个表中必须都是唯一的
    normalTree1.nodes["H3K27ac_CCRCC"]= "text:<a style=\"font-size:20px\"><input id=\"H4R3\" type=\"checkbox\" name=\"normaltheName\" value=\"adjacent normal kidney tissue_H3K27ac_nt\"><b>kidney tissue</b></a>;";//value 在四个表中必须都是唯一的
    normalTree1.nodes["H3K27ac_BrainRhabdoidTumor"]= "text:<a style=\"font-size:20px\"><input id=\"H4R3\" type=\"checkbox\" name=\"normaltheName\" value=\"Lateral Amygdala_H3K27ac_nt\"><b>lateral amygdala</b></a>;";//value 在四个表中必须都是唯一的
    normalTree1.nodes["H3K27ac_PancreaticDuctalAdenocarcinoma"]= "text:<a style=\"font-size:20px\"><input id=\"H4R3\" type=\"checkbox\" name=\"normaltheName\" value=\"pancreas_H3K27ac_nt\"><b>pancreas tissue</b></a>;";//value 在四个表中必须都是唯一的
    appendTree2Tr("normal1", normalTree1.toString());
////////////////////////////////////////////////////////
	var diseaseCellTree1 = new MzTreeView("diseaseCellTree1");
 	diseaseCellTree1.icons["property"] = "property.gif";
    diseaseCellTree1.icons["css"] = "collection.gif";
    diseaseCellTree1.icons["object"]  = "root2.jpg";
    diseaseCellTree1.icons["book"]  = "book1.gif";
    diseaseCellTree1.iconsExpand["book"] = "bookopen.gif";  
    diseaseCellTree1.setIconPath("images/"); 
	diseaseCellTree1.nodes["-1_Dis"] = "text:Disease CellLines;";
                    diseaseCellTree1.nodes["Dis_H3K4me3"] = "text:H3K4me3;";
	diseaseCellTree1.nodes["H3K4me3_hepatitisC"]= "text:<a style=\"font-size:20px\"><input id=\"H4R3\" type=\"checkbox\" name=\"diseaseCelltheName\" value=\"HCV infected Huh-7.5 cells_H3K4me3_dc\"><b>HCV infected Huh-7.5 cells</b></a>;";//value 在四个表中必须都是唯一的
	diseaseCellTree1.nodes["H3K4me3_CervicalCarcinoma"]= "text:<a style=\"font-size:20px\"><input id=\"H4R3\" type=\"checkbox\" name=\"diseaseCelltheName\" value=\"HeLa_H3K4me3_dc\"><b>HeLa cells</b></a>;";//value 在四个表中必须都是唯一的
	diseaseCellTree1.nodes["H3K4me3_Prosta1teCarcinoma"]= "text:<a style=\"font-size:20px\"><input id=\"H4R3\" type=\"checkbox\" name=\"diseaseCelltheName\" value=\"DU145_H3K4me3_dc\"><b>DU145 cells</b></a>;";//value 在四个表中必须都是唯一的
	diseaseCellTree1.nodes["H3K4me3_Prost1ateCarcinoma"]= "text:<a style=\"font-size:20px\"><input id=\"H4R3\" type=\"checkbox\" name=\"diseaseCelltheName\" value=\"PC3_H3K4me3_dc\"><b>PC3 cells</b></a>;";//value 在四个表中必须都是唯一的
	diseaseCellTree1.nodes["H3K4me3_RenalCancer"]= "text:<a style=\"font-size:20px\"><input id=\"H4R3\" type=\"checkbox\" name=\"diseaseCelltheName\" value=\"786-O_H3K4me3_dc\"><b>786-O cells</b></a>;";//value 在四个表中必须都是唯一的
	diseaseCellTree1.nodes["H3K4me3_PediatricCrohnsDisease"]= "text:<a style=\"font-size:20px\"><input id=\"H4R3\" type=\"checkbox\" name=\"diseaseCelltheName\" value=\"Intestinal epithelial cells_H3K4me3_dc\"><b>intestinal epithelial cells</b></a>;";//value 在四个表中必须都是唯一的
	diseaseCellTree1.nodes["H3K4me3_Br1eastCancer"]= "text:<a style=\"font-size:20px\"><input id=\"H4R3\" type=\"checkbox\" name=\"diseaseCelltheName\" value=\"AU565_H3K4me3_dc\"><b>AU565 cells</b></a>;";//value 在四个表中必须都是唯一的
	diseaseCellTree1.nodes["H3K4me3_Bre1astCancer"]= "text:<a style=\"font-size:20px\"><input id=\"H4R3\" type=\"checkbox\" name=\"diseaseCelltheName\" value=\"HCC1937_H3K4me3_dc\"><b>HCC1937 cells</b></a>;";//value 在四个表中必须都是唯一的
	diseaseCellTree1.nodes["H3K4me3_Br11eastCancer"]= "text:<a style=\"font-size:20px\"><input id=\"H4R3\" type=\"checkbox\" name=\"diseaseCelltheName\" value=\"HCC1954_H3K4me3_dc\"><b>HCC1954 cells</b></a>;";//value 在四个表中必须都是唯一的
	diseaseCellTree1.nodes["H3K4me3_Br111eastCancer"]= "text:<a style=\"font-size:20px\"><input id=\"H4R3\" type=\"checkbox\" name=\"diseaseCelltheName\" value=\"HCC2157_H3K4me3_dc\"><b>HCC2157 cells</b></a>;";//value 在四个表中必须都是唯一的
	diseaseCellTree1.nodes["H3K4me3_Br1111eastCancer"]= "text:<a style=\"font-size:20px\"><input id=\"H4R3\" type=\"checkbox\" name=\"diseaseCelltheName\" value=\"LM2-4175_H3K4me3_dc\"><b>LM2-4175 cells</b></a>;";//value 在四个表中必须都是唯一的
	diseaseCellTree1.nodes["H3K4me3_Br11111eastCancer"]= "text:<a style=\"font-size:20px\"><input id=\"H4R3\" type=\"checkbox\" name=\"diseaseCelltheName\" value=\"MB231_H3K4me3_dc\"><b>MB231 cells</b></a>;";//value 在四个表中必须都是唯一的
	diseaseCellTree1.nodes["H3K4me3_Brea11stCancer"]= "text:<a style=\"font-size:20px\"><input id=\"H4R3\" type=\"checkbox\" name=\"diseaseCelltheName\" value=\"MB361_H3K4me3_dc\"><b>MB361 cells</b></a>;";//value 在四个表中必须都是唯一的
	diseaseCellTree1.nodes["H3K4me3_Brea111stCancer"]= "text:<a style=\"font-size:20px\"><input id=\"H4R3\" type=\"checkbox\" name=\"diseaseCelltheName\" value=\"MB436_H3K4me3_dc\"><b>MB436 cells</b></a>;";//value 在四个表中必须都是唯一的
	diseaseCellTree1.nodes["H3K4me3_Brea1111stCancer"]= "text:<a style=\"font-size:20px\"><input id=\"H4R3\" type=\"checkbox\" name=\"diseaseCelltheName\" value=\"MB468_H3K4me3_dc\"><b>MB468 cells</b></a>;";//value 在四个表中必须都是唯一的
	diseaseCellTree1.nodes["H3K4me3_Breast2Cancer"]= "text:<a style=\"font-size:20px\"><input id=\"H4R3\" type=\"checkbox\" name=\"diseaseCelltheName\" value=\"MCF7_H3K4me3_dc\"><b>MCF7 cells</b></a>;";//value 在四个表中必须都是唯一的
	diseaseCellTree1.nodes["H3K4me3_Breast3Cancer"]= "text:<a style=\"font-size:20px\"><input id=\"H4R3\" type=\"checkbox\" name=\"diseaseCelltheName\" value=\"MDA-MB-453_H3K4me3_dc\"><b>MDA-MB-453 cells</b></a>;";//value 在四个表中必须都是唯一的
	diseaseCellTree1.nodes["H3K4me3_Breast4Cancer"]= "text:<a style=\"font-size:20px\"><input id=\"H4R3\" type=\"checkbox\" name=\"diseaseCelltheName\" value=\"MDA-MB-231_H3K4me3_dc\"><b>MDA-MB-231 cells</b></a>;";//value 在四个表中必须都是唯一的
	diseaseCellTree1.nodes["H3K4me3_Breast5Cancer"]= "text:<a style=\"font-size:20px\"><input id=\"H4R3\" type=\"checkbox\" name=\"diseaseCelltheName\" value=\"SKBR3_H3K4me3_dc\"><b>SKBR3 cells</b></a>;";//value 在四个表中必须都是唯一的
	diseaseCellTree1.nodes["H3K4me3_Breast6Cancer"]= "text:<a style=\"font-size:20px\"><input id=\"H4R3\" type=\"checkbox\" name=\"diseaseCelltheName\" value=\"UACC812_H3K4me3_dc\"><b>UACC812 cells</b></a>;";//value 在四个表中必须都是唯一的
	diseaseCellTree1.nodes["H3K4me3_Breast7Cancer"]= "text:<a style=\"font-size:20px\"><input id=\"H4R3\" type=\"checkbox\" name=\"diseaseCelltheName\" value=\"ZR751_H3K4me3_dc\"><b>ZR751 cells</b></a>;";//value 在四个表中必须都是唯一的
	diseaseCellTree1.nodes["H3K4me3_Mv1eloidLeukemia"]= "text:<a style=\"font-size:20px\"><input id=\"H4R3\" type=\"checkbox\" name=\"diseaseCelltheName\" value=\"HAP1_H3K4me3_dc\"><b>HAP1 cells</b></a>;";//value 在四个表中必须都是唯一的
	diseaseCellTree1.nodes["H3K4me3_Mv2eloidLeukemia"]= "text:<a style=\"font-size:20px\"><input id=\"H4R3\" type=\"checkbox\" name=\"diseaseCelltheName\" value=\"HL-60_H3K4me3_dc\"><b>HL-60 cells</b></a>;";//value 在四个表中必须都是唯一的
	diseaseCellTree1.nodes["H3K4me3_Mv3eloidLeukemia"]= "text:<a style=\"font-size:20px\"><input id=\"H4R3\" type=\"checkbox\" name=\"diseaseCelltheName\" value=\"K562_H3K4me3_dc\"><b>K562 cells</b></a>;";//value 在四个表中必须都是唯一的
	diseaseCellTree1.nodes["H3K4me3_Mve4loidLeukemia"]= "text:<a style=\"font-size:20px\"><input id=\"H4R3\" type=\"checkbox\" name=\"diseaseCelltheName\" value=\"KBM7_H3K4me3_dc\"><b>KBM7 cells</b></a>;";//value 在四个表中必须都是唯一的
	diseaseCellTree1.nodes["H3K4me3_Mve5loidLeukemia"]= "text:<a style=\"font-size:20px\"><input id=\"H4R3\" type=\"checkbox\" name=\"diseaseCelltheName\" value=\"NB4_H3K4me3_dc\"><b>NB4 cells</b></a>;";//value 在四个表中必须都是唯一的
	diseaseCellTree1.nodes["H3K4me3_TCel1lLeukemia"]= "text:<a style=\"font-size:20px\"><input id=\"H4R3\" type=\"checkbox\" name=\"diseaseCelltheName\" value=\"DND-41_H3K4me3_dc\"><b>DND-41 cells</b></a>;";//value 在四个表中必须都是唯一的
	diseaseCellTree1.nodes["H3K4me3_TCellLeukemia"]= "text:<a style=\"font-size:20px\"><input id=\"H4R3\" type=\"checkbox\" name=\"diseaseCelltheName\" value=\"KOPT-K1_H3K4me3_dc\"><b>KOPT-K1 cells</b></a>;";//value 在四个表中必须都是唯一的
	diseaseCellTree1.nodes["H3K4me3_Ewing2Sacroma"]= "text:<a style=\"font-size:20px\"><input id=\"H4R3\" type=\"checkbox\" name=\"diseaseCelltheName\" value=\"A673_H3K4me3_dc\"><b>A673 cells</b></a>;";//value 在四个表中必须都是唯一的
	diseaseCellTree1.nodes["H3K4me3_EwingSacroma"]= "text:<a style=\"font-size:20px\"><input id=\"H4R3\" type=\"checkbox\" name=\"diseaseCelltheName\" value=\"SKMNC_H3K4me3_dc\"><b>SKMNC cells</b></a>;";//value 在四个表中必须都是唯一的
	diseaseCellTree1.nodes["H3K4me3_Pancrea2ticDuctalAdenocarcinoma"]= "text:<a style=\"font-size:20px\"><input id=\"H4R3\" type=\"checkbox\" name=\"diseaseCelltheName\" value=\"CAPAN2_H3K4me3_dc\"><b>CAPAN2 cells</b></a>;";//value 在四个表中必须都是唯一的
	diseaseCellTree1.nodes["H3K4me3_Pancre2aticDuctalAdenocarcinoma"]= "text:<a style=\"font-size:20px\"><input id=\"H4R3\" type=\"checkbox\" name=\"diseaseCelltheName\" value=\"HPAF2_H3K4me3_dc\"><b>HPAF2 cells</b></a>;";//value 在四个表中必须都是唯一的
	diseaseCellTree1.nodes["H3K4me3_Pancre3aticDuctalAdenocarcinoma"]= "text:<a style=\"font-size:20px\"><input id=\"H4R3\" type=\"checkbox\" name=\"diseaseCelltheName\" value=\"PANC1_H3K4me3_dc\"><b>PANC1 cells</b></a>;";//value 在四个表中必须都是唯一的
	diseaseCellTree1.nodes["H3K4me3_Blymphoidleukemia"]= "text:<a style=\"font-size:20px\"><input id=\"H4R3\" type=\"checkbox\" name=\"diseaseCelltheName\" value=\"SEM_H3K4me3_dc\"><b>SEM cells</b></a>;";//value 在四个表中必须都是唯一的
                diseaseCellTree1.nodes["H3K4me3_BCellLymphoma"]= "text:<a style=\"font-size:20px\"><input id=\"H4R3\" type=\"checkbox\" name=\"diseaseCelltheName\" value=\"OC-LY-1_H3K4me3_dc\"><b>OC-LY-1 cells</b></a>;";//value 在四个表中必须都是唯一的
                diseaseCellTree1.nodes["H3K4me3_SpinalAndBulbarMuscularAtrophy"]= "text:<a style=\"font-size:20px\"><input id=\"H4R3\" type=\"checkbox\" name=\"diseaseCelltheName\" value=\"SBMA iPSC_H3K4me3_dc\"><b>SBMA iPSC</b></a>;";//value 在四个表中必须都是唯一的
	diseaseCellTree1.nodes["H3K4me3_endometrialAdenoc1arcinoma"]= "text:<a style=\"font-size:20px\"><input id=\"H4R3\" type=\"checkbox\" name=\"diseaseCelltheName\" value=\"Ishikawa_H3K4me3_dc\"><b>Ishikawa cells</b></a>;";//value 在四个表中必须都是唯一的
	diseaseCellTree1.nodes["H3K4me3_endometrialAdenoc2arcinoma"]= "text:<a style=\"font-size:20px\"><input id=\"H4R3\" type=\"checkbox\" name=\"diseaseCelltheName\" value=\"JHUEM-14_H3K4me3_dc\"><b>JHUEM-14 cells</b></a>;";//value 在四个表中必须都是唯一的
	diseaseCellTree1.nodes["H3K4me3_endometrialAdenocarcinoma"]= "text:<a style=\"font-size:20px\"><input id=\"H4R3\" type=\"checkbox\" name=\"diseaseCelltheName\" value=\"HEC-1-A_H3K4me3_dc\"><b>HEC-1-A cells</b></a>;";//value 在四个表中必须都是唯一的
	diseaseCellTree1.nodes["H3K4me3_EmbryonalCarcinoma"]= "text:<a style=\"font-size:20px\"><input id=\"H4R3\" type=\"checkbox\" name=\"diseaseCelltheName\" value=\"NCCIT_H3K4me3_dc\"><b>NCCIT cells</b></a>;";//value 在四个表中必须都是唯一的
	
	diseaseCellTree1.nodes["Dis_H3K4me1"] = "text:H3K4me1;";
	diseaseCellTree1.nodes["H3K4me1_Prostat1eCarcinoma"]= "text:<a style=\"font-size:20px\"><input id=\"H4R3\" type=\"checkbox\" name=\"diseaseCelltheName\" value=\"DU145_H3K4me1_dc\"><b>DU145 cells</b></a>;";//value 在四个表中必须都是唯一的
	diseaseCellTree1.nodes["H3K4me1_ProstateCarcinoma"]= "text:<a style=\"font-size:20px\"><input id=\"H4R3\" type=\"checkbox\" name=\"diseaseCelltheName\" value=\"PC3_H3K4me1_dc\"><b>PC3 cells</b></a>;";//value 在四个表中必须都是唯一的
	diseaseCellTree1.nodes["H3K4me1_RenalCa1ncer"]= "text:<a style=\"font-size:20px\"><input id=\"H4R3\" type=\"checkbox\" name=\"diseaseCelltheName\" value=\"786-M1A_H3K4me1_dc\"><b>786-M1A cells</b></a>;";//value 在四个表中必须都是唯一的
	diseaseCellTree1.nodes["H3K4me1_RenalCancer"]= "text:<a style=\"font-size:20px\"><input id=\"H4R3\" type=\"checkbox\" name=\"diseaseCelltheName\" value=\"786-O_H3K4me1_dc\"><b>786-O cells</b></a>;";//value 在四个表中必须都是唯一的
	diseaseCellTree1.nodes["H3K4me1_Breas1tCancer"]= "text:<a style=\"font-size:20px\"><input id=\"H4R3\" type=\"checkbox\" name=\"diseaseCelltheName\" value=\"AU565_H3K4me1_dc\"><b>AU565 cells</b></a>;";//value 在四个表中必须都是唯一的
	diseaseCellTree1.nodes["H3K4me1_Breas2tCancer"]= "text:<a style=\"font-size:20px\"><input id=\"H4R3\" type=\"checkbox\" name=\"diseaseCelltheName\" value=\"HCC1937_H3K4me1_dc\"><b>HCC1937 cells</b></a>;";//value 在四个表中必须都是唯一的
	diseaseCellTree1.nodes["H3K4me1_Breas3tCancer"]= "text:<a style=\"font-size:20px\"><input id=\"H4R3\" type=\"checkbox\" name=\"diseaseCelltheName\" value=\"HCC1954_H3K4me1_dc\"><b>HCC1954 cells</b></a>;";//value 在四个表中必须都是唯一的
	diseaseCellTree1.nodes["H3K4me1_Breas4tCancer"]= "text:<a style=\"font-size:20px\"><input id=\"H4R3\" type=\"checkbox\" name=\"diseaseCelltheName\" value=\"LM2-4175_H3K4me1_dc\"><b>LM2-4175 cells</b></a>;";//value 在四个表中必须都是唯一的
	diseaseCellTree1.nodes["H3K4me1_Breast5Cancer"]= "text:<a style=\"font-size:20px\"><input id=\"H4R3\" type=\"checkbox\" name=\"diseaseCelltheName\" value=\"MB231_H3K4me1_dc\"><b>MB231 cells</b></a>;";//value 在四个表中必须都是唯一的
	diseaseCellTree1.nodes["H3K4me1_Breast6Cancer"]= "text:<a style=\"font-size:20px\"><input id=\"H4R3\" type=\"checkbox\" name=\"diseaseCelltheName\" value=\"MB361_H3K4me1_dc\"><b>MB361 cells</b></a>;";//value 在四个表中必须都是唯一的
	diseaseCellTree1.nodes["H3K4me1_Breast7Cancer"]= "text:<a style=\"font-size:20px\"><input id=\"H4R3\" type=\"checkbox\" name=\"diseaseCelltheName\" value=\"MB436_H3K4me1_dc\"><b>MB436 cells</b></a>;";//value 在四个表中必须都是唯一的
	diseaseCellTree1.nodes["H3K4me1_Breast77Cancer"]= "text:<a style=\"font-size:20px\"><input id=\"H4R3\" type=\"checkbox\" name=\"diseaseCelltheName\" value=\"MB468_H3K4me1_dc\"><b>MB468 cells</b></a>;";//value 在四个表中必须都是唯一的
	diseaseCellTree1.nodes["H3K4me1_BreastC77ancer"]= "text:<a style=\"font-size:20px\"><input id=\"H4R3\" type=\"checkbox\" name=\"diseaseCelltheName\" value=\"MCF7_H3K4me1_dc\"><b>MCF7 cells</b></a>;";//value 在四个表中必须都是唯一的
	diseaseCellTree1.nodes["H3K4me1_BreastC5ancer"]= "text:<a style=\"font-size:20px\"><input id=\"H4R3\" type=\"checkbox\" name=\"diseaseCelltheName\" value=\"MDA-MB-453_H3K4me1_dc\"><b>MDA-MB-453 cells</b></a>;";//value 在四个表中必须都是唯一的
	diseaseCellTree1.nodes["H3K4me1_BreastC4ancer"]= "text:<a style=\"font-size:20px\"><input id=\"H4R3\" type=\"checkbox\" name=\"diseaseCelltheName\" value=\"MDA-MB-231_H3K4me1_dc\"><b>MDA-MB-231 cells</b></a>;";//value 在四个表中必须都是唯一的
	diseaseCellTree1.nodes["H3K4me1_BreastC3ancer"]= "text:<a style=\"font-size:20px\"><input id=\"H4R3\" type=\"checkbox\" name=\"diseaseCelltheName\" value=\"SKBR3_H3K4me1_dc\"><b>SKBR3 cells</b></a>;";//value 在四个表中必须都是唯一的
	diseaseCellTree1.nodes["H3K4me1_BreastC2ancer"]= "text:<a style=\"font-size:20px\"><input id=\"H4R3\" type=\"checkbox\" name=\"diseaseCelltheName\" value=\"T-47D_H3K4me1_dc\"><b>T-47D cells</b></a>;";//value 在四个表中必须都是唯一的
	diseaseCellTree1.nodes["H3K4me1_Breast111Cancer"]= "text:<a style=\"font-size:20px\"><input id=\"H4R3\" type=\"checkbox\" name=\"diseaseCelltheName\" value=\"UACC812_H3K4me1_dc\"><b>UACC812 cells</b></a>;";//value 在四个表中必须都是唯一的
	diseaseCellTree1.nodes["H3K4me1_BreastC223ancer"]= "text:<a style=\"font-size:20px\"><input id=\"H4R3\" type=\"checkbox\" name=\"diseaseCelltheName\" value=\"ZR751_H3K4me1_dc\"><b>ZR751 cells</b></a>;";//value 在四个表中必须都是唯一的
	diseaseCellTree1.nodes["H3K4me1_Mveloid2Leukemia"]= "text:<a style=\"font-size:20px\"><input id=\"H4R3\" type=\"checkbox\" name=\"diseaseCelltheName\" value=\"Monomac6_H3K4me1_dc\"><b>Monomac6 cells</b></a>;";//value 在四个表中必须都是唯一的
	diseaseCellTree1.nodes["H3K4me1_Mveloid1Leukemi"]= "text:<a style=\"font-size:20px\"><input id=\"H4R3\" type=\"checkbox\" name=\"diseaseCelltheName\" value=\"K562_H3K4me1_dc\"><b>K562 cells</b></a>;";//value 在四个表中必须都是唯一的
	diseaseCellTree1.nodes["H3K4me1_MveloidLeukemi"]= "text:<a style=\"font-size:20px\"><input id=\"H4R3\" type=\"checkbox\" name=\"diseaseCelltheName\" value=\"HL-60_H3K4me1_dc\"><b>HL-60 cells</b></a>;";//value 在四个表中必须都是唯一的
	diseaseCellTree1.nodes["H3K4me1_EwingSac1roma"]= "text:<a style=\"font-size:20px\"><input id=\"H4R3\" type=\"checkbox\" name=\"diseaseCelltheName\" value=\"A673_H3K4me1_dc\"><b>A673 cells</b></a>;";//value 在四个表中必须都是唯一的
	diseaseCellTree1.nodes["H3K4me1_EwingSacroma"]= "text:<a style=\"font-size:20px\"><input id=\"H4R3\" type=\"checkbox\" name=\"diseaseCelltheName\" value=\"SKMNC_H3K4me1_dc\"><b>SKMNC cells</b></a>;";//value 在四个表中必须都是唯一的
	diseaseCellTree1.nodes["H3K4me1_BrainRhabdoidTumor"]= "text:<a style=\"font-size:20px\"><input id=\"H4R3\" type=\"checkbox\" name=\"diseaseCelltheName\" value=\"SU-DIPGXIII_H3K4me1_dc\"><b>SU-DIPGXIII cells</b></a>;";//value 在四个表中必须都是唯一的
	diseaseCellTree1.nodes["H3K4me1_Pancreat1icDuctalAdenocarcinoma"]= "text:<a style=\"font-size:20px\"><input id=\"H4R3\" type=\"checkbox\" name=\"diseaseCelltheName\" value=\"CAPAN1_H3K4me1_dc\"><b>CAPAN1 cells</b></a>;";//value 在四个表中必须都是唯一的
	diseaseCellTree1.nodes["H3K4me1_Pancreat2icDuctalAdenocarcinoma"]= "text:<a style=\"font-size:20px\"><input id=\"H4R3\" type=\"checkbox\" name=\"diseaseCelltheName\" value=\"HPAF2_H3K4me1_dc\"><b>HPAF2 cells</b></a>;";//value 在四个表中必须都是唯一的
	diseaseCellTree1.nodes["H3K4me1_PancreaticDuctalAdenocarcinoma"]= "text:<a style=\"font-size:20px\"><input id=\"H4R3\" type=\"checkbox\" name=\"diseaseCelltheName\" value=\"PT45P1_H3K4me1_dc\"><b>PT45P1 cells</b></a>;";//value 在四个表中必须都是唯一的
	diseaseCellTree1.nodes["H3K4me1_Blymphoidleukemia"]= "text:<a style=\"font-size:20px\"><input id=\"H4R3\" type=\"checkbox\" name=\"diseaseCelltheName\" value=\"SEM_H3K4me1_dc\"><b>SEM cells</b></a>;";//value 在四个表中必须都是唯一的
	diseaseCellTree1.nodes["H3K4me1_SpinalAndBulbarMuscularAtrophy"]= "text:<a style=\"font-size:20px\"><input id=\"H4R3\" type=\"checkbox\" name=\"diseaseCelltheName\" value=\"SBMA iPSC_H3K4me1_dc\"><b>SBMA iPSC</b></a>;";//value 在四个表中必须都是唯一的
	diseaseCellTree1.nodes["H3K4me1_endometri1alAdenocarcinoma"]= "text:<a style=\"font-size:20px\"><input id=\"H4R3\" type=\"checkbox\" name=\"diseaseCelltheName\" value=\"Ishikawa_H3K4me1_dc\"><b>Ishikawa cells</b></a>;";//value 在四个表中必须都是唯一的
	diseaseCellTree1.nodes["H3K4me1_endometr2ialAdenocarcinoma"]= "text:<a style=\"font-size:20px\"><input id=\"H4R3\" type=\"checkbox\" name=\"diseaseCelltheName\" value=\"JHUEM-14_H3K4me1_dc\"><b>JHUEM-14 cells</b></a>;";//value 在四个表中必须都是唯一的
	diseaseCellTree1.nodes["H3K4me1_idiopatheticPulmonaryFibrosis"]= "text:<a style=\"font-size:20px\"><input id=\"H4R3\" type=\"checkbox\" name=\"diseaseCelltheName\" value=\"Human Lung Fibroblasts IPF_H3K4me1_dc\"><b>lung fibroblasts IPF cells</b></a>;";//value 在四个表中必须都是唯一的
	
	diseaseCellTree1.nodes["Dis_H3K4ac"] =  "text:H3K4ac;";
	diseaseCellTree1.nodes["H3K4ac_BreastCancer"]= "text:<a style=\"font-size:20px\"><input id=\"H4R3\" type=\"checkbox\" name=\"diseaseCelltheName\" value=\"MCF7_H3K4ac_dc\"><b>MCF7 cells</b></a>;";//value 在四个表中必须都是唯一的
	
	diseaseCellTree1.nodes["Dis_H3K9ac"] =  "text:H3K9ac;";
	diseaseCellTree1.nodes["H3K9ac_hepatitisC"]= "text:<a style=\"font-size:20px\"><input id=\"H4R3\" type=\"checkbox\" name=\"diseaseCelltheName\" value=\"HCV infected Huh-7.5 cells_H3K9ac_dc\"><b>HCV infected Huh-7.5 cells</b></a>;";//value 在四个表中必须都是唯一的
	diseaseCellTree1.nodes["H3K9ac_RenalCancer"]= "text:<a style=\"font-size:20px\"><input id=\"H4R3\" type=\"checkbox\" name=\"diseaseCelltheName\" value=\"786-O_H3K9ac_dc\"><b>786-O cells</b></a>;";//value 在四个表中必须都是唯一的
	
	diseaseCellTree1.nodes["Dis_H3K9me3"] = "text:H3K9me3;";
	diseaseCellTree1.nodes["H3K9me3_hepatitisC"]= "text:<a style=\"font-size:20px\"><input id=\"H4R3\" type=\"checkbox\" name=\"diseaseCelltheName\" value=\"HCV infected Huh-7.5 cells_H3K9me3_dc\"><b>HCV infected Huh-7.5 cells</b></a>;";//value 在四个表中必须都是唯一的
    	diseaseCellTree1.nodes["H3K9me3_ProstateCarcinoma"]= "text:<a style=\"font-size:20px\"><input id=\"H4R3\" type=\"checkbox\" name=\"diseaseCelltheName\" value=\"22Rv1_H3K9me3_dc\"><b>HCV infected Huh-7.5 cells</b></a>;";//value 在四个表中必须都是唯一的
	diseaseCellTree1.nodes["H3K9me3_Breast1Cancer"]= "text:<a style=\"font-size:20px\"><input id=\"H4R3\" type=\"checkbox\" name=\"diseaseCelltheName\" value=\"AU565_H3K9me3_dc\"><b>AU565 cells</b></a>;";//value 在四个表中必须都是唯一的
	diseaseCellTree1.nodes["H3K9me3_Breast2Cancer"]= "text:<a style=\"font-size:20px\"><input id=\"H4R3\" type=\"checkbox\" name=\"diseaseCelltheName\" value=\"HCC1937_H3K9me3_dc\"><b>HCC1937 cells</b></a>;";//value 在四个表中必须都是唯一的
	diseaseCellTree1.nodes["H3K9me3_Breast3Cancer"]= "text:<a style=\"font-size:20px\"><input id=\"H4R3\" type=\"checkbox\" name=\"diseaseCelltheName\" value=\"HCC1954_H3K9me3_dc\"><b>HCC1954 cells</b></a>;";//value 在四个表中必须都是唯一的
	diseaseCellTree1.nodes["H3K9me3_BreastC4ancer"]= "text:<a style=\"font-size:20px\"><input id=\"H4R3\" type=\"checkbox\" name=\"diseaseCelltheName\" value=\"LM2-4175_H3K9me3_dc\"><b>LM2-4175 cells</b></a>;";//value 在四个表中必须都是唯一的
	diseaseCellTree1.nodes["H3K9me3_Breast5Cancer"]= "text:<a style=\"font-size:20px\"><input id=\"H4R3\" type=\"checkbox\" name=\"diseaseCelltheName\" value=\"MB231_H3K9me3_dc\"><b>MB231 cells</b></a>;";//value 在四个表中必须都是唯一的
	diseaseCellTree1.nodes["H3K9me3_Breast6Cancer"]= "text:<a style=\"font-size:20px\"><input id=\"H4R3\" type=\"checkbox\" name=\"diseaseCelltheName\" value=\"MB361_H3K9me3_dc\"><b>MB361 cells</b></a>;";//value 在四个表中必须都是唯一的
	diseaseCellTree1.nodes["H3K9me3_BreastCa7ncer"]= "text:<a style=\"font-size:20px\"><input id=\"H4R3\" type=\"checkbox\" name=\"diseaseCelltheName\" value=\"MB436_H3K9me3_dc\"><b>MB436 cells</b></a>;";//value 在四个表中必须都是唯一的
	diseaseCellTree1.nodes["H3K9me3_BreastCa8ncer"]= "text:<a style=\"font-size:20px\"><input id=\"H4R3\" type=\"checkbox\" name=\"diseaseCelltheName\" value=\"MB468_H3K9me3_dc\"><b>MB468 cells</b></a>;";//value 在四个表中必须都是唯一的
	diseaseCellTree1.nodes["H3K9me3_Breast55Cancer"]= "text:<a style=\"font-size:20px\"><input id=\"H4R3\" type=\"checkbox\" name=\"diseaseCelltheName\" value=\"MCF7_H3K9me3_dc\"><b>MCF7 cells</b></a>;";//value 在四个表中必须都是唯一的
	diseaseCellTree1.nodes["H3K9me3_Breast555Cancer"]= "text:<a style=\"font-size:20px\"><input id=\"H4R3\" type=\"checkbox\" name=\"diseaseCelltheName\" value=\"MDA-MB-231_H3K9me3_dc\"><b>MDA-MB-231 cells</b></a>;";//value 在四个表中必须都是唯一的
	diseaseCellTree1.nodes["H3K9me3_Breast11Cancer"]= "text:<a style=\"font-size:20px\"><input id=\"H4R3\" type=\"checkbox\" name=\"diseaseCelltheName\" value=\"SKBR3_H3K9me3_dc\"><b>SKBR3 cells</b></a>;";//value 在四个表中必须都是唯一的
	diseaseCellTree1.nodes["H3K9me3_Brea11stCancer"]= "text:<a style=\"font-size:20px\"><input id=\"H4R3\" type=\"checkbox\" name=\"diseaseCelltheName\" value=\"T-47D_H3K9me3_dc\"><b>T-47D cells</b></a>;";//value 在四个表中必须都是唯一的
	diseaseCellTree1.nodes["H3K9me3_Bre11astCancer"]= "text:<a style=\"font-size:20px\"><input id=\"H4R3\" type=\"checkbox\" name=\"diseaseCelltheName\" value=\"UACC812_H3K9me3_dc\"><b>UACC812 cells</b></a>;";//value 在四个表中必须都是唯一的
	diseaseCellTree1.nodes["H3K9me3_B11reastCancer"]= "text:<a style=\"font-size:20px\"><input id=\"H4R3\" type=\"checkbox\" name=\"diseaseCelltheName\" value=\"ZR751_H3K9me3_dc\"><b>ZR751 cells</b></a>;";//value 在四个表中必须都是唯一的
	diseaseCellTree1.nodes["H3K9me3_EmbryonalCarcinoma"]= "text:<a style=\"font-size:20px\"><input id=\"H4R3\" type=\"checkbox\" name=\"diseaseCelltheName\" value=\"NCCIT_H3K9me3_dc\"><b>NCCIT cells</b></a>;";//value 在四个表中必须都是唯一的
	
diseaseCellTree1.nodes["Dis_H3K27me3"] ="text:H3K27me3;";
 	diseaseCellTree1.nodes["H3K27me3_j"]= "text:<a style=\"font-size:20px\"><input id=\"H4R3\" type=\"checkbox\" name=\"diseaseCelltheName\" value=\"HCV infected Huh-7.5 cells_H3K27me3_dc\"><b>HCV infected Huh-7.5 cells</b></a>;";//value 在四个表中必须都是唯一的
	diseaseCellTree1.nodes["H3K27me3_2"]= "text:<a style=\"font-size:20px\"><input id=\"H4R3\" type=\"checkbox\" name=\"diseaseCelltheName\" value=\"HeLa_H3K27me3_dc\"><b>HeLa cells</b></a>;";//value 在四个表中必须都是唯一的
	diseaseCellTree1.nodes["H3K27me3_3"]= "text:<a style=\"font-size:20px\"><input id=\"H4R3\" type=\"checkbox\" name=\"diseaseCelltheName\" value=\"22Rv1_H3K27me3_dc\"><b>22Rv1 cells</b></a>;";//value 在四个表中必须都是唯一的
	diseaseCellTree1.nodes["H3K27me3_4"]= "text:<a style=\"font-size:20px\"><input id=\"H4R3\" type=\"checkbox\" name=\"diseaseCelltheName\" value=\"DU145_H3K27me3_dc\"><b>DU145 cells</b></a>;";//value 在四个表中必须都是唯一的
	diseaseCellTree1.nodes["H3K27me3_5"]= "text:<a style=\"font-size:20px\"><input id=\"H4R3\" type=\"checkbox\" name=\"diseaseCelltheName\" value=\"PC3_H3K27me3_dc\"><b>PC3 cells</b></a>;";//value 在四个表中必须都是唯一的
	diseaseCellTree1.nodes["H3K27me3_6"]= "text:<a style=\"font-size:20px\"><input id=\"H4R3\" type=\"checkbox\" name=\"diseaseCelltheName\" value=\"OS-RC2_H3K27me3_dc\"><b>OS-RC2 cells</b></a>;";//value 在四个表中必须都是唯一的
	diseaseCellTree1.nodes["H3K27me3_8"]= "text:<a style=\"font-size:20px\"><input id=\"H4R3\" type=\"checkbox\" name=\"diseaseCelltheName\" value=\"786-O_H3K27me3_dc\"><b>786-O cells</b></a>;";//value 在四个表中必须都是唯一的
	diseaseCellTree1.nodes["H3K27me3_9"]= "text:<a style=\"font-size:20px\"><input id=\"H4R3\" type=\"checkbox\" name=\"diseaseCelltheName\" value=\"AU565_H3K27me3_dc\"><b>AU565 cells</b></a>;";//value 在四个表中必须都是唯一的
	diseaseCellTree1.nodes["H3K27me3_10"]= "text:<a style=\"font-size:20px\"><input id=\"H4R3\" type=\"checkbox\" name=\"diseaseCelltheName\" value=\"HCC1937_H3K27me3_dc\"><b>HCC1937 cells</b></a>;";//value 在四个表中必须都是唯一的
	diseaseCellTree1.nodes["H3K27me3_11"]= "text:<a style=\"font-size:20px\"><input id=\"H4R3\" type=\"checkbox\" name=\"diseaseCelltheName\" value=\"HCC1954_H3K27me3_dc\"><b>HCC1954 cells</b></a>;";//value 在四个表中必须都是唯一的
	diseaseCellTree1.nodes["H3K27me3_12"]= "text:<a style=\"font-size:20px\"><input id=\"H4R3\" type=\"checkbox\" name=\"diseaseCelltheName\" value=\"LM2-4175_H3K27me3_dc\"><b>LM2-4175 cells</b></a>;";//value 在四个表中必须都是唯一的
	diseaseCellTree1.nodes["H3K27me3_13"]= "text:<a style=\"font-size:20px\"><input id=\"H4R3\" type=\"checkbox\" name=\"diseaseCelltheName\" value=\"MB231_H3K27me3_dc\"><b>MB231 cells</b></a>;";//value 在四个表中必须都是唯一的
	diseaseCellTree1.nodes["H3K27me3_14"]= "text:<a style=\"font-size:20px\"><input id=\"H4R3\" type=\"checkbox\" name=\"diseaseCelltheName\" value=\"MB361_H3K27me3_dc\"><b>MB361 cells</b></a>;";//value 在四个表中必须都是唯一的
	diseaseCellTree1.nodes["H3K27me3_15"]= "text:<a style=\"font-size:20px\"><input id=\"H4R3\" type=\"checkbox\" name=\"diseaseCelltheName\" value=\"MB436_H3K27me3_dc\"><b>MB436 cells</b></a>;";//value 在四个表中必须都是唯一的
	diseaseCellTree1.nodes["H3K27me3_16"]= "text:<a style=\"font-size:20px\"><input id=\"H4R3\" type=\"checkbox\" name=\"diseaseCelltheName\" value=\"MB468_H3K27me3_dc\"><b>MB468 cells</b></a>;";//value 在四个表中必须都是唯一的
	diseaseCellTree1.nodes["H3K27me3_17"]= "text:<a style=\"font-size:20px\"><input id=\"H4R3\" type=\"checkbox\" name=\"diseaseCelltheName\" value=\"MCF7_H3K27me3_dc\"><b>MCF7 cells</b></a>;";//value 在四个表中必须都是唯一的
	diseaseCellTree1.nodes["H3K27me3_18"]= "text:<a style=\"font-size:20px\"><input id=\"H4R3\" type=\"checkbox\" name=\"diseaseCelltheName\" value=\"MDA-MB-453_H3K27me3_dc\"><b>MDA-MB-453 cells</b></a>;";//value 在四个表中必须都是唯一的
	diseaseCellTree1.nodes["H3K27me3_19"]= "text:<a style=\"font-size:20px\"><input id=\"H4R3\" type=\"checkbox\" name=\"diseaseCelltheName\" value=\"MDA-MB-231_H3K27me3_dc\"><b>MDA-MB-231 cells</b></a>;";//value 在四个表中必须都是唯一的
	diseaseCellTree1.nodes["H3K27me3_20"]= "text:<a style=\"font-size:20px\"><input id=\"H4R3\" type=\"checkbox\" name=\"diseaseCelltheName\" value=\"SKBR3_H3K27me3_dc\"><b>SKBR3 cells</b></a>;";//value 在四个表中必须都是唯一的
	diseaseCellTree1.nodes["H3K27me3_21"]= "text:<a style=\"font-size:20px\"><input id=\"H4R3\" type=\"checkbox\" name=\"diseaseCelltheName\" value=\"T-47D_H3K27me3_dc\"><b>T-47D cells</b></a>;";//value 在四个表中必须都是唯一的
	diseaseCellTree1.nodes["H3K27me3_22"]= "text:<a style=\"font-size:20px\"><input id=\"H4R3\" type=\"checkbox\" name=\"diseaseCelltheName\" value=\"UACC812_H3K27me3_dc\"><b>UACC812 cells</b></a>;";//value 在四个表中必须都是唯一的
	diseaseCellTree1.nodes["H3K27me3_23"]= "text:<a style=\"font-size:20px\"><input id=\"H4R3\" type=\"checkbox\" name=\"diseaseCelltheName\" value=\"ZR751_H3K27me3_dc\"><b>ZR751 cells</b></a>;";//value 在四个表中必须都是唯一的
	diseaseCellTree1.nodes["H3K27me3_24"]= "text:<a style=\"font-size:20px\"><input id=\"H4R3\" type=\"checkbox\" name=\"diseaseCelltheName\" value=\"DND-41_H3K27me3_dc\"><b>DND-41 cells</b></a>;";//value 在四个表中必须都是唯一的
	diseaseCellTree1.nodes["H3K27me3_25"]= "text:<a style=\"font-size:20px\"><input id=\"H4R3\" type=\"checkbox\" name=\"diseaseCelltheName\" value=\"KOPT-K1_H3K27me3_dc\"><b>KOPT-K1 cells</b></a>;";//value 在四个表中必须都是唯一的
	diseaseCellTree1.nodes["H3K27me3_26"]= "text:<a style=\"font-size:20px\"><input id=\"H4R3\" type=\"checkbox\" name=\"diseaseCelltheName\" value=\"A673_H3K27me3_dc\"><b>A673 cells</b></a>;";//value 在四个表中必须都是唯一的
	diseaseCellTree1.nodes["H3K27me3_27"]= "text:<a style=\"font-size:20px\"><input id=\"H4R3\" type=\"checkbox\" name=\"diseaseCelltheName\" value=\"SKMNC_H3K27me3_dc\"><b>SKMNC cells</b></a>;";//value 在四个表中必须都是唯一的
	diseaseCellTree1.nodes["H3K27me3_28"]= "text:<a style=\"font-size:20px\"><input id=\"H4R3\" type=\"checkbox\" name=\"diseaseCelltheName\" value=\"SU-DIPGXIII_H3K27me3_dc\"><b>SU-DIPGXIII cells</b></a>;";//value 在四个表中必须都是唯一的
	diseaseCellTree1.nodes["H3K27me3_29"]= "text:<a style=\"font-size:20px\"><input id=\"H4R3\" type=\"checkbox\" name=\"diseaseCelltheName\" value=\"HEMa_H3K27me3_dc\"><b>HEMa cells</b></a>;";//value 在四个表中必须都是唯一的
	diseaseCellTree1.nodes["H3K27me3_30"]= "text:<a style=\"font-size:20px\"><input id=\"H4R3\" type=\"checkbox\" name=\"diseaseCelltheName\" value=\"HEMn_H3K27me3_dc\"><b>HEMn cells</b></a>;";//value 在四个表中必须都是唯一的
	diseaseCellTree1.nodes["H3K27me3_31"]= "text:<a style=\"font-size:20px\"><input id=\"H4R3\" type=\"checkbox\" name=\"diseaseCelltheName\" value=\"LOXIMVI_H3K27me3_dc\"><b>LOXIMVI cells</b></a>;";//value 在四个表中必须都是唯一的
	diseaseCellTree1.nodes["H3K27me3_32"]= "text:<a style=\"font-size:20px\"><input id=\"H4R3\" type=\"checkbox\" name=\"diseaseCelltheName\" value=\"SK-MEL-28_H3K27me3_dc\"><b>SK-MEL-28 cells</b></a>;";//value 在四个表中必须都是唯一的
	diseaseCellTree1.nodes["H3K27me3_33"]= "text:<a style=\"font-size:20px\"><input id=\"H4R3\" type=\"checkbox\" name=\"diseaseCelltheName\" value=\"WM115_H3K27me3_dc\"><b>WM115 cells</b></a>;";//value 在四个表中必须都是唯一的
	diseaseCellTree1.nodes["H3K27me3_34"]= "text:<a style=\"font-size:20px\"><input id=\"H4R3\" type=\"checkbox\" name=\"diseaseCelltheName\" value=\"WM266-4_H3K27me3_dc\"><b>WM266-4 cells</b></a>;";//value 在四个表中必须都是唯一的
	diseaseCellTree1.nodes["H3K27me3_35"]= "text:<a style=\"font-size:20px\"><input id=\"H4R3\" type=\"checkbox\" name=\"diseaseCelltheName\" value=\"CB660_H3K27me3_dc\"><b>CB660 cells</b></a>;";//value 在四个表中必须都是唯一的
	diseaseCellTree1.nodes["H3K27me3_36"]= "text:<a style=\"font-size:20px\"><input id=\"H4R3\" type=\"checkbox\" name=\"diseaseCelltheName\" value=\"H1_H3K27me3_dc\"><b>H1 cells</b></a>;";//value 在四个表中必须都是唯一的
	diseaseCellTree1.nodes["H3K27me3_37"]= "text:<a style=\"font-size:20px\"><input id=\"H4R3\" type=\"checkbox\" name=\"diseaseCelltheName\" value=\"SU-DIPG-IV_H3K27me3_dc\"><b>SU-DIPG-IV cells</b></a>;";//value 在四个表中必须都是唯一的
	diseaseCellTree1.nodes["H3K27me3_38"]= "text:<a style=\"font-size:20px\"><input id=\"H4R3\" type=\"checkbox\" name=\"diseaseCelltheName\" value=\"U5_H3K27me3_dc\"><b>U5 cells</b></a>;";//value 在四个表中必须都是唯一的
	diseaseCellTree1.nodes["H3K27me3_39"]= "text:<a style=\"font-size:20px\"><input id=\"H4R3\" type=\"checkbox\" name=\"diseaseCelltheName\" value=\"VUMC_H3K27me3_dc\"><b>VUMC cells</b></a>;";//value 在四个表中必须都是唯一的
	
	diseaseCellTree1.nodes["Dis_H3K27ac"] = "text:H3K27ac;";
	diseaseCellTree.nodes["H3K27ac_CervicalCarcinoma"]= "text:<a style=\"font-size:20px\"><input id=\"H4R3\" type=\"checkbox\" name=\"diseaseCelltheName\" value=\"HeLa_H3K27ac_dc\"><b>HeLa cells</b></a>;";//value 在四个表中必须都是唯一的
	diseaseCellTree1.nodes["H3K27ac_Prost1ateCarcinoma"]= "text:<a style=\"font-size:20px\"><input id=\"H4R3\" type=\"checkbox\" name=\"diseaseCelltheName\" value=\"22Rv1_H3K27ac_dc\"><b>22Rv1 cells</b></a>;";//value 在四个表中必须都是唯一的
	diseaseCellTree1.nodes["H3K27ac_ProstateCarcinoma"]= "text:<a style=\"font-size:20px\"><input id=\"H4R3\" type=\"checkbox\" name=\"diseaseCelltheName\" value=\"PC3_H3K27ac_dc\"><b>PC3 cells</b></a>;";//value 在四个表中必须都是唯一的
	diseaseCellTree1.nodes["H3K27ac_Renal1Cancer"]= "text:<a style=\"font-size:20px\"><input id=\"H4R3\" type=\"checkbox\" name=\"diseaseCelltheName\" value=\"786-M1A_H3K27ac_dc\"><b>786-M1A cells</b></a>;";//value 在四个表中必须都是唯一的
	diseaseCellTree1.nodes["H3K27ac_Ren1alCancer"]= "text:<a style=\"font-size:20px\"><input id=\"H4R3\" type=\"checkbox\" name=\"diseaseCelltheName\" value=\"786-O_H3K27ac_dc\"><b>786-O cells</b></a>;";//value 在四个表中必须都是唯一的
	diseaseCellTree1.nodes["H3K27ac_Rena1lCancer"]= "text:<a style=\"font-size:20px\"><input id=\"H4R3\" type=\"checkbox\" name=\"diseaseCelltheName\" value=\"OS-LM1_H3K27ac_dc\"><b>OS-LM1 cells</b></a>;";//value 在四个表中必须都是唯一的
	diseaseCellTree1.nodes["H3K27ac_Re1nalCancer"]= "text:<a style=\"font-size:20px\"><input id=\"H4R3\" type=\"checkbox\" name=\"diseaseCelltheName\" value=\"OS-RC2_H3K27ac_dc\"><b>OS-RC2 cells</b></a>;";//value 在四个表中必须都是唯一的
	diseaseCellTree1.nodes["H3K27ac_1BreastCancer"]= "text:<a style=\"font-size:20px\"><input id=\"H4R3\" type=\"checkbox\" name=\"diseaseCelltheName\" value=\"AU565_H3K27ac_dc\"><b>AU565 cells</b></a>;";//value 在四个表中必须都是唯一的
	diseaseCellTree1.nodes["H3K27ac_2BreastCancer"]= "text:<a style=\"font-size:20px\"><input id=\"H4R3\" type=\"checkbox\" name=\"diseaseCelltheName\" value=\"HCC1937_H3K27ac_dc\"><b>HCC1937 cells</b></a>;";//value 在四个表中必须都是唯一的
	diseaseCellTree1.nodes["H3K27ac_3BreastCancer"]= "text:<a style=\"font-size:20px\"><input id=\"H4R3\" type=\"checkbox\" name=\"diseaseCelltheName\" value=\"HCC1954_H3K27ac_dc\"><b>HCC1954 cells</b></a>;";//value 在四个表中必须都是唯一的
	diseaseCellTree1.nodes["H3K27ac_4BreastCancer"]= "text:<a style=\"font-size:20px\"><input id=\"H4R3\" type=\"checkbox\" name=\"diseaseCelltheName\" value=\"LM2-4175_H3K27ac_dc\"><b>LM2-4175 cells</b></a>;";//value 在四个表中必须都是唯一的
	diseaseCellTree1.nodes["H3K27ac_5BreastCancer"]= "text:<a style=\"font-size:20px\"><input id=\"H4R3\" type=\"checkbox\" name=\"diseaseCelltheName\" value=\"MB231_H3K27ac_dc\"><b>MB231 cells</b></a>;";//value 在四个表中必须都是唯一的
	diseaseCellTree1.nodes["H3K27ac_6BreastCancer"]= "text:<a style=\"font-size:20px\"><input id=\"H4R3\" type=\"checkbox\" name=\"diseaseCelltheName\" value=\"MB361_H3K27ac_dc\"><b>MB361 cells</b></a>;";//value 在四个表中必须都是唯一的
	diseaseCellTree1.nodes["H3K27ac_7BreastCancer"]= "text:<a style=\"font-size:20px\"><input id=\"H4R3\" type=\"checkbox\" name=\"diseaseCelltheName\" value=\"MB436_H3K27ac_dc\"><b>MB436 cells</b></a>;";//value 在四个表中必须都是唯一的
	diseaseCellTree1.nodes["H3K27ac_8BreastCancer"]= "text:<a style=\"font-size:20px\"><input id=\"H4R3\" type=\"checkbox\" name=\"diseaseCelltheName\" value=\"MB468_H3K27ac_dc\"><b>MB468 cells</b></a>;";//value 在四个表中必须都是唯一的
	diseaseCellTree1.nodes["H3K27ac_9BreastCancer"]= "text:<a style=\"font-size:20px\"><input id=\"H4R3\" type=\"checkbox\" name=\"diseaseCelltheName\" value=\"MCF7_H3K27ac_dc\"><b>MCF7 cells</b></a>;";//value 在四个表中必须都是唯一的
	diseaseCellTree1.nodes["H3K27ac_11BreastCancer"]= "text:<a style=\"font-size:20px\"><input id=\"H4R3\" type=\"checkbox\" name=\"diseaseCelltheName\" value=\"MDA-MB-453_H3K27ac_dc\"><b>MDA-MB-453 cells</b></a>;";//value 在四个表中必须都是唯一的
	diseaseCellTree1.nodes["H3K27ac_22BreastCancer"]= "text:<a style=\"font-size:20px\"><input id=\"H4R3\" type=\"checkbox\" name=\"diseaseCelltheName\" value=\"MDA-MB-231_H3K27ac_dc\"><b>MDA-MB-231 cells</b></a>;";//value 在四个表中必须都是唯一的
	diseaseCellTree1.nodes["H3K27ac_33BreastCancer"]= "text:<a style=\"font-size:20px\"><input id=\"H4R3\" type=\"checkbox\" name=\"diseaseCelltheName\" value=\"SKBR3_H3K27ac_dc\"><b>SKBR3 cells</b></a>;";//value 在四个表中必须都是唯一的
	diseaseCellTree1.nodes["H3K27ac_44BreastCancer"]= "text:<a style=\"font-size:20px\"><input id=\"H4R3\" type=\"checkbox\" name=\"diseaseCelltheName\" value=\"T-47D_H3K27ac_dc\"><b>T-47D cells</b></a>;";//value 在四个表中必须都是唯一的
	diseaseCellTree1.nodes["H3K27ac_55BreastCancer"]= "text:<a style=\"font-size:20px\"><input id=\"H4R3\" type=\"checkbox\" name=\"diseaseCelltheName\" value=\"UACC812_H3K27ac_dc\"><b>UACC812 cells</b></a>;";//value 在四个表中必须都是唯一的
	diseaseCellTree1.nodes["H3K27ac_66BreastCancer"]= "text:<a style=\"font-size:20px\"><input id=\"H4R3\" type=\"checkbox\" name=\"diseaseCelltheName\" value=\"ZR751_H3K27ac_dc\"><b>ZR751 cells</b></a>;";//value 在四个表中必须都是唯一的
	diseaseCellTree1.nodes["H3K27ac_Mveloi1dLeukemi"]= "text:<a style=\"font-size:20px\"><input id=\"H4R3\" type=\"checkbox\" name=\"diseaseCelltheName\" value=\"AML cells_H3K27ac_dc\"><b>Acute myeloid leukemia cells</b></a>;";//value 在四个表中必须都是唯一的
	diseaseCellTree1.nodes["H3K27ac_Mvel2oidLeukemi"]= "text:<a style=\"font-size:20px\"><input id=\"H4R3\" type=\"checkbox\" name=\"diseaseCelltheName\" value=\"HL-60_H3K27ac_dc\"><b>HL-60 cells</b></a>;";//value 在四个表中必须都是唯一的
	diseaseCellTree1.nodes["H3K27ac_Mvel1oidLeukemi"]= "text:<a style=\"font-size:20px\"><input id=\"H4R3\" type=\"checkbox\" name=\"diseaseCelltheName\" value=\"K562_H3K27ac_dc\"><b>K562 cells</b></a>;";//value 在四个表中必须都是唯一的
	diseaseCellTree1.nodes["H3K27ac_Mveloid0Leukemi"]= "text:<a style=\"font-size:20px\"><input id=\"H4R3\" type=\"checkbox\" name=\"diseaseCelltheName\" value=\"KBM7_H3K27ac_dc\"><b>KBM7 cells</b></a>;";//value 在四个表中必须都是唯一的
	diseaseCellTree1.nodes["H3K27ac_Mveloid9Leukemi"]= "text:<a style=\"font-size:20px\"><input id=\"H4R3\" type=\"checkbox\" name=\"diseaseCelltheName\" value=\"Molm13_H3K27ac_dc\"><b>Molm13 cells</b></a>;";//value 在四个表中必须都是唯一的
	diseaseCellTree1.nodes["H3K27ac_Mveloid9Leukemi"]= "text:<a style=\"font-size:20px\"><input id=\"H4R3\" type=\"checkbox\" name=\"diseaseCelltheName\" value=\"Monomac6_H3K27ac_dc\"><b>Monomac6 cells</b></a>;";//value 在四个表中必须都是唯一的
	diseaseCellTree1.nodes["H3K27ac_Mveloid7Leukemi"]= "text:<a style=\"font-size:20px\"><input id=\"H4R3\" type=\"checkbox\" name=\"diseaseCelltheName\" value=\"OCI AML3_H3K27ac_dc\"><b>OCI AML3 cells</b></a>;";//value 在四个表中必须都是唯一的
	diseaseCellTree1.nodes["H3K27ac_TCellLeuk0emia"]= "text:<a style=\"font-size:20px\"><input id=\"H4R3\" type=\"checkbox\" name=\"diseaseCelltheName\" value=\"DND-41_H3K27ac_dc\"><b>DND-41 cells</b></a>;";//value 在四个表中必须都是唯一的
	diseaseCellTree1.nodes["H3K27ac_TCellLeuk00emia"]= "text:<a style=\"font-size:20px\"><input id=\"H4R3\" type=\"checkbox\" name=\"diseaseCelltheName\" value=\"KOPT-K1_H3K27ac_dc\"><b>KOPT-K1 cells</b></a>;";//value 在四个表中必须都是唯一的
	diseaseCellTree1.nodes["H3K27ac_TCellLeuk000emia"]= "text:<a style=\"font-size:20px\"><input id=\"H4R3\" type=\"checkbox\" name=\"diseaseCelltheName\" value=\"TL-Om1_H3K27ac_dc\"><b>TL-Om1 cells</b></a>;";//value 在四个表中必须都是唯一的
	diseaseCellTree1.nodes["H3K27ac_EwingSacr7oma"]= "text:<a style=\"font-size:20px\"><input id=\"H4R3\" type=\"checkbox\" name=\"diseaseCelltheName\" value=\"A673_H3K27ac_dc\"><b>A673 cells</b></a>;";//value 在四个表中必须都是唯一的
	diseaseCellTree1.nodes["H3K27ac_EwingSacroma"]= "text:<a style=\"font-size:20px\"><input id=\"H4R3\" type=\"checkbox\" name=\"diseaseCelltheName\" value=\"SKMNC_H3K27ac_dc\"><b>SKMNC cells</b></a>;";//value 在四个表中必须都是唯一的
	diseaseCellTree1.nodes["H3K27ac_BrainRhabdoidTumor"]= "text:<a style=\"font-size:20px\"><input id=\"H4R3\" type=\"checkbox\" name=\"diseaseCelltheName\" value=\"SU-DIPGXIII_H3K27ac_dc\"><b>SU-DIPGXIII cells</b></a>;";//value 在四个表中必须都是唯一的
	diseaseCellTree1.nodes["H3K27ac_Pancreati1cDuctalAdenocarcinoma"]= "text:<a style=\"font-size:20px\"><input id=\"H4R3\" type=\"checkbox\" name=\"diseaseCelltheName\" value=\"PANC1_H3K27ac_dc\"><b>PANC1 cells</b></a>;";//value 在四个表中必须都是唯一的
	diseaseCellTree1.nodes["H3K27ac_Pancreati2cDuctalAdenocarcinoma"]= "text:<a style=\"font-size:20px\"><input id=\"H4R3\" type=\"checkbox\" name=\"diseaseCelltheName\" value=\"CAPAN2_H3K27ac_dc\"><b>CAPAN2 cells</b></a>;";//value 在四个表中必须都是唯一的
	diseaseCellTree1.nodes["H3K27ac_PancreaticDuctalAdenocarcinoma"]= "text:<a style=\"font-size:20px\"><input id=\"H4R3\" type=\"checkbox\" name=\"diseaseCelltheName\" value=\"PT45P1_H3K27ac_dc\"><b>PT45P1 cells</b></a>;";//value 在四个表中必须都是唯一的
	diseaseCellTree1.nodes["H3K27ac_BCellLymphoma"]= "text:<a style=\"font-size:20px\"><input id=\"H4R3\" type=\"checkbox\" name=\"diseaseCelltheName\" value=\"DOHH2_H3K27ac_dc\"><b>DOHH2 cells</b></a>;";//value 在四个表中必须都是唯一的
                diseaseCellTree1.nodes["H3K27ac_BCellLymp1homa"]= "text:<a style=\"font-size:20px\"><input id=\"H4R3\" type=\"checkbox\" name=\"diseaseCelltheName\" value=\"GRANTA-519_H3K27ac_dc\"><b>GRANTA-519 cells</b></a>;";//value 在四个表中必须都是唯一的
                diseaseCellTree1.nodes["H3K27ac_BCellLym3phoma"]= "text:<a style=\"font-size:20px\"><input id=\"H4R3\" type=\"checkbox\" name=\"diseaseCelltheName\" value=\"JEKO-1_H3K27ac_dc\"><b>JEKO-1 cells</b></a>;";//value 在四个表中必须都是唯一的
                diseaseCellTree1.nodes["H3K27ac_BCellLym2phoma"]= "text:<a style=\"font-size:20px\"><input id=\"H4R3\" type=\"checkbox\" name=\"diseaseCelltheName\" value=\"MINO_H3K27ac_dc\"><b>TMINO cells</b></a>;";//value 在四个表中必须都是唯一的
                diseaseCellTree1.nodes["H3K27ac_BCellLymp22homa"]= "text:<a style=\"font-size:20px\"><input id=\"H4R3\" type=\"checkbox\" name=\"diseaseCelltheName\" value=\"OCI-LY-1_H3K27ac_dc\"><b>OCI-LY-1 cells</b></a>;";//value 在四个表中必须都是唯一的
                diseaseCellTree1.nodes["H3K27ac_BCellLymph33oma"]= "text:<a style=\"font-size:20px\"><input id=\"H4R3\" type=\"checkbox\" name=\"diseaseCelltheName\" value=\"OCI-LY-7_H3K27ac_dc\"><b>OCI-LY-7 cells</b></a>;";//value 在四个表中必须都是唯一的
                diseaseCellTree1.nodes["H3K27ac_BCellLym1phoma"]= "text:<a style=\"font-size:20px\"><input id=\"H4R3\" type=\"checkbox\" name=\"diseaseCelltheName\" value=\"PFEIFFER_H3K27ac_dc\"><b>PFEIFFER cells</b></a>;";//value 在四个表中必须都是唯一的
                diseaseCellTree1.nodes["H3K27ac_BCellLymph331oma"]= "text:<a style=\"font-size:20px\"><input id=\"H4R3\" type=\"checkbox\" name=\"diseaseCelltheName\" value=\"REC-1_H3K27ac_dc\"><b>REC-1 cells</b></a>;";//value 在四个表中必须都是唯一的
                diseaseCellTree1.nodes["H3K27ac_BCellLymph121oma"]= "text:<a style=\"font-size:20px\"><input id=\"H4R3\" type=\"checkbox\" name=\"diseaseCelltheName\" value=\"SUDHL-4_H3K27ac_dc\"><b>SUDHL-4 cells</b></a>;";//value 在四个表中必须都是唯一的
                diseaseCellTree1.nodes["H3K27ac_BCellLymphoma"]= "text:<a style=\"font-size:20px\"><input id=\"H4R3\" type=\"checkbox\" name=\"diseaseCelltheName\" value=\"TOLEDO_H3K27ac_dc\"><b>TOLEDO cells</b></a>;";//value 在四个表中必须都是唯一的
                diseaseCellTree1.nodes["H3K27ac_diffuseLarge1BCellLymphoma"]= "text:<a style=\"font-size:20px\"><input id=\"H4R3\" type=\"checkbox\" name=\"diseaseCelltheName\" value=\"DHL6_H3K27ac_dc\"><b>DHL6 cells</b></a>;";//value 在四个表中必须都是唯一的
                diseaseCellTree1.nodes["H3K27ac_diffuseLargeBCellLymphoma"]= "text:<a style=\"font-size:20px\"><input id=\"H4R3\" type=\"checkbox\" name=\"diseaseCelltheName\" value=\"HBL1_H3K27ac_dc\"><b>HBL1 cells</b></a>;";//value 在四个表中必须都是唯一的
                diseaseCellTree1.nodes["H3K27ac_diffuseLarg2eBCellLymphoma"]= "text:<a style=\"font-size:20px\"><input id=\"H4R3\" type=\"checkbox\" name=\"diseaseCelltheName\" value=\"LY3_H3K27ac_dc\"><b>LY3 cells</b></a>;";//value 在四个表中必须都是唯一的
                diseaseCellTree1.nodes["H3K27ac_SpinalAndBulbarMuscularAtrophy"]= "text:<a style=\"font-size:20px\"><input id=\"H4R3\" type=\"checkbox\" name=\"diseaseCelltheName\" value=\"SBMA iPSC_H3K27ac_dc\"><b>SBMA iPSC</b></a>;";//value 在四个表中必须都是唯一的
	diseaseCellTree1.nodes["H3K27ac_DiffuseMidlineGlio1ma"]= "text:<a style=\"font-size:20px\"><input id=\"H4R3\" type=\"checkbox\" name=\"diseaseCelltheName\" value=\"CB660_H3K27ac_dc\"><b>CB660 cells</b></a>;";//value 在四个表中必须都是唯一的
	diseaseCellTree1.nodes["H3K27ac_DiffuseMidlineGlio2ma"]= "text:<a style=\"font-size:20px\"><input id=\"H4R3\" type=\"checkbox\" name=\"diseaseCelltheName\" value=\"H1_H3K27ac_dc\"><b>H1 cells</b></a>;";//value 在四个表中必须都是唯一的
	diseaseCellTree1.nodes["H3K27ac_DiffuseMidlineGlio3ma"]= "text:<a style=\"font-size:20px\"><input id=\"H4R3\" type=\"checkbox\" name=\"diseaseCelltheName\" value=\"SU-DIPG-IV_H3K27ac_dc\"><b>SU-DIPG-IV cells</b></a>;";//value 在四个表中必须都是唯一的
	diseaseCellTree1.nodes["H3K27ac_DiffuseMidlineGlioma"]= "text:<a style=\"font-size:20px\"><input id=\"H4R3\" type=\"checkbox\" name=\"diseaseCelltheName\" value=\"U5_H3K27ac_dc\"><b>U5 cells</b></a>;";//value 在四个表中必须都是唯一的
	diseaseCellTree1.nodes["H3K27ac_endometrialAdenoca2rcinoma"]= "text:<a style=\"font-size:20px\"><input id=\"H4R3\" type=\"checkbox\" name=\"diseaseCelltheName\" value=\"Ishikawa_H3K27ac_dc\"><b>Ishikawa cells</b></a>;";//value 在四个表中必须都是唯一的
	diseaseCellTree1.nodes["H3K27ac_endometrialAdenoca1rcinoma"]= "text:<a style=\"font-size:20px\"><input id=\"H4R3\" type=\"checkbox\" name=\"diseaseCelltheName\" value=\"JHUEM-14_H3K27ac_dc\"><b>JHUEM-14 cells</b></a>;";//value 在四个表中必须都是唯一的
	diseaseCellTree1.nodes["H3K27ac_endometrialAdenocarcinoma"]= "text:<a style=\"font-size:20px\"><input id=\"H4R3\" type=\"checkbox\" name=\"diseaseCelltheName\" value=\"HEC-1-A_H3K27ac_dc\"><b>HEC-1-A cells</b></a>;";//value 在四个表中必须都是唯一的
	diseaseCellTree1.nodes["H3K27ac_EmbryonalCarcinoma"]= "text:<a style=\"font-size:20px\"><input id=\"H4R3\" type=\"checkbox\" name=\"diseaseCelltheName\" value=\"NCCIT_H3K27ac_dc\"><b>NCCIT cells</b></a>;";//value 在四个表中必须都是唯一的
	
	diseaseCellTree1.nodes["Dis_H3K36me3"] ="text:H3K36me3;";
	diseaseCellTree1.nodes["H3K36me3_ProstateCarcinoma"]= "text:<a style=\"font-size:20px\"><input id=\"H4R3\" type=\"checkbox\" name=\"diseaseCelltheName\" value=\"22Rv1_H3K36me3_dc\"><b>22Rv1 cells</b></a>;";//value 在四个表中必须都是唯一的
	diseaseCellTree1.nodes["H3K36me3_TCellLeukem3ia"]= "text:<a style=\"font-size:20px\"><input id=\"H4R3\" type=\"checkbox\" name=\"diseaseCelltheName\" value=\"DND-41_H3K36me3_dc\"><b>DND-41 cells</b></a>;";//value 在四个表中必须都是唯一的
	diseaseCellTree1.nodes["H3K36me3_TCellLeukemia"]= "text:<a style=\"font-size:20px\"><input id=\"H4R3\" type=\"checkbox\" name=\"diseaseCelltheName\" value=\"KOPT-K1_H3K36me3_dc\"><b>KOPT-K1 cells</b></a>;";//value 在四个表中必须都是唯一的
	
	diseaseCellTree1.nodes["Dis_H3K79me2"] ="text:H3K79me2;";
	diseaseCellTree1.nodes["H3K79me2_BreastCanc1er"]= "text:<a style=\"font-size:20px\"><input id=\"H4R3\" type=\"checkbox\" name=\"diseaseCelltheName\" value=\"AU565_H3K79me2_dc\"><b>AU565 cells</b></a>;";//value 在四个表中必须都是唯一的
	diseaseCellTree1.nodes["H3K79me2_BreastCan2cer"]= "text:<a style=\"font-size:20px\"><input id=\"H4R3\" type=\"checkbox\" name=\"diseaseCelltheName\" value=\"HCC1937_H3K79me2_dc\"><b>HCC1937 cells</b></a>;";//value 在四个表中必须都是唯一的
	diseaseCellTree1.nodes["H3K79me2_BreastCan3cer"]= "text:<a style=\"font-size:20px\"><input id=\"H4R3\" type=\"checkbox\" name=\"diseaseCelltheName\" value=\"HCC1954_H3K79me2_dc\"><b>HCC1954 cells</b></a>;";//value 在四个表中必须都是唯一的
	diseaseCellTree1.nodes["H3K79me2_BreastCan4cer"]= "text:<a style=\"font-size:20px\"><input id=\"H4R3\" type=\"checkbox\" name=\"diseaseCelltheName\" value=\"MB231_H3K79me2_dc\"><b>MB231 cells</b></a>;";//value 在四个表中必须都是唯一的
	diseaseCellTree1.nodes["H3K79me2_BreastCan5cer"]= "text:<a style=\"font-size:20px\"><input id=\"H4R3\" type=\"checkbox\" name=\"diseaseCelltheName\" value=\"MB361_H3K79me2_dc\"><b>MB361 cells</b></a>;";//value 在四个表中必须都是唯一的
	diseaseCellTree1.nodes["H3K79me2_BreastCanc6er"]= "text:<a style=\"font-size:20px\"><input id=\"H4R3\" type=\"checkbox\" name=\"diseaseCelltheName\" value=\"MB436_H3K79me2_dc\"><b>MB436 cells</b></a>;";//value 在四个表中必须都是唯一的
	diseaseCellTree1.nodes["H3K79me2_BreastCanc7er"]= "text:<a style=\"font-size:20px\"><input id=\"H4R3\" type=\"checkbox\" name=\"diseaseCelltheName\" value=\"MB468_H3K79me2_dc\"><b>MB468 cells</b></a>;";//value 在四个表中必须都是唯一的
	diseaseCellTree1.nodes["H3K79me2_BreastCanc8er"]= "text:<a style=\"font-size:20px\"><input id=\"H4R3\" type=\"checkbox\" name=\"diseaseCelltheName\" value=\"MCF7_H3K79me2_dc\"><b>MCF7 cells</b></a>;";//value 在四个表中必须都是唯一的
	diseaseCellTree1.nodes["H3K79me2_BreastCanc12er"]= "text:<a style=\"font-size:20px\"><input id=\"H4R3\" type=\"checkbox\" name=\"diseaseCelltheName\" value=\"SKBR3_H3K79me2_dc\"><b>SKBR3 cells</b></a>;";//value 在四个表中必须都是唯一的
	diseaseCellTree1.nodes["H3K79me2_1BreastCancer"]= "text:<a style=\"font-size:20px\"><input id=\"H4R3\" type=\"checkbox\" name=\"diseaseCelltheName\" value=\"UACC812_H3K79me2_dc\"><b>UACC812 cells</b></a>;";//value 在四个表中必须都是唯一的
	diseaseCellTree1.nodes["H3K79me2_2BreastCancer"]= "text:<a style=\"font-size:20px\"><input id=\"H4R3\" type=\"checkbox\" name=\"diseaseCelltheName\" value=\"ZR751_H3K79me2_dc\"><b>ZR751 cells</b></a>;";//value 在四个表中必须都是唯一的
    appendTree2Tr("diseaseCell1", diseaseCellTree1.toString());
/////////////////////////////////////////////////////////   
    var normalCellTree1 = new MzTreeView("normalCellTree1");
 	normalCellTree1.icons["property"] = "property.gif";
    normalCellTree1.icons["css"] = "collection.gif";
    normalCellTree1.icons["object"]  = "root2.jpg";
    normalCellTree1.icons["book"]  = "book1.gif"; 
    normalCellTree1.iconsExpand["book"] = "bookopen.gif";  
    normalCellTree1.setIconPath("images/");
	normalCellTree1.nodes["-1_Dis"] = "text:Normal CellLines;";
    normalCellTree1.nodes["Dis_H3K4me3"] = "text:H3K4me3;";
	normalCellTree1.nodes["H3K4me3_hepatitisC"]= "text:<a style=\"font-size:20px\"><input id=\"H4R3\" type=\"checkbox\" name=\"normalCelltheName\" value=\"non-infected Huh-7.5 cells_H3K4me3_nc\"><b>non infected Huh-7.5 cells</b></a>;";//value 在四个表中必须都是唯一的
	normalCellTree1.nodes["H3K4me3_ProstateC1arcinoma"]= "text:<a style=\"font-size:20px\"><input id=\"H4R3\" type=\"checkbox\" name=\"normalCelltheName\" value=\"C4-2_H3K4me3_nc\"><b>C4-2 cells</b></a>;";//value 在四个表中必须都是唯一的
	normalCellTree1.nodes["H3K4me3_ProstateC2arcinoma"]= "text:<a style=\"font-size:20px\"><input id=\"H4R3\" type=\"checkbox\" name=\"normalCelltheName\" value=\"RWPE1_H3K4me3_nc\"><b>RWPE1 cells</b></a>;";//value 在四个表中必须都是唯一的
	normalCellTree1.nodes["H3K4me3_ProstateC3arcinoma"]= "text:<a style=\"font-size:20px\"><input id=\"H4R3\" type=\"checkbox\" name=\"normalCelltheName\" value=\"PrEC_H3K4me3_nc\"><b>PrEC cells</b></a>;";//value 在四个表中必须都是唯一的
	normalCellTree1.nodes["H3K4me3_RenalCanc1er"]= "text:<a style=\"font-size:20px\"><input id=\"H4R3\" type=\"checkbox\" name=\"normalCelltheName\" value=\"HEK293T_H3K4me3_nc\"><b>HEK293T cells</b></a>;";//value 在四个表中必须都是唯一的
	normalCellTree1.nodes["H3K4me3_BreastCan1cer"]= "text:<a style=\"font-size:20px\"><input id=\"H4R3\" type=\"checkbox\" name=\"normalCelltheName\" value=\"HMEC_H3K4me3_nc\"><b>HMEC cells</b></a>;";//value 在四个表中必须都是唯一的
	normalCellTree1.nodes["H3K4me3_BreastCancer"]= "text:<a style=\"font-size:20px\"><input id=\"H4R3\" type=\"checkbox\" name=\"normalCelltheName\" value=\"MCF10A_H3K4me3_nc\"><b>MCF10A cells</b></a>;";//value 在四个表中必须都是唯一的
	normalCellTree1.nodes["H3K4me3_MveloidLeukemia"]= "text:<a style=\"font-size:20px\"><input id=\"H4R3\" type=\"checkbox\" name=\"normalCelltheName\" value=\"Myeloid progenitors_H3K4me3_nc\"><b>Myeloid progenitors cells</b></a>;";//value 在四个表中必须都是唯一的
	normalCellTree1.nodes["H3K4me3_TCellLeukemia"]= "text:<a style=\"font-size:20px\"><input id=\"H4R3\" type=\"checkbox\" name=\"normalCelltheName\" value=\"primary CD4+ T cells_H3K4me3_nc\"><b>CD4+ T cells</b></a>;";//value 在四个表中必须都是唯一的
	normalCellTree1.nodes["H3K4me3_EwingSacroma"]= "text:<a style=\"font-size:20px\"><input id=\"H4R3\" type=\"checkbox\" name=\"normalCelltheName\" value=\"differentiated chondrocytes_H3K4me3_nc\"><b>differentiated chondrocytes cells</b></a>;";//value 在四个表中必须都是唯一的
	normalCellTree1.nodes["H3K4me3_BLymphoidLeukemia"]= "text:<a style=\"font-size:20px\"><input id=\"H4R3\" type=\"checkbox\" name=\"normalCelltheName\" value=\"B cells_H3K4me3_nc\"><b>B cells</b></a>;";//value 在四个表中必须都是唯一的
	normalCellTree1.nodes["H3K4me3_SpinalAndBulbarMuscularAtrophy"]= "text:<a style=\"font-size:20px\"><input id=\"H4R3\" type=\"checkbox\" name=\"normalCelltheName\" value=\"iPSC_H3K4me3_nc\"><b>iPSC cells</b></a>;";//value 在四个表中必须都是唯一的
	normalCellTree1.nodes["H3K4me3_HumanEmbryon1alCarcinoma"]= "text:<a style=\"font-size:20px\"><input id=\"H4R3\" type=\"checkbox\" name=\"normalCelltheName\" value=\"293T-Rex_H3K4me3_nc\"><b>293T-Rex cells</b></a>;";//value 在四个表中必须都是唯一的
	normalCellTree1.nodes["H3K4me3_HumanEmbryona2lCarcinoma"]= "text:<a style=\"font-size:20px\"><input id=\"H4R3\" type=\"checkbox\" name=\"normalCelltheName\" value=\"embryonic stem cell_H3K4me3_nc\"><b>embryonic stem  cells</b></a>;";//value 在四个表中必须都是唯一的
	normalCellTree1.nodes["H3K4me3_HumanEmbryon3alCarcinoma"]= "text:<a style=\"font-size:20px\"><input id=\"H4R3\" type=\"checkbox\" name=\"normalCelltheName\" value=\"H1_H3K4me3_nc\"><b>H1 cells</b></a>;";//value 在四个表中必须都是唯一的
	normalCellTree1.nodes["H3K4me3_HumanEmbryon4alCarcinoma"]= "text:<a style=\"font-size:20px\"><input id=\"H4R3\" type=\"checkbox\" name=\"normalCelltheName\" value=\"H9_H3K4me3_nc\"><b>H9 cells</b></a>;";//value 在四个表中必须都是唯一的
	normalCellTree1.nodes["H3K4me3_HumanEmbryonalCarcinoma"]= "text:<a style=\"font-size:20px\"><input id=\"H4R3\" type=\"checkbox\" name=\"normalCelltheName\" value=\"HEK293T_H3K4me3_nc\"><b>HEK293T cells</b></a>;";//value 在四个表中必须都是唯一的
	normalCellTree1.nodes["H3K4me3_HumanEmbryona5lCarcinoma"]= "text:<a style=\"font-size:20px\"><input id=\"H4R3\" type=\"checkbox\" name=\"normalCelltheName\" value=\"HEK293_H3K4me3_nc\"><b>HEK293 cells</b></a>;";//value 在四个表中必须都是唯一的
	
	normalCellTree1.nodes["Dis_H3K4me1"] = "text:H3K4me1;";
	normalCellTree1.nodes["H3K4me1_ProstateC1arcinoma"]= "text:<a style=\"font-size:20px\"><input id=\"H4R3\" type=\"checkbox\" name=\"normalCelltheName\" value=\"C4-2_H3K4me1_nc\"><b>C4-2 cells</b></a>;";//value 在四个表中必须都是唯一的
	normalCellTree1.nodes["H3K4me1_ProstateC2arcinoma"]= "text:<a style=\"font-size:20px\"><input id=\"H4R3\" type=\"checkbox\" name=\"normalCelltheName\" value=\"RWPE1_H3K4me1_nc\"><b>RWPE1 cells</b></a>;";//value 在四个表中必须都是唯一的
	normalCellTree1.nodes["H3K4me1_ProstateCa3rcinoma"]= "text:<a style=\"font-size:20px\"><input id=\"H4R3\" type=\"checkbox\" name=\"normalCelltheName\" value=\"PrEC_H3K4me1_nc\"><b>PrEC cells</b></a>;";//value 在四个表中必须都是唯一的
	normalCellTree1.nodes["H3K4me1_RenalCancer"]= "text:<a style=\"font-size:20px\"><input id=\"H4R3\" type=\"checkbox\" name=\"normalCelltheName\" value=\"HEK293T_H3K4me1_nc\"><b>HEK293T cells</b></a>;";//value 在四个表中必须都是唯一的
	normalCellTree1.nodes["H3K4me1_BreastCancer"]= "text:<a style=\"font-size:20px\"><input id=\"H4R3\" type=\"checkbox\" name=\"normalCelltheName\" value=\"HMEC_H3K4me1_nc\"><b>HMEC cells</b></a>;";//value 在四个表中必须都是唯一的
	normalCellTree1.nodes["H3K4me1_MveloidLeukemia"]= "text:<a style=\"font-size:20px\"><input id=\"H4R3\" type=\"checkbox\" name=\"normalCelltheName\" value=\"Myeloid progenitors_H3K4me1_nc\"><b>Myeloid progenitors cells</b></a>;";//value 在四个表中必须都是唯一的
	normalCellTree1.nodes["H3K4me1_EwingSacroma"]= "text:<a style=\"font-size:20px\"><input id=\"H4R3\" type=\"checkbox\" name=\"normalCelltheName\" value=\"differentiated chondrocytes_H3K4me1_nc\"><b>differentiated chondrocytes cells</b></a>;";//value 在四个表中必须都是唯一的
	normalCellTree1.nodes["H3K4me1_diffuseLargeBLymphoidLeukemia"]= "text:<a style=\"font-size:20px\"><input id=\"H4R3\" type=\"checkbox\" name=\"normalCelltheName\" value=\"Nalm6_H3K4me1_nc\"><b>Nalm6 cells</b></a>;";//value 在四个表中必须都是唯一的
	normalCellTree1.nodes["H3K4me1_SpinalAndBulbarMuscularAtrophy"]= "text:<a style=\"font-size:20px\"><input id=\"H4R3\" type=\"checkbox\" name=\"normalCelltheName\" value=\"iPSC_H3K4me1_nc\"><b>iPSC cells</b></a>;";//value 在四个表中必须都是唯一的
	normalCellTree1.nodes["H3K4me1_BLymphoidLeukemia"]= "text:<a style=\"font-size:20px\"><input id=\"H4R3\" type=\"checkbox\" name=\"normalCelltheName\" value=\"B cells_H3K4me1_nc\"><b>B cells</b></a>;";//value 在四个表中必须都是唯一的
	
	normalCellTree1.nodes["Dis_H3K4ac"] =  "text:H3K4ac;";
	normalCellTree1.nodes["H3K4ac_BreastCancer"]= "text:<a style=\"font-size:20px\"><input id=\"H4R3\" type=\"checkbox\" name=\"normalCelltheName\" value=\"MCF10A_H3K4ac_nc\"><b>MCF10A cells</b></a>;";//value 在四个表中必须都是唯一的
	
	normalCellTree1.nodes["Dis_H3K9ac"] =  "text:H3K9ac;";
	normalCellTree1.nodes["H3K9ac_hepatitisC"]= "text:<a style=\"font-size:20px\"><input id=\"H4R3\" type=\"checkbox\" name=\"normalCelltheName\" value=\"non-infected Huh-7.5 cells_H3K9ac_nc\"><b>non infected Huh-7.5 cells</b></a>;";//value 在四个表中必须都是唯一的
	normalCellTree1.nodes["H3K9ac_RenalCancer"]= "text:<a style=\"font-size:20px\"><input id=\"H4R3\" type=\"checkbox\" name=\"normalCelltheName\" value=\"HEK293T_H3K9ac_nc\"><b>HEK293T cells</b></a>;";//value 在四个表中必须都是唯一的
	
	normalCellTree1.nodes["Dis_H3K9me3"] = "text:H3K9me3;";
	normalCellTree1.nodes["H3K9me3_hepatitisC"]= "text:<a style=\"font-size:20px\"><input id=\"H4R3\" type=\"checkbox\" name=\"normalCelltheName\" value=\"non-infected Huh-7.5 cells_H3K9me3_nc\"><b>non infected Huh-7.5 cells</b></a>;";//value 在四个表中必须都是唯一的
	normalCellTree1.nodes["H3K9me3_ProstateCarcinoma"]= "text:<a style=\"font-size:20px\"><input id=\"H4R3\" type=\"checkbox\" name=\"normalCelltheName\" value=\"PrEC_H3K9me3_nc\"><b>PrEC cells</b></a>;";//value 在四个表中必须都是唯一的
	normalCellTree1.nodes["H3K9me3_BreastCancer"]= "text:<a style=\"font-size:20px\"><input id=\"H4R3\" type=\"checkbox\" name=\"normalCelltheName\" value=\"226LDM_H3K9me3_nc\"><b>226LDM cells</b></a>;";//value 在四个表中必须都是唯一的
	normalCellTree1.nodes["H3K9me3_HumanEmb1ryonalCarcinoma"]= "text:<a style=\"font-size:20px\"><input id=\"H4R3\" type=\"checkbox\" name=\"normalCelltheName\" value=\"H9_H3K9me3_nc\"><b>H9 cells</b></a>;";//value 在四个表中必须都是唯一的
	normalCellTree1.nodes["H3K9me3_HumanEmbryonalCarcinoma"]= "text:<a style=\"font-size:20px\"><input id=\"H4R3\" type=\"checkbox\" name=\"normalCelltheName\" value=\"HEK293_H3K9me3_nc\"><b>HEK293 cells</b></a>;";//value 在四个表中必须都是唯一的
	
	normalCellTree1.nodes["Dis_H3K27me3"] ="text:H3K27me3;";
                normalCellTree1.nodes["H3K27me3_ProstateCarcinoma"]= "text:<a style=\"font-size:20px\"><input id=\"H4R3\" type=\"checkbox\" name=\"normalCelltheName\" value=\"RWPE1_H3K27me3_nc\"><b>RWPE1 cells</b></a>;";//value 在四个表中必须都是唯一的
	normalCellTree1.nodes["H3K27me3_ProstateCarcinoma"]= "text:<a style=\"font-size:20px\"><input id=\"H4R3\" type=\"checkbox\" name=\"normalCelltheName\" value=\"PrEC_H3K27me3_nc\"><b>PrEC cells</b></a>;";//value 在四个表中必须都是唯一的
	normalCellTree1.nodes["H3K27me3_BreastCan1cer"]= "text:<a style=\"font-size:20px\"><input id=\"H4R3\" type=\"checkbox\" name=\"normalCelltheName\" value=\"HMEC_H3K27me3_nc\"><b>HMEC cells</b></a>;";//value 在四个表中必须都是唯一的
	normalCellTree1.nodes["H3K27me3_Breast2Cancer"]= "text:<a style=\"font-size:20px\"><input id=\"H4R3\" type=\"checkbox\" name=\"normalCelltheName\" value=\"MCF10A_H3K27me3_nc\"><b>MCF10A cells</b></a>;";//value 在四个表中必须都是唯一的
	normalCellTree1.nodes["H3K27me3_hepatitisC"]= "text:<a style=\"font-size:20px\"><input id=\"H4R3\" type=\"checkbox\" name=\"normalCelltheName\" value=\"non-infected Huh-7.5 cells_H3K27me3_nc\"><b>non infected Huh-7.5 cells</b></a>;";//value 在四个表中必须都是唯一的
	normalCellTree1.nodes["H3K27me3_CervicalCarcinoma"]= "text:<a style=\"font-size:20px\"><input id=\"H4R3\" type=\"checkbox\" name=\"normalCelltheName\" value=\"endometrial epithelial cell_H3K27me3_nc\"><b>endometrial epithelial cells</b></a>;";//value 在四个表中必须都是唯一的
	normalCellTree1.nodes["H3K27me3_ProstateCarcinoma"]= "text:<a style=\"font-size:20px\"><input id=\"H4R3\" type=\"checkbox\" name=\"normalCelltheName\" value=\"RWPE1_H3K27me3_nc\"><b>RWPE1 cells</b></a>;";//value 在四个表中必须都是唯一的
	normalCellTree1.nodes["H3K27me3_TCellLeukemia"]= "text:<a style=\"font-size:20px\"><input id=\"H4R3\" type=\"checkbox\" name=\"normalCelltheName\" value=\"T cells_H3K27me3_nc\"><b>T cells</b></a>;";//value 在四个表中必须都是唯一的
	normalCellTree1.nodes["H3K27me3_EwingSacroma"]= "text:<a style=\"font-size:20px\"><input id=\"H4R3\" type=\"checkbox\" name=\"normalCelltheName\" value=\"differentiated chondrocytes_H3K27me3_nc\"><b>differentiated chondrocytes cells</b></a>;";//value 在四个表中必须都是唯一的
	
	normalCellTree1.nodes["Dis_H3K27ac"] = "text:H3K27ac;";
	normalCellTree1.nodes["H3K27ac_CervicalCarcinoma"]= "text:<a style=\"font-size:20px\"><input id=\"H4R3\" type=\"checkbox\" name=\"normalCelltheName\" value=\"endometrial epithelial cell_H3K27ac_nc\"><b>endometrial epithelial cells</b></a>;";//value 在四个表中必须都是唯一的
	normalCellTree1.nodes["H3K27ac_BreastCancer"]= "text:<a style=\"font-size:20px\"><input id=\"H4R3\" type=\"checkbox\" name=\"normalCelltheName\" value=\"HMEC_H3K27ac_nc\"><b>HMEC cells</b></a>;";//value 在四个表中必须都是唯一的
	normalCellTree1.nodes["H3K27ac_ProstateCarcinoma"]= "text:<a style=\"font-size:20px\"><input id=\"H4R3\" type=\"checkbox\" name=\"normalCelltheName\" value=\"RWPE1_H3K27ac_nc\"><b>RWPE1 cells</b></a>;";//value 在四个表中必须都是唯一的
	normalCellTree1.nodes["H3K27ac_RenalCancer"]= "text:<a style=\"font-size:20px\"><input id=\"H4R3\" type=\"checkbox\" name=\"normalCelltheName\" value=\"HEK293T_H3K27ac_nc\"><b>HEK293T cells</b></a>;";//value 在四个表中必须都是唯一的
	normalCellTree1.nodes["H3K27ac_TCellLeukemia"]= "text:<a style=\"font-size:20px\"><input id=\"H4R3\" type=\"checkbox\" name=\"normalCelltheName\" value=\"primary CD4+ T cells_H3K27ac_nc\"><b>CD4+ T cells</b></a>;";//value 在四个表中必须都是唯一的
	normalCellTree1.nodes["H3K27ac_MveloidLeukemia"]= "text:<a style=\"font-size:20px\"><input id=\"H4R3\" type=\"checkbox\" name=\"normalCelltheName\" value=\"Myeloid progenitors_H3K27ac_nc\"><b>Myeloid progenitors cells</b></a>;";//value 在四个表中必须都是唯一的
	normalCellTree1.nodes["H3K27ac_TCellLeukemia"]= "text:<a style=\"font-size:20px\"><input id=\"H4R3\" type=\"checkbox\" name=\"normalCelltheName\" value=\"T cells_H3K27ac_nc\"><b>T cells</b></a>;";//value 在四个表中必须都是唯一的
	normalCellTree1.nodes["H3K27ac_EwingSacroma"]= "text:<a style=\"font-size:20px\"><input id=\"H4R3\" type=\"checkbox\" name=\"normalCelltheName\" value=\"differentiated chondrocytes_H3K27ac_nc\"><b>differentiated chondrocytes cells</b></a>;";//value 在四个表中必须都是唯一的
	normalCellTree1.nodes["H3K27ac_BCellL1ymphoma"]= "text:<a style=\"font-size:20px\"><input id=\"H4R3\" type=\"checkbox\" name=\"normalCelltheName\" value=\"GM22647_H3K27ac_nc\"><b>GM22647 cells</b></a>;";//value 在四个表中必须都是唯一的
	normalCellTree1.nodes["H3K27ac_BCellLy3mphoma"]= "text:<a style=\"font-size:20px\"><input id=\"H4R3\" type=\"checkbox\" name=\"normalCelltheName\" value=\"GM22648_H3K27ac_nc\"><b>GM22648 cells</b></a>;";//value 在四个表中必须都是唯一的
	normalCellTree1.nodes["H3K27ac_BCellLymphoma"]= "text:<a style=\"font-size:20px\"><input id=\"H4R3\" type=\"checkbox\" name=\"normalCelltheName\" value=\"GM22649_H3K27ac_nc\"><b>GM22649 cells</b></a>;";//value 在四个表中必须都是唯一的
	normalCellTree1.nodes["H3K27ac_diffuseLa1rgeBLymphoidLeukemia"]= "text:<a style=\"font-size:20px\"><input id=\"H4R3\" type=\"checkbox\" name=\"normalCelltheName\" value=\"Nalm6_H3K27ac_nc\"><b>Nalm6 cells</b></a>;";//value 在四个表中必须都是唯一的
	normalCellTree1.nodes["H3K27ac_diffuseLa3rgeBLymphoidLeukemia"]= "text:<a style=\"font-size:20px\"><input id=\"H4R3\" type=\"checkbox\" name=\"normalCelltheName\" value=\"GM22651_H3K27ac_nc\"><b>GM22651 cells</b></a>;";//value 在四个表中必须都是唯一的
	normalCellTree1.nodes["H3K27ac_diffuseLa2rgeBLymphoidLeukemia"]= "text:<a style=\"font-size:20px\"><input id=\"H4R3\" type=\"checkbox\" name=\"normalCelltheName\" value=\"GM22650_H3K27ac_nc\"><b>GM22650 cells</b></a>;";//value 在四个表中必须都是唯一的
	normalCellTree1.nodes["H3K27ac_diffuseLar4geBLymphoidLeukemia"]= "text:<a style=\"font-size:20px\"><input id=\"H4R3\" type=\"checkbox\" name=\"normalCelltheName\" value=\"GM12873_H3K27ac_nc\"><b>GM12873 cells</b></a>;";//value 在四个表中必须都是唯一的
	normalCellTree1.nodes["H3K27ac_diffuseLarg5eBLymphoidLeukemia"]= "text:<a style=\"font-size:20px\"><input id=\"H4R3\" type=\"checkbox\" name=\"normalCelltheName\" value=\"GM12872_H3K27ac_nc\"><b>GM12872 cells</b></a>;";//value 在四个表中必须都是唯一的
	normalCellTree1.nodes["H3K27ac_diffuseLargeB6LymphoidLeukemia"]= "text:<a style=\"font-size:20px\"><input id=\"H4R3\" type=\"checkbox\" name=\"normalCelltheName\" value=\"GM12864_H3K27ac_nc\"><b>GM12864 cells</b></a>;";//value 在四个表中必须都是唯一的
	normalCellTree1.nodes["H3K27ac_SpinalAndBulbarMuscularAtrophy"]= "text:<a style=\"font-size:20px\"><input id=\"H4R3\" type=\"checkbox\" name=\"normalCelltheName\" value=\"iPSC_H3K27ac_nc\"><b>iPSC cells</b></a>;";//value 在四个表中必须都是唯一的
	normalCellTree1.nodes["H3K27ac_EndometrialAdenocarcinoma"]= "text:<a style=\"font-size:20px\"><input id=\"H4R3\" type=\"checkbox\" name=\"normalCelltheName\" value=\"endometrial epithelial cell_H3K27ac_nc\"><b>iendometrial epithelial cells</b></a>;";//value 在四个表中必须都是唯一的
	normalCellTree1.nodes["H3K27ac_HumanEmbryonal4Carcinoma"]= "text:<a style=\"font-size:20px\"><input id=\"H4R3\" type=\"checkbox\" name=\"normalCelltheName\" value=\"H9_H3K27ac_nc\"><b>H9 cells</b></a>;";//value 在四个表中必须都是唯一的
	normalCellTree1.nodes["H3K27ac_HumanEmbryonalCarcinoma"]= "text:<a style=\"font-size:20px\"><input id=\"H4R3\" type=\"checkbox\" name=\"normalCelltheName\" value=\"HEK293_H3K27ac_nc\"><b>HEK293 cells</b></a>;";//value 在四个表中必须都是唯一的
	
	normalCellTree1.nodes["Dis_H3K36me3"] ="text:H3K36me3;";
	normalCellTree1.nodes["H3K36me3_ProstateCarcinoma"]= "text:<a style=\"font-size:20px\"><input id=\"H4R3\" type=\"checkbox\" name=\"normalCelltheName\" value=\"RWPE1_H3K36me3_nc\"><b>RWPE1 cells</b></a>;";//value 在四个表中必须都是唯一的
	normalCellTree1.nodes["H3K36me3_TCellLeukemia"]= "text:<a style=\"font-size:20px\"><input id=\"H4R3\" type=\"checkbox\" name=\"normalCelltheName\" value=\"primary CD4+ T cells_H3K36me3_nc\"><b>CD4+ T cells</b></a>;";//value 在四个表中必须都是唯一的
	
	normalCellTree1.nodes["Dis_H3K79me2"] ="text:H3K79me2;";
	normalCellTree1.nodes["H3K79me2_BreastCancer"]= "text:<a style=\"font-size:20px\"><input id=\"H4R3\" type=\"checkbox\" name=\"normalCelltheName\" value=\"MCF10A_H3K79me2_nc\"><b>MCF10A cells</b></a>;";//value 在四个表中必须都是唯一的
	
	
    appendTree2Tr("normalCell1", normalCellTree1.toString());
</script>
</s:form>
<p>&nbsp;</p>

<div style="font-size:25px;margin-top:20px;-moz-box-shadow:1px 3px 20px #003F5F, 2px 2px 5px #003F5F; -webkit-box-shadow:1px 3px 20px #003F5F, 2px 2px 5px #003F5F; box-shadow:1px 3px 20px #003F5F, 2px 2px 5px #003F5F;margin-top:10px; margin:0 auto;width:1970px;height:65px;
	z-index:1;">
	<p>&ensp;</p>
<font COLOR="#191970" face="Calibri"><b>2021 © School of Life Science and Technology, Computational Biology Research Center | Harbin, 150001, Heilongjiang,P.R. China </b> </font>
	</div>
	<p>&nbsp;</p>
	</body>
	<style lang="css">
		.MzTreeView {
			margin-left: 200px;
			text-align: left;
			
		}
	</style
</html>
