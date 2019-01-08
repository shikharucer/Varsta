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
                  
                </div>
          </div>      
      </div>
    </div>
    <div class="container-fluid">
        <div class="middle">
            <div class="row"><br><br>
                <div class="col-md-12">
                    <h1 style="text-align: center;">Admin Login Section</h1>
                </div>
            </div><br>
            <div class="row">
                <div class="col-md-2"></div>
                <div class="col-md-8">
                    <form class="form form-horizontal">
                        <label>Name</label><input type="text" name='aname' class="form-control" placeholder="Admin Name"/>
                        <label>Password</label><input type="password" name='apass' class="form-control" placeholder="Password"/><br>
                        <button class='btn btn-primary' name="abtn" style="margin-left: 350px;">Login</button>
                        <br>
                    </form>
                    <jsp:useBean id="admin" class="AdminValid.Admin"/>
                    <%
                        if(request.getParameter("abtn")!=null)
                        {
                          String an=request.getParameter("aname");
                          String aps=request.getParameter("apass");
                          boolean flag=admin.checkAdmin(an, aps);
                          if(flag==true)
                          {
                              response.sendRedirect("AdminMenu.jsp");
                          }
                          else
                              out.println("Error");
                        }
                    %>
                </div>
                <div class="col-md-2"></div><br><br>
                
                
            </div>
            
        </div>
    </div>
    <jsp:include page="footer.jsp"/>
</body>
</html>
