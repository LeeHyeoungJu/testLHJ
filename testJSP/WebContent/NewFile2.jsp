<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
<!DOCTYPE html>
<html>
<head>
<meta charset="UTF-8">
<title>Insert title here</title>
<script src="http://code.jquery.com/jquery-1.9.0.js"></script>
<script src="http://code.jquery.com/jquery-migrate-1.0.0.js"></script>
<!-- TEST -->
<script type="text/javascript"></script>
<script type="text/javascript">
	$(document).ready(function(){
		console.log("ready");
	});
	
	var json_data = {};
	var json_data= {"list":[
		      {"fund_name":"펀드명1","FILE1":"abc1_1.pdf","FILE2":"abc1_2.pdf", "FILE3":"abc1_3.pdf"}
			, {"fund_name":"펀드명2","FILE1":"abc2_1.pdf","FILE2":"abc2_2.pdf", "FILE3":"abc2_3.pdf"}
			, {"fund_name":"펀드명3","FILE1":"abc3_1.pdf","FILE2":"abc3_2.pdf", "FILE3":"abc3_3.pdf"}
       ]
	 }

	var json_FILE= {"list":[
		      {"fund_name":"공통약관","FILE1":"CCC.pdf","FILE2":"abc1_2.pdf", "FILE3":"abc1_3.pdf"}
       ]
	 }
	
	var param = {};
	var params = [];
	var prefix = 'pdf_';
	
	//json데이터의 값 출력
	var obj = "";
	
	//공통약관 PUSH
	params.push(json_FILE.list[0].FILE1);
	for(var i=0; i<json_data.list.length; i++) {
		obj = json_data.list[i];
		for(var j = 0; j < 1 ; j++) {
		    //console.log("j:" + j + ":obj.FILE1" + obj.FILE1 +"obj.FILE2:" + obj.FILE2 +"obj.FILE3:" + obj.FILE3);
		    params.push(obj.FILE1);
			params.push(obj.FILE2);
			params.push(obj.FILE3);
	    }
		console.log("for i params:"+params);
	}
	
	console.log("param:" +JSON.stringify(params)); 
	
	var json_data2 = {};
	    json_data2 = {"test":1};
	    
 	    $.each(params, function(index,item){
 	    	json_data2[prefix + index] = item;
 	    	json_data2[prefix + index] = item;
 	    	json_data2[prefix + index] = item;
   	    });
	console.log("json_data2:"+JSON.stringify(json_data2));
</script>
</head>
<body>
<%
//TODO TEST
%>	
</body>
</html>