<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>

 <%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>

 <!DOCTYPE html>
<html lang="en">
 
 <jsp:include page="head.jsp"></jsp:include>
 
  <body class="app sidebar-mini">
  
    <!-- Navbar-->
    
    <jsp:include page="navbar.jsp"></jsp:include>
 
    <!-- Sidebar menu-->
    <div class="app-sidebar__overlay" data-toggle="sidebar"></div>
    
    <jsp:include page="sidebar-menu.jsp"></jsp:include>
    
    <main class="app-content">
    
    
      <h1>Tela do Sistema</h1>
      
   
    </main>
    <!-- Essential javascripts for application to work-->
    <script src="js/jquery-3.7.0.min.js"></script>
    <script src="js/bootstrap.min.js"></script>
    <script src="js/main.js"></script>
    <!-- Page specific javascripts-->
    <script type="text/javascript" src="js/plugins/chart.js"></script>
    <script type="text/javascript">
      const salesData = {
      	type: "line",
      	data: {
      		labels: [
      			"Jan",
      			"Feb",
      			"March",
      			"April",
      			"May",
      			"June",
      		],
      		datasets: [{
      			label: 'Monthly Sales',
      			data: [65, 59, 80, 81, 56, 55, 40],
      			fill: false,
      			borderColor: 'rgb(75, 192, 192)',
      			tension: 0.1
      		}]
      	}
      }
      
      const supportRequests = {
      	type: "doughnut",
      	data: {
      		labels: [
      			'In-Progress',
      			'Complete',
      			'Delayed'
      		],
      		datasets: [{
      			label: 'Support Requests',
      			data: [300, 50, 100],
      			backgroundColor: [
      				'#EFCC00',
      				'#5AD3D1',
      				'#FF5A5E'
      			],
      			hoverOffset: 4
      		}]
      	}
      };
      
      const salesChartCtx = document.getElementById('salesChart');
      new Chart(salesChartCtx, salesData);
      
      const supportChartCtx = document.getElementById('supportRequestChart');
      new Chart(supportChartCtx, supportRequests);
    </script>
    <!-- Google analytics script-->
    <script type="text/javascript">
      if(document.location.hostname == 'pratikborsadiya.in') {
      	(function(i,s,o,g,r,a,m){i['GoogleAnalyticsObject']=r;i[r]=i[r]||function(){
      	(i[r].q=i[r].q||[]).push(arguments)},i[r].l=1*new Date();a=s.createElement(o),
      	m=s.getElementsByTagName(o)[0];a.async=1;a.src=g;m.parentNode.insertBefore(a,m)
      	})(window,document,'script','//www.google-analytics.com/analytics.js','ga');
      	ga('create', 'UA-72504830-1', 'auto');
      	ga('send', 'pageview');
      }
    </script>
  </body>
</html>