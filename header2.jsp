
<!DOCTYPE html>
<html>
<head>
    
	<title>Header2</title>
<link rel="stylesheet" href="https://cdnjs.cloudflare.com/ajax/libs/font-awesome/4.7.0/css/font-awesome.min.css">
<link href="home.css" rel="stylesheet" type="text/css">
<link rel="stylesheet" href="css/media.css">
<link rel="stylesheet" href="css/style.css">
<link href="css/bootstrap.min.css" rel="stylesheet">
<script src="script/jquery.min.js"></script>
<script src="js/bootstrap.min.js"></script>

</head>
<body>
    

      <div class="navbar1">
           <div class="container-fluid">
          <br>
          <div class="row">
              
              <div class="col-md-3">
	        
	 <div class="dropdown">
             <button class="dropbtn"><span class=" glyphicon glyphicon-list ">&nbsp;Menu</span></button><br><br>
              <div class="dropdown-content">
		<a href="index.jsp"><span class="glyphicon glyphicon-home"></span>Home</a>
	
                <a href="#"><span class="glyphicon glyphicon-shopping-cart"></span>My Cart</a>
	   <a href="Contact.jsp"><span class="glyphicon glyphicon-earphone"></span>Contact</a>
	   <a href="About_us.jsp"><span class="glyphicon glyphicon-info-sign"></span>About Us</a>
             <a href="AdminLogin.jsp"><span class="glyphicon glyphicon-cog"></span>Admin Login</a>
                      </div>
                    </div>
                 </div>
              <div class="col-md-5">
                  <p style="color: white;font-family:STENCIL STD; margin-left: 200px">Vastra.com</p>
              </div>
              <div class="col-md-4">
                  <form class="form form-inline" role="form">
                      <input type="text" name="search" class="form form-control" placeholder="Search" style="margin-left: 100px;"> 
                  <button class="btn btn-primary" style="background-color: tomato;">
                      <span class=" glyphicon glyphicon-search" style="color:white;"></span></button>
                  </form>
                   </div>
          </div>
          <div class="row">
              <div class="col-md-4">
                  <h4 style="color: #c1d1f4; margin-left: 50px;">Welcome <% if(session.getAttribute("email")!=null)
                                        {
                                        String em=(String)session.getAttribute("email");
                                          out.println(em);
                                         }
                                         %>
                  </h4>
              </div>
              <div class="col-md-4">
                  <p style="color: threedlightshadow;">
                      "Wear what you love..."</p>
              </div>
              <div class="col-md-4">
                    <form class="form form-inline">   
                   <button class="btn btn-default" name="btny" style="margin-left: 100px" data-toggle="tooltip" title="Cart">
                          <span class="glyphicon glyphicon-shopping-cart"></span>
                   </button></form>
              </div>   </div>
                  <div class="row">
                      <div class="col-md-2" style="margin-left: -55px;">
                   <form class="form form-inline" action="logout.jsp">
                  <button class="btn btn-primary btn-info" name="btnx" class="form-group-sm" value="Logout" style="margin-left: 100px;" data-toggle="tooltip" title="Logout"/>
                   Logout
                   </button>
                   </form> 
                       
                   </div><div class="col-md-5"></div><div class="col-md-5"></div>
                      
                        
                  
                     
                        
                </div>
          </div>      
      </div>
    </div>
    

</body>
</html>