//��ʼ����ҳ��ʱ
$(document).ready(function(){
	
	$("#go").click();
});

function selectMoveBotton(value){
//	alert(value);
	$.getJSON("BrowserOpertorReturnMessage.action?position="+$("#position").val()+"&move="+value,function(data){
		if($.trim(data.message) == $.trim("true")){
			$("#position").val(data.position);
			$("#go").click();
		}else{
			alert(data.message);
		}
	});
}
function selectZoomBotton(value){
//	alert(value);
	$.getJSON("BrowserOpertorReturnMessage.action?position="+$("#position").val()+"&zoom="+value,function(data){
		if($.trim(data.message) == $.trim("true")){
			$("#position").val(data.position);
			$("#go").click();
		}else{
			alert(data.message);
		}
	});
}

function viewSelect(name){
	$("#"+name+"update").css("background","url(./images/refresh.gif)");
	var tableName="";
	$("input[name='"+name+"']").each(function(a,b){
		//alert($("#"+$(b).attr("id")).attr("checked"));
		if($(b).attr("checked")){
	        tableName+="&tableName="+$(b).val();
        }
	});
//	alert(tableName)
	if($.trim(tableName)==$.trim("")){
		$("#"+name).html("");
		$("#"+name+"update").css("background","url(./images/refresh.png)");
	}else{
		//alert($("#species").val());
		$.getJSON("BrowserImageReturnMessage.action?position="+$("#position").val(),function(data){
			if($.trim(data.message) == $.trim("true")){
				$.getJSON("BrowserImageReturnList.action?position="+$("#position").val()+tableName,function(data){
					$("#"+name).html("");
					$.each(data.list,function(i,value){
						$("#"+name).append("<div style=\"width:100%;height:"+value.height+"px;\" id=\""+name+i+"track\">" +
								"<div class=\"viewLabel\" style=\"height:"+value.height+"px;line-height:"+value.height+"px;\" onmouseover=\"littleTrackShow('"+name+i+"track')\" onmouseout=\"littleTrackHiden('"+name+i+"track')\">"+value.label+"</div>" +
								"<div class=\"viewImge\" style=\"height:"+value.height+"px;line-height:"+value.height+"px;\" onclick=\"showLine()\" onmouseout=\"hidenLine()\">" +
								"<embed src =\"./tmp/svg/"+value.url+"\" " +
										"width =\"100%\" height=\""+value.height+"px\" type =\"image/svg+xml\" " +
										"pluginspage =\"http://www.adobe.com/svg/viewer/install/\"></div></div>");
	//					alert($("#"+name));onclick=\"trackShow('"+name+"libel')\"
					});
				});
			}else{
				alert(data.message);
			}
			$("#"+name+"update").css("background","url(./images/refresh.png)");
		});
	
	}
	
}

function viewInit(){
	$("#button1").css("background","url(./images/load.gif)");
	$.getJSON("BrowserImageReturnMessage.action?position="+$("#position").val(),function(data){
		if($.trim(data.message) == $.trim("true")){
			$.getJSON("BrowserImageReturnMessage.action?position="+$("#position").val(),function(data){
				$.getJSON("BrowserImageReturnList.action?position="+$("#position").val(),function(data){
					$("#bed").html("");
					$.each(data.list,function(i,value){
						if(i==0){
							$("#chromesome").html("");//���div chromesome�еĵ�ǰԪ��
							/*alert(value.url);*/
							$("#chromesome").append("<embed src =\"./tmp/svg/"+value.url+"\" width =\"100%\" height=\"27px\" type =\"image/svg+xml\" pluginspage =\"http://www.adobe.com/svg/viewer/install/\"/>");
						}else if($.trim(value.style)==$.trim("refGene")){
							$("#bed").append("<div style=\"width:100%;height:25px;\">" +
									"<div class=\"viewBedLabel\" style=\"line-height:25px;\">"+value.label+"</div>" +
									"<div class=\"viewBedImge\">" +
									"<embed src =\"./tmp/svg/"+value.url+"\" " + "width =\"100%\" height=\"20px\" type =\"image/svg+xml\" " + "pluginspage =\"http://www.adobe.com/svg/viewer/install/\" onclick=\"shuoVlue('xxx')\"></div></div>");
						}
					});
				});
			});
			$("input[name='update']").each(function(a,b){
		        var id = $(b).attr("id");//��ȡid����
		        $(b).click();
			});	
			$("#go").css("background","url(./images/visul_search.gif)");
		}else{
			alert(data.message);
			$("#go").css("background","url(./images/visul_search.gif)");
		}
	});
}
function shuoVlue(vl){
	var parentWnd=window.parent;
	
	var position=parentWnd.document.getElementById("position");
	var go=parentWnd.document.getElementById("go");
	position.Value="chr1:100-1000";
//	parentWnd.open(optionalArg1, optionalArg2, optionalArg3, optionalArg4);
//	alert(position.value);
}

