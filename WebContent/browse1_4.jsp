<%@ page language="java" contentType="text/html; charset=UTF-8"
	pageEncoding="UTF-8"%>
<%@ taglib prefix="s" uri="/struts-tags"%>
<!DOCTYPE html PUBLIC "-//W3C//DTD XHTML 1.0 Transitional//EN" "http://www.w3.org/TR/xhtml1/DTD/xhtml1-transitional.dtd">

<html>
  <head>
    <title>MzTreeView10</title>
    <meta http-equiv="Content-Type" content="text/html; charset=gb2312">
    <script language="JavaScript" src="js/MzTreeView10.js"></script>
    <link href="../css/tree.css" type="text/css" rel="stylesheet">
   
    <style>
    body,td,th {
		font-family: Arial;
	font-size:15px;
	}
    A.MzTreeview
    {
      font-size: 11pt;
      padding-left: 3px;
    }
    </style>
  </head>

  <body class=frame>

<!-- insert into table visitLog -->

<!DOCTYPE html PUBLIC "-//W3C//DTD HTML 4.01 Transitional//EN" "http://www.w3.org/TR/html4/loose.dtd">
<html>
<head>
<meta http-equiv="Content-Type" content="text/html; charset=ISO-8859-1">
<title>Insert title here</title>
</head>
<body>
<!--ip-->
                 

<!-- file path -->
 

<!-- insert into table visitLog -->

</body>
</html>

	
    <SCRIPT LANGUAGE="JavaScript">
   
    window.tree = new MzTreeView("tree");
    
 //  tree.nodes["-1_1"] = "text:"; //娑撳秵妯夌粈鐑樼壌閼哄倻鍋?
 
// tree.nodes["-1_2"] = "text:MiRNAs"; //閸欙缚绔存稉顏呯壌閼哄倻鍋?
	
    tree.icons["property"] = "property.gif";
    tree.icons["css"] = "collection.gif";
    tree.icons["object"]  = "root2.jpg";
    tree.icons["book"]  = "book1.gif";    //閺嶇濡悙鐟版禈閻?
    tree.iconsExpand["book"] = "bookopen.gif"; //鐏炴洖绱戦弮璺侯嚠鎼存梻娈戦崶鍓у 
    tree.setIconPath("images/"); //閸欘垳鏁ら惄绋款嚠鐠侯垰绶?
    
    tree.nodes["-1_NorCline"] = "text:Normal Cell lines;";
    tree.nodes["NorCline_H4R3me2"] = "text:H4R3me2;";
