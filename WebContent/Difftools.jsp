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
      font-size: 15pt;
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
<div  style="margin:0 auto;-moz-box-shadow:1px 3px 20px #003F5F, 2px 2px 5px #003F5F; -webkit-box-shadow:1px 3px 20px #003F5F, 2px 2px 5px #003F5F; box-shadow:1px 3px 20px #003F5F, 2px 2px 5px #003F5F;width:1970px;height:820px;z-index:3;background:#FFFFFF;position:relative;"  >
<img border="0" src="images/browse-new.jpg"  style="width: 950px; "/>
<br/>
<br/>
								 <img border="0" src="images/browse-new2.jpg"  style="width: 954px; "/>
								 
								</div>
								

 <!-- <div  style="margin:0 auto;-moz-box-shadow:1px 3px 20px #003F5F, 2px 2px 5px #003F5F; -webkit-box-shadow:1px 3px 20px #003F5F, 2px 2px 5px #003F5F; box-shadow:1px 3px 20px #003F5F, 2px 2px 5px #003F5F;width:1200px;height:600px;z-index:3;background:#FFFFFF;"  > 
<iframe  src="browse2.jsp" style="height:600px ; width:100%" frameborder="0">
</iframe>
</div>-->
	<br>


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

 <button class="button" type="submit" value="Submit" onclick="Download()" >Submit</button>
  <button class="button" type="reset" value="Reset" onclick="replaceDoc()">Reset</button>
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
	diseaseTree.nodes["Dis_H3K4me1"] = "text:H3K4me1;";
	diseaseTree.nodes["Dis_H3K4ac"] = "text:H3K4ac;";
	diseaseTree.nodes["Dis_H3K9ac"] = "text:H3K9ac;";
	diseaseTree.nodes["Dis_H3K9me3"] = "text:H3K9me3;";
	diseaseTree.nodes["Dis_H3K27me3"] = "text:H3K27me3;";
	diseaseTree.nodes["Dis_H3K27ac"] = "text:H3K27ac;";
	diseaseTree.nodes["Dis_H3K36me3"] = "text:H3K36me3;";
	diseaseTree.nodes["Dis_H3K79me2"] = "text:H3K79me2;";
    diseaseTree.nodes["H4R3me2_6PGD"]= "text:<a><input id=\"H4R3\" type=\"checkbox\" name=\"diseasetheName\" value=\"Breast cancer_H4R3me2_dt\">Breast cancer</a>;";//value 在四个表中必须都是唯一的
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
	normalTree.nodes["Dis_H3K4me1"] = "text:H3K4me1;";
	normalTree.nodes["Dis_H3K4ac"] = "text:H3K4ac;";
	normalTree.nodes["Dis_H3K9ac"] = "text:H3K9ac;";
	normalTree.nodes["Dis_H3K9me3"] = "text:H3K9me3;";
	normalTree.nodes["Dis_H3K27me3"] = "text:H3K27me3;";
	normalTree.nodes["Dis_H3K27ac"] = "text:H3K27ac;";
	normalTree.nodes["Dis_H3K36me3"] = "text:H3K36me3;";
	normalTree.nodes["Dis_H3K79me2"] = "text:H3K79me2;";
    normalTree.nodes["H4R3me5_6PGD"]= "text:<a><input id=\"H4R3\" type=\"checkbox\" name=\"normaltheName\" value=\"Breast cancer_H4R3me2_nt\">Breast cancer</a>;";//value 在四个表中必须都是唯一的
    //normalTree.nodes["H4R3me4_6PGD"]= "text:<a><input id=\"H4R3\" type=\"checkbox\" name=\"normaltheName\" value=\"Breast cancer_H4R3me2_nt\">Breast cancer</a>;";//value 在四个表中必须都是唯一的
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
	diseaseCellTree.nodes["Dis_H3K4me1"] = "text:H3K4me1;";
	diseaseCellTree.nodes["Dis_H3K4ac"] = "text:H3K4ac;";
	diseaseCellTree.nodes["Dis_H3K9ac"] = "text:H3K9ac;";
	diseaseCellTree.nodes["Dis_H3K9me3"] = "text:H3K9me3;";
	diseaseCellTree.nodes["Dis_H3K27me3"] = "text:H3K27me3;";
	diseaseCellTree.nodes["Dis_H3K27ac"] = "text:H3K27ac;";
	diseaseCellTree.nodes["Dis_H3K36me3"] = "text:H3K36me3;";
	diseaseCellTree.nodes["Dis_H3K79me2"] = "text:H3K79me2;";
    diseaseCellTree.nodes["H4R3me2_6PGD"]= "text:<a><input id=\"H4R3\" type=\"checkbox\" name=\"diseaseCelltheName\" value=\"Breast_cancer_H4R3me2_dc\">Breast cancer</a>;";//value 在四个表中必须都是唯一的
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
	normalCellTree.nodes["Dis_H4R3me2"] = "text:H4R3me2;";
    normalCellTree.nodes["H4R3me2_6PGD"]= "text:<a><input id=\"H4R3\" type=\"checkbox\" name=\"normalCelltheName\" value=\"Breast_cancer_H4R3me2_nc\">Breast cancer</a>;";//value 在四个表中必须都是唯一的
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

 <button class="button" type="submit" value="Submit">Submit</button>
  <button class="button" type="reset" value="Reset" onclick="replaceDoc()">Reset</button>
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
diseaseTree1.nodes["Dis_H3K4me1"] = "text:H3K4me1;";
diseaseTree1.nodes["Dis_H3K4ac"] = "text:H3K4ac;";
diseaseTree1.nodes["Dis_H3K9ac"] = "text:H3K9ac;";
diseaseTree1.nodes["Dis_H3K9me3"] = "text:H3K9me3;";
diseaseTree1.nodes["Dis_H3K27me3"] = "text:H3K27me3;";
diseaseTree1.nodes["Dis_H3K27ac"] = "text:H3K27ac	;";
diseaseTree1.nodes["Dis_H3K36me3"] = "text:H3K36me3;";
diseaseTree1.nodes["Dis_H3K79me2"] = "text:H3K79me2;";

    diseaseTree1.nodes["H4R3me2_6PGD"]= "text:<a><input id=\"H4R3\" type=\"checkbox\" name=\"diseasetheName\" value=\"Breast_cancer_H4R3me2\">Breast cancer</a>;";//value 在四个表中必须都是唯一的
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
    normalTree1.nodes["Dis_H3K4me1"] = "text:H3K4me1;";
    normalTree1.nodes["Dis_H3K4ac"] =  "text:H3K4ac;";
    normalTree1.nodes["Dis_H3K9ac"] =  "text:H3K9ac;";
    normalTree1.nodes["Dis_H3K9me3"] = "text:H3K9me3;";
    normalTree1.nodes["Dis_H3K27me3"] ="text:H3K27me3;";
    normalTree1.nodes["Dis_H3K27ac"] = "text:H3K27ac;";
    normalTree1.nodes["Dis_H3K36me3"] ="text:H3K36me3;";
    normalTree1.nodes["Dis_H3K79me2"] ="text:H3K79me2;";
    normalTree1.nodes["H4R3me2_6PGD"]= "text:<a><input id=\"H4R3\" type=\"checkbox\" name=\"normaltheName\" value=\"Breast_cancer_H4R3me2\">Breast cancer</a>;";//value 在四个表中必须都是唯一的
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
	diseaseCellTree1.nodes["Dis_H4R3me2"] = "text:H4R3me2;";
    diseaseCellTree1.nodes["H4R3me2_6PGD"]= "text:<a><input id=\"H4R3\" type=\"checkbox\" name=\"diseaseCelltheName\" value=\"Breast_cancer_H4R3me2\">Breast cancer</a>;";//value 在四个表中必须都是唯一的
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
	normalCellTree1.nodes["Dis_H4R3me2"] = "text:H4R3me2;";
    normalCellTree1.nodes["H4R3me2_6PGD"]= "text:<a><input id=\"H4R3\" type=\"checkbox\" name=\"normalCelltheName\" value=\"Breast_cancer_H4R3me2\">Breast cancer</a>;";//value 在四个表中必须都是唯一的
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
