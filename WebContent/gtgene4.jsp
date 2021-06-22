<%@ page language="java" contentType="text/html; charset=UTF-8"
         pageEncoding="UTF-8" %>
<%@ taglib prefix="s" uri="/struts-tags" %>
<!DOCTYPE html>
<html>
<head>
    <meta http-equiv="Content-Type" content="text/html; charset=utf-8"/>
    <meta http-equiv="X-UA-Compatible" content="IE=10; text/html; charset=utf-8"/>
    <link rel="stylesheet" href="css/style.css" media="screen" type="text/css"/> <!-- 导航-->
    <title>HHMD</title>
    <link rel="shortcut icon" href="images/dd.ico"/>


    <link rel="stylesheet" type="text/css" href="css/jquery.dataTables.min.css">

    <link rel="stylesheet" type="text/css" href="css/buttons.dataTables.min.css">

    <script type="text/javascript" language="javascript" src="js/jquery.js"></script>
    <script type="text/javascript" language="javascript" src="js/jquery.dataTables.js"></script>
    <script type="text/javascript" language="javascript" src="js/dataTables.buttons.min.js"></script>
    <script type="text/javascript" language="javascript" src="js/jszip.min.js"></script>
    <script type="text/javascript" language="javascript" src="js/pdfmake.min.js"></script>
    <script type="text/javascript" language="javascript" src="js/vfs_fonts.js"></script>
    <script type="text/javascript" language="javascript" src="js/buttons.html5.min.js"></script>
    <script>
      $(document).ready(function () {
        $('#example').dataTable({
          "pagingType": "full_numbers",  //显示分页所有
          //stateSave: true   //之前选择的分页
          //"searching":true,   //要不要搜索框
          //"scrollY":"200px",     //垂直滚动条
          "lengthMenu": [[10, 25, 50, -1], [10, 25, 50, "All"]],  //定制长度

          initComplete: function () {    //加下拉菜单
            var api = this.api();
            api.columns().indexes().flatten().each(function (i) {
              var column = api.column(i);
              var select = $('<select><option value=""></option></select>')
              .appendTo($(column.footer()).empty())
              .on('change', function () {
                var val = $.fn.dataTable.util.escapeRegex(
                    $(this).val()
                );
                column
                .search(val ? '^' + val + '$' : '', true, false)
                .draw();
              });
              column.data().unique().sort().each(function (d, j) {
                select.append('<option value="' + d + '">' + d + '</option>')
              });
            });
          },
          dom: 'Bfrtip',
          buttons: [
            'copyHtml5',
            'excelHtml5',
            'csvHtml5'
          ]
        });
      });
    </script>
    <style>
        img {
            border: none
        }

        body {
            background: #FFFFFF;
        }

        .datatable tr:hover, .datatable tr.hilite {
            background-color: #CCC;
            color: #0000CC;
        }

        .datatable th, .datatable td {
            text-align: left;
            border: 1px solid #ADADAD;
            padding-left: 3px;
            padding-top: 3px;
            padding-bottom: 3px;
            padding-left: 3px;
            padding-right: 3px;
        }

        img {
            border: 0px;
        }

        .thumbnail span {
            position: relative;
            z-index: 0;
        }

        .thumbnail:hover {
            background-color: transparent;
            z-index: 50;
        }

        .thumbnail span {
        }

        .thumbnail span img {
            border-width: 0;
            padding: 2px;
            position: absolute;
            background-color: #FFFFE0;
            left: -1000px;
            border: 1px dashed gray;
            visibility: hidden;
            color: #000;
            text-decoration: none;
            padding: 5px;
        }

        .thumbnail:hover img {
            visibility: visible;
            top: -30px;
            left: 0px;
        }

        body, td, th {
            font-family: Arial;
            font-size: 11px;
        }

        a:link {
            color: #B71D1D
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
            font-size: 11.5000pt;

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
            height: 640px;
            z-index: 3;
            top: 195px;
            background: url(images/bg009.png)
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
            top: 835px;
            background: url(images/bg003.gif)
        }

    </style>
</head>

<body>
<div style="margin:0 auto;width:1970px;height:135px;z-index:1;">
    <a href="home.jsp"><img src="images/HHMD8.png" style="height: 190px; width: 1970px"/></a>
