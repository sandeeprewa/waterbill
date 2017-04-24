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
		    <script src="js/loginjs/initEventBinderScript.js"></script>		    
		    <script src="js/dataService.js"></script>
		    <script src="js/loginjs/serviceFunction.js"></script>
		    <script src="js/loginjs/utility.js"></script>
		    
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
				<jsp:include page="partials/loginpartials/navBarForLogin.jsp" />
		<!-- END HEADER FIXED TOP -->	
		

<!-- Below JSP should be displayed only on  menu selection -->
		<!-- Water Connection Form -->	
		<jsp:include page="partials/loginpartials/waterConnectionForm.jsp"></jsp:include>

		<!-- View And Pay Bill -->
		<jsp:include page="partials/loginpartials/payBill.jsp"></jsp:include>
		
		<!-- Application Status -->	
		<jsp:include page="partials/loginpartials/applicationStatus.jsp"></jsp:include>


		<!-- Application Status -->	
		<jsp:include page="partials/loginpartials/complaint.jsp"></jsp:include>


		<!-- Application Status -->	
		<jsp:include page="partials/loginpartials/connectionRequest.jsp"></jsp:include>

<!--  Display Content Ends -->
	<!-- Search connection id -->
	

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