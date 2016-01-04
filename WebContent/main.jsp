<%@ page language="java" contentType="text/html; charset=EUC-KR"
	pageEncoding="EUC-KR"%>
<!DOCTYPE html PUBLIC "-//W3C//DTD HTML 4.01 Transitional//EN" "http://www.w3.org/TR/html4/loose.dtd">
<html>
<head>
<meta http-equiv="Content-Type" content="text/html; charset=EUC-KR">
<title>text login</title>
<!-- Bootstrap -->
<link href="bootstrap-3.3.4-dist/css/bootstrap.min.css" rel="stylesheet">
<!-- jQuery (necessary for Bootstrap's JavaScript plugins) -->
<script
	src="https://ajax.googleapis.com/ajax/libs/jquery/1.11.3/jquery.min.js"></script>
<!-- Include all compiled plugins (below), or include individual files as needed -->
<script src="bootstrap-3.3.4-dist/js/bootstrap.min.js"></script>
</head>
<style>
.start {
	padding: 10px 15px;
	text-align: center;
	color: inherit;
	margin-top: 100px;
	margin-bottom: 30px;
}

.login_box {
	padding: 10px 15px;
	text-align: center;
	border-radius: 6px;
	color: inherit;
	margin-bottom: 30px;
	background-color: #eee;
}

.button-submit {
	border: 1px solid #3079ed;
	color: #fff;
	text-shadow: 0 1px rgba(0, 0, 0, 0.1);
	background-color: #4d90fe;
	min-width: 46px;
	text-align: center;
	font-size: 14px;
	font-weight: 700;
	height: 36px;
	padding-top: 0px;
	padding-right: 8px;
	padding-bottom: 0px;
	padding-left: 8px;
	border-radius: 10px;
}

.circle-image {
	display: block;
	height: 96px;
	width: 96px;
	oveflow-x: hidden;
	oveflow-y: hidden;
	border-top-left-radius: 50%;
	border-top-right-radius: 50%;
	border-bottom-left-radius: 50%;
	border-bottom-right-radius: 50%;
	margin-left: auto;
	margin-right: auto;
	z-index: 100;
	margin-bottom: 10px;
	background-size: 96px;
	background-repeat: no-repeat;
	background-image: url(http://cache1.asset-cache.net/xc/495289236.jpg?v=2&c=IWSAsset&k=2&d=MNkv2nd0LYvnlHoZN2a_lUZkLRAgLYjJABL9b5Y6w8ynzgYZcwkWg4RPIvJWMq-R0);
	-webkit-transition: opacity 0.075s;
	-moz-transition: opacity 0.075s;
	-ms-transition: opacity 0.075s;
	-o-transition: opacity 0.075s;
	transition: opacity 0.075s
}
</style>

<body>
	<div class="container">

		<div class="start">
			<h1 class="hidden-big">Online Test</h1>
			&nbsp;
			<h4 class="hidden-small">성경 졸업고사 모의시험 프로그램입니다.</h4>
			<div class="login_box">
				<div class="circle-image"></div>
				<form action="first.jsp">
					<input name="email" type="email" placeholder="아이디 입력"><br>
					<br> <input name="password" type="password" placeholder="패스워드 입력"><br>
					<br> <select name="type">
						<option value="blank">응시할 시험 유형 선택</option>
						<option value="2010-1">A유형</option>
						<option value="2010-2">B유형</option>
						<option value="C">C유형</option>
						<option value="D">D유형</option>
					</select> <br>
					<br> <input type="submit" class="button-submit" value="응시">
					<input type="reset" class="button-submit" value="재설정">
				</form>
			</div>


		</div>
	</div>

</body>
</html>