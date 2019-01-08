<!DOCTYPE html>
<html>
<head>
	<title>AdminHeader</title>
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
              <div class="col-md-12" style="text-align: center">
                  <p style="color: white;font-family:STENCIL STD;">Vastra.com</p>
              </div>
          </div>
          <div class="row">
              <div class="col-md-4"></div>
              <div class="col-md-4">
                  <p style="color: threedlightshadow;">
                      "Wear what you love..."</p>
              </div>
              <div class="col-md-4">
                   <form class="form form-inline">
                      
                       <button class="btn btn-default" name="x1">Add Products</button>
                             
                  <%
                     if(request.getParameter("x1")!=null)
                     {
                         response.sendRedirect("AdminAdd.jsp");
                         
                     }
                    %>
                      <button class="btn btn-default" name="x2">Update Delete Products</button>
                        <% 
                     if(request.getParameter("x2")!=null)
                     {
                         response.sendRedirect("ADMIN.jsp");
                     }
                   %>
                      <button class="btn btn-default" name="x3">Logout</button>
                        <%
                     if(request.getParameter("x3")!=null)
                     {
                         response.sendRedirect("AdminLogout.jsp");
                     }
                  %>
                   </form>
                 
                 
                  
                  
                  
                  
                  
                  
                 
                </div>
          </div>      
      </div>
    </div>
    
</body>
</html>
