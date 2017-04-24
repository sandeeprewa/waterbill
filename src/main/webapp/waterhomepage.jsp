<%@taglib uri="http://www.springframework.org/tags/form" prefix="form"%>
<%@ taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core" %>
<%@ page language="java" contentType="text/html; charset=ISO-8859-1"
    pageEncoding="ISO-8859-1"%>
    
<!DOCTYPE html PUBLIC "-//W3C//DTD HTML 4.01 Transitional//EN" "http://www.w3.org/TR/html4/loose.dtd">
<html>
	<head>
			<!-- Website Title & Description for Search Engine purposes -->
			<title>Water Bill Municipal Corp</title>
			<meta name="description" content="Learn how to code your first responsive website with the new Twitter Bootstrap 3.">
			<!-- Mobile viewport optimized -->
			<meta name="viewport" content="width=device-width, initial-scale=1.0, maximum-scale=1.0, user-scalable=no">
			<!-- Bootstrap CSS -->
			<link href="bootstrap/css/bootstrap.min.css" rel="stylesheet">
			<link href="includes/css/bootstrap-glyphicons.css" rel="stylesheet">
			
			<!-- Custom CSS -->
			<link rel="stylesheet" href="includes/css/styles.css">
			<!-- Include Modernizr in the head, before any other Javascript -->
			<script src="includes/js/modernizr-2.6.2.min.js"></script>
		    <!-- add javascripts -->
		    <script src="js/jquery-2.0.3.min.js"></script>
		    <script src="js/actionScript.js"></script>		    
		    <script src="js/dataService.js"></script>
		    <script src="js/serviceFunction.js"></script>
		    <!-- Validation Use -->
		    <script src="js/waterConnectionForm.js"></script>		    
		    
	</head>
<body>
<!-- <div id="loading" class="hide">
  <div id="loading-content">
    Loading...
  </div>
</div>
 -->		<div class="container" id="main">		

		<!-- HEADER FIXED TOP -->
				<jsp:include page="partials/navBar.jsp" />
		<!-- END HEADER FIXED TOP -->	
		

<!-- Below JSP should be displayed only on  menu selection -->
		<!-- THis should only be displayed When user is logged In -->
		<jsp:include page="partials/formDiv.jsp"></jsp:include>
		<!-- Water Connection Form -->	
		<jsp:include page="partials/waterConnectionForm.jsp"></jsp:include>
		
		<!-- View And Pay Bill -->
		<jsp:include page="partials/viewAndPayBill.jsp"></jsp:include>
		
		<!-- Application Status -->	
		<jsp:include page="partials/applicationStatus.jsp"></jsp:include>

<!--  Display Content Ends -->

					
     <!-- Image Slider Business -->
		<div class="carousel slide" id="myCarousel">
			
				<!-- Indicators -->
				<ol class="carousel-indicators">
					<li class="active" data-slide-to="0" data-target="#myCarousel"></li>
					<li data-slide-to="1" data-target="#myCarousel"></li>
					<li data-slide-to="2" data-target="#myCarousel"></li>
				</ol>
			
				<!-- Wrapper for slides -->
				<div class="carousel-inner">
					<div class="item active" id="slide1">
						<div class="carousel-caption">
							<h4>Bootstrap 3</h4>
							<p>Learn how to build your first responsive website with the brand new Twitter Bootstrap 3!</p>
						</div><!-- end carousel-caption-->
					</div><!-- end item -->
					
					<div class="item" id="slide2">
						<div class="carousel-caption">
							<h4>Learn to code a website in 4-hours!</h4>
							<p>PSD to HTML5 &amp; CSS3 is a popular Udemy course that has helped thousands of aspiring web designers launch their web design career.</p>
						</div><!-- end carousel-caption-->
					</div><!-- end item -->
					
					<div class="item" id="slide3">
						<div class="carousel-caption">
							<h4>Web Hosting 101</h4>
							<p>Learn how to buy a perfect domain name and hosting package, and get your website live on the web with ease.</p>
						</div><!-- end carousel-caption-->
					</div><!-- end item -->
				</div><!-- carousel-inner -->
				
				<!-- Controls -->
				<a class="left carousel-control" data-slide="prev" href="#myCarousel"><span class="icon-prev"></span></a>
				<a class="right carousel-control" data-slide="next" href="#myCarousel"><span class="icon-next"></span></a>
			
		</div>
	<!-- end myCarousel -->
	<!-- Search connection id -->
	
	<jsp:include page="partials/footer.jsp"></jsp:include>

	<!-- All Javascript at the bottom of the page for faster page loading -->
		
	<!-- First try for the online version of jQuery-->
<!-- 	<script src="http://code.jquery.com/jquery.js"></script>
 -->	
	<!-- If no online access, fallback to our hardcoded version of jQuery -->
	<script>window.jQuery || document.write('<script src="includes/js/jquery-1.8.2.min.js"><\/script>')</script>
	
	<!-- Bootstrap JS -->
	<script src="bootstrap/js/bootstrap.min.js"></script>
	
	<!-- Custom JS -->
	<script src="includes/js/script.js"></script>
	


</body>
</html>