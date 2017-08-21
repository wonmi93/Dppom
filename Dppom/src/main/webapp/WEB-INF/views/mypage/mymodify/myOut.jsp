<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
    <%@ taglib uri="http://java.sun.com/jsp/jstl/core" prefix="c" %>
<%@ page session="true" %>
<!DOCTYPE html PUBLIC "-//W3C//DTD HTML 4.01 Transitional//EN" "http://www.w3.org/TR/html4/loose.dtd">
<html>
<head>
<%@ include file="/WEB-INF/layout/head.jsp" %>
<style>
.navbar-brand{
 color:#6173f4;
}
</style>
<title>졸 업 ㅠ ㅠ </title>
</head>
<body>
<header role="banner" id="fh5co-header">
	
	<!--  TOP ( 메뉴 )  -->
		<%@ include file="/WEB-INF/layout/LayoutTop2.jsp" %>
		 
	<!-- TOP (E) -->
</header>


<div id="fh5co-about-us" data-section="about">
<div class="container">
		
	<!-- My Page(메뉴) -->
	
	<%@ include file="/WEB-INF/layout/LayoutMyPage.jsp" %>
	
	<!-- My Page(메뉴) E  -->
		

	<div class="row row-bottom-padded-lg" id="about-us" >
		<div class="col-md-12 section-heading text-center">
			<div class="row">
				<div class="col-md-8 col-md-offset-2 to-animate">
					<h3>졸 업....ㅠ.......</h3>
				</div>
			</div>
		</div>
				
	<div class="col-md-12 to-animate"  >
		<div class="text-center">
	<!-- 회원정보 폼 S -->		
<form action="">
  <span>여기 폼폼폼폼폼....ㅠ......</span>
</form>
<!-- 회원정보 E  -->	
			</div>
		</div>
	</div>


</div>
</div>
	
	<!-- Botton (S) -->
	<%@ include file="/WEB-INF/layout/LayoutBottom.jsp" %>
	<!--  Bottom(E) -->
</body>
</html>