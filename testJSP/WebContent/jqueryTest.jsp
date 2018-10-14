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
    {"TITLE":"���ĸ�",    "NO":"1","DATE":"20180101"},
    {"TITLE":"�����",    "NO":"2","DATE":"20180201"},
    {"TITLE":"����",    "NO":"3","DATE":"20180301"},
    {"TITLE":"�ﰢ���",   "NO":"4" ,"DATE":"20180401"},
    {"TITLE":"�ٳ�������", "NO":"5","DATE":"20180501"},
    {"TITLE":"�Ƹ޸�ī��", "NO":"6","DATE":"20180601"},
    {"TITLE":"��",   	"NO":"7","DATE":"20180701"},
    {"TITLE":"�Ϻ���",   	"NO":"8","DATE":"20180801"},
    {"TITLE":"���̽�Ƽ",  	"NO":"9" ,"DATE":"20180901"},
    {"TITLE":"����"	, 	"NO":"10","DATE":"20181001"},
    {"TITLE":"�θ���",  	"NO":"11" ,"DATE":"20181101"},
    {"TITLE":"�÷�ġ��", 	"NO":"12","DATE":"20181201"},
    {"TITLE":"�θ���",  	"NO":"13" ,"DATE":"20181101"},
    {"TITLE":"���̱�", 	"NO":"14","DATE":"20181201"},
    {"TITLE":"����ũ",  	"NO":"15" ,"DATE":"20181101"},
    {"TITLE":"���ݸ�", 	"NO":"16","DATE":"20181201"},
    {"TITLE":"���ĸ�2",    "NO":"17","DATE":"20180101"},
    {"TITLE":"�����2",    "NO":"18","DATE":"20180201"},
    {"TITLE":"����2",    "NO":"19","DATE":"20180301"},
    {"TITLE":"�ﰢ���2",   "NO":"20" ,"DATE":"20180401"},
    {"TITLE":"�ٳ�������2", "NO":"21","DATE":"20180501"},
    {"TITLE":"�Ƹ޸�ī��2", "NO":"22","DATE":"20180601"},
    {"TITLE":"��2",   	"NO":"23","DATE":"20180701"},
    {"TITLE":"�Ϻ���2",   	"NO":"24","DATE":"20180801"},
    {"TITLE":"���̽�Ƽ2",  	"NO":"25" ,"DATE":"20180901"},
    {"TITLE":"����2"	, 	"NO":"26","DATE":"20181001"},
    {"TITLE":"�θ���2",  	"NO":"27" ,"DATE":"20181101"},
    {"TITLE":"�÷�ġ��2", 	"NO":"28","DATE":"20181201"},
    {"TITLE":"�θ���22",  	"NO":"29" ,"DATE":"20181101"},
    {"TITLE":"���̱�33", 	"NO":"30","DATE":"20181201"},
    {"TITLE":"����ũ3",  	"NO":"31" ,"DATE":"20181101"},
    {"TITLE":"���ݸ�3", 	"NO":"32","DATE":"20181201"},
    {"TITLE":"�θ���3",  	"NO":"33" ,"DATE":"20181101"},
    {"TITLE":"���̱�3", 	"NO":"34","DATE":"20181201"},
    {"TITLE":"����ũ3",  	"NO":"35" ,"DATE":"20181101"},
    {"TITLE":"���ݸ�3", 	"NO":"36","DATE":"20181201"},
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