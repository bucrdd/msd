<%@ page language="java" contentType="text/html; charset=UTF-8"
         pageEncoding="UTF-8" %>
<%@ taglib prefix="s" uri="/struts-tags" %>
<!DOCTYPE html PUBLIC "-//W3C//DTD XHTML 1.0 Transitional//EN" "http://www.w3.org/TR/xhtml1/DTD/xhtml1-transitional.dtd">
<html>
<head>
  <meta http-equiv="Content-Type" content="text/html; charset=utf-8"/>
  <meta http-equiv="X-UA-Compatible" content="IE=10; text/html; charset=utf-8"/>
  <link rel="stylesheet" href="css/style.css" media="screen" type="text/css"/> <!-- 导航-->
  <title>HHMD</title>
  <link rel="shortcut icon" href="images/dd.ico"/>
  <script type="text/javascript" src="js/jquery-1.8.3.min.js">
  </script>
  <script type="text/javascript">
    $(function () {
      $('#J_radio').on('click', function () {
        var ischecked = $(this).data('checked');
        if (!ischecked && this.checked) {
          $(this).data('checked', true);
        } else {
          $(this).prop('checked', false);
          $(this).data('checked', false);
        }
        console.log($(this).data('checked'))
      }).data('checked', $('#J_radio').get(0).checked);
    });
    $(function () {
      $('#J1_radio').on('click', function () {
        var ischecked = $(this).data('checked');
        if (!ischecked && this.checked) {
          $(this).data('checked', true);
        } else {
          $(this).prop('checked', false);
          $(this).data('checked', false);
        }
        console.log($(this).data('checked'))
      }).data('checked', $('#J1_radio').get(0).checked);
    });
    $(function () {
      $('#J2_radio').on('click', function () {
        var ischecked = $(this).data('checked');
        if (!ischecked && this.checked) {
          $(this).data('checked', true);
        } else {
          $(this).prop('checked', false);
          $(this).data('checked', false);
        }
        console.log($(this).data('checked'))
      }).data('checked', $('#J2_radio').get(0).checked);
    });
    $(function () {
      $('#J3_radio').on('click', function () {
        var ischecked = $(this).data('checked');
        if (!ischecked && this.checked) {
          $(this).data('checked', true);
        } else {
          $(this).prop('checked', false);
          $(this).data('checked', false);
        }
        console.log($(this).data('checked'))
      }).data('checked', $('#J3_radio').get(0).checked);
    });
    $(function () {
      $('#J4_radio').on('click', function () {
        var ischecked = $(this).data('checked');
        if (!ischecked && this.checked) {
          $(this).data('checked', true);
        } else {
          $(this).prop('checked', false);
          $(this).data('checked', false);
        }
        console.log($(this).data('checked'))
      }).data('checked', $('#J4_radio').get(0).checked);
    });
  </script>
  <style type="text/css">
    select#organ {
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
      box-shadow: inset 0 1px 2px rgba(0, 0, 0, 0.075);
      -moz-box-sizing: border-box;
      box-sizing: border-box;
      transition: all 0.15s ease-in;
      -webkit-transition: all 0.15s ease-in 0;
      vertical-align: middle;
      width: 300px;
    }

    img {
      border: none
    }

    body {
      background: #FFFFFF;
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
      box-shadow: inset 0 1px 2px rgba(0, 0, 0, 0.075);
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
      text-shadow: 0 1px 0 rgba(255, 255, 255, 0.9);
      white-space: nowrap;
      background-color: #eaeaea;
      background-image: -moz-linear-gradient(#fafafa, #eaeaea);
      background-image: -webkit-linear-gradient(#fafafa, #eaeaea);
      background-image: linear-gradient(#fafafa, #eaeaea);
      background-repeat: repeat-x;
      border-radius: 3px;
      border: 1px solid #ddd;
      border-bottom-color: #c5c5c5;
      box-shadow: 0 1px 3px rgba(0, 0, 0, .05);
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
      box-shadow: inset 0 3px 5px rgba(0, 0, 0, .15);
    }

    .button:focus,
    input[type=text]:focus,
    input[type=password]:focus {
      outline: none;
      border-color: #51a7e8;
      box-shadow: inset 0 1px 2px rgba(0, 0, 0, .075), 0 0 5px rgba(81, 167, 232, .5);
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
      COLOR: #000000;
      TEXT-DECORATION: none
    }

    A:visited {
      COLOR: #000000;
      TEXT-DECORATION: none
    }

    A:hover {
      COLOR: #F00;
      TEXT-DECORATION: underline
    }

    body, td, th {
      font-family: Arial;
      font-size: 15px;
    }

    a:link {
      color: #006192
    }

    a:link, a:visited {
      text-decoration: none; /*超链接无下划线*/
    }

    a:hover {
      text-decoration: none; /*鼠标放上去有下划线*/
    }

    p.p0 {
      margin: 0pt;
      margin-bottom: 0pt;
      margin-top: 0pt;
      text-align: justify;
      font-size: 14.5000pt;

    }

    #apDiv1 {
      position: absolute;
      width: 1100px;
      height: 150px;
      z-index: 1;
    }


    #apDiv2 {
      position: absolute;
      width: 1100px;
      height: 25px;
      z-index: 2;
      top: 170px;
    }

    .ys01 {
      color: #000;
    }

    body, td, th {
      color: #000;
    }

    #apDiv3 {
      position: absolute;
      width: 1100px;
      height: 400px;
      z-index: 3;
      top: 195px;
      background: url(images/bg-0006.gif)
    }

    .ys02 {
      font-size: 24px;
      font-style: italic;
      color: #000;
    }

    #apDiv4 {
      position: absolute;
      width: 1100px;
      height: 70px;
      z-index: 4;
      top: 995px;
      background: url(images/bg003.gif)
    }

    #apDiv5 {
      position: absolute;
      width: 200px;
      height: 400px;
      z-index: 5;
      top: 195px;
    }

    #apDiv6 {
      position: absolute;
      width: 1100px;
      height: 400px;
      z-index: 5;
      top: 195px;
    }

    #apDiv7 {
      position: absolute;
      width: 1100px;
      height: 800px;
      z-index: 5;
      top: 195px;
      background: url(images/bg009.png)
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
<div style="margin:0 auto;width:1970px;height:135px;z-index:1;"><a href="home.jsp"><img src="images/HHMD8.png"
                                                                                        style="height: 190px; width: 1970px"/></a>
