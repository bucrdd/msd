<%@ page language="java" contentType="text/html; charset=UTF-8"
	pageEncoding="UTF-8"%>
<%@ taglib prefix="s" uri="/struts-tags"%>
<!DOCTYPE html PUBLIC "-//W3C//DTD XHTML 1.0 Transitional//EN" "http://www.w3.org/TR/xhtml1/DTD/xhtml1-transitional.dtd">
<html xmlns="http://www.w3.org/1999/xhtml">
<head>
<meta http-equiv="Content-Type" content="text/html; charset=utf-8" />
<meta http-equiv="X-UA-Compatible" content="IE=10; text/html; charset=utf-8" />
<title></title>
<link rel="stylesheet" type="text/css" href="/msd1/css/chromosomeView.css" />
	<link rel="stylesheet" type="text/css" href="/msd1/css/SpryMenuBarHorizontal.css" />
	<link rel="stylesheet" type="text/css" href="/msd1/css/SpryMenuBarVertical.css" />
	<link rel="stylesheet" type="text/css" href="/msd1/css/genomeTab.css" />
	<link href="css/tree.css" type="text/css" rel="stylesheet"></link>
	
	<script type="text/javascript" src="js/jquery4BrowserView.js"></script>
	<script type="text/javascript" src="js/json4BrowserView.js"></script>
	<script type="text/javascript" src="js/SpryMenuBar.js"></script>
	<script type="text/javascript" src="js/jquery-1.8.3.min.js"></script> 
	<script language="JavaScript" src="js/MzTreeView10.js"></script>
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
<!--
<div style="font-size:17px;margin:auto;-moz-box-shadow:1px 3px 20px #BFBFBF, 2px 2px 5px #003F5F;  width: 800px;height:80px;
	z-index:1;" >
<font  color="#3A5FCD">Browse by:</font>
</div>
  -->
 <s:form  id="Form2_1" name="Form2_1" action="gtgene" method="post" theme="simple">
	<br>

			 <div  style="width:90%;margin:auto;">
								 <img border="0" src="images/browse-new.jpg"  style="width: 950px; "/>
<br/>
<br/>
								 <img border="0" src="images/browse-new2.jpg"  style="width: 954px; "/>
								 
								</div>
								<br>
							
									<table class="menuviewtable">
									<tr>
										<td style="width:10%;">
											<input type="button"  class="addremove" id="2divaddremove" onclick="hidenDiv('2div')"/>
										</td>
										<td style="width:90%;  text-align:left; font-size:30px; color:#006192;">Select by</td>
									</tr>
									</table>

								<div class="menuview" id="2div">
									 <table class="menuviewtable">
									  <tr>
									  	</tr>
									  <tr>
	<td id="disease" width="190" height="100"></td>
   
    <td id="normal" width="190" height="100"></td>
    
    <td id="diseaseCell" width="190" height="100"></td>
   
    <td id="normalCell" width="190" height="100"></td>
 
    <td width="190" height="100" id="test1"></td>

  </tr>
	</table>
  
</div>
<br>
  <td >&nbsp;</td>
   <td >&nbsp;</td>
    <td >&nbsp;</td>	
      <td align="left">

 <button type="submit" value="Submit" onclick="Download()" >Submit</button>
  <button type="reset" value="Reset" onclick="replaceDoc()">Reset</button>
  	  </td>
  
  	  <script language="JavaScript">
    var diseaseTree = new MzTreeView("diseaseTree");
    diseaseTree.icons["property"] = "property.gif";
    diseaseTree.icons["css"] = "collection.gif";
    diseaseTree.icons["object"]  = "root2.jpg";
    diseaseTree.icons["book"]  = "book1.gif";
    diseaseTree.iconsExpand["book"] = "bookopen.gif";  
    diseaseTree.setIconPath("images/"); 
    diseaseTree.nodes["-1_Dis"] = "text:Disease tissues;";
	diseaseTree.nodes["Dis_H4R3me2"] = "text:H4R3me2;";
    diseaseTree.nodes["H4R3me2_6PGD"]= "text:<a><input id=\"H4R3\" type=\"checkbox\" name=\"theName\" value=\"Breast_cancer\">Breast cancer</a>;";//value 在四个表中必须都是唯一的
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
	normalTree.nodes["Dis_H4R3me2"] = "text:H4R3me2;";
    normalTree.nodes["H4R3me2_6PGD"]= "text:<a><input id=\"H4R3\" type=\"checkbox\" name=\"theName\" value=\"Breast_cancer\">Breast cancer</a>;";//value 在四个表中必须都是唯一的
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
	diseaseCellTree.nodes["Dis_H4R3me2"] = "text:H4R3me2;";
    diseaseCellTree.nodes["H4R3me2_6PGD"]= "text:<a><input id=\"H4R3\" type=\"checkbox\" name=\"theName\" value=\"Breast_cancer\">Breast cancer</a>;";//value 在四个表中必须都是唯一的
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
    normalCellTree.nodes["H4R3me2_6PGD"]= "text:<a><input id=\"H4R3\" type=\"checkbox\" name=\"theName\" value=\"Ber\">Breast cancer</a>;";//value 在四个表中必须都是唯一的
    appendTree2Tr("normalCell", normalCellTree.toString());
</script>
</s:form>


</body>
</html>