tree.nodes["NorCline_H4K91ac"] = "text:H4K91ac;";
tree.nodes["NorCline_H4K8ac"] = "text:H4K8ac;";
tree.nodes["NorCline_H4K5ac"] = "text:H4K5ac;";
tree.nodes["NorCline_H4K20me3"] = "text:H4K20me3;";
tree.nodes["NorCline_H4K20me1"] = "text:H4K20me1;";
tree.nodes["NorCline_H4K16ac"] = "text:H4K16ac;";
tree.nodes["NorCline_H4K12me1"] = "text:H4K12me1;";
tree.nodes["NorCline_H4K12ac"] = "text:H4K12ac;";
tree.nodes["NorCline_H4ac"] = "text:H4ac;";
tree.nodes["NorCline_H3R8me2a"] = "text:H3R8me2a;";
tree.nodes["NorCline_H3R2me2"] = "text:H3R2me2;";
tree.nodes["NorCline_H3R2me1"] = "text:H3R2me1;";
tree.nodes["NorCline_H3Kme3"] = "text:H3Kme3;";
tree.nodes["NorCline_H3K9me3"] = "text:H3K9me3;";
tree.nodes["NorCline_H3K9me2"] = "text:H3K9me2;";
tree.nodes["NorCline_H3K9me1"] = "text:H3K9me1;";
tree.nodes["NorCline_H3K9ac"] = "text:H3K9ac;";
tree.nodes["NorCline_H3K914ac"] = "text:H3K914ac;";
tree.nodes["NorCline_H3K79me3"] = "text:H3K79me3;";
tree.nodes["NorCline_H3K79me2"] = "text:H3K79me2;";
tree.nodes["NorCline_H3K79me1"] = "text:H3K79me1;";
tree.nodes["NorCline_H3K56ac"] = "text:H3K56ac;";
tree.nodes["NorCline_H3K4me3"] = "text:H3K4me3;";
tree.nodes["NorCline_H3K4me2"] = "text:H3K4me2;";
tree.nodes["NorCline_H3K4me1"] = "text:H3K4me1;";
tree.nodes["NorCline_H3K4me"] = "text:H3K4me;";
tree.nodes["NorCline_H3K4m3"] = "text:H3K4m3;";
tree.nodes["NorCline_H3K4m1"] = "text:H3K4m1;";
tree.nodes["NorCline_H3K4ac"] = "text:H3K4ac;";
tree.nodes["NorCline_H3K36me3"] = "text:H3K36me3;";
tree.nodes["NorCline_H3K36me2"] = "text:H3K36me2;";
tree.nodes["NorCline_H3K36me1"] = "text:H3K36me1;";
tree.nodes["NorCline_H3K36ac"] = "text:H3K36ac;";
tree.nodes["NorCline_H3K2me3"] = "text:H3K2me3;";
tree.nodes["NorCline_H3K27me3"] = "text:H3K27me3;";
tree.nodes["NorCline_H3K27me2"] = "text:H3K27me2;";
tree.nodes["NorCline_H3K27me1"] = "text:H3K27me1;";
tree.nodes["NorCline_H3K27m3"] = "text:H3K27m3;";
tree.nodes["NorCline_H3K27ac"] = "text:H3K27ac;";
tree.nodes["NorCline_H3K23ac"] = "text:H3K23ac;";
tree.nodes["NorCline_H3K18ac"] = "text:H3K18ac;";
tree.nodes["NorCline_H3K14ac"] = "text:H3K14ac;";
tree.nodes["NorCline_H3K122ac"] = "text:H3K122ac;";
tree.nodes["NorCline_H3ac"] = "text:H3ac;";
tree.nodes["NorCline_H2K4me2"] = "text:H2K4me2;";
tree.nodes["NorCline_H2K4me1"] = "text:H2K4me1;";
tree.nodes["NorCline_H2Bub1"] = "text:H2Bub1;";
tree.nodes["NorCline_H2Bub"] = "text:H2Bub;";
tree.nodes["NorCline_H2BK5me1"] = "text:H2BK5me1;";
tree.nodes["NorCline_H2BK5ac"] = "text:H2BK5ac;";
tree.nodes["NorCline_H2BK20ac"] = "text:H2BK20ac;";
tree.nodes["NorCline_H2BK12ac"] = "text:H2BK12ac;";
tree.nodes["NorCline_H2BK120ub"] = "text:H2BK120ub;";
tree.nodes["NorCline_H2BK120ac"] = "text:H2BK120ac;";
tree.nodes["NorCline_H2AZ"] = "text:H2AZ;";
tree.nodes["NorCline_H2aub"] = "text:H2aub;";
tree.nodes["NorCline_H2AK9ac"] = "text:H2AK9ac;";
tree.nodes["NorCline_H2AK5ac"] = "text:H2AK5ac;";
tree.nodes["NorCline_H2aK119ub"] = "text:H2aK119ub;";

 
    




    
    
    tree.nodes["genes_6PGD"]= "text:<a href=\"Gene?Gene=6PGD\" target=\"browse_right\">6PGD</a>;";
    tree.nodes["genes_ADAM19"]= "text:<a href=\"Gene?Gene=ADAM19\" target=\"browse_right\">ADAM19</a>;";
    tree.nodes["genes_AFF4"]= "text:<a href=\"Gene?Gene=AFF4\" target=\"browse_right\">AFF4</a>;";
    tree.nodes["genes_ARHGAP5-AS1"]= "text:<a href=\"Gene?Gene=ARHGAP5-AS1\" target=\"browse_right\">ARHGAP5-AS1</a>;";
    tree.nodes["genes_ASB2"]= "text:<a href=\"Gene?Gene=ASB2\" target=\"browse_right\">ASB2</a>;";
    tree.nodes["genes_ATAD2"]= "text:<a href=\"Gene?Gene=ATAD2\" target=\"browse_right\">ATAD2</a>;";
    tree.nodes["genes_AURKB"]= "text:<a href=\"Gene?Gene=AURKB\" target=\"browse_right\">AURKB</a>;";
    tree.nodes["genes_AXL"]= "text:<a href=\"Gene?Gene=AXL\" target=\"browse_right\">AXL</a>;";
    tree.nodes["genes_Bcl-2"]= "text:<a href=\"Gene?Gene=Bcl-2\" target=\"browse_right\">Bcl-2</a>;";
    tree.nodes["genes_BMP2"]= "text:<a href=\"Gene?Gene=BMP2\" target=\"browse_right\">BMP2</a>;";
    tree.nodes["genes_BNIP3"]= "text:<a href=\"Gene?Gene=BNIP3\" target=\"browse_right\">BNIP3</a>;";
    tree.nodes["genes_CCNA2"]= "text:<a href=\"Gene?Gene=CCNA2\" target=\"browse_right\">CCNA2</a>;";
    tree.nodes["genes_CCND1"]= "text:<a href=\"Gene?Gene=CCND1\" target=\"browse_right\">CCND1</a>;";
    tree.nodes["genes_CCNE1"]= "text:<a href=\"Gene?Gene=CCNE1\" target=\"browse_right\">CCNE1</a>;";
    tree.nodes["genes_CDK1"]= "text:<a href=\"Gene?Gene=CDK1\" target=\"browse_right\">CDK1</a>;";
    tree.nodes["genes_CDK2"]= "text:<a href=\"Gene?Gene=CDK2\" target=\"browse_right\">CDK2</a>;";
    tree.nodes["genes_CDKN1A"]= "text:<a href=\"Gene?Gene=CDKN1A\" target=\"browse_right\">CDKN1A</a>;";
    tree.nodes["genes_CEBPA"]= "text:<a href=\"Gene?Gene=CEBPA\" target=\"browse_right\">CEBPA</a>;";
    tree.nodes["genes_c-Jun"]= "text:<a href=\"Gene?Gene=c-Jun\" target=\"browse_right\">c-Jun</a>;";
    tree.nodes["genes_c-Met"]= "text:<a href=\"Gene?Gene=c-Met\" target=\"browse_right\">c-Met</a>;";
    tree.nodes["genes_CTNNB1"]= "text:<a href=\"Gene?Gene=CTNNB1\" target=\"browse_right\">CTNNB1</a>;";
    tree.nodes["genes_CXCR4"]= "text:<a href=\"Gene?Gene=CXCR4\" target=\"browse_right\">CXCR4</a>;";
    tree.nodes["genes_DANCR"]= "text:<a href=\"Gene?Gene=DANCR\" target=\"browse_right\">DANCR</a>;";
    tree.nodes["genes_DRG1"]= "text:<a href=\"Gene?Gene=DRG1\" target=\"browse_right\">DRG1</a>;";
    tree.nodes["genes_E2F1"]= "text:<a href=\"Gene?Gene=E2F1\" target=\"browse_right\">E2F1</a>;";
    tree.nodes["genes_EGFR"]= "text:<a href=\"Gene?Gene=EGFR\" target=\"browse_right\">EGFR</a>;";
    tree.nodes["genes_EIF3C"]= "text:<a href=\"Gene?Gene=EIF3C\" target=\"browse_right\">EIF3C</a>;";
    tree.nodes["genes_ETS1"]= "text:<a href=\"Gene?Gene=ETS1\" target=\"browse_right\">ETS1</a>;";
    tree.nodes["genes_EZH2"]= "text:<a href=\"Gene?Gene=EZH2\" target=\"browse_right\">EZH2</a>;";
    tree.nodes["genes_Fasn"]= "text:<a href=\"Gene?Gene=Fasn\" target=\"browse_right\">Fasn</a>;";
    tree.nodes["genes_FOXM1"]= "text:<a href=\"Gene?Gene=FOXM1\" target=\"browse_right\">FOXM1</a>;";
    tree.nodes["genes_FSCN1"]= "text:<a href=\"Gene?Gene=FSCN1\" target=\"browse_right\">FSCN1</a>;";
    tree.nodes["genes_GAS5"]= "text:<a href=\"Gene?Gene=GAS5\" target=\"browse_right\">GAS5</a>;";
    tree.nodes["genes_GATA3"]= "text:<a href=\"Gene?Gene=GATA3\" target=\"browse_right\">GATA3</a>;";
    tree.nodes["genes_GLI1"]= "text:<a href=\"Gene?Gene=GLI1\" target=\"browse_right\">GLI1</a>;";
    tree.nodes["genes_HBXIP"]= "text:<a href=\"Gene?Gene=HBXIP\" target=\"browse_right\">HBXIP</a>;";
    tree.nodes["genes_HDGF"]= "text:<a href=\"Gene?Gene=HDGF\" target=\"browse_right\">HDGF</a>;";
    tree.nodes["genes_HIF1A"]= "text:<a href=\"Gene?Gene=HIF1A\" target=\"browse_right\">HIF1A</a>;";
    tree.nodes["genes_HINT2"]= "text:<a href=\"Gene?Gene=HINT2\" target=\"browse_right\">HINT2</a>;";
    tree.nodes["genes_HK2/SLC2A1"]= "text:<a href=\"Gene?Gene=HK2/SLC2A1\" target=\"browse_right\">HK2/SLC2A1</a>;";
    tree.nodes["genes_ID2"]= "text:<a href=\"Gene?Gene=ID2\" target=\"browse_right\">ID2</a>;";
    tree.nodes["genes_IKBKB"]= "text:<a href=\"Gene?Gene=IKBKB\" target=\"browse_right\">IKBKB</a>;";
    tree.nodes["genes_IL11"]= "text:<a href=\"Gene?Gene=IL11\" target=\"browse_right\">IL11</a>;";
    tree.nodes["genes_ITGA6"]= "text:<a href=\"Gene?Gene=ITGA6\" target=\"browse_right\">ITGA6</a>;";
    tree.nodes["genes_ITGB1"]= "text:<a href=\"Gene?Gene=ITGB1\" target=\"browse_right\">ITGB1</a>;";
    tree.nodes["genes_JUNB"]= "text:<a href=\"Gene?Gene=JUNB\" target=\"browse_right\">JUNB</a>;";
    tree.nodes["genes_KCNK15-AS1"]= "text:<a href=\"Gene?Gene=KCNK15-AS1\" target=\"browse_right\">KCNK15-AS1</a>;";
    tree.nodes["genes_KEAP1"]= "text:<a href=\"Gene?Gene=KEAP1\" target=\"browse_right\">KEAP1</a>;";
    tree.nodes["genes_KLF4"]= "text:<a href=\"Gene?Gene=KLF4\" target=\"browse_right\">KLF4</a>;";
    tree.nodes["genes_LEF1"]= "text:<a href=\"Gene?Gene=LEF1\" target=\"browse_right\">LEF1</a>;";
    tree.nodes["genes_LINC00958"]= "text:<a href=\"Gene?Gene=LINC00958\" target=\"browse_right\">LINC00958</a>;";
    tree.nodes["genes_MALAT1"]= "text:<a href=\"Gene?Gene=MALAT1\" target=\"browse_right\">MALAT1</a>;";
    tree.nodes["genes_MARCRSL1"]= "text:<a href=\"Gene?Gene=MARCRSL1\" target=\"browse_right\">MARCRSL1</a>;";
    tree.nodes["genes_miR-1246"]= "text:<a href=\"Gene?Gene=miR-1246\" target=\"browse_right\">miR-1246</a>;";
    tree.nodes["genes_miR221"]= "text:<a href=\"Gene?Gene=miR221\" target=\"browse_right\">miR221</a>;";
    tree.nodes["genes_miR222"]= "text:<a href=\"Gene?Gene=miR222\" target=\"browse_right\">miR222</a>;";
    tree.nodes["genes_miR-375"]= "text:<a href=\"Gene?Gene=miR-375\" target=\"browse_right\">miR-375</a>;";
    tree.nodes["genes_MMP13"]= "text:<a href=\"Gene?Gene=MMP13\" target=\"browse_right\">MMP13</a>;";
    tree.nodes["genes_MTORC2"]= "text:<a href=\"Gene?Gene=MTORC2\" target=\"browse_right\">MTORC2</a>;";
    tree.nodes["genes_MYB"]= "text:<a href=\"Gene?Gene=MYB\" target=\"browse_right\">MYB</a>;";
    tree.nodes["genes_MYC"]= "text:<a href=\"Gene?Gene=MYC\" target=\"browse_right\">MYC</a>;";
    tree.nodes["genes_MZF1"]= "text:<a href=\"Gene?Gene=MZF1\" target=\"browse_right\">MZF1</a>;";
    tree.nodes["genes_NANOG"]= "text:<a href=\"Gene?Gene=NANOG\" target=\"browse_right\">NANOG</a>;";
    tree.nodes["genes_NEAT1"]= "text:<a href=\"Gene?Gene=NEAT1\" target=\"browse_right\">NEAT1</a>;";
    tree.nodes["genes_Notch1"]= "text:<a href=\"Gene?Gene=Notch1\" target=\"browse_right\">Notch1</a>;";
    tree.nodes["genes_OCT4"]= "text:<a href=\"Gene?Gene=OCT4\" target=\"browse_right\">OCT4</a>;";
    tree.nodes["genes_PD-1"]= "text:<a href=\"Gene?Gene=PD-1\" target=\"browse_right\">PD-1</a>;";
    tree.nodes["genes_PER1"]= "text:<a href=\"Gene?Gene=PER1\" target=\"browse_right\">PER1</a>;";
    tree.nodes["genes_PGC-1a"]= "text:<a href=\"Gene?Gene=PGC-1a\" target=\"browse_right\">PGC-1a</a>;";
    tree.nodes["genes_PHLPP2"]= "text:<a href=\"Gene?Gene=PHLPP2\" target=\"browse_right\">PHLPP2</a>;";
    tree.nodes["genes_PKM2"]= "text:<a href=\"Gene?Gene=PKM2\" target=\"browse_right\">PKM2</a>;";
    tree.nodes["genes_pri-miR-1246"]= "text:<a href=\"Gene?Gene=pri-miR-1246\" target=\"browse_right\">pri-miR-1246</a>;";
    tree.nodes["genes_pri-miR-25"]= "text:<a href=\"Gene?Gene=pri-miR-25\" target=\"browse_right\">pri-miR-25</a>;";
    tree.nodes["genes_PTEN"]= "text:<a href=\"Gene?Gene=PTEN\" target=\"browse_right\">PTEN</a>;";
    tree.nodes["genes_PVT1"]= "text:<a href=\"Gene?Gene=PVT1\" target=\"browse_right\">PVT1</a>;";
    tree.nodes["genes_RARA"]= "text:<a href=\"Gene?Gene=RARA\" target=\"browse_right\">RARA</a>;";
    tree.nodes["genes_RELA"]= "text:<a href=\"Gene?Gene=RELA\" target=\"browse_right\">RELA</a>;";
    tree.nodes["genes_SETD7"]= "text:<a href=\"Gene?Gene=SETD7\" target=\"browse_right\">SETD7</a>;";
    tree.nodes["genes_SNAIL"]= "text:<a href=\"Gene?Gene=SNAIL\" target=\"browse_right\">SNAIL</a>;";
    tree.nodes["genes_SOCS2"]= "text:<a href=\"Gene?Gene=SOCS2\" target=\"browse_right\">SOCS2</a>;";
    tree.nodes["genes_SOX10"]= "text:<a href=\"Gene?Gene=SOX10\" target=\"browse_right\">SOX10</a>;";
    tree.nodes["genes_SOX2"]= "text:<a href=\"Gene?Gene=SOX2\" target=\"browse_right\">SOX2</a>;";
    tree.nodes["genes_SOX4"]= "text:<a href=\"Gene?Gene=SOX4\" target=\"browse_right\">SOX4</a>;";
    tree.nodes["genes_SP1"]= "text:<a href=\"Gene?Gene=SP1\" target=\"browse_right\">SP1</a>;";
    tree.nodes["genes_SP2"]= "text:<a href=\"Gene?Gene=SP2\" target=\"browse_right\">SP2</a>;";
    tree.nodes["genes_SRPINE2"]= "text:<a href=\"Gene?Gene=SRPINE2\" target=\"browse_right\">SRPINE2</a>;";
    tree.nodes["genes_SRSFs"]= "text:<a href=\"Gene?Gene=SRSFs\" target=\"browse_right\">SRSFs</a>;";
    tree.nodes["genes_TACC3"]= "text:<a href=\"Gene?Gene=TACC3\" target=\"browse_right\">TACC3</a>;";
    tree.nodes["genes_TCF1"]= "text:<a href=\"Gene?Gene=TCF1\" target=\"browse_right\">TCF1</a>;";
    tree.nodes["genes_TIMP3"]= "text:<a href=\"Gene?Gene=TIMP3\" target=\"browse_right\">TIMP3</a>;";
    tree.nodes["genes_TK1"]= "text:<a href=\"Gene?Gene=TK1\" target=\"browse_right\">TK1</a>;";
    tree.nodes["genes_TP53"]= "text:<a href=\"Gene?Gene=TP53\" target=\"browse_right\">TP53</a>;";
    tree.nodes["genes_UBE2C"]= "text:<a href=\"Gene?Gene=UBE2C\" target=\"browse_right\">UBE2C</a>;";
    tree.nodes["genes_USP7"]= "text:<a href=\"Gene?Gene=USP7\" target=\"browse_right\">USP7</a>;";
    tree.nodes["genes_WIF-1"]= "text:<a href=\"Gene?Gene=WIF-1\" target=\"browse_right\">WIF-1</a>;";
    tree.nodes["genes_XIST"]= "text:<a href=\"Gene?Gene=XIST\" target=\"browse_right\">XIST</a>;";
    tree.nodes["genes_YAP"]= "text:<a href=\"Gene?Gene=YAP\" target=\"browse_right\">YAP</a>;";
    tree.nodes["genes_YAP1"]= "text:<a href=\"Gene?Gene=YAP1\" target=\"browse_right\">YAP1</a>;";
    tree.nodes["genes_ZMYM1"]= "text:<a href=\"Gene?Gene=ZMYM1\" target=\"browse_right\">ZMYM1</a>;";
  

    tree.nodes["diseases_Acute Myeloid Leukemia"]= "text:<a href=\"Gene?disease=Acute Myeloid Leukemia\" target=\"browse_right\">Acute Myeloid Leukemia</a>;";
    
    tree.nodes["diseases_Alzheimer"]= "text:<a href=\"Gene?disease=Alzheimer\" target=\"browse_right\">Alzheimer</a>;";
    tree.nodes["diseases_Beta-Cells Glucose Intolerance"]= "text:<a href=\"Gene?disease=Beta-Cells Glucose Intolerance\" target=\"browse_right\">Beta-Cells Glucose Intolerance</a>;";
    tree.nodes["diseases_Bladder Cancer"]= "text:<a href=\"Gene?disease=Bladder Cancer\" target=\"browse_right\">Bladder Cancer</a>;";
    tree.nodes["diseases_Osteoporosis"]= "text:<a href=\"Gene?disease=Osteoporosis\" target=\"browse_right\">Osteoporosis</a>;";
    tree.nodes["diseases_Breast cancer"]= "text:<a href=\"Gene?disease=Breast cancer\" target=\"browse_right\">Breast cancer</a>;";
    tree.nodes["diseases_Cardiac Hypertrophy"]= "text:<a href=\"Gene?disease=Cardiac Hypertrophy\" target=\"browse_right\">Cardiac Hypertrophy</a>;";
    tree.nodes["diseases_Cervical cancer"]= "text:<a href=\"Gene?disease=Cervical cancer\" target=\"browse_right\">Cervical cancer</a>;";
    tree.nodes["diseases_Cervical Squamous Cell Carcinoma"]= "text:<a href=\"Gene?disease=Cervical Squamous Cell Carcinoma\" target=\"browse_right\">Cervical Squamous Cell Carcinoma</a>;";
    tree.nodes["diseases_Pancreatic cancer"]= "text:<a href=\"Gene?disease=Pancreatic cancer\" target=\"browse_right\">Pancreatic cancer</a>;";
    tree.nodes["diseases_Clear Cell Renal Cell Carcinoma"]= "text:<a href=\"Gene?disease=Clear Cell Renal Cell Carcinoma\" target=\"browse_right\">Clear Cell Renal Cell Carcinoma</a>;";
    tree.nodes["diseases_Colon cancer"]= "text:<a href=\"Gene?disease=Colon cancer\" target=\"browse_right\">Colon cancer</a>;";
    tree.nodes["diseases_Colorectal cancer"]= "text:<a href=\"Gene?disease=Colorectal cancer\" target=\"browse_right\">Colorectal cancer</a>;";
    tree.nodes["diseases_Cutaneous Squamous Cell Carcinoma"]= "text:<a href=\"Gene?disease=Cutaneous Squamous Cell Carcinoma\" target=\"browse_right\">Cutaneous Squamous Cell Carcinoma</a>;";
    tree.nodes["diseases_Diabetes"]= "text:<a href=\"Gene?disease=Diabetes\" target=\"browse_right\">Diabetes</a>;";
    tree.nodes["diseases_Diabetic Cataract"]= "text:<a href=\"Gene?disease=Diabetic Cataract\" target=\"browse_right\">Diabetic Cataract</a>;";
    tree.nodes["diseases_Dopaminergic Neurotransmission Deficits"]= "text:<a href=\"Gene?disease=Dopaminergic Neurotransmission Deficits\" target=\"browse_right\">Dopaminergic Neurotransmission Deficits</a>;";
    tree.nodes["diseases_Endometrial cancer"]= "text:<a href=\"Gene?disease=Endometrial cancer\" target=\"browse_right\">Endometrial cancer</a>;";
    tree.nodes["diseases_Esophageal Squamous Cell Carcinoma"]= "text:<a href=\"Gene?disease=Esophageal Squamous Cell Carcinoma\" target=\"browse_right\">Esophageal Squamous Cell Carcinoma</a>;";
    tree.nodes["diseases_Gastric cancer"]= "text:<a href=\"Gene?disease=Gastric cancer\" target=\"browse_right\">Gastric cancer</a>;";
    tree.nodes["diseases_Glioblastoma"]= "text:<a href=\"Gene?disease=Glioblastoma\" target=\"browse_right\">Glioblastoma</a>;";
    tree.nodes["diseases_Glioma"]= "text:<a href=\"Gene?disease=Glioma\" target=\"browse_right\">Glioma</a>;";
    tree.nodes["diseases_Heart disease"]= "text:<a href=\"Gene?disease=Heart disease\" target=\"browse_right\">Heart disease</a>;";
    tree.nodes["diseases_Heart Failure"]= "text:<a href=\"Gene?disease=Heart Failure\" target=\"browse_right\">Heart Failure</a>;";
    tree.nodes["diseases_Hepatoblastoma"]= "text:<a href=\"Gene?disease=Hepatoblastoma\" target=\"browse_right\">Hepatoblastoma</a>;";
    tree.nodes["diseases_Hepatocellular carcinoma"]= "text:<a href=\"Gene?disease=Hepatocellular carcinoma\" target=\"browse_right\">Hepatocellular carcinoma</a>;";
    tree.nodes["diseases_Infertility"]= "text:<a href=\"Gene?disease=Infertility\" target=\"browse_right\">Infertility</a>;";
    tree.nodes["diseases_Inflammatory pain"]= "text:<a href=\"Gene?disease=Inflammatory pain\" target=\"browse_right\">Inflammatory pain</a>;";
    tree.nodes["diseases_Inflammatory Response"]= "text:<a href=\"Gene?disease=Inflammatory Response\" target=\"browse_right\">Inflammatory Response</a>;";
    tree.nodes["diseases_Pulp inflammation"]= "text:<a href=\"Gene?disease=Pulp inflammation\" target=\"browse_right\">Pulp inflammation</a>;";
    tree.nodes["diseases_Intrahepatic Cholangiocarcinoma"]= "text:<a href=\"Gene?disease=Intrahepatic Cholangiocarcinoma\" target=\"browse_right\">Intrahepatic Cholangiocarcinoma</a>;";
    tree.nodes["diseases_Kidney Injury"]= "text:<a href=\"Gene?disease=Kidney Injury\" target=\"browse_right\">Kidney Injury</a>;";
    tree.nodes["diseases_Leukaemia"]= "text:<a href=\"Gene?disease=Leukaemia\" target=\"browse_right\">Leukaemia</a>;";
    tree.nodes["diseases_Lipid accumulation in skeletal muscle cells"]= "text:<a href=\"Gene?disease=Lipid accumulation in skeletal muscle cells\" target=\"browse_right\">Lipid accumulation in skeletal muscle cells</a>;";
    tree.nodes["diseases_Liver Cancer"]= "text:<a href=\"Gene?disease=Liver Cancer\" target=\"browse_right\">Liver Cancer</a>;";
    tree.nodes["diseases_Lung Adenocarcinoma"]= "text:<a href=\"Gene?disease=Lung Adenocarcinoma\" target=\"browse_right\">Lung Adenocarcinoma</a>;";
    tree.nodes["diseases_Lung Cancer"]= "text:<a href=\"Gene?disease=Lung Cancer\" target=\"browse_right\">Lung Cancer</a>;";
    tree.nodes["diseases_Lung Squamous Cell Carcinoma"]= "text:<a href=\"Gene?disease=Lung Squamous Cell Carcinoma\" target=\"browse_right\">Lung Squamous Cell Carcinoma</a>;";
    tree.nodes["diseases_Male infertility"]= "text:<a href=\"Gene?disease=Male infertility\" target=\"browse_right\">Male infertility</a>;";
    tree.nodes["diseases_Melanoma"]= "text:<a href=\"Gene?disease=Melanoma\" target=\"browse_right\">Melanoma</a>;";
    tree.nodes["diseases_Melanoma Cells"]= "text:<a href=\"Gene?disease=Melanoma Cells\" target=\"browse_right\">Melanoma Cells</a>;";
    tree.nodes["diseases_Merkel Cell Carcinoma"]= "text:<a href=\"Gene?disease=Merkel Cell Carcinoma\" target=\"browse_right\">Merkel Cell Carcinoma</a>;";
    tree.nodes["diseases_Nasopharyngeal Carcinoma"]= "text:<a href=\"Gene?disease=Nasopharyngeal Carcinoma\" target=\"browse_right\">Nasopharyngeal Carcinoma</a>;";
    tree.nodes["diseases_Nonalcoholic fatty liver"]= "text:<a href=\"Gene?disease=Nonalcoholic fatty liver\" target=\"browse_right\">Nonalcoholic fatty liver</a>;";
    tree.nodes["diseases_NSCLC"]= "text:<a href=\"Gene?disease=NSCLC\" target=\"browse_right\">NSCLC</a>;";
    tree.nodes["diseases_Obesity"]= "text:<a href=\"Gene?disease=Obesity\" target=\"browse_right\">Obesity</a>;";
    tree.nodes["diseases_Oral Squamous Cell Carcinoma"]= "text:<a href=\"Gene?disease=Oral Squamous Cell Carcinoma\" target=\"browse_right\">Oral Squamous Cell Carcinoma</a>;";
    tree.nodes["diseases_Ossification of the ligamentum flavum"]= "text:<a href=\"Gene?disease=Ossification of the ligamentum flavum\" target=\"browse_right\">Ossification of the ligamentum flavum</a>;";
    tree.nodes["diseases_Osteoarthritis"]= "text:<a href=\"Gene?disease=Osteoarthritis\" target=\"browse_right\">Osteoarthritis</a>;";
    tree.nodes["diseases_Osteosarcoma"]= "text:<a href=\"Gene?disease=Osteosarcoma\" target=\"browse_right\">Osteosarcoma</a>;";
    tree.nodes["diseases_Ovarian cancer"]= "text:<a href=\"Gene?disease=Ovarian cancer\" target=\"browse_right\">Ovarian cancer</a>;";
    tree.nodes["diseases_Prostate cancer"]= "text:<a href=\"Gene?disease=Prostate cancer\" target=\"browse_right\">Prostate cancer</a>;";
    tree.nodes["diseases_Renal cell carcinoma"]= "text:<a href=\"Gene?disease=Renal cell carcinoma\" target=\"browse_right\">Renal cell carcinoma</a>;";
    tree.nodes["diseases_Renal ischemia-reperfusion injury"]= "text:<a href=\"Gene?disease=Renal ischemia-reperfusion injury\" target=\"browse_right\">Renal ischemia-reperfusion injury</a>;";
    tree.nodes["diseases_Rheumatoid Arthritis"]= "text:<a href=\"Gene?disease=Rheumatoid Arthritis\" target=\"browse_right\">Rheumatoid Arthritis</a>;";
    tree.nodes["diseases_Testicular Germ Cell Tumors"]= "text:<a href=\"Gene?disease=Testicular Germ Cell Tumors\" target=\"browse_right\">Testicular Germ Cell Tumors</a>;";
    tree.nodes["diseases_Thyroid Carcinoma"]= "text:<a href=\"Gene?disease=Thyroid Carcinoma\" target=\"browse_right\">Thyroid Carcinoma</a>;";
    tree.nodes["diseases_Uveal Melanoma"]= "text:<a href=\"Gene?disease=Uveal Melanoma\" target=\"browse_right\">Uveal Melanoma</a>;";
    tree.nodes["diseases_Vascular Calcification"]= "text:<a href=\"Gene?disease=Vascular Calcification\" target=\"browse_right\">Vascular Calcification</a>;";

    
    tree.nodes["protein_METTL3"]= "text:<a href=\"Gene?protein=METTL3\" target=\"browse_right\">METTL3</a>;";
    tree.nodes["protein_FTO"]= "text:<a href=\"Gene?protein=FTO\" target=\"browse_right\">FTO</a>;";
    tree.nodes["protein_METTL14"]= "text:<a href=\"Gene?protein=METTL14\" target=\"browse_right\">METTL14</a>;";
    tree.nodes["protein_ALKBH5"]= "text:<a href=\"Gene?protein=ALKBH5\" target=\"browse_right\">ALKBH5</a>;";
    tree.nodes["protein_YTHDF2"]= "text:<a href=\"Gene?protein=YTHDF2\" target=\"browse_right\">YTHDF2</a>;";
    tree.nodes["protein_ALKBH1"]= "text:<a href=\"Gene?protein=ALKBH1\" target=\"browse_right\">ALKBH1</a>;";
    tree.nodes["protein_KIAA1429"]= "text:<a href=\"Gene?protein=KIAA1429\" target=\"browse_right\">KIAA1429</a>;";
    tree.nodes["protein_HNRNPA2B1"]= "text:<a href=\"Gene?protein=HNRNPA2B1\" target=\"browse_right\">HNRNPA2B1</a>;";
    tree.nodes["protein_IGF2BP1/2/3"]= "text:<a href=\"Gene?protein=IGF2BP1/2/3\" target=\"browse_right\">IGF2BP1/2/3</a>;";
    tree.nodes["protein_YTHDC2"]= "text:<a href=\"Gene?protein=YTHDC2\" target=\"browse_right\">YTHDC2</a>;";
    tree.nodes["protein_YTHDF1"]= "text:<a href=\"Gene?protein=YTHDF1\" target=\"browse_right\">YTHDF1</a>;";
    tree.nodes["protein_SND1"]= "text:<a href=\"Gene?protein=SND1\" target=\"browse_right\">SND1</a>;";
    tree.nodes["protein_YTHDF3"]= "text:<a href=\"Gene?protein=YTHDF3\" target=\"browse_right\">YTHDF3</a>;";
    tree.nodes["protein_WTAP"]= "text:<a href=\"Gene?protein=WTAP\" target=\"browse_right\">WTAP</a>;";
    tree.nodes["protein_IGF2BP2"]= "text:<a href=\"Gene?protein=IGF2BP2\" target=\"browse_right\">IGF2BP2</a>;";
    tree.nodes["protein_VIRMA"]= "text:<a href=\"Gene?protein=VIRMA\" target=\"browse_right\">VIRMA</a>;";



	
		   
	//tree.nodes["genes_KRAS"] = "text:<a href=\"Gene?Gene=kras\" target=\"browse_right\">KRAS</a>;";
	 
