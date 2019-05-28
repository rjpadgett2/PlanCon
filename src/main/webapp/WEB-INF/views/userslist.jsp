<%@ page language="java" contentType="text/html; charset=ISO-8859-1" pageEncoding="ISO-8859-1"%>
<%@ page isELIgnored="false" %>
<%@ taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core" %>
<%@ taglib prefix="sec" uri="http://www.springframework.org/security/tags"%>

<html>

<head>
	<meta http-equiv="Content-Type" content="text/html; charset=ISO-8859-1">
	<title>PlanCon</title>
	<script src="https://ajax.googleapis.com/ajax/libs/angularjs/1.4.4/angular.js"></script>
	<script src="https://ajax.googleapis.com/ajax/libs/angularjs/1.4.4/angular-resource.js"></script>
	<script src="https://ajax.googleapis.com/ajax/libs/angularjs/1.4.4/angular-route.js"></script>
	<script src="<c:url value='/static/js/app.js' />" ></script>
	<script src="<c:url value='/static/js/home.js' />" ></script>
	<link rel="stylesheet" href="https://www.w3schools.com/w3css/4/w3.css">
	<link rel="stylesheet" href="https://fonts.googleapis.com/css?family=Raleway">
	
	<link href="<c:url value='/static/css/bootstrap.css' />" rel="stylesheet"></link>
	<link href="<c:url value='/static/css/home.css' />" rel="stylesheet"></link>

</head>

<body ng-app="myApp">

	 <div class = "sidenav" ng-controller="navController">
      <ul >
         <img src="<c:url value='/static/assets/download.png'/> " width = "200px" length = "200px" alt = "logo" id = "logo">
         <li><a class="active" href="#landing">Home</a></li>
         <li ng-click="openModal()"><a href="">Volunteer</a></li>
         <li><a href="#schedule">Current Schedule</a></li>
         <li><a href="#volunteerSchedule">Voluteer Schedule</a></li>
         <li><a href="#about">About</a></li>
      </ul>

         <!-- The Modal -->
      <div id="myModal" class="modal"  ng-controller = "studentController">

         <!-- Modal content -->
         <div class="modal-content">
           <span ng-click = "closeModal()" class="close">&times;</span>
           <center><p><h1>Sign Up For Shifts Here</p></h1></center>
           <div ng-include = "'./views/volunteerForm.html?v=0.7'"></div>
         </div>
       
      </div>
   </div>
   
	<div class="content">
 			<!-- Login Information -->
	<div class="generic-container">
		<%@include file="authheader.jsp" %>	
		<div class="panel panel-default">
			  <!-- Default panel contents -->
		  	<div class="panel-heading"><span class="lead">List of Users </span></div>
			<table class="table table-hover">
	    		<thead>
		      		<tr>
				        <th>Firstname</th>
				        <th>Lastname</th>
				        <th>Email</th>
				        <th>SSO ID</th>
				        <sec:authorize access="hasRole('ADMIN') or hasRole('DBA')">
				        	<th width="100"></th>
				        </sec:authorize>
				        <sec:authorize access="hasRole('ADMIN')">
				        	<th width="100"></th>
				        </sec:authorize>
				        
					</tr>
		    	</thead>
	    		<tbody>
				<c:forEach items="${users}" var="user">
					<tr>
						<td>${user.firstName}</td>
						<td>${user.lastName}</td>
						<td>${user.email}</td>
						<td>${user.ssoId}</td>
					    <sec:authorize access="hasRole('ADMIN') or hasRole('DBA')">
							<td><a href="<c:url value='/edit-user-${user.ssoId}' />" class="btn btn-success custom-width">edit</a></td>
				        </sec:authorize>
				        <sec:authorize access="hasRole('ADMIN')">
							<td><a href="<c:url value='/delete-user-${user.ssoId}' />" class="btn btn-danger custom-width">delete</a></td>
        				</sec:authorize>
					</tr>
				</c:forEach>
	    		</tbody>
	    	</table>
		</div>
		<sec:authorize access="hasRole('ADMIN')">
		 	<div class="well">
		 		<a href="<c:url value='/newuser' />">Add New User</a>
		 	</div>
	 	</sec:authorize>
   	</div>
   	
 </div>
   	<!-- ******************************************************************************************** -->
<script src="<a class="vglnk" href="https://ajax.googleapis.com/ajax/libs/angularjs/1.4.4/angular.js" rel="nofollow"><span>https</span><span>://</span><span>ajax</span><span>.</span><span>googleapis</span><span>.</span><span>com</span><span>/</span><span>ajax</span><span>/</span><span>libs</span><span>/</span><span>angularjs</span><span>/</span><span>1</span><span>.</span><span>4</span><span>.</span><span>4</span><span>/</span><span>angular</span><span>.</span><span>js</span></a>"></script>
<script src="<a class="vglnk" href="https://ajax.googleapis.com/ajax/libs/angularjs/1.4.4/angular-resource.js" rel="nofollow"><span>https</span><span>://</span><span>ajax</span><span>.</span><span>googleapis</span><span>.</span><span>com</span><span>/</span><span>ajax</span><span>/</span><span>libs</span><span>/</span><span>angularjs</span><span>/</span><span>1</span><span>.</span><span>4</span><span>.</span><span>4</span><span>/</span><span>angular</span><span>-</span><span>resource</span><span>.</span><span>js</span></a>"></script>	
<script src="<c:url value='/static/js/app.js' />" ></script>
</body>
</html>