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
	 <!-- 导航-->

<title>HHMD</title>
<link rel="shortcut icon" href="images/dd.ico" />

 <style>
    A.MzTreeview
    {
      font-size: 9pt;
      padding-left: 0px;
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

		li{
		float:left;list-style:none;
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
</style>
	<script type="text/javascript" src="msd1/js/jquery4BrowserView.js"></script>
	<script type="text/javascript" src="msd1/js/json4BrowserView.js"></script>
	<script type="text/javascript" src="msd1/js/SpryMenuBar.js"></script>
<script>
$(document).ready(function () {
	   
	    
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
	</script>
</head>

<body>
<div style="margin:0 auto;width:1970px;height:135px;z-index:1;" ><a  href="home.jsp"><img src="images/HHMD8.png" style="height: 190px; width: 1970px"/></a></div>
<!-- 导航栏 -->
<div class="top" style="font-size:25px;margin:0 auto;margin-top:20px;width:1900px;height:45px;z-index: 99999;position: relative">
	  <link href="css/font-awesome.css" rel="stylesheet">
		<ul id="breadcrumb">
          <li><a href="home.jsp"><span class="icon icon-home"> </span>&nbsp;Home</a></li>
		  <li><a href="browse.jsp"><span class="icon icon-list-alt"> </span>&nbsp; Browse</a></li>
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
<div class="transparent" id="transparent"></div>
					<div class="transparent_1" id="transparent_1">
						<div style="background:#efefef; height=30px; width=100%; text-align:right;">
							<input type="button"  onclick="clickHiden('transparent_1')" style="border:solid 1px #CDCDCD;"/>
						</div>
						<div id="transparent_1_info"></div>
					</div>
					
					<div class="transparent_2" id="transparent_2" onmouseover="clickBlock('transparent_2')" onmouseout="clickHiden('transparent_2')">
						<div id="transparent_2_info"></div>
					</div>
					
					<div style="background:#FFFFFF;width:100%; margin:auto; ">
					<div align="center" style="background:#FFFFFF;width:100%; margin:auto; ">
						<!-- browser search tool -->
						<p>&nbsp;</p>
						<p>&nbsp;</p>
						<div style="text-align:center; font-size:15px; width:100%; margin:auto; margin-left:0%;">
						     <li>
							<div>
								<label><font size="5" COLOR="#191970" face="Calibri">&ensp;move:</font></label>
								<input class="button" type="button"  value="&lt;&lt;&lt;" name="&lt;&lt;&lt;" onclick="selectMoveBotton('-100000')"/>
								<input class="button" type="button"  value="&lt;&lt;" name="&lt;&lt;" onclick="selectMoveBotton('-10000')"/>
								<input class="button" type="button"  value="&lt;" name="&lt;" onclick="selectMoveBotton('-1000')"/>
								<input class="button" type="button"  value=">" name=">" onclick="selectMoveBotton('1000')"/>
								<input class="button" type="button"  value=">>" name=">>" onclick="selectMoveBotton('10000')"/>
								<input class="button" type="button"  value=">>>" name=">>>" onclick="selectMoveBotton('100000')"/>
							</div>
							</li>
							<li>
							<div >
								<label><font size="5" COLOR="#191970" face="Calibri">&ensp;zoom in:</font></label>
								<input class="button" type="button"  value="1.5x" name="1.5x" onclick="selectZoomBotton('0.66')"/>
								<input class="button" type="button" value="3x" name="3x" onclick="selectZoomBotton('0.33')"/>
								<input class="button" type="button"  value="10x" name="10x" onclick="selectZoomBotton('0.1')"/>
								<input class="button" type="button"  value="base" name="base" onclick="selectZoomBotton('0.5')"/>
							</div></li>
							<li>
							<div >
								<label><font size="5" COLOR="#191970" face="Calibri">&ensp;zoom out:</font></label>
								<input class="button" type="button"  value="1.5x" name="1.5x" onclick="selectZoomBotton('1.5')"/>
								<input class="button" type="button"  value="3x" name="3x" onclick="selectZoomBotton('3')"/>
								<input class="button" type="button"  value="10x" name="10x" onclick="selectZoomBotton('10')"/>
								<input class="button"  type="button"  value="base" name="base" onclick="selectZoomBotton('2')"/>
							</div></li>
							</ul>
						</div>
					<p>&nbsp;</p>
						<div style="height:35px;"></div>
						<div style="width:95%; margin:auto; border: #CDCDCD 1px solid; padding-top:15px; padding-bottom:15px;text-align:center;">
							<div style="width:90%; margin-left: 6%;">
								<label style="line-height: 30px;"><font size="4.5" color="#006192">Please Input The Particular Genomic location/Gene ID/Gene Name</font></label> 
								<%-- <input id="species" type="text" value="<s:property value="species"/>" name="species" style="display: none;" /> --%>
								<input id="position" type="text" value="<s:property value="position"/>" style="width: 30%;" name="position" />
								<input  id="button1" class="button" type="button" value="search" onclick="viewInit()"/>
							</div>
						</div>
						
						<!-- browser view panel (chrom band) -->
						<div id="chromesome" style="height:30px; width:92%; margin:auto; padding-top:5px; padding-left:5px; padding-right:5px; vertical-align:middle; margin-top:10px; BORDER: #CDCDCD 1px solid; text-align:center">
					<div style="width =920px;height=20px;padding-top:5px;font-size:13px;text-align:center;vertical-align:middle;">
							</div><img src="Images/chromesome.png" style="padding-top:5px"/>
						</div>
						
						
                            </div>
</div></div>

</div>
<p>&nbsp;</p>
<div style="font-size:25px;margin-top:20px;-moz-box-shadow:1px 3px 20px #003F5F, 2px 2px 5px #003F5F; -webkit-box-shadow:1px 3px 20px #003F5F, 2px 2px 5px #003F5F; box-shadow:1px 3px 20px #003F5F, 2px 2px 5px #003F5F;margin-top:10px; margin:0 auto;width:1970px;height:65px;
	z-index:1;">
	<p>&ensp;</p>
<font COLOR="#191970" face="Calibri"><b>2021 © School of Life Science and Technology, Computational Biology Research Center | Harbin, 150001, Heilongjiang,P.R. China </b> </font>
	</div>
	<p>&nbsp;</p>
</html>