</div>
<!-- 导航栏 -->
<div class="top"
     style="font-size:25px;margin:0 auto;margin-top:20px;width:1900px;height:45px;z-index: 99999;position: relative">
    <link href="css/font-awesome.css" rel="stylesheet">
    <ul id="breadcrumb">
        <li><a href="home.jsp"><span class="icon icon-home"> </span>&nbsp;Home</a></li>
        <li><a href="search.jsp"><span class="icon icon-search"></span> &nbsp;Search</a></li>
        <li><a href="download.jsp"><span class="icon icon-arrow-down"> </span>&nbsp; Download</a></li>
        <li><a href="Difftools.jsp"><span class="icon icon-gear"> </span>&nbsp; DiffTools</a>
        <li><a href="network.jsp"><span class="icon icon-rocket"> </span>&nbsp; HM_Gene_Net</a>
        </li>
        <!--  <li><a href="m6aprotein.jsp"><span class="icon-beaker"> </span>&nbsp;  m<sup>6</sup>A-Regulator</a></li>-->
        <li><a href="help.jsp"><span class="icon-beaker"> </span>&nbsp; Help</a></li>
    </ul>
</div>
<div style="margin:0 auto;-moz-box-shadow:1px 3px 20px #003F5F, 2px 2px 5px #003F5F; -webkit-box-shadow:1px 3px 20px #003F5F, 2px 2px 5px #003F5F; box-shadow:1px 3px 20px #003F5F, 2px 2px 5px #003F5F;width:1970px;height:820px;z-index:3;background:#FFFFFF;position:relative;">
    <p>&nbsp;</p>
    <p>&nbsp;</p>

    <div style="width:95%;margin:auto">
        <table border="0">
            <tr>
                <td height="10"></td>
            </tr>
        </table>

        <table id="example" class="display" cellspacing="0" style="width: 100%">
            <thead>
            <tr>

                <td width="10%" bgcolor="#006192"><font color="#FFFFFF">Type</font></td>
                <td width="10%" bgcolor="#006192"><font color="#FFFFFF">Chromosome</font></td>
                <td width="10%" bgcolor="#006192"><font color="#FFFFFF">Start</font></td>
                <td width="10%" bgcolor="#006192"><font color="#FFFFFF">End</font></td>
                <td width="10%" bgcolor="#006192"><font color="#FFFFFF">GeneName</font></td>
                <td width="10%" bgcolor="#006192"><font color="#FFFFFF">Drug</font></td>
                <td width="10%" bgcolor="#006192"><font color="#FFFFFF">TF</font></td>
                <td width="10%" bgcolor="#006192"><font color="#FFFFFF">HM</font></td>
                <td width="10%" bgcolor="#006192"><font color="#FFFFFF">GSE</font></td>
                <td width="10%" bgcolor="#006192"><font color="#FFFFFF">ATAC</font></td>
                <td width="10%" bgcolor="#006192"><font color="#FFFFFF">HIC</font></td>
                <td width="10%" bgcolor="#006192"><font color="#FFFFFF">UCSC</font></td>

            </tr>
            </thead>
            <tbody>
            <s:iterator value="#request.gtgene4_total">
                <tr>
                    <td><s:property value="type"></s:property></td>
                    <td><s:property value="chr"></s:property></td>
                    <td><s:property value="start"></s:property></td>
                    <td><s:property value="end"></s:property></td>
                    <td><s:property value="genename"></s:property></td>
                    <td><s:property value="tdrug"></s:property></td>
                    <td><s:property value="tf"></s:property></td>
                    <td><s:property value="hm"></s:property></td>
                    <td><a href="https://www.ncbi.nlm.nih.gov/geo/query/acc.cgi?acc=<s:property value="gse"/>"
                           target="_blank"><s:property value="gse"/></a></td>
                    <td>
                        <a href="ATAC?atactype=<s:property value="type"/>&atacchr=<s:property value="chr"/>&atacstart=<s:property value="start"/>&atacend=<s:property value="end"/>"
                           target="_blank">ATAC</a></td>
                    <td>
                        <a href="HIC?hictype=<s:property value="type"/>&hicchr=<s:property value="chr"/>&hicstart=<s:property value="start"/>&hicend=<s:property value="end"/>"
                           target="_blank">HIC</a></td>
                    <td>
                        <a href="http://genome.ucsc.edu/cgi-bin/hgTracks?org=human&db=hg38&position=<s:property value="chr"/>:<s:property value="start"/>-<s:property value="end"/>"
                           target="_blank">UCSC</a></td>
                </tr>
            </s:iterator>


            </tbody>
        </table>
    </div>

</div>
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
