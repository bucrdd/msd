<%@ page language="java" contentType="text/html; charset=UTF-8"
	pageEncoding="UTF-8"%>
<%@ taglib prefix="s" uri="/struts-tags"%>
<!DOCTYPE html PUBLIC "-//W3C//DTD XHTML 1.0 Transitional//EN" "http://www.w3.org/TR/xhtml1/DTD/xhtml1-transitional.dtd">
<html>
<head>
<meta http-equiv="Content-Type" content="text/html; charset=utf-8" />
<meta http-equiv="X-UA-Compatible" content="IE=10; text/html; charset=utf-8" />
<link rel="stylesheet" href="css/style.css" media="screen" type="text/css" />

<link rel="stylesheet" href="css/abstract.css"/>  <!-- 导航-->
<title>HHMD</title>
<link rel="shortcut icon" href="images/dd.ico" />
<script type="text/javascript" src="js/jquery-1.8.3.min.js">
</script>
<script type="text/javascript">
$(function(){
  $('#J_radio').on('click', function(){
    var ischecked = $(this).data('checked');
    if (!ischecked && this.checked) {
      $(this).data('checked', true);
    }else{
      $(this).prop('checked', false);
      $(this).data('checked', false);
    }
    console.log($(this).data('checked'))
  }).data('checked', $('#J_radio').get(0).checked);
});
$(function(){
	  $('#J1_radio').on('click', function(){
	    var ischecked = $(this).data('checked');
	    if (!ischecked && this.checked) {
	      $(this).data('checked', true);
	    }else{
	      $(this).prop('checked', false);
	      $(this).data('checked', false);
	    }
	    console.log($(this).data('checked'))
	  }).data('checked', $('#J1_radio').get(0).checked);
	});
$(function(){
	  $('#J2_radio').on('click', function(){
	    var ischecked = $(this).data('checked');
	    if (!ischecked && this.checked) {
	      $(this).data('checked', true);
	    }else{
	      $(this).prop('checked', false);
	      $(this).data('checked', false);
	    }
	    console.log($(this).data('checked'))
	  }).data('checked', $('#J2_radio').get(0).checked);
	});
$(function(){
	  $('#J3_radio').on('click', function(){
	    var ischecked = $(this).data('checked');
	    if (!ischecked && this.checked) {
	      $(this).data('checked', true);
	    }else{
	      $(this).prop('checked', false);
	      $(this).data('checked', false);
	    }
	    console.log($(this).data('checked'))
	  }).data('checked', $('#J3_radio').get(0).checked);
	});
$(function(){
	  $('#J4_radio').on('click', function(){
	    var ischecked = $(this).data('checked');
	    if (!ischecked && this.checked) {
	      $(this).data('checked', true);
	    }else{
	      $(this).prop('checked', false);
	      $(this).data('checked', false);
	    }
	    console.log($(this).data('checked'))
	  }).data('checked', $('#J4_radio').get(0).checked);
	});
</script>
<style type="text/css">
select#organ
            {
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

img{border:none}

body{
background:#FFFFFF;
text-align:center;
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


.searchFrame {
	border: 2px solid #006192;
	border-radius: 5px;
	position: relative;
	margin: 45px 2px 10px;
	padding: 25px 0px 20px 25px;
}
.searchTitle {
	/*width: 166px;*/
    background: #006192;
	font-size: 18px;
	font-weight: bold;
	text-align: center;
	border-radius: 12px;
	padding: 5px 20px;
	position: absolute;
	top: -22px;
	left: 20px;
}
.searchIntro {
	list-style-type: square;
	color: #000000;
	padding: 0px 0px 0px 15px;
	line-height: 25px;
	font-size: 15px;
	 text-align: left;
}

A:link {
COLOR: #000000; TEXT-DECORATION: none
}
A:visited {
COLOR: #000000; TEXT-DECORATION: none
}
A:hover {
COLOR: #F00; TEXT-DECORATION: underline
}

body,td,th {
	font-family: Arial;
	font-size:15px;
	}
	a:link {color: #006192}
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
font-size:14.5000pt;

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
	height:400px;
	z-index:3;
	top: 195px;
	background:url(images/bg-0006.gif)
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
	top: 995px;
	background: url(images/bg003.gif)
}
#apDiv5 {
	position:absolute;
	width:200px;
	height:400px;
	z-index:5;
	top: 195px;
}
#apDiv6 {
	position:absolute;
	width:1100px;
	height:400px;
	z-index:5;
	top: 195px;
}
#apDiv7 {
	position:absolute;
	width:1100px;
	height:800px;
	z-index:5;
	top: 195px;
	background:url(images/bg009.png)
}
.p1 {
	font-weight: normal;
	font-style: normal;
}
.p2 {
	font-weight: normal;
}
#showPanel{
	float:left;
	margin:20px 80px 80px 80px;
	width:200px;
}
#showPanel{
	width:200px;
	height:200px;
	cursor:pointer;
	background-size:100% 100%;

}

