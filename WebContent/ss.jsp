<%@ page language="java" contentType="text/html; charset=UTF-8"
	pageEncoding="UTF-8"%>
<%@ taglib prefix="s" uri="/struts-tags"%>
<!DOCTYPE html PUBLIC "-//W3C//DTD XHTML 1.0 Transitional//EN" "http://www.w3.org/TR/xhtml1/DTD/xhtml1-transitional.dtd">
<html>
<head>
<meta http-equiv="Content-Type" content="text/html; charset=utf-8" />
<meta http-equiv="X-UA-Compatible" content="IE=10; text/html; charset=utf-8" />
<link rel="stylesheet" href="css/style.css" media="screen" type="text/css" /> <!-- 导航-->
<title>m6ADD</title>
<link rel="shortcut icon" href="images/dd.ico" />
	<link rel="stylesheet" type="text/css" href="/SEA3/css/chromosomeView.css" />
	<link rel="stylesheet" type="text/css" href="/SEA3/css/SpryMenuBarHorizontal.css" />
	<link rel="stylesheet" type="text/css" href="/SEA3/css/SpryMenuBarVertical.css" />
	<link rel="stylesheet" type="text/css" href="/SEA3/css/genomeTab.css" />
	
	<script type="text/javascript" src="/SEA3/js/jquery4BrowserView.js"></script>
	<script type="text/javascript" src="/SEA3/js/json4BrowserView.js"></script>
	<script type="text/javascript" src="/SEA3/js/SpryMenuBar.js"></script>
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




<style type="text/css">
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

