<%@page import="com.beans.Transaction"%>
<%@page import="java.util.List"%>
<%@page import="java.util.ArrayList"%>

<%@page import="com.beans.Manages" %>
<%@page import="com.beans.Company" %>
<%@page import="com.beans.Security" %>
<%@ page language="java" contentType="text/html; charset=ISO-8859-1"
    pageEncoding="ISO-8859-1"%>
    <%@taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core"%>
    
<!DOCTYPE html>
<html lang="en">

<head>
  <!-- Required meta tags -->
  <meta charset="utf-8">
  <meta name="viewport" content="width=device-width, initial-scale=1, shrink-to-fit=no">
  <title>Charts | Libra Application</title>
  <!-- plugins:css -->
  <link rel="stylesheet" href="vendors/iconfonts/mdi/css/materialdesignicons.min.css">
  <link rel="stylesheet" href="vendors/css/vendor.bundle.base.css">
  <!-- endinject -->
  <!-- inject:css -->
  <link rel="stylesheet" href="css/style.css">
  <!-- endinject -->
  <!--<link rel="shortcut icon" href="images/favicon.png" /> -->
</head>

<body>

  <%
	HttpSession session2=request.getSession(false);
	String name = (String) session2.getAttribute("name");
%>
   <div class="container-scroller">
    <!-- partial:partials/_navbar.html -->
    <nav class="navbar default-layout-navbar col-lg-12 col-12 p-0 fixed-top d-flex flex-row" > <!--change logo-->
      <div class="text-center navbar-brand-wrapper d-flex align-items-center justify-content-center">
        <a class="navbar-brand brand-logo" href="index.jsp"><img src="images/Libra-text-logo-white.png" alt="logo"/></a>
        <!-- <a class="navbar-brand brand-logo-mini" href="index.jsp"><img src="images/logo-mini.svg" alt="logo"/></a> -->
      </div>
      <div class="navbar-menu-wrapper d-flex align-items-stretch">
        <!-- <div class="search-field d-none d-md-block">
          <form class="d-flex align-items-center h-100" action="index.jsp">
            <div class="input-group">
              <div class="input-group-prepend bg-transparent">
                  <i class="input-group-text border-0 mdi mdi-magnify"></i>                
              </div>
              <input type="text" class="form-control bg-transparent border-0" placeholder="Search">
            </div>
          </form>
        </div> -->
        <ul class="navbar-nav navbar-nav-right">

          <li class="nav-item d-none d-lg-block full-screen-link">
            <a class="nav-link">
              <i class="mdi mdi-fullscreen" id="fullscreen-button"></i>
            </a>
          </li>

          
          <li class="nav-item nav-logout d-none d-lg-block">
            <a class="nav-link" href="logout">
              <i class="mdi mdi-power"></i>
            </a>
          </li>

        </ul>
       <!-- <button class="navbar-toggler navbar-toggler-right d-lg-none align-self-center" type="button" data-toggle="offcanvas">
          <span class="mdi mdi-menu"></span>
        </button>-->
      </div>
    </nav>
    <!-- partial -->
    <div class="container-fluid page-body-wrapper">
      <!-- partial:partials/_sidebar.html -->
     <nav class="sidebar sidebar-offcanvas" id="sidebar">
     <div id="nav">
        <ul id="nav" class="nav">
        
          <li class="nav-item nav-profile">
            <a href="#" class="nav-link">
              <div class="nav-profile-image">
                <img src="images/Employee.png" alt="profile">
                <span class="login-status online"></span> <!--change to offline or busy as needed-->              
              </div>
              <div class="nav-profile-text d-flex flex-column">
                <span class="font-weight-bold mb-2">WELCOME <%=name %></span>
                <!-- <span class="text-secondary text-small">Training Assistant</span> -->
              </div>
              <i class="mdi mdi-bookmark-check text-success nav-profile-badge"></i>
            </a>
          </li>
          <li class="nav-item"> 
            <a class="nav-link" href="show_company">
              <span class="menu-title">Dashboard</span>
              <i class="mdi mdi-home menu-icon"></i>
            </a>
          </li>
                    <li class="nav-item">
            <a class="nav-link" href="CompanyShortage">
              <span class="menu-title">Shortages</span>
              <i class="mdi mdi-arrow-down-bold menu-icon"></i>
              
            </a>
          </li>
		  <li class="nav-item"> 
            <a class="nav-link" href="borrow" >
              <span class="menu-title">Securities</span>
              <i class="mdi mdi-newspaper menu-icon"></i>
              
            </a>
          </li>
          <li class="nav-item"> 
            <a class="nav-link" href="chart" >
              <span class="menu-title">Charts</span>
              <i class="mdi mdi-chart-areaspline menu-icon"></i>
              
            </a>
          </li>
        
        </ul>
      </nav>
      <!-- partial -->
    
     <div class="main-panel">
        <div class="content-wrapper">
          <div class="page-header">
            
             <div class="row">
            <div class="col-lg-6 grid-margin stretch-card" >
              <div class="card" style="background: rgba(70,70,70, 0.3); ">
                <div class="card-body style="width: 18rem;">
                  <h4 class="card-title" style="color: white;">Amount Spent to Buy Different Securities</h4>
                   <canvas id="myChart" width="200" height="150""> </canvas>
                  
                </div>
              </div>
            </div>
            <div class="col-lg-6 grid-margin stretch-card" >
              <div class="card" style="background: rgba(70,70,70, 0.3); ">
                <div class="card-body">
                  <h4 class="card-title" style="color: white;">Amount Received From Selling DIfferent Securities</h4>
                 <canvas id="myChart1" width="200" height="150"></canvas>
                </div>
              </div>
            </div>
          </div>
           
          
        
          </div>
        
            </div>
          
          <footer class="footer">
        <span class="container-fluid" style="padding: 10px;">
           <nav class="pull-left">
                    <ul style="list-style: none;">
                        <li>
                            <a href="#">
                                About us
                            </a>
                        </li>
                    </ul>
                </nav>
                <p class="copyright pull-right">
                    &copy; <script>document.write(new Date().getFullYear())</script> Powered by CITI, All rights reserved
                </p>
            </div>
    </footer>
        </div>
        <!-- content-wrapper ends -->
        <!-- partial:partials/_footer.html -->
        
        <!-- partial -->
      </div>
      <!-- main-panel ends -->
       
    </div>
    <!-- page-body-wrapper ends -->
  </div>
  <!-- container-scroller -->

  <!-- plugins:js -->
  <script src="vendors/js/vendor.bundle.base.js"></script>
  <script src="vendors/js/vendor.bundle.addons.js"></script>
  <!-- endinject -->
  <!-- Plugin js for this page-->
  <!-- End plugin js for this page-->
  <!-- inject:js -->
  <script src="js/off-canvas.js"></script>
  <script src="js/misc.js"></script>
  <!-- endinject -->
  <!-- Custom js for this page-->
   <%
        List<Float> list2 = (List<Float>)request.getAttribute("table");
		  List<Float> list1 = (List<Float>)request.getAttribute("table1");  
		  ArrayList<Float> al1 = new ArrayList<>();
		  for(Float t : list1){
			al1.add(t);
		  }
		  ArrayList<Float> al = new ArrayList<>();
		  for(Float t : list2){
			al.add(t);
			
		  } %>
   <script src="https://cdnjs.com/libraries/Chart.js"></script>
  <!-- End custom js for this page-->
  <script>
  
  var arr = new Array();
  <% for (int i=0; i<al.size(); i++){%>
  arr[<%= i %>] = "<%= al.get(i) %>"; 
  <% } %>
		  
  var arr1 = new Array();
  <% for (int i=0; i<al1.size(); i++){%>
  arr1[<%= i %>] = "<%= al1.get(i) %>"; 
  <% } %>	  
		
  var arr3 = new Array("Red","Yellow","Blue","Orange","Green");
  
  var ctx = document.getElementById("myChart");
  var myPieChart = new Chart(ctx,{
	    type: 'pie',
	    data:{
	    	 labels: [
	    	        'Apple',
	    	        'GE',
	    	        'Walmart',
	    	        'LinkedIn',
	    	        'Facebook'
	    	    ],
	    	    datasets: [{
	    	    	label: '# of votes',
	    	    	data: arr,
	    	    	 backgroundColor: [
	    	    	        'rgba(255, 99, 132, 0.5)',
	    	    	        'rgba(54, 162, 235, 0.5)',
	    	    	        'rgba(255, 206, 86, 0.5)',
	    	    	        'rgba(75, 192, 192, 0.5)',
	    	    	        'rgba(153, 102, 255, 0.5)',
	    	    	        'rgba(255, 159, 64, 0.5)'
	    	    	      ],
	    	    	      borderColor: [
	    	    	        'rgba(255,99,132,1)',
	    	    	        'rgba(54, 162, 235, 1)',
	    	    	        'rgba(255, 206, 86, 1)',
	    	    	        'rgba(75, 192, 192, 1)',
	    	    	        'rgba(153, 102, 255, 1)',
	    	    	        'rgba(255, 159, 64, 1)'
	    	    	      ],
	    	    	      options: {
	    	    	    	    responsive: true,
	    	    	    	    maintainAspectRatio: false
	    	    	      }
	    	    	      
	    	    }]
	    	}
	    });
  var ctx = document.getElementById("myChart1");
  var myPieChart = new Chart(ctx,{
	    type: 'pie',
	    data:{
	    	 labels: [
	    		  	'Apple',
	    	        'GE',
	    	        'Walmart',
	    	        'LinkedIn',
	    	        'Facebook'
	    	    ],
	    	    datasets: [{
	    	    	label: '# of votes',
	    	    	data: arr1,
	    	    	 backgroundColor: [
	    	    	        'rgba(255, 99, 132, 0.5)',
	    	    	        'rgba(54, 162, 235, 0.5)',
	    	    	        'rgba(255, 206, 86, 0.5)',
	    	    	        'rgba(75, 192, 192, 0.5)',
	    	    	        'rgba(153, 102, 255, 0.5)',
	    	    	        'rgba(255, 159, 64, 0.5)'
	    	    	      ],
	    	    	      borderColor: [
	    	    	        'rgba(255,99,132,1)',
	    	    	        'rgba(54, 162, 235, 1)',
	    	    	        'rgba(255, 206, 86, 1)',
	    	    	        'rgba(75, 192, 192, 1)',
	    	    	        'rgba(153, 102, 255, 1)',
	    	    	        'rgba(255, 159, 64, 1)'
	    	    	      ],
	    	    	      options: {
	    	    	    	  legend: {
	    	    	    	        display: false
	    	    	    	    },
	    	    	    	    responsive: true,
	    	    	    	    maintainAspectRatio: false,
	    	    	      }
	    	    	      
	    	    }]
	    	}
	    });
//var ctx = document.getElementById("myChart").getContext('2d');

</script>
  </body>
  
</html>