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
<script type="text/javascript">
    var rows = document.getElementsByTagName('tr');//取得行
    for(var i=0 ;i<rows.length; i++)
    {
        rows[i].onmouseover = function(){//鼠标移上去,添加一个类'hilite'
            this.className += 'hilite';
        }
        rows[i].onmouseout = function(){//鼠标移开,改变该类的名称
            this.className = this.className.replace('hilite','');
        }
    }
</script>
<style type="text/css">
img{border:none}
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

.datatable tr:hover,.datatable tr.hilite
    {
    background-color:#CCC;
    color:#0000CC;
    }

.datatable th,.datatable td
{
    text-align:left;
    border:2px solid 	#006093;
    padding-left:3px;
    padding-top:3px;
    padding-bottom:3px;
    padding-left:3px;
    padding-right:3px;
}
img{
border:0px;}

body,td,th {
	font-family: Arial;
	font-size:15px;
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
font-size:13.5000pt;
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
	height:700px;
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
	top: 895px;
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


<div  style="font-size:18px; width:95%;margin:0 auto">
<p>&nbsp;</p>
<p align="left"><font color="#006192" >HM_Gene_net can obtain the Gene-Histone Modifications network based Data stored in the database.Please enter the gene name in the search box below.</font></p>
<p>&nbsp;</p>
<form id="form1" name="form1" method="post" action="quick" theme="simple" target="net">
<table width="100%" border="0"  cellspacing="0" cellpadding="0">
        <tr><td align="left"><font color="#006192"><b>Species</b></font></td></tr><tr><td height="10"></td></tr>
        <tr>
        <td align="left" width="5%" ><input type="radio"  name="diff_method" value="Disease" checked/><font color="#535457">&nbsp;Disease </font></td>
        <td align="left" width="5%" ><input type="radio" name="diff_method" value="Normal" /><font color="#535457">&nbsp;Normal</font></td>
        <td align="left" width="5%" ><input type="radio" name="diff_method" value="CellLine"/><font color="#535457">&nbsp;Cell Line</font></td>
        </tr>
        </table>
        <p>&nbsp;</p>
<table width="100%" border="0"  cellspacing="0" cellpadding="0">

 <tr>
          <td style="font-size:15px;" width="7%" align="left"  height="35" valign="middle" class="p2"><font color="#006192">Gene</font></td>
          <td width="30%" align="left" ><label for="gtgene"></label>
            <input type="text" name="query" id="query" />
            </td>
            <td  align="left"><input type="submit" class="button blue medium" name="button" id="button" value="Submit"/></td>
        </tr>
        <tr><td></td><td style="font-size:17px;" align="left"><font color="#006192" >Example: SOX2</font></td></tr>    
</table>
</form>
<iframe height="600px" name="net" src="quick.jsp"  scrolling="auto" frameborder="0" width="100%" ></iframe></div>

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
