<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
<!DOCTYPE html>
<html>
<head>
<meta charset="UTF-8">
<title>Insert title here</title>
</head>
<script src="http://code.jquery.com/jquery-1.9.0.js"></script>
<script src="http://code.jquery.com/jquery-migrate-1.0.0.js"></script>
<style>
ul.tabs {
    margin: 0;
    padding: 0;
    float: left;
    list-style: none;
    height: 32px;
    border-bottom: 1px solid #eee;
    border-left: 1px solid #eee;
    width: 100%;
    font-family:"dotum";
    font-size:12px;
}
ul.tabs li {
    float: left;
    text-align:center;
    cursor: pointer;
    width:82px;
    height: 31px;
    line-height: 31px;
    border: 1px solid #eee;
    border-left: none;
    font-weight: bold;
    background: #fafafa;
    overflow: hidden;
    position: relative;
}
ul.tabs li.active {
    background: #FFFFFF;
    border-bottom: 1px solid #FFFFFF;
}
.tab_container {
    border: 1px solid #eee;
    border-top: none;
    clear: both;
    float: left;
    width: 248px;
    background: #FFFFFF;
}
.tab_content {
    padding: 5px;
    font-size: 12px;
    display: none;
}
.tab_container .tab_content ul {
    width:100%;
    margin:0px;
    padding:0px;
}
.tab_container .tab_content ul li {
    padding:5px;
    list-style:none
}
;
 #container {
    width: 249px;
    margin: 0 auto;
}
</style>
<script type="text/javascript">

$(document).ready(function(){

	$(".tab_content").hide();
    $(".tab_content:first").show();

    $("ul.tabs li").click(function () {
    	console.log("li이벤트");
        $("ul.tabs li").removeClass("active").css("color", "#333");
        //$(this).addClass("active").css({"color": "darkred","font-weight": "bolder"});
        $(this).addClass("active").css("color", "darkred");
        $(".tab_content").hide();
        var activeTab = $(this).attr("rel");
        $("#" + activeTab).fadeIn();
        $("#" + activeTab).addClass("active");
    });
    
	$(".btnArea a").on("click", function(){
		console.log("이벤트...");
		if(validate()){
			alert("ok");
		}
	})
	
	$("input[type=checkbox]").on("click",function(){
		if($("#chk").is(":checked")){
			$("#price1").attr("disabled",false);
		}else{
			$("#price1").attr("disabled",true);
		}

		if($("#chk2").is(":checked")){
			$("#price2").attr("disabled",false);
		}else{
			$("#price2").attr("disabled",true);
		}
	});
});


function validate(){
	console.log("validate()");
	if($("#chk").is(":checked")){
		if($("#price1").val() == ""){
			alert("가격을 입력하세요.1");
			return false;			
		}
	}
	if($("#chk2").is(":checked")){
		var rdo = $(':input[name=rdo]:radio:checked').val();
		
		console.log("validate() rdo:" + rdo);
		
		if(rdo == "" || rdo == null){
			alert("라디오을 선택");
			return false;
		}
	}
	return true;
}

</script>

<body>
	<div class="btnArea">
		<input type="checkbox" id="chk" name="chk" value="1">체크박스<br/>
		<input type="text" id="price1" name="price1" disabled="disabled">가격1<br/>
		<input type="checkbox" id="chk2" name="chk2" value="2">체크박스2<br/>
		<input type="radio" id="rdo1" name="rdo">라디오1<br/>
		<input type="radio" id="rdo2" name="rdo">라디오2<br/>
		<input type="text" id="price2" name="price2" disabled="disabled">가격2<br/>
		<a href="#none;">확인</a><br/>
	</div>
	<br />
	
<div id="container">
    <ul class="tabs">
        <li class="active" rel="tab1">탭1</li>
        <li rel="tab2">탭2</li>
        <li rel="tab3">탭3</li>
    </ul>
    <div class="tab_container">
        <div id="tab1" class="tab_content">
			탭1의 내용임.	
        </div>
        <!-- #tab1 -->
        <div id="tab2" class="tab_content">
      		  탭2의 내용임.
        </div>
        <!-- #tab2 -->
        <div id="tab3" class="tab_content">
        	탭3의 내용임.
        </div>
        <!-- #tab3 -->
    </div>
    <!-- .tab_container -->
</div>
<!-- #container -->
</body>
</html>