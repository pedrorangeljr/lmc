<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>

<!DOCTYPE html>
<html lang="en">

<jsp:include page="head.jsp"></jsp:include>

<body class="">
  <div class="wrapper ">
    
    <!-- siderbar Início -->
    
    <jsp:include page="sidebar.jsp"></jsp:include>
    
    <!-- siderbar Fim -->
    
    <div class="main-panel">
    
      <!-- Navbar Início-->
      
      <jsp:include page="nav.jsp"></jsp:include>
      
      <!--Navbar Fim-->
      
      <div class="content">
      
      <!-- Card-body Início -->
        
        <jsp:include page="card-body.jsp"></jsp:include>
       
      <!-- Card-body Fim -->
        
      <!-- Card2 Início -->
      
      <jsp:include page="card2.jsp"></jsp:include>
      
      <!-- Card2 Fim -->
      
      <!-- Footer Início -->
      
      <jsp:include page="footer.jsp"></jsp:include>
      
      <!-- Footer Fim -->
      
    </div>
  </div>
  
  <!--   Core JS Files   -->
  <jsp:include page="script.jsp"></jsp:include>
</body>

</html>