</div>
<!-- 导航栏 -->
<div class="top"
     style="font-size:25px;margin:0 auto;margin-top:20px;width:1900px;height:45px;z-index: 99999;position: relative">
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
<div
    style="margin:0 auto;-moz-box-shadow:1px 3px 20px #003F5F, 2px 2px 5px #003F5F; -webkit-box-shadow:1px 3px 20px #003F5F, 2px 2px 5px #003F5F; box-shadow:1px 3px 20px #003F5F, 2px 2px 5px #003F5F;width:1970px;height:820px;z-index:3;background:#FFFFFF;position:relative;">
  <p>&nbsp;</p>
  <p>&nbsp;</p>
  <div
      style="margin:0 auto;-moz-box-shadow:1px 3px 20px #BFBFBF, 2px 2px 5px #BFBFBF; -webkit-box-shadow:1px 3px 20px #BFBFBF, 2px 2px 5px #BFBFBF; box-shadow:1px 3px 20px #BFBFBF, 2px 2px 5px #BFBFBF;width:1800px;height:750px;z-index:3;background:#FFFFFF;">
    <div style="width:90%;margin:auto">
      <table width="100%" border="0" cellspacing="0" cellpadding="0">
        <tr>
          <td height="30"></td>
        </tr>
        <tr>
          <td style="font-size:50px;" height="50" align="center" valign="top"><font color="#006192"><b>Normal Search</b></font>
          </td>
        </tr>

      </table>
      <s:form id="Form2_1" name="Form2_1" action="gtgene4" method="post" theme="simple">
      <table width="100%" border="0" cellspacing="0" cellpadding="0">
        <!--   <tr><td align="left"><font color="#006192">Species</font></td></tr><tr><td height="10"></td></tr>
         <tr>
         <td align="left" width="5%" ><input type="radio"  name="diff_method" value="R" checked/><font color="#535457">&nbsp;Disease</font></td>
         <td align="left" width="5%" ><input type="radio" name="diff_method" value="M" /><font color="#535457">&nbsp;Normal</font></td>
         <td align="left" width="5%" ><input type="radio" name="diff_method" value="integration"/><font color="#535457">&nbsp;Cell Line</font></td>
        </tr>-->
      </table>

      <table width="100%" border="0" cellspacing="0" cellpadding="0">
      </table>
      <table cellspacing="13" align="center" width="1600" border="0" cellpadding="0">
        <tr>
          <td height="80"></td>
        </tr>
        <tr>
          <td style="font-size:35px;" height="35" valign="middle" class="p2"><font face="Calibri" align="center"
                                                                                   color="#006192"><b>&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;HisModification</b></font>
          </td>
          <td align="left" height="45"><label for="disease"></label>
            <select height="45px" name="hm" id="organ" style="width:300px; height:40px;font-size:24px;">
              <option value="H3K4me1"><font size="30">H3K4me1</font></option>
              <option>H4R3me2</option>
              <option>H4K91ac</option>
              <option>H4K8ac</option>
              <option>H4K5ac</option>
              <option>H4K20me3</option>
              <option>H4K20me1</option>
              <option>H4K16ac</option>
              <option>H4K12me1</option>
              <option>H4K12ac</option>
              <option>H4ac</option>
              <option>H3R8me2a</option>
              <option>H3R2me2</option>
              <option>H3R2me1</option>
              <option>H3Kme3</option>
              <option>H3K9me3</option>
              <option>H3K9me2</option>
              <option>H3K9me1</option>
              <option>H3K9ac</option>
              <option>H3K914ac</option>
              <option>H3K79me3</option>
              <option>H3K79me2</option>
              <option>H3K79me1</option>
              <option>H3K56ac</option>
              <option>H3K4me3</option>
              <option>H3K4me2</option>
              <option>H3K4me1</option>
              <option>H3K4me</option>
              <option>H3K4m3</option>
              <option>H3K4m1</option>
              <option>H3K4ac</option>
              <option>H3K36me3</option>
              <option>H3K36me2</option>
              <option>H3K36me1</option>
              <option>H3K36ac</option>
              <option>H3K2me3</option>
              <option>H3K27me3</option>
              <option>H3K27me2</option>
              <option>H3K27me1</option>
              <option>H3K27m3</option>
              <option>H3K27ac</option>
              <option>H3K23ac</option>
              <option>H3K18ac</option>
              <option>H3K14ac</option>
              <option>H3K122ac</option>
              <option>H3ac</option>
              <option>H2K4me2</option>
              <option>H2K4me1</option>
              <option>H2Bub1</option>
              <option>H2Bub</option>
              <option>H2BK5me1</option>
              <option>H2BK5ac</option>
              <option>H2BK20ac</option>
              <option>H2BK12ac</option>
              <option>H2BK120ub</option>
              <option>H2BK120ac</option>
              <option>H2AZ</option>
              <option>H2aub</option>
              <option>H2AK9ac</option>
              <option>H2AK5ac</option>
              <option>H2aK119ub</option>


            </select>
          </td>

        </tr>
        <tr>
          <td height="10"></td>
        </tr>
        <tr>
          <td style="font-size:35px;" align="left" height="35" valign="middle" class="p2"><font color="#006192"><b>&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;Tissues</b></font>
          </td>
          <td align="left" height="35"><label for="disease"></label>
            <input type="text" name="type" id="disease" style="width: 300px; height:41px;font-size:24px;"/>&nbsp;<font
                color="#006192" size="3">Example:uterus</font></td>

        </tr>
        <tr>
          <td height="10"></td>
        </tr>
        <tr>
          <td style="font-size:35px;" align="left" width="12%" height="35" valign="middle" class="p2"><font
              color="#006192"><b>&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;Gene</font></b>
          </td>
          <td align="left"><label for="gtgene"></label>
            <input type="text" name="gtgene4" id="gtgene4"
                   style="width: 300px; height:41px;font-size:24px;"/>&nbsp;<font color="#006192" size="3">Example:
              SOX2</font>
          </td>
        </tr>
        <tr>
          <td height="10"></td>
        </tr>
        <tr>
          <td width="10000" style="font-size:35px;" align="left" height="35" valign="middle" class="p2"><font
              color="#006192">
            <nobr><b>Genome location</b></nobr>
          </font></td>
          <td align="left" height="40px"><label for="protein"></label>
            <select name="chr" id="organ" style="width:300px; height:40px;font-size:24px;">
              <option value=""><font color="#006192"><b>Chromosome</b></font></option>
              <option>chr1</option>
              <option>chr2</option>
              <option>chr3</option>
              <option>chr4</option>
              <option>chr5</option>
              <option>chr6</option>
              <option>chr7</option>
              <option>chr8</option>
              <option>chr9</option>
              <option>chr10</option>
              <option>chr11</option>
              <option>chr12</option>
              <option>chr13</option>
              <option>chr14</option>
              <option>chr15</option>
              <option>chr16</option>
              <option>chr17</option>
              <option>chr18</option>
              <option>chr19</option>
              <option>chr20</option>
              <option>chr21</option>
              <option>chr22</option>
              <option>chrX</option>
              <option>chrY</option>
              <option>chrM</option>
            </select>
            <b>:</b> <input type="text" class="span3" placeholder="Start" name="start" id="protein"
                            style="width: 300px; height:41px;font-size:24px;"/> <b>--</b> <input type="text"
                                                                                                 class="span3"
                                                                                                 placeholder="End"
                                                                                                 name="end" id="protein"
                                                                                                 style="width:300px;height: 41px;font-size:24px;"/>
            <!--<input type="text" name="drug" id="protein" /></td> -->

        </tr>


        <tr>
          <td height="10"></td>
        </tr>
        <tr>
          <td>&nbsp;</td>
          <p>&nbsp;</p>
          <td align="left"><input type="submit" class="button blue medium" name="button" id="button" value="Submit"
                                  style="width: 110px; height:50px;font-size:20px;"/>
            <input type="reset" class="button blue medium" name="button" id="button" value="Reset"
                   style="width: 110px; height:50px; font-size:20px;"/>
          </td>
        </tr>


        </s:form>

        <tr height="10"></tr>
      </table>
    </div>
    <p>&nbsp;</p>
    <p>&nbsp;</p>
    <p>&nbsp;</p>
    <p>&nbsp;</p>

  </div>
</div>
<p>&nbsp;</p>
<p>&nbsp;</p>
<div style="font-size:25px;margin-top:20px;-moz-box-shadow:1px 3px 20px #003F5F, 2px 2px 5px #003F5F; -webkit-box-shadow:1px 3px 20px #003F5F, 2px 2px 5px #003F5F; box-shadow:1px 3px 20px #003F5F, 2px 2px 5px #003F5F;margin-top:10px; margin:0 auto;width:1970px;height:65px;
	z-index:1;">
  <p>&ensp;</p>
  <font COLOR="#191970" face="Calibri"><b>2021 © School of Life Science and Technology, Computational Biology Research
    Center | Harbin, 150001, Heilongjiang,P.R. China </b> </font>
</div>


<p>&nbsp;</p>
</body>
</html>
