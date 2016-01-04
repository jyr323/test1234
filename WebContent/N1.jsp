<%@ page language="java" contentType="text/html; charset=EUC-KR"
    pageEncoding="EUC-KR"%>
<!DOCTYPE html PUBLIC "-//W3C//DTD HTML 4.01 Transitional//EN" "http://www.w3.org/TR/html4/loose.dtd">
<html>
<head>
<meta http-equiv="Content-Type" content="text/html; charset=EUC-KR">
<title>Insert title here</title>
<link href="layerPopup/layerPopup.css" rel="stylesheet">
</head>
<body>
<a href="#" class="btn-example" onclick="layer_open('layer2');return false;">예제-2 보기</a>
<div class="layer">
	<div class="bg"></div>
	<div id="layer2" class="pop-layer">
		<div class="pop-container">
			<div class="pop-conts">
				<!--content //-->
				<p class="ctxt mb20">Thank you.<br>
					Your registration was submitted successfully.<br>
					Selected invitees will be notified by e-mail on JANUARY 24th.<br><br>
					Hope to see you soon!
				</p>

				
				<!--// content-->
			</div>
		</div>
	</div>
</div>

</body>
<script src="https://ajax.googleapis.com/ajax/libs/jquery/1.11.3/jquery.min.js"></script>
<script src="layerPopup/layerPopup.js"></script>

</html>