function showLine(){
	var yuluoffset = $("#view").offset();
	var event=getEvent();
	$("#divline").css("top",yuluoffset.top+5);
	$("#divline").css("left",event.pageX);
	$("#divline").css("height",$("#view").height());
	$("#divline").css("display","block");
}

function hidenLine(){
	$("#divline").css("display","none");
}

function hidenDiv(name){
	if($("#"+name).is(":hidden")){
		$("#"+name).show();
		$("#"+name+"addremove").css("background","url(./images/remove_sm.gif)");
	}else{
		$("#"+name).hide();
		$("#"+name+"addremove").css("background","url(./images/add_sm.gif)");
	}
}
function trackShow(id){
	var event=getEvent();
	var yuluoffset = $("#"+id).offset();
	if(event.pageX>(yuluoffset.left+8)){
//		$("#"+id).css("border-top","solid 0.5px #F0F0F0");
//		$("#"+id).css("border-bottom","solid 0.5px #F0F0F0");
//		$("#"+id).css("border-right","solid 0px #FF0000");
		$("#transparent").css("display","none");
	}else{
	//	$("#"+id).css("border-top","solid 0.5px #FF0000");
	//	$("#"+id).css("border-bottom","solid 0.5px #FF0000");
	//	$("#"+id).css("border-right","solid 0.5px #FF0000");
	//	alert(id);
	//	alert(oEvent.clientX);
	//	$("#"+id).append()("<div class=\"transparent\"></div>");
	//	display:block;
		$("#transparent").css("top",yuluoffset.top-108);
		$("#transparent").css("left",yuluoffset.left+8);
		$("#transparent").css("width",$("#"+id).width());
		$("#transparent").css("height",$("#"+id).height());
		$("#transparent").css("display","block");
	}
//	alert(event.pageX+"---"+yuluoffset.left);
//	$("#"+id)
//	test();
}

function trackClick(id){
	var event=getEvent();
	var yuluoffset = $("#"+id).offset();
	
	if(event.pageX>(yuluoffset.left+8)){
		
	}else{
		$("#transparent_1").css("top",yuluoffset.top+$("#"+id).height());
		$("#transparent_1").css("left",yuluoffset.left+10);
		$("#transparent_1").css("width",$("#"+id).width()/2);
//		$("#transparent_1").css("height",$("#"+id).height());
		//$("#transparent_1").css("display","block");
		$("#transparent_1_info").html("");
		//var tablehtml="<table border=\"0\" cellspacing=\"0\" cellpadding=\"0\">"
		//for(var i=0;i<256;i+=5){
			//tablehtml+="<tr>";
			//for(var j=0;j<256;j+=5){
			//	tablehtml+="<td style=\"width:5px; height:5px; background-color:rgb("+(i)+","+(j)+","+(255-j)+")\"></td>";
			//}
			//tablehtml+="</tr>";
		//}
		//tablehtml+="</table>"
		//$("#transparent_1_info").append(tablehtml);
	}
}
function clickHiden(id){
	$("#"+id).css("display","none");
}

function clickBlock(id){
	$("#"+id).css("display","block");
}

function littleTrackShow(id){
	$("#"+id).css("border","solid 0.5px #069");
	$("#"+id).css("border-left","solid 0px #069");
	var event=getEvent();
	var yuluoffset = $("#"+id).offset();
	$("#transparent_2").css("top",yuluoffset.top+50);
	$("#transparent_2").css("left",yuluoffset.left+140);
	//$("#transparent_2").css("display","block");
//	handle=setTimeout(show(id),10000);
//	$("#transparent_2").fadeIn("slow")
}

function littleTrackHiden(id){
//	clearTimeout(handle);
	$("#"+id).css("border","solid 0px #F0F0F0");
	$("#"+id).css("border-left","solid 0px #FF0000");
	$("#transparent_2").css("display","none");
}

function trackHiden(id){
//	$("#"+id).css("border-top","solid 0.5px #F0F0F0");
//	$("#"+id).css("border-bottom","solid 0.5px #F0F0F0");
//	$("#"+id).css("border-right","solid 0px #FF0000");
	$("#transparent").css("display","none");
//	alert(id);
}
function test() {
    var event=getEvent();
    if (navigator.appName=='Microsoft Internet Explorer') {   }else if (navigator.appName=='Netscape') {
        alert(event.pageX);
    }
   
} 
function getEvent() //ͬʱ����ie��ff��д��
{ 
    if(document.all)  return window.event;   
    func=getEvent.caller;       
    while(func!=null){ 
        var arg0=func.arguments[0];
        if(arg0)
        {
          if((arg0.constructor==Event || arg0.constructor ==MouseEvent) || (typeof(arg0)=="object" && arg0.preventDefault && arg0.stopPropagation))
          { 
          return arg0;
          }
        }
        func=func.caller;
    }
    return null;
} 