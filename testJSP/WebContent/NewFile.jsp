<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
<!DOCTYPE html>
<html>
<head>
<meta charset="UTF-8">
<title>Insert title here</title>
<script src="http://code.jquery.com/jquery-1.9.0.js"></script>
<script src="http://code.jquery.com/jquery-migrate-1.0.0.js"></script>

<script type="text/javascript"></script>
<script type="text/javascript">
	$(document).ready(function(){
		console.log("ready");
		$("#chAll").on("click",function(){
			
			console.log( "all:"+$("#chAll").is(":checked"));
			
			if($("#chAll").is(":checked")){
				$("input[id^=ch]").attr("checked",true);
			}else{
				$("input[id^=ch]").attr("checked",false);
			}
						
		});
	});
	/* 
	function _callAjax(){
		var prefix = 'pdf_';
		
		callBack(json_data);
	} */
	var json_data = {};
	var json_data= {"list":[
		      {"fund_name":"펀드명1","FILE1":"abc1_1.pdf","FILE2":"abc1_2.pdf", "FILE3":"abc1_3.pdf"}
			, {"fund_name":"펀드명2","FILE1":"abc2_1.pdf","FILE2":"abc2_2.pdf", "FILE3":"abc2_3.pdf"}
			, {"fund_name":"펀드명3","FILE1":"abc3_1.pdf","FILE2":"abc3_2.pdf", "FILE3":"abc3_3.pdf"}
       ]
	 }
	
	var cnt = parseInt(json_data.list.length) * 3;
	
	console.log("cnt:" + cnt);
	var param = {};
	var params = [];
	var prefix = 'pdf_';
	
	//json데이터의 값 출력
	var obj = "";
	for(var i=0; i<json_data.list.length; i++) {
		obj = json_data.list[i];
		for(var j= 0; j < 1 ; j++) {
		    //console.log("j:" + j + ":obj.FILE1" + obj.FILE1 +"obj.FILE2:" + obj.FILE2 +"obj.FILE3:" + obj.FILE3);
			params.push(param[prefix + i] = obj.FILE1);
			params.push(param[prefix + i] = obj.FILE2);
			params.push(param[prefix + i] = obj.FILE3);
		    //console.log("for j:"+param);
	    }
		console.log("for i:"+params);
	}
	
	console.log("param:" +JSON.stringify(params)); 
	var json_data2 = {};
	var param = {};
	    param = {"cnt":"3"};
	
 	    $.each(params, function(index,item){
 	    	json_data2[prefix + index] = item;
 	    	json_data2[prefix + index] = item;
 	    	json_data2[prefix + index] = item;
   	    });
	
	console.log("json_data:"+JSON.stringify(json_data2));  
</script>
</head>
<body>
	<input type="checkbox" id="ch1" value="1">check1<br>
	<input type="checkbox" id="ch2" value="2">check2<br>
	<input type="checkbox" id="ch3" value="3">check3<br>
	<input type="checkbox" id="ch4" value="4">check4<br>
	<input type="checkbox" id="chAll">전체선택<br>
</body>
</html>