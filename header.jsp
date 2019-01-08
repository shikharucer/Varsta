<!DOCTYPE html>
<html>
<head>
	<title>Header</title>
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
	   <a href="cart.jsp"><span class="glyphicon glyphicon-shopping-cart"></span>My Cart</a>
	   <a href="Contact.jsp"><span class="glyphicon glyphicon-earphone"></span>Contact</a>
	   <a href="About_us.jsp"><span class="glyphicon glyphicon-info-sign"></span>About Us</a>
           <a href="AdminLogin.jsp"><span class="glyphicon glyphicon-cog"></span>Admin Section</a>
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
              <div class="col-md-4"></div>
              <div class="col-md-4">
                  <p style="color: threedlightshadow;">
                      "Wear what you love..."</p>
              </div>
              <div class="col-md-4">
                  
                  <button class="btn btn-default" style="margin-left: 100px;" data-toggle="modal" data-target="#myModal" title="Login">
                            
                      <span class="glyphicon glyphicon-log-in"></span></button>
                      
                         
                      
                      
                  
                </div>
          </div>      
      </div>
    </div>
    <!-- Modal -->
<div class="modal fade" id="myModal" tabindex="-1" role="dialog" aria-labelledby="myModalLabel" aria-hidden="true">
  <div class="modal-dialog">
    <div class="modal-content">
      <div class="modal-header">
        <button type="button" class="close" data-dismiss="modal" aria-hidden="true">&times;</button>
        <h4 class="modal-title" id="myModalLabel">Login User</h4>
            </div>
                  <div class="modal-body">
                      <form class="form form-horizontal" name="f1" method="post">
                   <label>Email</label>
                   <input class="form-control" name="t1" type="email" placeholder="you@example.com" required/>
                   <label>Password</label>
                   <input class="form-control" name="t2" type="password" placeholder="password" required/> <br>
                   <span id="chk" style="color:red;"></span><br>
                   <button class="btn btn-primary" name="b2" type="Submit" value="Sign-in">Sign-in</button>
                   <h4>Not a member?<a href="Register1.jsp" style="text-decoration:none;">Register here</a></h4>
                    <jsp:useBean id="conobject" class="DBoperation.DBconnect"/>
                     <%
                     if(request.getParameter("b2")!=null)
                   {  
                        String em,pw;
                        em=request.getParameter("t1");
                        pw=request.getParameter("t2");
                        boolean flag = conobject.checkUser(em, pw);
                
                       if(flag==true)
                       {
                           response.sendRedirect("index.jsp");
                           session.setAttribute("email", em);
                       }
                         
                      else
                       { 
                         out.println("<script>alert('Incorrect email or password!')</script>");
                         
                       }
                   }      
                    
                   %>
                   
                 
            </form>
                  
      </div>
      <div class="modal-footer">
        <button type="button" class="btn btn-default" data-dismiss="modal">Close</button>
        <button type="button" class="btn btn-primary">Save changes</button>
      </div>
    </div>
  </div>
</div>
</body>
</html>