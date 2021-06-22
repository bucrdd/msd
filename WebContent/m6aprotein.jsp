<%@ page language="java" contentType="text/html; charset=UTF-8" pageEncoding="UTF-8"%>
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
    };
</script>
<script language="javascript">
   var pros =["Breast invasive carcinoma(BRCA)","Cervical squamous cell carcinoma and endocervical adenocarcinoma(CESC)","Cholangiocarcinoma(CHOL)","Colon adenocarcinoma(COAD)","Esophageal carcinoma(ESCA)","Glioblastoma multiforme(GBM)","Head and Neck squamous cell carcinoma(HNSC)","High-Risk Wilms Tumor(WT)","Kidney Chromophobe(KICH)","Kidney renal clear cell carcinoma(KIRC)","Kidney renal papillary cell carcinoma(KIRP)","Liver hepatocellular carcinoma(LIHC)","Lung adenocarcinoma(LUAD)","Lung squamous cell carcinoma(LUSC)","Pancreatic adenocarcinoma(PAAD)","Prostate adenocarcinoma(PRAD)","Rectum adenocarcinoma(READ)","Rhabdoid Tumor(RT)","Sarcoma(SARC)","Skin Cutaneous Melanoma(SKCM)","Stomach adenocarcinoma(STAD)","Thymoma(THYM)","Thyroid carcinoma(THCA)","Uterine Corpus Endometrial Carcinoma(UCEC)"];
   var cities=[["HNRNPC","WTAP",""],["HNRNPC","RBM15B",""],
		["YTHDF3","WTAP","ALKBH5","HNRNPA2B1","FMR1","IGF2BP2","RBMX","IGF2BP1","RBM15","YTHDC2","YTHDC1","RBM15B","YTHDF1","HNRNPC","YTHDF2",""],
		["FMR1","YTHDC2","RBM15B","HNRNPC","YTHDC1",""],
		["HNRNPC","IGF2BP1","WTAP","FMR1","RBMX",""],
		["YTHDF2","HNRNPC","RBMX","FMR1","RBM15","HNRNPA2B1","RBM15B","YTHDC1","YTHDC2","YTHDF3",""],
		["RBMX","HNRNPC","WTAP",""],
		["HNRNPC","ALKBH5","YTHDF1","YTHDC1","RBM15","WTAP","RBMX","YTHDC2","YTHDF2","RBM15B",""],
		["YTHDC1","IGF2BP1","RBM15B","WTAP","ALKBH5","FMR1","HNRNPC","RBMX",""],
		["RBM15B","FMR1","YTHDC1","HNRNPC","HNRNPA2B1","RBMX","WTAP",""],
		["FMR1","HNRNPC","IGF2BP2","YTHDC1","RBM15B",""],
		["WTAP","HNRNPA2B1","RBM15B","YTHDC1","HNRNPC","RBMX",""],
		["HNRNPC","YTHDC1","ALKBH5",""],
		["RBMX","HNRNPC","IGF2BP2","RBM15B",""],
		["ALKBH5",""],
		["RBM15B","RBMX",""],
		["HNRNPA2B1","RBMX","YTHDC1","RBM15B","FMR1","YTHDF1","YTHDC2","HNRNPC","WTAP",""],
		["YTHDC1","RBM15B","RBMX","ALKBH5","FMR1","HNRNPC","IGF2BP1",""],
		["RBM15B","RBMX",""],
		["YTHDC1","HNRNPC","FMR1","RBMX",""],
		["HNRNPA2B1","RBMX","HNRNPC",""],
		["IGF2BP2","RBM15B","HNRNPC","IGF2BP1","WTAP","YTHDC1",""],
		["RBM15B","IGF2BP2","YTHDC1","RBMX","ALKBH5",""],
		["HNRNPA2B1","RBM15B","WTAP","YTHDC1","RBMX",""]];

onload = function(){
       for(var i=0;i<pros.length;i++){
        var opt= document.createElement("option");
       opt.innerHTML = pros[i];
            pro.appendChild(opt);
            }
           pro.onchange = function(){
            var opts = city.children;
        for(var i=1;i<opts.length;i++){
              city.removeChild(opts[i]);
                  i--;
               }
                 var ind = this.selectedIndex;
                 var arr =ind > 0 ? cities[ind-1]:[];
                 for(var i=0;i<arr.length;i++){
                 var opt = document.createElement("option");
                 opt.innerHTML = arr[i];
                 city.appendChild(opt);
}
}

            city.onchange = function(){
            var opts = area.children;
            for(var i=1;i<opts.length;i++){
             area.removeChild(opts[i]);
             i--;
            }
                var ind2 = pro.selectedIndex;
                var ind2 = this.selectedIndex;
                var arr =ind1>0&&ind2>0 ? areas[ind1-1][ind2-1]:[];
                for(var i=0;i<arr.length;i++){
                var opt= document.createElement("option");
                opt.innerHTM = arr[i];
                area.appendChild(opt);
                }
                }
                }
 

 </script>
