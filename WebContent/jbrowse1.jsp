<%@ page language="java" contentType="text/html; charset=UTF-8"
	pageEncoding="UTF-8"%>
<%@ taglib prefix="s" uri="/struts-tags"%>
<!DOCTYPE html PUBLIC "-//W3C//DTD XHTML 1.0 Transitional//EN" "http://www.w3.org/TR/xhtml1/DTD/xhtml1-transitional.dtd">
 <head>
     <meta http-equiv="Content-Type" content="textml; charset=utf-8" />
 </head>

 
  <meta http-equiv="Content-Type" content="textml; charset=utf-8" />
  <meta name="Generator" content="EditPlus">
  <meta name="Author" content="LiXin">
  <meta name="Keywords" content="DNA methylation lncRNA">
  <meta name="Description" content="">
  <meta name="renderer" content="webkit" />
  <link href="css/style.css" rel="stylesheet" type="text/css">
  <script type="text/javascript" src="js/modernizr.custom.79639.js"></script>
  <script type="text/javascript" src="js/jquery-1.11.1.min.js"></script>
  <script type="text/javascript" src="js/jquery.mockjax.js"></script>
  <script type="text/javascript" src="js/jquery.autocomplete.js"></script>
  <script type="text/javascript" src="js/transcriptonly.js"></script>
  <script type="text/javascript" src="js/demo.js"></script> 
  <link rel="shortcut icon" href="images/icon/icon.ico">
  <title>DMBrowser</title>
 
 <script> 
  function browsesearch(){
	  //alert(document.getElementById("autocomplete-ajax"));
		if(document.getElementById("autocomplete-ajax").value==''){
			alert("Please input transcript!");
			document.getElementById("autocomplete-ajax").focus();
			return false;
		}
		var lncvalue = document.getElementById('autocomplete-ajax').value;
		//alert(lncvalue);
		var fdStart = lncvalue.indexOf("chr");
        if(fdStart == 0){
		 document.getElementById("jbrowseIframe").src="http://www.bio-bigdata.com/DMBrowser/Jbrowse/index.html?data=sample_data/MLDD&loc="+lncvalue+"&tracks=GENCODE,probe";
		 return false;
        }
        
	}
 </script>

 <style>
    #content {
      margin:14px auto;
      background-color:rgba(244,244,242,0.8);
      width:96%;
      height: 876px;
      -webkit-box-shadow: 2px 4px 11px #737373;
      -moz-box-shadow: 2px 4px 11px #737373;
      box-shadow: 2px 4px 11px #737373;
      color:#3f3f3f;
      font-size:14px;
      border-radius:4px;
      min-width: 1300px !important;
	}
	#search {
	  margin:0 0 0 0;
	  text-align:center;
	  
	}
	#inside{
	  margin:10px 40px 10px 40px;
	  height: 600px;
	  border-radius:5px;
	  -moz-border-radius: 5px;
      -webkit-border-radius: 5px;
	  overflow:hidden;
	  -webkit-box-shadow: 0px 0px 5px #737373;
      -moz-box-shadow: 0px 0px 5px #737373;
      box-shadow: 0px 0px 5px #737373;
      position:relative;
	}
      .autocomplete-suggestions { -webkit-box-sizing: border-box; -moz-box-sizing: border-box; box-sizing: border-box; border: 1px solid #999; background: #ECECEC; cursor: default; overflow: auto; font-size:13px; }
      .autocomplete-suggestion { padding: 2px 5px; white-space: nowrap; overflow: hidden; }
      .autocomplete-no-suggestion { padding: 2px 5px;}
      .autocomplete-selected { background: #DDDDDD; }
      .autocomplete-suggestions strong { color: #000; }
      .autocomplete-group { padding: 2px 5px;display: block; border-bottom: 1px solid #000; }
</style>
 <body>
       <!---------------------------------------------------------------navigation bar start------------------------------------------------------------------->

   <header>
       <div id="dmlnc">
	      <a class="title" href="index.jsp" target="_self"></a>
	   </div>

       <nav class="codrops-demos">
	             <div id="left">
					<a href="index.jsp"><li class="left">Home</li></a>
                    <li class="dd left wrapper-dropdown-3 curation" tabindex="1">
						<span>Curation</span>
						<ul class="dropdown2">
						    <a href="cu_disease.jsp"><li class="top">Disease-Centric</li></a>
							<a href="cu_transcript.jsp"><li class="bot">Transcript-Centric</li></a>
						</ul>
					</li>
					<li class="dd left wrapper-dropdown-3" tabindex="1">
						<span>Search</span>
						<ul class="dropdown">
						    <a href="disease.jsp"><li class="top">Disease-Centric</li></a>
							<a href="transcript.jsp"><li class="bot">Transcript-Centric</li></a>
						</ul>
					</li>
					<a href="browse.jsp"><li class="left">DMBrowser</li></a>
					<li class="dd left wrapper-dropdown-3 tool" tabindex="1">
						<span>Tools</span>
						<ul class="dropdown1">
						    <a href="annotation.jsp"><li class="top">Probe Re-annotation</li></a>
							<a href="pattern.jsp"><li class="bot">Differential Methylation Patterns Identification</li></a>
						</ul>
					</li>
					<a href="LncDM.jsp"><li class="left">LncDM</li></a>
                 </div>

				 <div id="right">
					<a href="download.jsp"><li class="right">Download</li></a>
					<a href="help.jsp"><li class="right">Help</li></a>
				 </div>
				 
	   </nav>
 
   </header>

     <!-----------------------------------------------------------------navigation bar end-------------------------------------------------------------------->
     
     <div id="content">
        <p style="padding:30px 60px;"><font color="#003266" style="font-weight:bold;font-style:italic;">DMBrowser</font> for navigating the transcript structure and visualizing the differential methylation patterns of a transcript in specific diseases.</p>
        <div id="search">
  		<form  class="form-wrapper cf" name="browse" id="browse" action="browse" method="post">
	    <input type="text" name="transcript" id="autocomplete-ajax" placeholder="HOTAIR-001" style="z-index: 2;"/>
	    <button  type="submit"  onclick="return browsesearch()">Search</button>
        </form>
        <p style="padding:10px 30px;">Search by transcript name, transcript id or genomic region<br>
		example: <a  style="text-decoration:none;cursor: pointer;" onclick="document.getElementById('autocomplete-ajax').value='HOTAIR-001'"><font color="#003266"><strong>HOTAIR-001</strong></font></a> <strong>|</strong> <a  style="text-decoration:none;cursor: pointer;" onclick="document.getElementById('autocomplete-ajax').value='ENST00000424518.4'"><font color="#003266"><strong>ENST00000424518.4</strong></font></a> (<a  style="text-decoration:none;cursor: pointer;" onclick="document.getElementById('autocomplete-ajax').value='ENST00000424518'"><font color="#003266"><strong>ENST00000424518</strong></font></a>) <strong>|</strong> <a  style="text-decoration:none;cursor: pointer;" onclick="document.getElementById('autocomplete-ajax').value='chr12:53962310..53974958'"><font color="#003266"><strong>chr12:53962310..53974958</strong></font></a></p>
        </div>
        
         <div id="inside">
         <iframe id="jbrowseIframe" style="width:100%; text-align:center; height:100%; border:0" src="http://www.bio-bigdata.com/DMBrowser/Jbrowse/index.html?data=sample_data/MLDD&loc=chr1:46432987..46463928&tracks=GENCODE,probe"></iframe>
        </div>
     </div>

 	 <!--------------------------------------------------------------------tail begin------------------------------------------------------------------------>

	 <div id="tail">
      

      <p>2017,CopyRight © College of Bioinformatics Science and Technology, Harbin Medical University, China.</p>
      <div id="visit" style=" width: 245px;">
      <script type="text/javascript" src="//rf.revolvermaps.com/0/0/7.js?i=5pxol4g0yjv&amp;m=0&amp;c=ff0000&amp;cr1=ffffff&amp;sx=0" async="async"></script>
      </div>
     </div>


	 <!---------------------------------------------------------------------tail end------------------------------------------------------------------------->
   <!-- jQuery if needed -->
		<script type="text/javascript" src="js/jquery.min.js"></script>
		<script type="text/javascript">
			var $menu = jQuery.noConflict();
			function DropDown(el) {
				this.dd = el;
				this.initEvents();
			}
			DropDown.prototype = {
				initEvents : function() {
					var obj = this;

					obj.dd.on('click', function(event){
						$menu(this).toggleClass('active');
						event.stopPropagation();
					});	
				}
			}

			$menu(function() {

				var dd = new DropDown( $menu('.dd') );

				$menu(document).click(function() {
					// all dropdowns
					$menu('.wrapper-dropdown-3').removeClass('active');
				});

			});

		</script>
 
 </body>
 </html>