body {
	margin:0 auto;
	width:1100px;
	
	
	background-repeat: repeat;
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
</style>

</head>
  
<body>
	
			
			<!-- <h1>Quick Search Results</h1> -->
		
		<div class="container-fluid">
			<div class="row-fluid">
				<div class="span12">
					
					
					
					
					<div style="background:#FFFFFF;width:100%; margin:auto; ">
						<!-- browser search tool -->
						
					

						
						<!-- browser view panel (chrom band) -->
						
						
						<!-- browser view panel (other feature) -->
						<div style="width:100%; float: left;background-color:#FFFFFF;">
							<!-- result view -->
							
							
							<!-- Configure tracks -->
							<div class="menu">
								
								<p style="line-height: 35px;">
									<a class="linkA" href="CustomTrackAction?addNewCustom=true">
										<i class="icon-plus"></i> Add/Manage Custom Tracks
									</a>
								</p>
								
								
								
								
								
								
								
							
							
								<div class="menulabel"> 
									<table class="menuviewtable"><tr>
										<td style="width:5%; text-align:center;">
											<input type="button"  class="addremove" id="2divaddremove" onclick="hidenDiv('2div')"/>
										</td>
										<td style="width:90%; text-align:center; font-size:12px; color:#666666;">BRD4 across cell-types/tissues</td>
										<td style="width:5%; text-align:center;">
											<input type="button"  class="update" name="update" id="2update" onclick="viewSelect('2')"/>
										</td>
									</tr></table>
								</div>
								<div class="menuview" id="2div">
									<table class="menuviewtable">
									  <tr>
									  
									  	
									  	</tr><tr>
									  	
										    <td class="menuviewtd1">
										    <label>
										    	<input type="checkbox" name="2" value="hg38_293hek_brd4"  />
										    	293 HEK
										    </label>
										    </td>
									  
									  	
										    <td class="menuviewtd1">
										    <label>
										    	<input type="checkbox" name="2" value="hg38_a375_brd4"  />
										    	A375
										    </label>
										    </td>
									  
									  	
										    <td class="menuviewtd1">
										    <label>
										    	<input type="checkbox" name="2" value="hg38_leukemia_brd4"  />
										    	Biphenotypic B Myelomonocytic Leukemia
										    </label>
										    </td>
									  
									  	
									  	</tr><tr>
									  	
										    <td class="menuviewtd1">
										    <label>
										    	<input type="checkbox" name="2" value="hg38_lcls_brd4"  />
										    	LCLs
										    </label>
										    </td>
									  
									  	
										    <td class="menuviewtd1">
										    <label>
										    	<input type="checkbox" name="2" value="hg38_hap1_brd4"  />
										    	HAP1
										    </label>
										    </td>
									  
									  	
										    <td class="menuviewtd1">
										    <label>
										    	<input type="checkbox" name="2" value="hg38_hepg2brd4_brd4"  />
										    	HepG2
										    </label>
										    </td>
									  
									  	
									  	</tr><tr>
									  	
										    <td class="menuviewtd1">
										    <label>
										    	<input type="checkbox" name="2" value="hg38_keratinocyte_brd4"  />
										    	primary keratinocytes
										    </label>
										    </td>
									  
									  	
										    <td class="menuviewtd1">
										    <label>
										    	<input type="checkbox" name="2" value="hg38_k562brd4_brd4"  />
										    	K562
										    </label>
										    </td>
									  
									  	
										    <td class="menuviewtd1">
										    <label>
										    	<input type="checkbox" name="2" value="hg38_kelly_brd4"  />
										    	Kelly cells
										    </label>
										    </td>
									  
									  	
									  	</tr><tr>
									  	
										    <td class="menuviewtd1">
										    <label>
										    	<input type="checkbox" name="2" value="hg38_gland_brd4"  />
										    	Mammary gland adenocarcarcinoma epithelial cells
										    </label>
										    </td>
									  
									  	
										    <td class="menuviewtd1">
										    <label>
										    	<input type="checkbox" name="2" value="hg38_mdamb231_brd4"  />
										    	MDAMB231
										    </label>
										    </td>
									  
									  	
										    <td class="menuviewtd1">
										    <label>
										    	<input type="checkbox" name="2" value="hg38_molt_brd4"  />
										    	MOLT4
										    </label>
										    </td>
									  
									  	
									  	</tr><tr>
									  	
										    <td class="menuviewtd1">
										    <label>
										    	<input type="checkbox" name="2" value="hg38_mv411b_brd4"  />
										    	MV-4-11-B
										    </label>
										    </td>
									  
									  	
										    <td class="menuviewtd1">
										    <label>
										    	<input type="checkbox" name="2" value="hg38_bcell_brd4"  />
										    	Primary B-CLL
										    </label>
										    </td>
									  
									  	
										    <td class="menuviewtd1">
										    <label>
										    	<input type="checkbox" name="2" value="hg38_prostatecancer_brd4"  />
										    	prostate cancer
										    </label>
										    </td>
									  
									  	
									  	</tr><tr>
									  	
										    <td class="menuviewtd1">
										    <label>
										    	<input type="checkbox" name="2" value="hg38_22rv1_brd4"  />
										    	22Rv1
										    </label>
										    </td>
									  
									  	
										    <td class="menuviewtd1">
										    <label>
										    	<input type="checkbox" name="2" value="hg38_skmel5_brd4"  />
										    	SK-MEL-5
										    </label>
										    </td>
									  
									  	
										    <td class="menuviewtd1">
										    <label>
										    	<input type="checkbox" name="2" value="hg38_skmel147_brd4"  />
										    	SKmel147
										    </label>
										    </td>
									  
									  	
									  	</tr><tr>
									  	
										    <td class="menuviewtd1">
										    <label>
										    	<input type="checkbox" name="2" value="hg38_st1_brd4"  />
										    	ST1
										    </label>
										    </td>
									  
									  	
										    <td class="menuviewtd1">
										    <label>
										    	<input type="checkbox" name="2" value="hg38_gbm_brd4"  />
										    	U87 GBM
										    </label>
										    </td>
									  
									  </tr>
									</table>
							  	</div>
								
								
								<div class="menuview" id="3div">
									
							  	</div>
			
										
							</div>
						</div>
					</div>
				</div>
			</div>
		</div>
	</div>


</body>
</html>