<style type="text/css">
  </head>
body {
	font-family: Arial;
	font-size:15px;
	 
	}
select#pro
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
select#city
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


a:link {color: #B71D1D} 
a:link,a:visited{
 text-decoration:none;  /*超链接无下划线*/
}
a:hover{
	text-decoration:none;  /*鼠标放上去有下划线*/
}
 
body {
	margin:0 auto;
	width:1100px;
	margin-top: 20px;
	
	background-repeat: repeat;
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
<div style=" margin:0 auto;width:1200px;height:135px;
	z-index:1;" ><a  href="home.jsp"><img src="images/m6a-logo5.jpg"   /></a></div>
<!-- 导航栏 -->
<div class="top" style="margin:0 auto;margin-top:10px;width:1200px;height:50px;z-index: 99999;position: relative">

	  <link href="css/font-awesome.css" rel="stylesheet">
		<ul id="breadcrumb">
		  <li><a href="home.jsp"><span class="icon icon-home"> </span>&nbsp;Home</a></li>
		  <li><a href="browse.jsp"><span class="icon icon-double-angle-right"> </span>&nbsp; Browse</a></li>
		  <li><a href="search.jsp"><span class="icon icon-double-angle-right"></span> &nbsp;Search</a></li>
		  <li><a href="download.jsp"><span class="icon icon-arrow-down"> </span>&nbsp; Download</a></li>
		 <li><a href="network.jsp"><span class="icon icon-rocket"> </span>&nbsp; m<sup>6</sup>A-Net</a>
		 
		  
		  </li>
		    <li><a href="m6aprotein.jsp"><span class="icon-beaker"> </span>&nbsp;  m<sup>6</sup>A-Regulator</a></li>
		  <li><a href="help.jsp"><span class="icon-beaker"> </span>&nbsp; Help</a></li>
		</ul>
   

</div>
<div  style="margin:0 auto;-moz-box-shadow:1px 3px 20px #003F5F, 2px 2px 5px #003F5F; -webkit-box-shadow:1px 3px 20px #003F5F, 2px 2px 5px #003F5F; box-shadow:1px 3px 20px #003F5F, 2px 2px 5px #003F5F;width:1200px;height:870px;z-index:3;background:#FFFFFF;"  >


<div  style="width:95%;margin:0 auto">
<p>&nbsp;</p>
<p>&nbsp;</p>
<div style="margin-left:10px;position: absolute;text-align:justify; text-justify:inter-ideograph; width:550px;font-size: 18px;">
<font color="#006192" >User can obtain a list of genes with similar functions to the m<sup>6</sup>A regulatory factor in a specific cancer by selecting the type of cancer and the m<sup>6</sup>A regulatory factor.There is an example below.</font>
</div>

<div style="margin-left:650px;position: absolute;">
<form id="form1" name="form1" method="post" action="snpid" theme="simple" target="m6aprotein">
<table width="58%" border="0"  cellspacing="0" cellpadding="0">
 <tr>
          <td  style="font-size:15px" align="left"  height="35" valign="middle" class="p2"><font color="#006192" >Cancer name</font></td>
          <td width="30%" align="left" ><label for="gtgene"></label>
           <select  name="disease" id="pro">
   			<option>select cancer</option>  
 			</select>
            </td>
           
        </tr>
        <tr>
          <td  style="font-size:15px" align="left"  height="35" valign="middle" class="p2"><font color="#006192" >Regulatory protein</font></td>
          <td width="30%" align="left" ><label for="gtgene"></label>
            <select name="protein" id="city">
   			<option value ="">select regulatory protein</option>
 			</select>

            </td>
           
        </tr>
        <tr>
  <td >&nbsp;</td>
  <td   align="left"><input type="submit" class="button blue medium" name="button" id="button" value="Submit" />
      
  	  </td>
  </tr>
       
</table>
</form>
</div>
<p>&nbsp;</p>
<p>&nbsp;</p>
<p>&nbsp;</p>
<p>&nbsp;</p>
<p>&nbsp;</p>
<p>&nbsp;</p>
<p>&nbsp;</p>
<p>&nbsp;</p>

<iframe height="600px" name="m6aprotein" src="example.jsp"  scrolling="auto" frameborder="0" width="100%" ></iframe>

</div>
</div>
<p>&nbsp;</p>
<div style="font-size:17px;-moz-box-shadow:1px 3px 20px #003F5F, 2px 2px 5px #003F5F; -webkit-box-shadow:1px 3px 20px #003F5F, 2px 2px 5px #003F5F; box-shadow:1px 3px 20px #003F5F, 2px 2px 5px #003F5F;margin-top:10px; margin:0 auto;width:1200px;height:45px;
	z-index:1;" >
	<p>&nbsp;</p>
	<p><font COLOR="#191970" face="Calibri" ><B>2020 © School of Life Science and Technology, Computational Biology Research Center | Harbin, 150001, Heilongjiang,P.R. China </B> </font></p>
	</div>
	<p>&nbsp;</p>
</body>
</html>
