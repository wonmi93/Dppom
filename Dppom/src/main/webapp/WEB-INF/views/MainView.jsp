<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
<%@ taglib uri="http://java.sun.com/jsp/jstl/core" prefix="c" %>
<%@ page session="true" %>
<!DOCTYPE html PUBLIC "-//W3C//DTD HTML 4.01 Transitional//EN" "http://www.w3.org/TR/html4/loose.dtd">

	<head>
	<%@ include file="/WEB-INF/layout/head.jsp" %>
	</head>
	<title>大PPOM 커뮤니티사이트 </title>
	
	<body>
	<header role="banner" id="fh5co-header">
	
	<!--  TOP ( 메뉴 )  -->
		<%@ include file="/WEB-INF/layout/LayoutTop.jsp" %>
		 
	<!-- TOP (E) -->
	</header>

<!-- 슬라이더  -->
	<div id="slider" data-section="home">
		<div class="owl-carousel owl-carousel-fullwidth">
			<!-- You may change the background color here. -->
		    <div class="item" style="background: #352f44;">
		    	<div class="container" style="position: relative;">
		    		<div class="row">
					    <div class="col-md-7 col-sm-7">
			    			<div class="fh5co-owl-text-wrap">
						    	<div class="fh5co-owl-text">
						    		<h1 class="fh5co-lead to-animate">Case Study Title</h1>
									<h2 class="fh5co-sub-lead to-animate">100% Free Fully Responsive HTML5 Bootstrap Template. Crafted with love by the fine folks at <a href="http://freehtml5.co/" target="_blank">FREEHTML5.co</a></h3>
									<p class="to-animate-2"><a href="#" class="btn btn-primary btn-lg">View Case Study</a></p>
						    	</div>
						    </div>
					    </div>
					    <div class="col-md-4 col-md-push-1 col-sm-4 col-sm-push-1 iphone-image">
					    	<div class="iphone to-animate-2"><img src="./resources/bootstrap3.3.7/images/iphone-2.png" alt="Free HTML5 Template by FREEHTML5.co"></div>
					    </div>

		    		</div>
		    	</div>
		    </div>
			<!-- You may change the background color here.  -->
		    <div class="item" style="background: #38569f;">
		    	<div class="container" style="position: relative;">
		    		<div class="row">
		    			<div class="col-md-7 col-md-push-1 col-md-push-5 col-sm-7 col-sm-push-1 col-sm-push-5">
			    			<div class="fh5co-owl-text-wrap">
						    	<div class="fh5co-owl-text">
						    		<h1 class="fh5co-lead to-animate">이대저대 ㅎㅅㅎ</h1>
									<h2 class="fh5co-sub-lead to-animate"> 4개월전.....ㅎ </h3>
									<p class="to-animate-2"><a href="#" class="btn btn-primary btn-lg">View Case Study</a></p>
						    	</div>
						    </div>
					    </div>
					    <div class="col-md-4 col-md-pull-7 col-sm-4 col-sm-pull-7 iphone-image">
					    	<div class="iphone to-animate-2"><img src="./resources/bootstrap3.3.7/images/이대저대.png" alt="Free HTML5 Template by FREEHTML5.co"></div>
					    </div>

		    		</div>
		    	</div>
		    </div>

		    <div class="item" style="background-image:url(images/slide_5.jpg)">
		    	<div class="overlay"></div>
		    	<div class="container" style="position: relative;">
		    		<div class="row">
		    			<div class="col-md-8 col-md-offset-2 text-center">
		    				<div class="fh5co-owl-text-wrap">
						    	<div class="fh5co-owl-text">
		    						<h1 class="fh5co-lead to-animate">Grab it now for free!</h1>
									<h2 class="fh5co-sub-lead to-animate">100% Free Fully Responsive HTML5 Bootstrap Template. Crafted with love by the fine folks at <a href="http://freehtml5.co/" target="_blank">FREEHTML5.co</a></h3>
									<p class="to-animate-2"><a href="http://freehtml5.co/" target="_blank" class="btn btn-primary btn-lg">Download This Template</a></p>
								</div>
							</div>
		    			</div>
		    		</div>
		    	</div>
		    </div>

		</div>
	</div>
	
	<!-- 베스트 게시판 -->
		<div id="fh5co-testimonials" data-section="testimonials" style="background-color:white">		
		<div class="container" >
			<div class="row">
				<div class="col-md-12 section-heading text-center">
					<h2 class="to-animate" style="color:grey">B E S T</h2>
					<div class="row">
						<div class="col-md-8 col-md-offset-2 subtext to-animate">
							<h3 style="color:grey">게시판(베스트) / 사람찾기 (최신글) / 어학,자격증 (조횟수)</h3>
						</div>
					</div>
				</div>
			</div>
			<div class="row" >
				<div class="col-md-4">
					<div class="box-testimony to-animate">
						<blockquote>
							<span class="quote"><span><i class="icon-quote-left"></i></span></span>
							<p>&ldquo;Far far away, behind the word mountains, far from the countries Vokalia and Consonantia, there live the blind texts. Separated they live in Bookmarksgrove right at the coast of the Semantics, a large language ocean.&rdquo;</p>
						</blockquote>
						<p class="author">John Doe, CEO <a href="http://freehtml5.co/" target="_blank">FREEHTML5.co</a> <span class="subtext">Creative Director</span></p>
					</div>
					
				</div>
				<div class="col-md-4">
					<div class="box-testimony to-animate">
						<blockquote>
							<span class="quote"><span><i class="icon-quote-left"></i></span></span>
							<p>&ldquo;Far far away, behind the word mountains, far from the countries Vokalia and Consonantia, there live the blind texts.&rdquo;</p>
						</blockquote>
						<p class="author">John Doe, CEO <a href="http://freehtml5.co/" target="_blank">FREEHTML5.co</a> <span class="subtext">Creative Director</span></p>
					</div>
					
					
				</div>
				<div class="col-md-4">
					<div class="box-testimony to-animate">
						<blockquote>
							<span class="quote"><span><i class="icon-quote-left"></i></span></span>
							<p>&ldquo;Far far away, behind the word mountains, far from the countries Vokalia and Consonantia, there live the blind texts. Separated they live in Bookmarksgrove right at the coast of the Semantics, a large language ocean.&rdquo;</p>
						</blockquote>
						<p class="author">John Doe, Founder <a href="#">FREEHTML5.co</a> <span class="subtext">Creative Director</span></p>
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



