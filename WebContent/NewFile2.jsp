<%@ page language="java" contentType="text/html; charset=EUC-KR"
    pageEncoding="EUC-KR"%>
<!DOCTYPE html PUBLIC "-//W3C//DTD HTML 4.01 Transitional//EN" "http://www.w3.org/TR/html4/loose.dtd">
<html>
<head>
<meta http-equiv="Content-Type" content="text/html; charset=EUC-KR">
<title>Insert title here</title>
<style type="text/css">
img{
width : 100px;}
</style>
<!-- Important Owl stylesheet -->
<link rel="stylesheet" href="owl-carousel/owl.carousel.css">
 
<!-- Default Theme -->
<link rel="stylesheet" href="owl-carousel/owl.theme.css">
 
<!--  jQuery 1.7+  -->
<script src="https://ajax.googleapis.com/ajax/libs/jquery/1.11.3/jquery.min.js"></script>

 
<!-- Include js plugin -->
<script src="owl-carousel/owl.carousel.js"></script>
</head>
<body>
<div id="owl-example" class="owl-carousel">
  <div><img src="https://encrypted-tbn3.gstatic.com/images?q=tbn:ANd9GcRSwhxuljpou5-57ULr6QplHVGeZJDOD-kntPS6LFH3ePfb2CsGgg"> Your Content </div>
  <div> Your Content </div>
  <div> Your Content </div>
  <div> Your Content </div>
  <div> Your Content </div>
  <div> Your Content </div>
  <div> Your Content </div>
  ...
</div>
<script type="text/javascript">
$(document).ready(function() {
	 
	  $("#owl-example").owlCarousel();
	 
	});
</script>
</body>
</html>