#showSampleSearchPanel{
	background:url(../images/search/1.1.jpg);
	/*margin:50px 100px 0px 250px;*/
}

#showSampleSearchPanel:hover{
	background:url(../images/search/1.2.jpg);
}

#showPanel .showGeneSearchPanel{
	background:url(../images/search/3.1.jpg);
	/*margin:50px 100px 0px 250px;*/
}

#showPanel .showGeneSearchPanel:hover{
	background:url(../images/search/3.2.jpg);
}

#showPanel .showDiseaseSearchPanel{
	background:url(../images/search/2.1.jpg);
	/*margin:50px 100px 0px 250px;*/
}

#showPanel .showDiseaseSearchPanel:hover{
	background:url(../images/search/2.2.jpg);
}
#fd a{ float:center;}
.SearchExtend a:hover{
    background-color: aqua;
	color: #000;
	box-shadow: 0 0 100px aqua;
	-webkit-box-reflect: below 5px
		linear-gradient(transparent, rgba(0, 0, 0, 0.3));
	/* 设置一下以上属性的延迟时间 */
	transition-delay: 0.4s;}
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
<div style="margin:0 auto;-moz-box-shadow:1px 3px 20px #BFBFBF, 2px 2px 5px #BFBFBF; -webkit-box-shadow:1px 3px 20px #BFBFBF, 2px 2px 5px #BFBFBF; box-shadow:1px 3px 20px #BFBFBF, 2px 2px 5px #BFBFBF;width:1800px;height:750px;z-index:3;background:#FFFFFF;"  >
<div class="SearchExtend" name="fd";style="width:90%;margin:auto">
<table width="100%" border="0"  cellspacing="0" cellpadding="0">
<tr><td height="30"></td></tr>
<tr><td style="font-size:50px;" height="50" align="center" valign="top"><font color="#006192" ><b>Search</b></font></td></tr>
</table>
                            <p>&nbsp;</p>
                            <p>&nbsp;</p>
                              <p>&nbsp;</p>
                                <p>&nbsp;</p>
                           <a href="diseaseSearch.jsp"><img src="images/search/disease.png"  style="height: 300px; width: 300px; margin:0 20px 10px 20px;"/></a>

                           <a  href="normalSearch.jsp"><img src="images/search/tissue.png" style="height: 300px; width: 300px; margin:0 20px 10px 20px;"/></a>

                           <a  href="CellLineSearch.jsp"><img src="images/search/cellline.png" style="height: 300px; width: 300px; margin:0 20px 10px 20px;"/></a>

                           <a  href="Advancesearch.jsp"><img src="images/search/advance.png" style="height: 300px; width: 300px; margin:0 20px 10px 20px;"/></a>

                         <p>&nbsp;</p>
						<p>&nbsp;</p>
		                <p>&nbsp;</p>
						<p>&nbsp;</p>
						<p>&nbsp;</p>
						<p>&nbsp;</p>



 </div>
 	<div style="font-size:30px;line-height:40px;width:1800px;border:0px solid #cccccc; height: 192px;text-align:left;">
						<div style="width:1800px;height:40px;background:#006192;font-weight:bold;font-size:30px;"><font COLOR="#FFFFFF"  face="Calibri"><b>&ensp;&nbsp;Options:</b></font></div>
						<p style="width:1800px;height:27px;font-size:26px;">&ensp;&nbsp;<b>DiseaseSearch</b> : Query disease-related histone modification sites , their genes, TFs and targeted drugs</p>
						<p style="width:1800px;height:27px;font-size:26px;">&ensp;&nbsp;<b>TissueSearch</b> &ensp;: Query tissue-related histone modification sites and their genes, TFs and targeted drugs</p>
						<p style="width:1800px;height:27px;font-size:26px;">&ensp;&nbsp;<b>CelllineSearch</b>&ensp;: Query cell line-related histone modification sites and their genes, TFs and targeted drugs</p>
						<p style="width:1800px;height:27px;font-size:26px;">&ensp;&nbsp;<b>AdvanceSearch</b>: Query Histone modification site of disease/tissue/cell line for a specified gene/genomic position/Histone modification types</p>
	</div>
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