tree.nodes["htgene_ABL1"]= "text:<a href=\"mirna?Gene=ABL1\" target=\"browse_right\">ABL1</a>;";
tree.nodes["htgene_ACADVL"]= "text:<a href=\"mirna?Gene=ACADVL\" target=\"browse_right\">ACADVL</a>;";
tree.nodes["htgene_ACIN1"]= "text:<a href=\"mirna?Gene=ACIN1\" target=\"browse_right\">ACIN1</a>;";
tree.nodes["htgene_ACTN1"]= "text:<a href=\"mirna?Gene=ACTN1\" target=\"browse_right\">ACTN1</a>;";
tree.nodes["htgene_ACTN4"]= "text:<a href=\"mirna?Gene=ACTN4\" target=\"browse_right\">ACTN4</a>;";
tree.nodes["htgene_ADAR"]= "text:<a href=\"mirna?Gene=ADAR\" target=\"browse_right\">ADAR</a>;";
tree.nodes["htgene_ADCY3"]= "text:<a href=\"mirna?Gene=ADCY3\" target=\"browse_right\">ADCY3</a>;";
tree.nodes["htgene_ADCY9"]= "text:<a href=\"mirna?Gene=ADCY9\" target=\"browse_right\">ADCY9</a>;";
tree.nodes["htgene_ADNP2"]= "text:<a href=\"mirna?Gene=ADNP2\" target=\"browse_right\">ADNP2</a>;";
tree.nodes["htgene_AFF1"]= "text:<a href=\"mirna?Gene=AFF1\" target=\"browse_right\">AFF1</a>;";
tree.nodes["htgene_AGO2"]= "text:<a href=\"mirna?Gene=AGO2\" target=\"browse_right\">AGO2</a>;";
tree.nodes["htgene_AGPAT6"]= "text:<a href=\"mirna?Gene=AGPAT6\" target=\"browse_right\">AGPAT6</a>;";
tree.nodes["htgene_AHDC1"]= "text:<a href=\"mirna?Gene=AHDC1\" target=\"browse_right\">AHDC1</a>;";
tree.nodes["htgene_AHNAK"]= "text:<a href=\"mirna?Gene=AHNAK\" target=\"browse_right\">AHNAK</a>;";
tree.nodes["htgene_AHNAK2"]= "text:<a href=\"mirna?Gene=AHNAK2\" target=\"browse_right\">AHNAK2</a>;";
tree.nodes["htgene_AHRR"]= "text:<a href=\"mirna?Gene=AHRR\" target=\"browse_right\">AHRR</a>;";
tree.nodes["htgene_AKAP13"]= "text:<a href=\"mirna?Gene=AKAP13\" target=\"browse_right\">AKAP13</a>;";
tree.nodes["htgene_AKAP17A"]= "text:<a href=\"mirna?Gene=AKAP17A\" target=\"browse_right\">AKAP17A</a>;";
tree.nodes["htgene_AKAP2"]= "text:<a href=\"mirna?Gene=AKAP2\" target=\"browse_right\">AKAP2</a>;";
tree.nodes["htgene_AKAP9"]= "text:<a href=\"mirna?Gene=AKAP9\" target=\"browse_right\">AKAP9</a>;";
tree.nodes["htgene_ALMS1"]= "text:<a href=\"mirna?Gene=ALMS1\" target=\"browse_right\">ALMS1</a>;";
tree.nodes["htgene_ANKFY1"]= "text:<a href=\"mirna?Gene=ANKFY1\" target=\"browse_right\">ANKFY1</a>;";
tree.nodes["htgene_ANKHD1"]= "text:<a href=\"mirna?Gene=ANKHD1\" target=\"browse_right\">ANKHD1</a>;";
tree.nodes["htgene_ANKHD1-EIF4EBP3"]= "text:<a href=\"mirna?Gene=ANKHD1-EIF4EBP3\" target=\"browse_right\">ANKHD1-EIF4EBP3</a>;";
tree.nodes["htgene_ANKLE2"]= "text:<a href=\"mirna?Gene=ANKLE2\" target=\"browse_right\">ANKLE2</a>;";
tree.nodes["htgene_ANKRD11"]= "text:<a href=\"mirna?Gene=ANKRD11\" target=\"browse_right\">ANKRD11</a>;";
tree.nodes["htgene_ANKRD17"]= "text:<a href=\"mirna?Gene=ANKRD17\" target=\"browse_right\">ANKRD17</a>;";
tree.nodes["htgene_ANKRD33B"]= "text:<a href=\"mirna?Gene=ANKRD33B\" target=\"browse_right\">ANKRD33B</a>;";
tree.nodes["htgene_AP3D1"]= "text:<a href=\"mirna?Gene=AP3D1\" target=\"browse_right\">AP3D1</a>;";
tree.nodes["htgene_AP5B1"]= "text:<a href=\"mirna?Gene=AP5B1\" target=\"browse_right\">AP5B1</a>;";
tree.nodes["htgene_APP"]= "text:<a href=\"mirna?Gene=APP\" target=\"browse_right\">APP</a>;";
tree.nodes["htgene_ARAP1"]= "text:<a href=\"mirna?Gene=ARAP1\" target=\"browse_right\">ARAP1</a>;";
tree.nodes["htgene_ARHGAP21"]= "text:<a href=\"mirna?Gene=ARHGAP21\" target=\"browse_right\">ARHGAP21</a>;";
tree.nodes["htgene_ARHGAP35"]= "text:<a href=\"mirna?Gene=ARHGAP35\" target=\"browse_right\">ARHGAP35</a>;";
tree.nodes["htgene_ARHGEF17"]= "text:<a href=\"mirna?Gene=ARHGEF17\" target=\"browse_right\">ARHGEF17</a>;";
tree.nodes["htgene_ARID1A"]= "text:<a href=\"mirna?Gene=ARID1A\" target=\"browse_right\">ARID1A</a>;";
tree.nodes["htgene_ARID1B"]= "text:<a href=\"mirna?Gene=ARID1B\" target=\"browse_right\">ARID1B</a>;";
tree.nodes["htgene_ARID4B"]= "text:<a href=\"mirna?Gene=ARID4B\" target=\"browse_right\">ARID4B</a>;";
tree.nodes["htgene_ASB6"]= "text:<a href=\"mirna?Gene=ASB6\" target=\"browse_right\">ASB6</a>;";
tree.nodes["htgene_ASH1L"]= "text:<a href=\"mirna?Gene=ASH1L\" target=\"browse_right\">ASH1L</a>;";
tree.nodes["htgene_ASPH"]= "text:<a href=\"mirna?Gene=ASPH\" target=\"browse_right\">ASPH</a>;";
tree.nodes["htgene_ASPM"]= "text:<a href=\"mirna?Gene=ASPM\" target=\"browse_right\">ASPM</a>;";
tree.nodes["htgene_ASXL1"]= "text:<a href=\"mirna?Gene=ASXL1\" target=\"browse_right\">ASXL1</a>;";
tree.nodes["htgene_ASXL2"]= "text:<a href=\"mirna?Gene=ASXL2\" target=\"browse_right\">ASXL2</a>;";
tree.nodes["htgene_ATP11A"]= "text:<a href=\"mirna?Gene=ATP11A\" target=\"browse_right\">ATP11A</a>;";
tree.nodes["htgene_ATP2A2"]= "text:<a href=\"mirna?Gene=ATP2A2\" target=\"browse_right\">ATP2A2</a>;";
tree.nodes["htgene_ATRX"]= "text:<a href=\"mirna?Gene=ATRX\" target=\"browse_right\">ATRX</a>;";
tree.nodes["htgene_BAHCC1"]= "text:<a href=\"mirna?Gene=BAHCC1\" target=\"browse_right\">BAHCC1</a>;";
tree.nodes["htgene_BAZ1B"]= "text:<a href=\"mirna?Gene=BAZ1B\" target=\"browse_right\">BAZ1B</a>;";
tree.nodes["htgene_BAZ2A"]= "text:<a href=\"mirna?Gene=BAZ2A\" target=\"browse_right\">BAZ2A</a>;";
tree.nodes["htgene_BCL9L"]= "text:<a href=\"mirna?Gene=BCL9L\" target=\"browse_right\">BCL9L</a>;";
tree.nodes["htgene_BDP1"]= "text:<a href=\"mirna?Gene=BDP1\" target=\"browse_right\">BDP1</a>;";
tree.nodes["htgene_BIRC6"]= "text:<a href=\"mirna?Gene=BIRC6\" target=\"browse_right\">BIRC6</a>;";
tree.nodes["htgene_BOD1L1"]= "text:<a href=\"mirna?Gene=BOD1L1\" target=\"browse_right\">BOD1L1</a>;";
tree.nodes["htgene_BPTF"]= "text:<a href=\"mirna?Gene=BPTF\" target=\"browse_right\">BPTF</a>;";
tree.nodes["htgene_BRD2"]= "text:<a href=\"mirna?Gene=BRD2\" target=\"browse_right\">BRD2</a>;";
tree.nodes["htgene_BRD3"]= "text:<a href=\"mirna?Gene=BRD3\" target=\"browse_right\">BRD3</a>;";
tree.nodes["htgene_BRD4"]= "text:<a href=\"mirna?Gene=BRD4\" target=\"browse_right\">BRD4</a>;";
tree.nodes["htgene_BRF1"]= "text:<a href=\"mirna?Gene=BRF1\" target=\"browse_right\">BRF1</a>;";
tree.nodes["htgene_BRWD1"]= "text:<a href=\"mirna?Gene=BRWD1\" target=\"browse_right\">BRWD1</a>;";
tree.nodes["htgene_C15orf39"]= "text:<a href=\"mirna?Gene=C15orf39\" target=\"browse_right\">C15orf39</a>;";
tree.nodes["htgene_C22orf29"]= "text:<a href=\"mirna?Gene=C22orf29\" target=\"browse_right\">C22orf29</a>;";
tree.nodes["htgene_CACTIN"]= "text:<a href=\"mirna?Gene=CACTIN\" target=\"browse_right\">CACTIN</a>;";
tree.nodes["htgene_CAMSAP1"]= "text:<a href=\"mirna?Gene=CAMSAP1\" target=\"browse_right\">CAMSAP1</a>;";
tree.nodes["htgene_CANT1"]= "text:<a href=\"mirna?Gene=CANT1\" target=\"browse_right\">CANT1</a>;";
tree.nodes["htgene_CAPN15"]= "text:<a href=\"mirna?Gene=CAPN15\" target=\"browse_right\">CAPN15</a>;";
tree.nodes["htgene_CASC5"]= "text:<a href=\"mirna?Gene=CASC5\" target=\"browse_right\">CASC5</a>;";
tree.nodes["htgene_CBS"]= "text:<a href=\"mirna?Gene=CBS\" target=\"browse_right\">CBS</a>;";
tree.nodes["htgene_CBX5"]= "text:<a href=\"mirna?Gene=CBX5\" target=\"browse_right\">CBX5</a>;";
tree.nodes["htgene_CCDC57"]= "text:<a href=\"mirna?Gene=CCDC57\" target=\"browse_right\">CCDC57</a>;";
tree.nodes["htgene_CCDC88C"]= "text:<a href=\"mirna?Gene=CCDC88C\" target=\"browse_right\">CCDC88C</a>;";
tree.nodes["htgene_CDK12"]= "text:<a href=\"mirna?Gene=CDK12\" target=\"browse_right\">CDK12</a>;";
tree.nodes["htgene_CDK13"]= "text:<a href=\"mirna?Gene=CDK13\" target=\"browse_right\">CDK13</a>;";
tree.nodes["htgene_CDK5RAP2"]= "text:<a href=\"mirna?Gene=CDK5RAP2\" target=\"browse_right\">CDK5RAP2</a>;";
tree.nodes["htgene_CELSR1"]= "text:<a href=\"mirna?Gene=CELSR1\" target=\"browse_right\">CELSR1</a>;";
tree.nodes["htgene_CELSR2"]= "text:<a href=\"mirna?Gene=CELSR2\" target=\"browse_right\">CELSR2</a>;";
tree.nodes["htgene_CENPF"]= "text:<a href=\"mirna?Gene=CENPF\" target=\"browse_right\">CENPF</a>;";
tree.nodes["htgene_CEP170"]= "text:<a href=\"mirna?Gene=CEP170\" target=\"browse_right\">CEP170</a>;";
tree.nodes["htgene_CEP250"]= "text:<a href=\"mirna?Gene=CEP250\" target=\"browse_right\">CEP250</a>;";
tree.nodes["htgene_CEP350"]= "text:<a href=\"mirna?Gene=CEP350\" target=\"browse_right\">CEP350</a>;";
tree.nodes["htgene_CFLAR"]= "text:<a href=\"mirna?Gene=CFLAR\" target=\"browse_right\">CFLAR</a>;";
tree.nodes["htgene_CHD2"]= "text:<a href=\"mirna?Gene=CHD2\" target=\"browse_right\">CHD2</a>;";
tree.nodes["htgene_CHD3"]= "text:<a href=\"mirna?Gene=CHD3\" target=\"browse_right\">CHD3</a>;";
tree.nodes["htgene_CHD4"]= "text:<a href=\"mirna?Gene=CHD4\" target=\"browse_right\">CHD4</a>;";
tree.nodes["htgene_CHD7"]= "text:<a href=\"mirna?Gene=CHD7\" target=\"browse_right\">CHD7</a>;";
tree.nodes["htgene_CHD8"]= "text:<a href=\"mirna?Gene=CHD8\" target=\"browse_right\">CHD8</a>;";
tree.nodes["htgene_CHML"]= "text:<a href=\"mirna?Gene=CHML\" target=\"browse_right\">CHML</a>;";
tree.nodes["htgene_CHST3"]= "text:<a href=\"mirna?Gene=CHST3\" target=\"browse_right\">CHST3</a>;";
tree.nodes["htgene_CIC"]= "text:<a href=\"mirna?Gene=CIC\" target=\"browse_right\">CIC</a>;";
tree.nodes["htgene_CIT"]= "text:<a href=\"mirna?Gene=CIT\" target=\"browse_right\">CIT</a>;";
tree.nodes["htgene_CLIP1"]= "text:<a href=\"mirna?Gene=CLIP1\" target=\"browse_right\">CLIP1</a>;";
tree.nodes["htgene_CLIP2"]= "text:<a href=\"mirna?Gene=CLIP2\" target=\"browse_right\">CLIP2</a>;";
tree.nodes["htgene_CLUH"]= "text:<a href=\"mirna?Gene=CLUH\" target=\"browse_right\">CLUH</a>;";
tree.nodes["htgene_CREBBP"]= "text:<a href=\"mirna?Gene=CREBBP\" target=\"browse_right\">CREBBP</a>;";
tree.nodes["htgene_CRKL"]= "text:<a href=\"mirna?Gene=CRKL\" target=\"browse_right\">CRKL</a>;";
tree.nodes["htgene_CSNK1D"]= "text:<a href=\"mirna?Gene=CSNK1D\" target=\"browse_right\">CSNK1D</a>;";
tree.nodes["htgene_CSNK1E"]= "text:<a href=\"mirna?Gene=CSNK1E\" target=\"browse_right\">CSNK1E</a>;";
tree.nodes["htgene_CSPG4"]= "text:<a href=\"mirna?Gene=CSPG4\" target=\"browse_right\">CSPG4</a>;";
tree.nodes["htgene_CTNND1"]= "text:<a href=\"mirna?Gene=CTNND1\" target=\"browse_right\">CTNND1</a>;";
tree.nodes["htgene_CUX1"]= "text:<a href=\"mirna?Gene=CUX1\" target=\"browse_right\">CUX1</a>;";
tree.nodes["htgene_CYHR1"]= "text:<a href=\"mirna?Gene=CYHR1\" target=\"browse_right\">CYHR1</a>;";
tree.nodes["htgene_DAG1"]= "text:<a href=\"mirna?Gene=DAG1\" target=\"browse_right\">DAG1</a>;";
tree.nodes["htgene_DBNL"]= "text:<a href=\"mirna?Gene=DBNL\" target=\"browse_right\">DBNL</a>;";
tree.nodes["htgene_DCTN5"]= "text:<a href=\"mirna?Gene=DCTN5\" target=\"browse_right\">DCTN5</a>;";
tree.nodes["htgene_DDI2"]= "text:<a href=\"mirna?Gene=DDI2\" target=\"browse_right\">DDI2</a>;";
tree.nodes["htgene_DDX17"]= "text:<a href=\"mirna?Gene=DDX17\" target=\"browse_right\">DDX17</a>;";
tree.nodes["htgene_DDX23"]= "text:<a href=\"mirna?Gene=DDX23\" target=\"browse_right\">DDX23</a>;";
tree.nodes["htgene_DENND3"]= "text:<a href=\"mirna?Gene=DENND3\" target=\"browse_right\">DENND3</a>;";
tree.nodes["htgene_DGCR2"]= "text:<a href=\"mirna?Gene=DGCR2\" target=\"browse_right\">DGCR2</a>;";
tree.nodes["htgene_DGKZ"]= "text:<a href=\"mirna?Gene=DGKZ\" target=\"browse_right\">DGKZ</a>;";
tree.nodes["htgene_DHX38"]= "text:<a href=\"mirna?Gene=DHX38\" target=\"browse_right\">DHX38</a>;";
tree.nodes["htgene_DIDO1"]= "text:<a href=\"mirna?Gene=DIDO1\" target=\"browse_right\">DIDO1</a>;";
tree.nodes["htgene_DNM2"]= "text:<a href=\"mirna?Gene=DNM2\" target=\"browse_right\">DNM2</a>;";
tree.nodes["htgene_DNMT1"]= "text:<a href=\"mirna?Gene=DNMT1\" target=\"browse_right\">DNMT1</a>;";
tree.nodes["htgene_DOCK5"]= "text:<a href=\"mirna?Gene=DOCK5\" target=\"browse_right\">DOCK5</a>;";
tree.nodes["htgene_DOT1L"]= "text:<a href=\"mirna?Gene=DOT1L\" target=\"browse_right\">DOT1L</a>;";
tree.nodes["htgene_DSP"]= "text:<a href=\"mirna?Gene=DSP\" target=\"browse_right\">DSP</a>;";
tree.nodes["htgene_DST"]= "text:<a href=\"mirna?Gene=DST\" target=\"browse_right\">DST</a>;";
tree.nodes["htgene_DYNC1H1"]= "text:<a href=\"mirna?Gene=DYNC1H1\" target=\"browse_right\">DYNC1H1</a>;";
tree.nodes["htgene_EEF1D"]= "text:<a href=\"mirna?Gene=EEF1D\" target=\"browse_right\">EEF1D</a>;";
tree.nodes["htgene_EGFR"]= "text:<a href=\"mirna?Gene=EGFR\" target=\"browse_right\">EGFR</a>;";
tree.nodes["htgene_EIF3A"]= "text:<a href=\"mirna?Gene=EIF3A\" target=\"browse_right\">EIF3A</a>;";
tree.nodes["htgene_EIF4G1"]= "text:<a href=\"mirna?Gene=EIF4G1\" target=\"browse_right\">EIF4G1</a>;";
tree.nodes["htgene_EIF5B"]= "text:<a href=\"mirna?Gene=EIF5B\" target=\"browse_right\">EIF5B</a>;";
tree.nodes["htgene_ELMSAN1"]= "text:<a href=\"mirna?Gene=ELMSAN1\" target=\"browse_right\">ELMSAN1</a>;";
tree.nodes["htgene_EME2"]= "text:<a href=\"mirna?Gene=EME2\" target=\"browse_right\">EME2</a>;";
tree.nodes["htgene_EP300"]= "text:<a href=\"mirna?Gene=EP300\" target=\"browse_right\">EP300</a>;";
tree.nodes["htgene_EP400"]= "text:<a href=\"mirna?Gene=EP400\" target=\"browse_right\">EP400</a>;";
tree.nodes["htgene_EPPK1"]= "text:<a href=\"mirna?Gene=EPPK1\" target=\"browse_right\">EPPK1</a>;";
tree.nodes["htgene_ERC1"]= "text:<a href=\"mirna?Gene=ERC1\" target=\"browse_right\">ERC1</a>;";
tree.nodes["htgene_EXOC3"]= "text:<a href=\"mirna?Gene=EXOC3\" target=\"browse_right\">EXOC3</a>;";
tree.nodes["htgene_EXOC7"]= "text:<a href=\"mirna?Gene=EXOC7\" target=\"browse_right\">EXOC7</a>;";
tree.nodes["htgene_EXOC8"]= "text:<a href=\"mirna?Gene=EXOC8\" target=\"browse_right\">EXOC8</a>;";
tree.nodes["htgene_FAM208A"]= "text:<a href=\"mirna?Gene=FAM208A\" target=\"browse_right\">FAM208A</a>;";
tree.nodes["htgene_FAM208B"]= "text:<a href=\"mirna?Gene=FAM208B\" target=\"browse_right\">FAM208B</a>;";
tree.nodes["htgene_FASN"]= "text:<a href=\"mirna?Gene=FASN\" target=\"browse_right\">FASN</a>;";
tree.nodes["htgene_FAT1"]= "text:<a href=\"mirna?Gene=FAT1\" target=\"browse_right\">FAT1</a>;";
tree.nodes["htgene_FBXL19"]= "text:<a href=\"mirna?Gene=FBXL19\" target=\"browse_right\">FBXL19</a>;";
tree.nodes["htgene_FEM1A"]= "text:<a href=\"mirna?Gene=FEM1A\" target=\"browse_right\">FEM1A</a>;";
tree.nodes["htgene_FEM1B"]= "text:<a href=\"mirna?Gene=FEM1B\" target=\"browse_right\">FEM1B</a>;";
tree.nodes["htgene_FLII"]= "text:<a href=\"mirna?Gene=FLII\" target=\"browse_right\">FLII</a>;";
tree.nodes["htgene_FLNA"]= "text:<a href=\"mirna?Gene=FLNA\" target=\"browse_right\">FLNA</a>;";
tree.nodes["htgene_FLNB"]= "text:<a href=\"mirna?Gene=FLNB\" target=\"browse_right\">FLNB</a>;";
tree.nodes["htgene_FOSL2"]= "text:<a href=\"mirna?Gene=FOSL2\" target=\"browse_right\">FOSL2</a>;";
tree.nodes["htgene_FOXK1"]= "text:<a href=\"mirna?Gene=FOXK1\" target=\"browse_right\">FOXK1</a>;";
tree.nodes["htgene_FOXK2"]= "text:<a href=\"mirna?Gene=FOXK2\" target=\"browse_right\">FOXK2</a>;";
tree.nodes["htgene_FOXN3"]= "text:<a href=\"mirna?Gene=FOXN3\" target=\"browse_right\">FOXN3</a>;";
tree.nodes["htgene_GEMIN4"]= "text:<a href=\"mirna?Gene=GEMIN4\" target=\"browse_right\">GEMIN4</a>;";
tree.nodes["htgene_GGA3"]= "text:<a href=\"mirna?Gene=GGA3\" target=\"browse_right\">GGA3</a>;";
tree.nodes["htgene_GIGYF2"]= "text:<a href=\"mirna?Gene=GIGYF2\" target=\"browse_right\">GIGYF2</a>;";
tree.nodes["htgene_GLG1"]= "text:<a href=\"mirna?Gene=GLG1\" target=\"browse_right\">GLG1</a>;";
tree.nodes["htgene_GMPPB"]= "text:<a href=\"mirna?Gene=GMPPB\" target=\"browse_right\">GMPPB</a>;";
tree.nodes["htgene_GOLGA3"]= "text:<a href=\"mirna?Gene=GOLGA3\" target=\"browse_right\">GOLGA3</a>;";
tree.nodes["htgene_GOLGA4"]= "text:<a href=\"mirna?Gene=GOLGA4\" target=\"browse_right\">GOLGA4</a>;";
tree.nodes["htgene_GOLGB1"]= "text:<a href=\"mirna?Gene=GOLGB1\" target=\"browse_right\">GOLGB1</a>;";
tree.nodes["htgene_GON4L"]= "text:<a href=\"mirna?Gene=GON4L\" target=\"browse_right\">GON4L</a>;";
tree.nodes["htgene_GPATCH2L"]= "text:<a href=\"mirna?Gene=GPATCH2L\" target=\"browse_right\">GPATCH2L</a>;";
tree.nodes["htgene_GPATCH8"]= "text:<a href=\"mirna?Gene=GPATCH8\" target=\"browse_right\">GPATCH8</a>;";
tree.nodes["htgene_GPR107"]= "text:<a href=\"mirna?Gene=GPR107\" target=\"browse_right\">GPR107</a>;";
tree.nodes["htgene_GTF2I"]= "text:<a href=\"mirna?Gene=GTF2I\" target=\"browse_right\">GTF2I</a>;";
tree.nodes["htgene_GTF3C1"]= "text:<a href=\"mirna?Gene=GTF3C1\" target=\"browse_right\">GTF3C1</a>;";
tree.nodes["htgene_GTF3C4"]= "text:<a href=\"mirna?Gene=GTF3C4\" target=\"browse_right\">GTF3C4</a>;";
tree.nodes["htgene_H2AFY"]= "text:<a href=\"mirna?Gene=H2AFY\" target=\"browse_right\">H2AFY</a>;";
tree.nodes["htgene_H6PD"]= "text:<a href=\"mirna?Gene=H6PD\" target=\"browse_right\">H6PD</a>;";
tree.nodes["htgene_HCFC1"]= "text:<a href=\"mirna?Gene=HCFC1\" target=\"browse_right\">HCFC1</a>;";
tree.nodes["htgene_HDAC7"]= "text:<a href=\"mirna?Gene=HDAC7\" target=\"browse_right\">HDAC7</a>;";
tree.nodes["htgene_HDLBP"]= "text:<a href=\"mirna?Gene=HDLBP\" target=\"browse_right\">HDLBP</a>;";
tree.nodes["htgene_HECTD1"]= "text:<a href=\"mirna?Gene=HECTD1\" target=\"browse_right\">HECTD1</a>;";
tree.nodes["htgene_HECTD4"]= "text:<a href=\"mirna?Gene=HECTD4\" target=\"browse_right\">HECTD4</a>;";
tree.nodes["htgene_HELZ"]= "text:<a href=\"mirna?Gene=HELZ\" target=\"browse_right\">HELZ</a>;";
tree.nodes["htgene_HELZ2"]= "text:<a href=\"mirna?Gene=HELZ2\" target=\"browse_right\">HELZ2</a>;";
tree.nodes["htgene_HERC1"]= "text:<a href=\"mirna?Gene=HERC1\" target=\"browse_right\">HERC1</a>;";
tree.nodes["htgene_HERC2"]= "text:<a href=\"mirna?Gene=HERC2\" target=\"browse_right\">HERC2</a>;";
tree.nodes["htgene_HIP1"]= "text:<a href=\"mirna?Gene=HIP1\" target=\"browse_right\">HIP1</a>;";
tree.nodes["htgene_HIPK2"]= "text:<a href=\"mirna?Gene=HIPK2\" target=\"browse_right\">HIPK2</a>;";
tree.nodes["htgene_HMHA1"]= "text:<a href=\"mirna?Gene=HMHA1\" target=\"browse_right\">HMHA1</a>;";
tree.nodes["htgene_HNRNPH1"]= "text:<a href=\"mirna?Gene=HNRNPH1\" target=\"browse_right\">HNRNPH1</a>;";
tree.nodes["htgene_HNRNPU"]= "text:<a href=\"mirna?Gene=HNRNPU\" target=\"browse_right\">HNRNPU</a>;";
tree.nodes["htgene_HNRNPUL1"]= "text:<a href=\"mirna?Gene=HNRNPUL1\" target=\"browse_right\">HNRNPUL1</a>;";
tree.nodes["htgene_HS6ST1"]= "text:<a href=\"mirna?Gene=HS6ST1\" target=\"browse_right\">HS6ST1</a>;";
tree.nodes["htgene_HSPG2"]= "text:<a href=\"mirna?Gene=HSPG2\" target=\"browse_right\">HSPG2</a>;";
tree.nodes["htgene_HTT"]= "text:<a href=\"mirna?Gene=HTT\" target=\"browse_right\">HTT</a>;";
tree.nodes["htgene_HUWE1"]= "text:<a href=\"mirna?Gene=HUWE1\" target=\"browse_right\">HUWE1</a>;";
tree.nodes["htgene_ICE1"]= "text:<a href=\"mirna?Gene=ICE1\" target=\"browse_right\">ICE1</a>;";
tree.nodes["htgene_ICOSLG"]= "text:<a href=\"mirna?Gene=ICOSLG\" target=\"browse_right\">ICOSLG</a>;";
tree.nodes["htgene_IGF1R"]= "text:<a href=\"mirna?Gene=IGF1R\" target=\"browse_right\">IGF1R</a>;";
tree.nodes["htgene_ILF3"]= "text:<a href=\"mirna?Gene=ILF3\" target=\"browse_right\">ILF3</a>;";
tree.nodes["htgene_INCENP"]= "text:<a href=\"mirna?Gene=INCENP\" target=\"browse_right\">INCENP</a>;";
tree.nodes["htgene_INF2"]= "text:<a href=\"mirna?Gene=INF2\" target=\"browse_right\">INF2</a>;";
tree.nodes["htgene_ING5"]= "text:<a href=\"mirna?Gene=ING5\" target=\"browse_right\">ING5</a>;";
tree.nodes["htgene_IPO9"]= "text:<a href=\"mirna?Gene=IPO9\" target=\"browse_right\">IPO9</a>;";
tree.nodes["htgene_IRS1"]= "text:<a href=\"mirna?Gene=IRS1\" target=\"browse_right\">IRS1</a>;";
tree.nodes["htgene_IRS2"]= "text:<a href=\"mirna?Gene=IRS2\" target=\"browse_right\">IRS2</a>;";
tree.nodes["htgene_ITPRIP"]= "text:<a href=\"mirna?Gene=ITPRIP\" target=\"browse_right\">ITPRIP</a>;";
tree.nodes["htgene_JADE2"]= "text:<a href=\"mirna?Gene=JADE2\" target=\"browse_right\">JADE2</a>;";
tree.nodes["htgene_JRK"]= "text:<a href=\"mirna?Gene=JRK\" target=\"browse_right\">JRK</a>;";
tree.nodes["htgene_KAT6A"]= "text:<a href=\"mirna?Gene=KAT6A\" target=\"browse_right\">KAT6A</a>;";
tree.nodes["htgene_KAT6B"]= "text:<a href=\"mirna?Gene=KAT6B\" target=\"browse_right\">KAT6B</a>;";
tree.nodes["htgene_KDM2A"]= "text:<a href=\"mirna?Gene=KDM2A\" target=\"browse_right\">KDM2A</a>;";
tree.nodes["htgene_KDM5C"]= "text:<a href=\"mirna?Gene=KDM5C\" target=\"browse_right\">KDM5C</a>;";
tree.nodes["htgene_KHSRP"]= "text:<a href=\"mirna?Gene=KHSRP\" target=\"browse_right\">KHSRP</a>;";
tree.nodes["htgene_KIAA0100"]= "text:<a href=\"mirna?Gene=KIAA0100\" target=\"browse_right\">KIAA0100</a>;";
tree.nodes["htgene_KIF21B"]= "text:<a href=\"mirna?Gene=KIF21B\" target=\"browse_right\">KIF21B</a>;";
tree.nodes["htgene_KLF13"]= "text:<a href=\"mirna?Gene=KLF13\" target=\"browse_right\">KLF13</a>;";
tree.nodes["htgene_KLHDC4"]= "text:<a href=\"mirna?Gene=KLHDC4\" target=\"browse_right\">KLHDC4</a>;";
tree.nodes["htgene_KLHL21"]= "text:<a href=\"mirna?Gene=KLHL21\" target=\"browse_right\">KLHL21</a>;";
tree.nodes["htgene_KMT2A"]= "text:<a href=\"mirna?Gene=KMT2A\" target=\"browse_right\">KMT2A</a>;";
tree.nodes["htgene_KMT2B"]= "text:<a href=\"mirna?Gene=KMT2B\" target=\"browse_right\">KMT2B</a>;";
tree.nodes["htgene_KMT2C"]= "text:<a href=\"mirna?Gene=KMT2C\" target=\"browse_right\">KMT2C</a>;";
tree.nodes["htgene_KMT2D"]= "text:<a href=\"mirna?Gene=KMT2D\" target=\"browse_right\">KMT2D</a>;";
tree.nodes["htgene_KNOP1"]= "text:<a href=\"mirna?Gene=KNOP1\" target=\"browse_right\">KNOP1</a>;";
tree.nodes["htgene_KRI1"]= "text:<a href=\"mirna?Gene=KRI1\" target=\"browse_right\">KRI1</a>;";
tree.nodes["htgene_LAMA5"]= "text:<a href=\"mirna?Gene=LAMA5\" target=\"browse_right\">LAMA5</a>;";
tree.nodes["htgene_LAMC1"]= "text:<a href=\"mirna?Gene=LAMC1\" target=\"browse_right\">LAMC1</a>;";
tree.nodes["htgene_LARP1"]= "text:<a href=\"mirna?Gene=LARP1\" target=\"browse_right\">LARP1</a>;";
tree.nodes["htgene_LDLR"]= "text:<a href=\"mirna?Gene=LDLR\" target=\"browse_right\">LDLR</a>;";
tree.nodes["htgene_LETM1"]= "text:<a href=\"mirna?Gene=LETM1\" target=\"browse_right\">LETM1</a>;";
tree.nodes["htgene_LMNB2"]= "text:<a href=\"mirna?Gene=LMNB2\" target=\"browse_right\">LMNB2</a>;";
tree.nodes["htgene_LONP2"]= "text:<a href=\"mirna?Gene=LONP2\" target=\"browse_right\">LONP2</a>;";
tree.nodes["htgene_LRP10"]= "text:<a href=\"mirna?Gene=LRP10\" target=\"browse_right\">LRP10</a>;";
tree.nodes["htgene_LRRC14"]= "text:<a href=\"mirna?Gene=LRRC14\" target=\"browse_right\">LRRC14</a>;";
tree.nodes["htgene_LUZP1"]= "text:<a href=\"mirna?Gene=LUZP1\" target=\"browse_right\">LUZP1</a>;";
tree.nodes["htgene_LYST"]= "text:<a href=\"mirna?Gene=LYST\" target=\"browse_right\">LYST</a>;";
tree.nodes["htgene_MACF1"]= "text:<a href=\"mirna?Gene=MACF1\" target=\"browse_right\">MACF1</a>;";
tree.nodes["htgene_MALAT1"]= "text:<a href=\"mirna?Gene=MALAT1\" target=\"browse_right\">MALAT1</a>;";
tree.nodes["htgene_MAML1"]= "text:<a href=\"mirna?Gene=MAML1\" target=\"browse_right\">MAML1</a>;";
tree.nodes["htgene_MAP4"]= "text:<a href=\"mirna?Gene=MAP4\" target=\"browse_right\">MAP4</a>;";
tree.nodes["htgene_MATR3"]= "text:<a href=\"mirna?Gene=MATR3\" target=\"browse_right\">MATR3</a>;";
tree.nodes["htgene_MAVS"]= "text:<a href=\"mirna?Gene=MAVS\" target=\"browse_right\">MAVS</a>;";
tree.nodes["htgene_MBD3"]= "text:<a href=\"mirna?Gene=MBD3\" target=\"browse_right\">MBD3</a>;";
tree.nodes["htgene_MDN1"]= "text:<a href=\"mirna?Gene=MDN1\" target=\"browse_right\">MDN1</a>;";
tree.nodes["htgene_MED1"]= "text:<a href=\"mirna?Gene=MED1\" target=\"browse_right\">MED1</a>;";
tree.nodes["htgene_MED13"]= "text:<a href=\"mirna?Gene=MED13\" target=\"browse_right\">MED13</a>;";
tree.nodes["htgene_MED13L"]= "text:<a href=\"mirna?Gene=MED13L\" target=\"browse_right\">MED13L</a>;";
tree.nodes["htgene_MFHAS1"]= "text:<a href=\"mirna?Gene=MFHAS1\" target=\"browse_right\">MFHAS1</a>;";
tree.nodes["htgene_MFSD12"]= "text:<a href=\"mirna?Gene=MFSD12\" target=\"browse_right\">MFSD12</a>;";
tree.nodes["htgene_MGA"]= "text:<a href=\"mirna?Gene=MGA\" target=\"browse_right\">MGA</a>;";
tree.nodes["htgene_MICAL3"]= "text:<a href=\"mirna?Gene=MICAL3\" target=\"browse_right\">MICAL3</a>;";
tree.nodes["htgene_MKI67"]= "text:<a href=\"mirna?Gene=MKI67\" target=\"browse_right\">MKI67</a>;";
tree.nodes["htgene_MLLT4"]= "text:<a href=\"mirna?Gene=MLLT4\" target=\"browse_right\">MLLT4</a>;";
tree.nodes["htgene_MLLT6"]= "text:<a href=\"mirna?Gene=MLLT6\" target=\"browse_right\">MLLT6</a>;";
tree.nodes["htgene_MLXIP"]= "text:<a href=\"mirna?Gene=MLXIP\" target=\"browse_right\">MLXIP</a>;";
tree.nodes["htgene_MPRIP"]= "text:<a href=\"mirna?Gene=MPRIP\" target=\"browse_right\">MPRIP</a>;";
tree.nodes["htgene_MSH6"]= "text:<a href=\"mirna?Gene=MSH6\" target=\"browse_right\">MSH6</a>;";
tree.nodes["htgene_MSL1"]= "text:<a href=\"mirna?Gene=MSL1\" target=\"browse_right\">MSL1</a>;";
tree.nodes["htgene_MSL2"]= "text:<a href=\"mirna?Gene=MSL2\" target=\"browse_right\">MSL2</a>;";
tree.nodes["htgene_MTR"]= "text:<a href=\"mirna?Gene=MTR\" target=\"browse_right\">MTR</a>;";
tree.nodes["htgene_MUC16"]= "text:<a href=\"mirna?Gene=MUC16\" target=\"browse_right\">MUC16</a>;";
tree.nodes["htgene_MUM1"]= "text:<a href=\"mirna?Gene=MUM1\" target=\"browse_right\">MUM1</a>;";
tree.nodes["htgene_MYCBP2"]= "text:<a href=\"mirna?Gene=MYCBP2\" target=\"browse_right\">MYCBP2</a>;";
tree.nodes["htgene_MYH9"]= "text:<a href=\"mirna?Gene=MYH9\" target=\"browse_right\">MYH9</a>;";
tree.nodes["htgene_MYO10"]= "text:<a href=\"mirna?Gene=MYO10\" target=\"browse_right\">MYO10</a>;";
tree.nodes["htgene_MYO18A"]= "text:<a href=\"mirna?Gene=MYO18A\" target=\"browse_right\">MYO18A</a>;";
tree.nodes["htgene_MYO9B"]= "text:<a href=\"mirna?Gene=MYO9B\" target=\"browse_right\">MYO9B</a>;";
tree.nodes["htgene_NBPF12"]= "text:<a href=\"mirna?Gene=NBPF12\" target=\"browse_right\">NBPF12</a>;";
tree.nodes["htgene_NBPF14"]= "text:<a href=\"mirna?Gene=NBPF14\" target=\"browse_right\">NBPF14</a>;";
tree.nodes["htgene_NCL"]= "text:<a href=\"mirna?Gene=NCL\" target=\"browse_right\">NCL</a>;";
tree.nodes["htgene_NCOA6"]= "text:<a href=\"mirna?Gene=NCOA6\" target=\"browse_right\">NCOA6</a>;";
tree.nodes["htgene_NCOR1"]= "text:<a href=\"mirna?Gene=NCOR1\" target=\"browse_right\">NCOR1</a>;";
tree.nodes["htgene_NCOR2"]= "text:<a href=\"mirna?Gene=NCOR2\" target=\"browse_right\">NCOR2</a>;";
tree.nodes["htgene_NDST1"]= "text:<a href=\"mirna?Gene=NDST1\" target=\"browse_right\">NDST1</a>;";
tree.nodes["htgene_NEAT1"]= "text:<a href=\"mirna?Gene=NEAT1\" target=\"browse_right\">NEAT1</a>;";
tree.nodes["htgene_NFE2L1"]= "text:<a href=\"mirna?Gene=NFE2L1\" target=\"browse_right\">NFE2L1</a>;";
tree.nodes["htgene_NFIC"]= "text:<a href=\"mirna?Gene=NFIC\" target=\"browse_right\">NFIC</a>;";
tree.nodes["htgene_NFX1"]= "text:<a href=\"mirna?Gene=NFX1\" target=\"browse_right\">NFX1</a>;";
tree.nodes["htgene_NIN"]= "text:<a href=\"mirna?Gene=NIN\" target=\"browse_right\">NIN</a>;";
tree.nodes["htgene_NIPBL"]= "text:<a href=\"mirna?Gene=NIPBL\" target=\"browse_right\">NIPBL</a>;";
tree.nodes["htgene_NISCH"]= "text:<a href=\"mirna?Gene=NISCH\" target=\"browse_right\">NISCH</a>;";
tree.nodes["htgene_NMT1"]= "text:<a href=\"mirna?Gene=NMT1\" target=\"browse_right\">NMT1</a>;";
tree.nodes["htgene_NOTCH1"]= "text:<a href=\"mirna?Gene=NOTCH1\" target=\"browse_right\">NOTCH1</a>;";
tree.nodes["htgene_NOTCH2"]= "text:<a href=\"mirna?Gene=NOTCH2\" target=\"browse_right\">NOTCH2</a>;";
tree.nodes["htgene_NPIPA5"]= "text:<a href=\"mirna?Gene=NPIPA5\" target=\"browse_right\">NPIPA5</a>;";
tree.nodes["htgene_NPLOC4"]= "text:<a href=\"mirna?Gene=NPLOC4\" target=\"browse_right\">NPLOC4</a>;";
tree.nodes["htgene_NRIP1"]= "text:<a href=\"mirna?Gene=NRIP1\" target=\"browse_right\">NRIP1</a>;";
tree.nodes["htgene_NSD1"]= "text:<a href=\"mirna?Gene=NSD1\" target=\"browse_right\">NSD1</a>;";
tree.nodes["htgene_NUDCD3"]= "text:<a href=\"mirna?Gene=NUDCD3\" target=\"browse_right\">NUDCD3</a>;";
tree.nodes["htgene_NUFIP2"]= "text:<a href=\"mirna?Gene=NUFIP2\" target=\"browse_right\">NUFIP2</a>;";
tree.nodes["htgene_NUMA1"]= "text:<a href=\"mirna?Gene=NUMA1\" target=\"browse_right\">NUMA1</a>;";
tree.nodes["htgene_OBSCN"]= "text:<a href=\"mirna?Gene=OBSCN\" target=\"browse_right\">OBSCN</a>;";
tree.nodes["htgene_OGDH"]= "text:<a href=\"mirna?Gene=OGDH\" target=\"browse_right\">OGDH</a>;";
tree.nodes["htgene_OGT"]= "text:<a href=\"mirna?Gene=OGT\" target=\"browse_right\">OGT</a>;";
tree.nodes["htgene_OIP5-AS1"]= "text:<a href=\"mirna?Gene=OIP5-AS1\" target=\"browse_right\">OIP5-AS1</a>;";
tree.nodes["htgene_ONECUT2"]= "text:<a href=\"mirna?Gene=ONECUT2\" target=\"browse_right\">ONECUT2</a>;";
tree.nodes["htgene_P4HB"]= "text:<a href=\"mirna?Gene=P4HB\" target=\"browse_right\">P4HB</a>;";
tree.nodes["htgene_PALM2-AKAP2"]= "text:<a href=\"mirna?Gene=PALM2-AKAP2\" target=\"browse_right\">PALM2-AKAP2</a>;";
tree.nodes["htgene_PAPD7"]= "text:<a href=\"mirna?Gene=PAPD7\" target=\"browse_right\">PAPD7</a>;";
tree.nodes["htgene_PCF11"]= "text:<a href=\"mirna?Gene=PCF11\" target=\"browse_right\">PCF11</a>;";
tree.nodes["htgene_PCNT"]= "text:<a href=\"mirna?Gene=PCNT\" target=\"browse_right\">PCNT</a>;";
tree.nodes["htgene_PCNX"]= "text:<a href=\"mirna?Gene=PCNX\" target=\"browse_right\">PCNX</a>;";
tree.nodes["htgene_PCNXL3"]= "text:<a href=\"mirna?Gene=PCNXL3\" target=\"browse_right\">PCNXL3</a>;";
tree.nodes["htgene_PCSK7"]= "text:<a href=\"mirna?Gene=PCSK7\" target=\"browse_right\">PCSK7</a>;";
tree.nodes["htgene_PDCD11"]= "text:<a href=\"mirna?Gene=PDCD11\" target=\"browse_right\">PDCD11</a>;";
tree.nodes["htgene_PDPK1"]= "text:<a href=\"mirna?Gene=PDPK1\" target=\"browse_right\">PDPK1</a>;";
tree.nodes["htgene_PDXK"]= "text:<a href=\"mirna?Gene=PDXK\" target=\"browse_right\">PDXK</a>;";
tree.nodes["htgene_PHF3"]= "text:<a href=\"mirna?Gene=PHF3\" target=\"browse_right\">PHF3</a>;";
tree.nodes["htgene_PHRF1"]= "text:<a href=\"mirna?Gene=PHRF1\" target=\"browse_right\">PHRF1</a>;";
tree.nodes["htgene_PIEZO1"]= "text:<a href=\"mirna?Gene=PIEZO1\" target=\"browse_right\">PIEZO1</a>;";
tree.nodes["htgene_PIK3R2"]= "text:<a href=\"mirna?Gene=PIK3R2\" target=\"browse_right\">PIK3R2</a>;";
tree.nodes["htgene_PKD1"]= "text:<a href=\"mirna?Gene=PKD1\" target=\"browse_right\">PKD1</a>;";
tree.nodes["htgene_PKD1P5"]= "text:<a href=\"mirna?Gene=PKD1P5\" target=\"browse_right\">PKD1P5</a>;";
tree.nodes["htgene_PKM"]= "text:<a href=\"mirna?Gene=PKM\" target=\"browse_right\">PKM</a>;";
tree.nodes["htgene_PLCXD1"]= "text:<a href=\"mirna?Gene=PLCXD1\" target=\"browse_right\">PLCXD1</a>;";
tree.nodes["htgene_PLEC"]= "text:<a href=\"mirna?Gene=PLEC\" target=\"browse_right\">PLEC</a>;";
tree.nodes["htgene_PLEKHG2"]= "text:<a href=\"mirna?Gene=PLEKHG2\" target=\"browse_right\">PLEKHG2</a>;";
tree.nodes["htgene_PLXNA1"]= "text:<a href=\"mirna?Gene=PLXNA1\" target=\"browse_right\">PLXNA1</a>;";
tree.nodes["htgene_PLXNB2"]= "text:<a href=\"mirna?Gene=PLXNB2\" target=\"browse_right\">PLXNB2</a>;";
tree.nodes["htgene_PLXND1"]= "text:<a href=\"mirna?Gene=PLXND1\" target=\"browse_right\">PLXND1</a>;";
tree.nodes["htgene_POGK"]= "text:<a href=\"mirna?Gene=POGK\" target=\"browse_right\">POGK</a>;";
tree.nodes["htgene_POGZ"]= "text:<a href=\"mirna?Gene=POGZ\" target=\"browse_right\">POGZ</a>;";
tree.nodes["htgene_POLE"]= "text:<a href=\"mirna?Gene=POLE\" target=\"browse_right\">POLE</a>;";
tree.nodes["htgene_POLR1A"]= "text:<a href=\"mirna?Gene=POLR1A\" target=\"browse_right\">POLR1A</a>;";
tree.nodes["htgene_POLR3H"]= "text:<a href=\"mirna?Gene=POLR3H\" target=\"browse_right\">POLR3H</a>;";
tree.nodes["htgene_POM121"]= "text:<a href=\"mirna?Gene=POM121\" target=\"browse_right\">POM121</a>;";
tree.nodes["htgene_POM121C"]= "text:<a href=\"mirna?Gene=POM121C\" target=\"browse_right\">POM121C</a>;";
tree.nodes["htgene_PPM1F"]= "text:<a href=\"mirna?Gene=PPM1F\" target=\"browse_right\">PPM1F</a>;";
tree.nodes["htgene_PPP1R15B"]= "text:<a href=\"mirna?Gene=PPP1R15B\" target=\"browse_right\">PPP1R15B</a>;";
tree.nodes["htgene_PPP1R9B"]= "text:<a href=\"mirna?Gene=PPP1R9B\" target=\"browse_right\">PPP1R9B</a>;";
tree.nodes["htgene_PPRC1"]= "text:<a href=\"mirna?Gene=PPRC1\" target=\"browse_right\">PPRC1</a>;";
tree.nodes["htgene_PREX1"]= "text:<a href=\"mirna?Gene=PREX1\" target=\"browse_right\">PREX1</a>;";
tree.nodes["htgene_PRKDC"]= "text:<a href=\"mirna?Gene=PRKDC\" target=\"browse_right\">PRKDC</a>;";
tree.nodes["htgene_PRPF8"]= "text:<a href=\"mirna?Gene=PRPF8\" target=\"browse_right\">PRPF8</a>;";
tree.nodes["htgene_PRR12"]= "text:<a href=\"mirna?Gene=PRR12\" target=\"browse_right\">PRR12</a>;";
tree.nodes["htgene_PRR14L"]= "text:<a href=\"mirna?Gene=PRR14L\" target=\"browse_right\">PRR14L</a>;";
tree.nodes["htgene_PRRC2A"]= "text:<a href=\"mirna?Gene=PRRC2A\" target=\"browse_right\">PRRC2A</a>;";
tree.nodes["htgene_PRRC2B"]= "text:<a href=\"mirna?Gene=PRRC2B\" target=\"browse_right\">PRRC2B</a>;";
tree.nodes["htgene_PRRC2C"]= "text:<a href=\"mirna?Gene=PRRC2C\" target=\"browse_right\">PRRC2C</a>;";
tree.nodes["htgene_PSD4"]= "text:<a href=\"mirna?Gene=PSD4\" target=\"browse_right\">PSD4</a>;";
tree.nodes["htgene_PTPN14"]= "text:<a href=\"mirna?Gene=PTPN14\" target=\"browse_right\">PTPN14</a>;";
tree.nodes["htgene_PURB"]= "text:<a href=\"mirna?Gene=PURB\" target=\"browse_right\">PURB</a>;";
tree.nodes["htgene_QSER1"]= "text:<a href=\"mirna?Gene=QSER1\" target=\"browse_right\">QSER1</a>;";
tree.nodes["htgene_RAB11FIP1"]= "text:<a href=\"mirna?Gene=RAB11FIP1\" target=\"browse_right\">RAB11FIP1</a>;";
tree.nodes["htgene_RABL6"]= "text:<a href=\"mirna?Gene=RABL6\" target=\"browse_right\">RABL6</a>;";
tree.nodes["htgene_RAI1"]= "text:<a href=\"mirna?Gene=RAI1\" target=\"browse_right\">RAI1</a>;";
tree.nodes["htgene_RALBP1"]= "text:<a href=\"mirna?Gene=RALBP1\" target=\"browse_right\">RALBP1</a>;";
tree.nodes["htgene_RANBP2"]= "text:<a href=\"mirna?Gene=RANBP2\" target=\"browse_right\">RANBP2</a>;";
tree.nodes["htgene_RANBP6"]= "text:<a href=\"mirna?Gene=RANBP6\" target=\"browse_right\">RANBP6</a>;";
tree.nodes["htgene_RB1CC1"]= "text:<a href=\"mirna?Gene=RB1CC1\" target=\"browse_right\">RB1CC1</a>;";
tree.nodes["htgene_RBBP6"]= "text:<a href=\"mirna?Gene=RBBP6\" target=\"browse_right\">RBBP6</a>;";
tree.nodes["htgene_RBM12B"]= "text:<a href=\"mirna?Gene=RBM12B\" target=\"browse_right\">RBM12B</a>;";
tree.nodes["htgene_RBM15"]= "text:<a href=\"mirna?Gene=RBM15\" target=\"browse_right\">RBM15</a>;";
tree.nodes["htgene_RBM15B"]= "text:<a href=\"mirna?Gene=RBM15B\" target=\"browse_right\">RBM15B</a>;";
tree.nodes["htgene_RBM33"]= "text:<a href=\"mirna?Gene=RBM33\" target=\"browse_right\">RBM33</a>;";
tree.nodes["htgene_REXO1"]= "text:<a href=\"mirna?Gene=REXO1\" target=\"browse_right\">REXO1</a>;";
tree.nodes["htgene_RHOBTB2"]= "text:<a href=\"mirna?Gene=RHOBTB2\" target=\"browse_right\">RHOBTB2</a>;";
tree.nodes["htgene_RIC8A"]= "text:<a href=\"mirna?Gene=RIC8A\" target=\"browse_right\">RIC8A</a>;";
tree.nodes["htgene_RIF1"]= "text:<a href=\"mirna?Gene=RIF1\" target=\"browse_right\">RIF1</a>;";
tree.nodes["htgene_RLIM"]= "text:<a href=\"mirna?Gene=RLIM\" target=\"browse_right\">RLIM</a>;";
tree.nodes["htgene_RNF168"]= "text:<a href=\"mirna?Gene=RNF168\" target=\"browse_right\">RNF168</a>;";
tree.nodes["htgene_RNF213"]= "text:<a href=\"mirna?Gene=RNF213\" target=\"browse_right\">RNF213</a>;";
tree.nodes["htgene_RNF40"]= "text:<a href=\"mirna?Gene=RNF40\" target=\"browse_right\">RNF40</a>;";
tree.nodes["htgene_ROCK2"]= "text:<a href=\"mirna?Gene=ROCK2\" target=\"browse_right\">ROCK2</a>;";
tree.nodes["htgene_RP11-2C24.9"]= "text:<a href=\"mirna?Gene=RP11-2C24.9\" target=\"browse_right\">RP11-2C24.9</a>;";
tree.nodes["htgene_RP11-958N24.2"]= "text:<a href=\"mirna?Gene=RP11-958N24.2\" target=\"browse_right\">RP11-958N24.2</a>;";
tree.nodes["htgene_RRBP1"]= "text:<a href=\"mirna?Gene=RRBP1\" target=\"browse_right\">RRBP1</a>;";
tree.nodes["htgene_RREB1"]= "text:<a href=\"mirna?Gene=RREB1\" target=\"browse_right\">RREB1</a>;";
tree.nodes["htgene_RXRA"]= "text:<a href=\"mirna?Gene=RXRA\" target=\"browse_right\">RXRA</a>;";
tree.nodes["htgene_SACS"]= "text:<a href=\"mirna?Gene=SACS\" target=\"browse_right\">SACS</a>;";
tree.nodes["htgene_SAFB2"]= "text:<a href=\"mirna?Gene=SAFB2\" target=\"browse_right\">SAFB2</a>;";
tree.nodes["htgene_SBF1"]= "text:<a href=\"mirna?Gene=SBF1\" target=\"browse_right\">SBF1</a>;";
tree.nodes["htgene_SCAF1"]= "text:<a href=\"mirna?Gene=SCAF1\" target=\"browse_right\">SCAF1</a>;";
tree.nodes["htgene_SCAF11"]= "text:<a href=\"mirna?Gene=SCAF11\" target=\"browse_right\">SCAF11</a>;";
tree.nodes["htgene_SEC14L1"]= "text:<a href=\"mirna?Gene=SEC14L1\" target=\"browse_right\">SEC14L1</a>;";
tree.nodes["htgene_SEC16A"]= "text:<a href=\"mirna?Gene=SEC16A\" target=\"browse_right\">SEC16A</a>;";
tree.nodes["htgene_SETD1A"]= "text:<a href=\"mirna?Gene=SETD1A\" target=\"browse_right\">SETD1A</a>;";
tree.nodes["htgene_SETD1B"]= "text:<a href=\"mirna?Gene=SETD1B\" target=\"browse_right\">SETD1B</a>;";
tree.nodes["htgene_SETD2"]= "text:<a href=\"mirna?Gene=SETD2\" target=\"browse_right\">SETD2</a>;";
tree.nodes["htgene_SETD5"]= "text:<a href=\"mirna?Gene=SETD5\" target=\"browse_right\">SETD5</a>;";
tree.nodes["htgene_SETX"]= "text:<a href=\"mirna?Gene=SETX\" target=\"browse_right\">SETX</a>;";
tree.nodes["htgene_SFPQ"]= "text:<a href=\"mirna?Gene=SFPQ\" target=\"browse_right\">SFPQ</a>;";
tree.nodes["htgene_SGK223"]= "text:<a href=\"mirna?Gene=SGK223\" target=\"browse_right\">SGK223</a>;";
tree.nodes["htgene_SH3PXD2A"]= "text:<a href=\"mirna?Gene=SH3PXD2A\" target=\"browse_right\">SH3PXD2A</a>;";
tree.nodes["htgene_SIPA1L3"]= "text:<a href=\"mirna?Gene=SIPA1L3\" target=\"browse_right\">SIPA1L3</a>;";
tree.nodes["htgene_SKI"]= "text:<a href=\"mirna?Gene=SKI\" target=\"browse_right\">SKI</a>;";
tree.nodes["htgene_SLC25A37"]= "text:<a href=\"mirna?Gene=SLC25A37\" target=\"browse_right\">SLC25A37</a>;";
tree.nodes["htgene_SLC38A10"]= "text:<a href=\"mirna?Gene=SLC38A10\" target=\"browse_right\">SLC38A10</a>;";
tree.nodes["htgene_SLC5A3"]= "text:<a href=\"mirna?Gene=SLC5A3\" target=\"browse_right\">SLC5A3</a>;";
tree.nodes["htgene_SLC7A1"]= "text:<a href=\"mirna?Gene=SLC7A1\" target=\"browse_right\">SLC7A1</a>;";
tree.nodes["htgene_SLC7A5"]= "text:<a href=\"mirna?Gene=SLC7A5\" target=\"browse_right\">SLC7A5</a>;";
tree.nodes["htgene_SLX4"]= "text:<a href=\"mirna?Gene=SLX4\" target=\"browse_right\">SLX4</a>;";
tree.nodes["htgene_SMAD3"]= "text:<a href=\"mirna?Gene=SMAD3\" target=\"browse_right\">SMAD3</a>;";
tree.nodes["htgene_SMARCA4"]= "text:<a href=\"mirna?Gene=SMARCA4\" target=\"browse_right\">SMARCA4</a>;";
tree.nodes["htgene_SMC1A"]= "text:<a href=\"mirna?Gene=SMC1A\" target=\"browse_right\">SMC1A</a>;";
tree.nodes["htgene_SMCR8"]= "text:<a href=\"mirna?Gene=SMCR8\" target=\"browse_right\">SMCR8</a>;";
tree.nodes["htgene_SMG1"]= "text:<a href=\"mirna?Gene=SMG1\" target=\"browse_right\">SMG1</a>;";
tree.nodes["htgene_SMG6"]= "text:<a href=\"mirna?Gene=SMG6\" target=\"browse_right\">SMG6</a>;";
tree.nodes["htgene_SMPD4"]= "text:<a href=\"mirna?Gene=SMPD4\" target=\"browse_right\">SMPD4</a>;";
tree.nodes["htgene_SNAP47"]= "text:<a href=\"mirna?Gene=SNAP47\" target=\"browse_right\">SNAP47</a>;";
tree.nodes["htgene_SNX8"]= "text:<a href=\"mirna?Gene=SNX8\" target=\"browse_right\">SNX8</a>;";
tree.nodes["htgene_SOGA1"]= "text:<a href=\"mirna?Gene=SOGA1\" target=\"browse_right\">SOGA1</a>;";
tree.nodes["htgene_SON"]= "text:<a href=\"mirna?Gene=SON\" target=\"browse_right\">SON</a>;";
tree.nodes["htgene_SOX4"]= "text:<a href=\"mirna?Gene=SOX4\" target=\"browse_right\">SOX4</a>;";
tree.nodes["htgene_SPATA13"]= "text:<a href=\"mirna?Gene=SPATA13\" target=\"browse_right\">SPATA13</a>;";
tree.nodes["htgene_SPECC1"]= "text:<a href=\"mirna?Gene=SPECC1\" target=\"browse_right\">SPECC1</a>;";
tree.nodes["htgene_SPECC1L-ADORA2A"]= "text:<a href=\"mirna?Gene=SPECC1L-ADORA2A\" target=\"browse_right\">SPECC1L-ADORA2A</a>;";
tree.nodes["htgene_SPEN"]= "text:<a href=\"mirna?Gene=SPEN\" target=\"browse_right\">SPEN</a>;";
tree.nodes["htgene_SPPL2B"]= "text:<a href=\"mirna?Gene=SPPL2B\" target=\"browse_right\">SPPL2B</a>;";
tree.nodes["htgene_SPTAN1"]= "text:<a href=\"mirna?Gene=SPTAN1\" target=\"browse_right\">SPTAN1</a>;";
tree.nodes["htgene_SPTBN1"]= "text:<a href=\"mirna?Gene=SPTBN1\" target=\"browse_right\">SPTBN1</a>;";
tree.nodes["htgene_SRCAP"]= "text:<a href=\"mirna?Gene=SRCAP\" target=\"browse_right\">SRCAP</a>;";
tree.nodes["htgene_SRGAP2"]= "text:<a href=\"mirna?Gene=SRGAP2\" target=\"browse_right\">SRGAP2</a>;";
tree.nodes["htgene_SRRM2"]= "text:<a href=\"mirna?Gene=SRRM2\" target=\"browse_right\">SRRM2</a>;";
tree.nodes["htgene_SSH2"]= "text:<a href=\"mirna?Gene=SSH2\" target=\"browse_right\">SSH2</a>;";
tree.nodes["htgene_ST3GAL1"]= "text:<a href=\"mirna?Gene=ST3GAL1\" target=\"browse_right\">ST3GAL1</a>;";
tree.nodes["htgene_ST3GAL2"]= "text:<a href=\"mirna?Gene=ST3GAL2\" target=\"browse_right\">ST3GAL2</a>;";
tree.nodes["htgene_STAT6"]= "text:<a href=\"mirna?Gene=STAT6\" target=\"browse_right\">STAT6</a>;";
tree.nodes["htgene_STK10"]= "text:<a href=\"mirna?Gene=STK10\" target=\"browse_right\">STK10</a>;";
tree.nodes["htgene_SUGP2"]= "text:<a href=\"mirna?Gene=SUGP2\" target=\"browse_right\">SUGP2</a>;";
tree.nodes["htgene_SUN2"]= "text:<a href=\"mirna?Gene=SUN2\" target=\"browse_right\">SUN2</a>;";
tree.nodes["htgene_SUPT6H"]= "text:<a href=\"mirna?Gene=SUPT6H\" target=\"browse_right\">SUPT6H</a>;";
tree.nodes["htgene_SYMPK"]= "text:<a href=\"mirna?Gene=SYMPK\" target=\"browse_right\">SYMPK</a>;";
tree.nodes["htgene_SYNE3"]= "text:<a href=\"mirna?Gene=SYNE3\" target=\"browse_right\">SYNE3</a>;";
tree.nodes["htgene_SYNRG"]= "text:<a href=\"mirna?Gene=SYNRG\" target=\"browse_right\">SYNRG</a>;";
tree.nodes["htgene_TACC2"]= "text:<a href=\"mirna?Gene=TACC2\" target=\"browse_right\">TACC2</a>;";
tree.nodes["htgene_TAOK1"]= "text:<a href=\"mirna?Gene=TAOK1\" target=\"browse_right\">TAOK1</a>;";
tree.nodes["htgene_TAOK2"]= "text:<a href=\"mirna?Gene=TAOK2\" target=\"browse_right\">TAOK2</a>;";
tree.nodes["htgene_TBC1D16"]= "text:<a href=\"mirna?Gene=TBC1D16\" target=\"browse_right\">TBC1D16</a>;";
tree.nodes["htgene_TBC1D9B"]= "text:<a href=\"mirna?Gene=TBC1D9B\" target=\"browse_right\">TBC1D9B</a>;";
tree.nodes["htgene_TCF20"]= "text:<a href=\"mirna?Gene=TCF20\" target=\"browse_right\">TCF20</a>;";
tree.nodes["htgene_TCOF1"]= "text:<a href=\"mirna?Gene=TCOF1\" target=\"browse_right\">TCOF1</a>;";
tree.nodes["htgene_TET3"]= "text:<a href=\"mirna?Gene=TET3\" target=\"browse_right\">TET3</a>;";
tree.nodes["htgene_TEX2"]= "text:<a href=\"mirna?Gene=TEX2\" target=\"browse_right\">TEX2</a>;";
tree.nodes["htgene_TGFBRAP1"]= "text:<a href=\"mirna?Gene=TGFBRAP1\" target=\"browse_right\">TGFBRAP1</a>;";
tree.nodes["htgene_TLN1"]= "text:<a href=\"mirna?Gene=TLN1\" target=\"browse_right\">TLN1</a>;";
tree.nodes["htgene_TMC6"]= "text:<a href=\"mirna?Gene=TMC6\" target=\"browse_right\">TMC6</a>;";
tree.nodes["htgene_TMEM127"]= "text:<a href=\"mirna?Gene=TMEM127\" target=\"browse_right\">TMEM127</a>;";
tree.nodes["htgene_TMEM184A"]= "text:<a href=\"mirna?Gene=TMEM184A\" target=\"browse_right\">TMEM184A</a>;";
tree.nodes["htgene_TNKS1BP1"]= "text:<a href=\"mirna?Gene=TNKS1BP1\" target=\"browse_right\">TNKS1BP1</a>;";
tree.nodes["htgene_TNRC18"]= "text:<a href=\"mirna?Gene=TNRC18\" target=\"browse_right\">TNRC18</a>;";
tree.nodes["htgene_TNRC6A"]= "text:<a href=\"mirna?Gene=TNRC6A\" target=\"browse_right\">TNRC6A</a>;";
tree.nodes["htgene_TNRC6B"]= "text:<a href=\"mirna?Gene=TNRC6B\" target=\"browse_right\">TNRC6B</a>;";
tree.nodes["htgene_TNS1"]= "text:<a href=\"mirna?Gene=TNS1\" target=\"browse_right\">TNS1</a>;";
tree.nodes["htgene_TNS3"]= "text:<a href=\"mirna?Gene=TNS3\" target=\"browse_right\">TNS3</a>;";
tree.nodes["htgene_TOR1AIP2"]= "text:<a href=\"mirna?Gene=TOR1AIP2\" target=\"browse_right\">TOR1AIP2</a>;";
tree.nodes["htgene_TP73-AS1"]= "text:<a href=\"mirna?Gene=TP73-AS1\" target=\"browse_right\">TP73-AS1</a>;";
tree.nodes["htgene_TPR"]= "text:<a href=\"mirna?Gene=TPR\" target=\"browse_right\">TPR</a>;";
tree.nodes["htgene_TRIM11"]= "text:<a href=\"mirna?Gene=TRIM11\" target=\"browse_right\">TRIM11</a>;";
tree.nodes["htgene_TRIM56"]= "text:<a href=\"mirna?Gene=TRIM56\" target=\"browse_right\">TRIM56</a>;";
tree.nodes["htgene_TRIO"]= "text:<a href=\"mirna?Gene=TRIO\" target=\"browse_right\">TRIO</a>;";
tree.nodes["htgene_TRRAP"]= "text:<a href=\"mirna?Gene=TRRAP\" target=\"browse_right\">TRRAP</a>;";
tree.nodes["htgene_TTI1"]= "text:<a href=\"mirna?Gene=TTI1\" target=\"browse_right\">TTI1</a>;";
tree.nodes["htgene_TUBB6"]= "text:<a href=\"mirna?Gene=TUBB6\" target=\"browse_right\">TUBB6</a>;";
tree.nodes["htgene_TUBGCP6"]= "text:<a href=\"mirna?Gene=TUBGCP6\" target=\"browse_right\">TUBGCP6</a>;";
tree.nodes["htgene_TUG1"]= "text:<a href=\"mirna?Gene=TUG1\" target=\"browse_right\">TUG1</a>;";
tree.nodes["htgene_TYK2"]= "text:<a href=\"mirna?Gene=TYK2\" target=\"browse_right\">TYK2</a>;";
tree.nodes["htgene_UBE2G2"]= "text:<a href=\"mirna?Gene=UBE2G2\" target=\"browse_right\">UBE2G2</a>;";
tree.nodes["htgene_UBE2O"]= "text:<a href=\"mirna?Gene=UBE2O\" target=\"browse_right\">UBE2O</a>;";
tree.nodes["htgene_UBR4"]= "text:<a href=\"mirna?Gene=UBR4\" target=\"browse_right\">UBR4</a>;";
tree.nodes["htgene_UPF1"]= "text:<a href=\"mirna?Gene=UPF1\" target=\"browse_right\">UPF1</a>;";
tree.nodes["htgene_URB1"]= "text:<a href=\"mirna?Gene=URB1\" target=\"browse_right\">URB1</a>;";
tree.nodes["htgene_URB2"]= "text:<a href=\"mirna?Gene=URB2\" target=\"browse_right\">URB2</a>;";
tree.nodes["htgene_URGCP"]= "text:<a href=\"mirna?Gene=URGCP\" target=\"browse_right\">URGCP</a>;";
tree.nodes["htgene_USP24"]= "text:<a href=\"mirna?Gene=USP24\" target=\"browse_right\">USP24</a>;";
tree.nodes["htgene_USP34"]= "text:<a href=\"mirna?Gene=USP34\" target=\"browse_right\">USP34</a>;";
tree.nodes["htgene_USP9X"]= "text:<a href=\"mirna?Gene=USP9X\" target=\"browse_right\">USP9X</a>;";
tree.nodes["htgene_VCAN"]= "text:<a href=\"mirna?Gene=VCAN\" target=\"browse_right\">VCAN</a>;";
tree.nodes["htgene_VCPIP1"]= "text:<a href=\"mirna?Gene=VCPIP1\" target=\"browse_right\">VCPIP1</a>;";
tree.nodes["htgene_VEGFA"]= "text:<a href=\"mirna?Gene=VEGFA\" target=\"browse_right\">VEGFA</a>;";
tree.nodes["htgene_VPRBP"]= "text:<a href=\"mirna?Gene=VPRBP\" target=\"browse_right\">VPRBP</a>;";
tree.nodes["htgene_VPS13D"]= "text:<a href=\"mirna?Gene=VPS13D\" target=\"browse_right\">VPS13D</a>;";
tree.nodes["htgene_VPS18"]= "text:<a href=\"mirna?Gene=VPS18\" target=\"browse_right\">VPS18</a>;";
tree.nodes["htgene_WASH6P"]= "text:<a href=\"mirna?Gene=WASH6P\" target=\"browse_right\">WASH6P</a>;";
tree.nodes["htgene_WDR33"]= "text:<a href=\"mirna?Gene=WDR33\" target=\"browse_right\">WDR33</a>;";
tree.nodes["htgene_WDR6"]= "text:<a href=\"mirna?Gene=WDR6\" target=\"browse_right\">WDR6</a>;";
tree.nodes["htgene_WDR81"]= "text:<a href=\"mirna?Gene=WDR81\" target=\"browse_right\">WDR81</a>;";
tree.nodes["htgene_WHSC1"]= "text:<a href=\"mirna?Gene=WHSC1\" target=\"browse_right\">WHSC1</a>;";
tree.nodes["htgene_WHSC1L1"]= "text:<a href=\"mirna?Gene=WHSC1L1\" target=\"browse_right\">WHSC1L1</a>;";
tree.nodes["htgene_WNK1"]= "text:<a href=\"mirna?Gene=WNK1\" target=\"browse_right\">WNK1</a>;";
tree.nodes["htgene_XXbac-B461K10.4"]= "text:<a href=\"mirna?Gene=XXbac-B461K10.4\" target=\"browse_right\">XXbac-B461K10.4</a>;";
tree.nodes["htgene_YLPM1"]= "text:<a href=\"mirna?Gene=YLPM1\" target=\"browse_right\">YLPM1</a>;";
tree.nodes["htgene_YTHDF3"]= "text:<a href=\"mirna?Gene=YTHDF3\" target=\"browse_right\">YTHDF3</a>;";
tree.nodes["htgene_ZBED1"]= "text:<a href=\"mirna?Gene=ZBED1\" target=\"browse_right\">ZBED1</a>;";
tree.nodes["htgene_ZBED4"]= "text:<a href=\"mirna?Gene=ZBED4\" target=\"browse_right\">ZBED4</a>;";
tree.nodes["htgene_ZBTB7A"]= "text:<a href=\"mirna?Gene=ZBTB7A\" target=\"browse_right\">ZBTB7A</a>;";
tree.nodes["htgene_ZC3H11A"]= "text:<a href=\"mirna?Gene=ZC3H11A\" target=\"browse_right\">ZC3H11A</a>;";
tree.nodes["htgene_ZC3H13"]= "text:<a href=\"mirna?Gene=ZC3H13\" target=\"browse_right\">ZC3H13</a>;";
tree.nodes["htgene_ZC3H4"]= "text:<a href=\"mirna?Gene=ZC3H4\" target=\"browse_right\">ZC3H4</a>;";
tree.nodes["htgene_ZCCHC14"]= "text:<a href=\"mirna?Gene=ZCCHC14\" target=\"browse_right\">ZCCHC14</a>;";
tree.nodes["htgene_ZFHX3"]= "text:<a href=\"mirna?Gene=ZFHX3\" target=\"browse_right\">ZFHX3</a>;";
tree.nodes["htgene_ZKSCAN1"]= "text:<a href=\"mirna?Gene=ZKSCAN1\" target=\"browse_right\">ZKSCAN1</a>;";
tree.nodes["htgene_ZMIZ1"]= "text:<a href=\"mirna?Gene=ZMIZ1\" target=\"browse_right\">ZMIZ1</a>;";
tree.nodes["htgene_ZNF106"]= "text:<a href=\"mirna?Gene=ZNF106\" target=\"browse_right\">ZNF106</a>;";
tree.nodes["htgene_ZNF142"]= "text:<a href=\"mirna?Gene=ZNF142\" target=\"browse_right\">ZNF142</a>;";
tree.nodes["htgene_ZNF148"]= "text:<a href=\"mirna?Gene=ZNF148\" target=\"browse_right\">ZNF148</a>;";
tree.nodes["htgene_ZNF217"]= "text:<a href=\"mirna?Gene=ZNF217\" target=\"browse_right\">ZNF217</a>;";
tree.nodes["htgene_ZNF281"]= "text:<a href=\"mirna?Gene=ZNF281\" target=\"browse_right\">ZNF281</a>;";
tree.nodes["htgene_ZNF292"]= "text:<a href=\"mirna?Gene=ZNF292\" target=\"browse_right\">ZNF292</a>;";
tree.nodes["htgene_ZNF445"]= "text:<a href=\"mirna?Gene=ZNF445\" target=\"browse_right\">ZNF445</a>;";
tree.nodes["htgene_ZNF451"]= "text:<a href=\"mirna?Gene=ZNF451\" target=\"browse_right\">ZNF451</a>;";
tree.nodes["htgene_ZNF516"]= "text:<a href=\"mirna?Gene=ZNF516\" target=\"browse_right\">ZNF516</a>;";
tree.nodes["htgene_ZNF587"]= "text:<a href=\"mirna?Gene=ZNF587\" target=\"browse_right\">ZNF587</a>;";
tree.nodes["htgene_ZNF592"]= "text:<a href=\"mirna?Gene=ZNF592\" target=\"browse_right\">ZNF592</a>;";
tree.nodes["htgene_ZNF598"]= "text:<a href=\"mirna?Gene=ZNF598\" target=\"browse_right\">ZNF598</a>;";
tree.nodes["htgene_ZNF609"]= "text:<a href=\"mirna?Gene=ZNF609\" target=\"browse_right\">ZNF609</a>;";
tree.nodes["htgene_ZNF629"]= "text:<a href=\"mirna?Gene=ZNF629\" target=\"browse_right\">ZNF629</a>;";
tree.nodes["htgene_ZNF638"]= "text:<a href=\"mirna?Gene=ZNF638\" target=\"browse_right\">ZNF638</a>;";
tree.nodes["htgene_ZNF646"]= "text:<a href=\"mirna?Gene=ZNF646\" target=\"browse_right\">ZNF646</a>;";
tree.nodes["htgene_ZNFX1"]= "text:<a href=\"mirna?Gene=ZNFX1\" target=\"browse_right\">ZNFX1</a>;";
tree.nodes["htgene_ZSCAN29"]= "text:<a href=\"mirna?Gene=ZSCAN29\" target=\"browse_right\">ZSCAN29</a>;";
tree.nodes["htgene_ZZEF1"]= "text:<a href=\"mirna?Gene=ZZEF1\" target=\"browse_right\">ZZEF1</a>;";


	
	
    document.write(tree.toString()); 
 
	     </SCRIPT>

  </body>
</html>