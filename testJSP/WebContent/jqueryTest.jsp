<%@ page language="java" contentType="text/html; charset=EUC-KR"
    pageEncoding="EUC-KR"%>
<!DOCTYPE html>
<html>
<head>
<meta charset="EUC-KR">
<title>Insert title here</title>
</head>
<!-- js include -->
<script src="http://code.jquery.com/jquery-1.9.0.js"></script>
<script src="http://code.jquery.com/jquery-migrate-1.0.0.js"></script>

<script type="text/javascript">
var json_data = [
    {"TITLE":"양파링",    "NO":"1","DATE":"20180101"},
    {"TITLE":"새우깡",    "NO":"2","DATE":"20180201"},
    {"TITLE":"고래밥",    "NO":"3","DATE":"20180301"},
    {"TITLE":"삼각김밥",   "NO":"4" ,"DATE":"20180401"},
    {"TITLE":"바나나우유", "NO":"5","DATE":"20180501"},
    {"TITLE":"아메리카노", "NO":"6","DATE":"20180601"},
    {"TITLE":"라떼",   	"NO":"7","DATE":"20180701"},
    {"TITLE":"팥빙수",   	"NO":"8","DATE":"20180801"},
    {"TITLE":"아이스티",  	"NO":"9" ,"DATE":"20180901"},
    {"TITLE":"와플"	, 	"NO":"10","DATE":"20181001"},
    {"TITLE":"부리또",  	"NO":"11" ,"DATE":"20181101"},
    {"TITLE":"플렛치노", 	"NO":"12","DATE":"20181201"},
    {"TITLE":"부리또",  	"NO":"13" ,"DATE":"20181101"},
    {"TITLE":"베이글", 	"NO":"14","DATE":"20181201"},
    {"TITLE":"케이크",  	"NO":"15" ,"DATE":"20181101"},
    {"TITLE":"초콜릿", 	"NO":"16","DATE":"20181201"},
    {"TITLE":"양파링2",    "NO":"17","DATE":"20180101"},
    {"TITLE":"새우깡2",    "NO":"18","DATE":"20180201"},
    {"TITLE":"고래밥2",    "NO":"19","DATE":"20180301"},
    {"TITLE":"삼각김밥2",   "NO":"20" ,"DATE":"20180401"},
    {"TITLE":"바나나우유2", "NO":"21","DATE":"20180501"},
    {"TITLE":"아메리카노2", "NO":"22","DATE":"20180601"},
    {"TITLE":"라떼2",   	"NO":"23","DATE":"20180701"},
    {"TITLE":"팥빙수2",   	"NO":"24","DATE":"20180801"},
    {"TITLE":"아이스티2",  	"NO":"25" ,"DATE":"20180901"},
    {"TITLE":"와플2"	, 	"NO":"26","DATE":"20181001"},
    {"TITLE":"부리또2",  	"NO":"27" ,"DATE":"20181101"},
    {"TITLE":"플렛치노2", 	"NO":"28","DATE":"20181201"},
    {"TITLE":"부리또22",  	"NO":"29" ,"DATE":"20181101"},
    {"TITLE":"베이글33", 	"NO":"30","DATE":"20181201"},
    {"TITLE":"케이크3",  	"NO":"31" ,"DATE":"20181101"},
    {"TITLE":"초콜릿3", 	"NO":"32","DATE":"20181201"},
    {"TITLE":"부리또3",  	"NO":"33" ,"DATE":"20181101"},
    {"TITLE":"베이글3", 	"NO":"34","DATE":"20181201"},
    {"TITLE":"케이크3",  	"NO":"35" ,"DATE":"20181101"},
    {"TITLE":"초콜릿3", 	"NO":"36","DATE":"20181201"},
];

   
	$(document).ready(function(){
		var str ="";
		var index = 0;
		for (var i = 0; i < json_data.length; i++) {
			if((i % 3) == 0){
				index++;
				console.log("i["+ i+"]NO["+json_data[i].NO+"]"+json_data[i].TITLE);
				str += "<tr id=tr_'"+ index +"'>";
				str += "<td>" + i +"<td>";
				str += "<td>" + json_data[i].NO +"<td>";
				str += "<td>" + json_data[i].TITLE +"<td>";
				str += "</tr>";
			}
		}
		$("#table1").html(str);
	});
</script>

<body>
	<form action="post" id="frm" name="frm">
		<table id="table1" border="1">
			<tbody>
				<thead>
					<th>i</th>
					<th>NO</th>
					<th>TITLE</th>
				</thead>
			</tbody>
		</table>
	</form>
</body>
</html>