<!DOCTYPE html>
<html>
<head>
    <%@page import="java.sql.*" %>
	<title>Footer</title>
<link rel="stylesheet" href="https://cdnjs.cloudflare.com/ajax/libs/font-awesome/4.7.0/css/font-awesome.min.css">
<link href="home.css" rel="stylesheet" type="text/css">
<link rel="stylesheet" href="css/media.css">
<link rel="stylesheet" href="css/style.css">
<link href="css/bootstrap.min.css" rel="stylesheet">
<script src="script/jquery.min.js"></script>
<script src="js/bootstrap.min.js"></script>
 
</head>
<body>
    <div class="container-fluid">
        <div class="footer1">
        <div class="row" style="margin-left: 20px;">
            <div class="col-lg-3"><br>
                
                <h4 style="color:white;">Know about us</h4>
                <ul>
                    <li><a href="About_us.jsp">About us</a></li>
                    <li><a href="Contact.jsp">Contact</a></li>
                    <li><a href="Store.jsp">Stores</a></li>
                    <li><a href="Help.jsp">Help</a></li>
                </ul>
            </div>
            <div class="col-lg-2"><br><br>
                <p align="right" style="font-size: 16px;">Sign up for newsletter:</p>
            </div>
            <div class="col-lg-4"><br><br>
                <form method="post">
                    <input type="email" class="form-control" name="sub" placeholder="Enter your email"/>
                    <br>
                <button class="btn btn-primary" name="b1">Subscribe</button>
                </form>
  
                <%
                     if(request.getParameter("b1")!=null)
                     {
                          String em=request.getParameter("sub");
                          Connection con=null;
                          Statement st1,st2;
                          ResultSet rs1,rs2;
                try
                {
                    Class.forName("com.mysql.jdbc.Driver");
                    con = DriverManager.getConnection("jdbc:mysql://localhost:3306/subscribers","root","");
                    String sql1="select * from email where email_list='"+em+"' ";
                    st1=con.createStatement();
                    rs1=st1.executeQuery(sql1);
                    if(!rs1.next())
                    {
                    st2=con.createStatement();
                    String sql="insert into email values('"+em+"')";
                    int res=st2.executeUpdate(sql);
                    out.println("<script> window.alert('Successfuly subscribed')</script>");
                   
                    }
                    else
                    {
                        out.println("<script>window.alert('Email registerd already!')</script>");
                    }
                    
                    
                }catch(Exception e)
                {
                     out.println(e.toString());
                }
                     }
                %>
                
                </div>
           
            
            <div class="col-lg-4">
                
            </div>
        </div>
            <div>
                <div class="row">
                    <div class="col-md-12">
                       
                        <p align="center"><span class="glyphicon glyphicon-copyright-mark"></span>&nbsp; Vastra.com. All Rights Reserved</p>
                    </div>
                    
                    
                </div>
            </div>
        </div>
    </div>
         
</body>
</html>