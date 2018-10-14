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
	$(document).ready(function(){
		console.log('test');
		
		$("#btn").click(function(){
			$("#frm").attr("target","iframeArea");
			$("#frm").attr("action","iframeArea.jsp");
			$("#frm").submit(function(){
				$("#iframeArea").load(function(){
					console.log(this);
				});
			}).submit();
			console.log("자식창 img:"+$("#iframeArea").contents().find(".innerArea img").attr("src"));
		});
	});
</script>

<body>
	<form action="post" id="frm" name="frm" target="iframeArea">
		<input type="text" name="rto1" value="10" />
		<input type="text" name="rto2" value="15" />
		<input type="text" name="rto3" value="330" />
	</form>
	<a href="#none" id="btn"/>전송</a>
	<iframe name="iframeArea" src="iframeArea.jsp" />
</body>
</html>