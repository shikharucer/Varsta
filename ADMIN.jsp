<!doctype html>
<html>
    <head><title>Admin</title>
        <%@page import="java.sql.*" %>
 <link rel="stylesheet" href="https://cdnjs.cloudflare.com/ajax/libs/font-awesome/4.7.0/css/font-awesome.min.css">
<link href="home.css" rel="stylesheet" type="text/css">
<link rel="stylesheet" href="css/media.css">
<link rel="stylesheet" href="css/style.css">
<link href="css/bootstrap.min.css" rel="stylesheet">
<script src="script/jquery.min.js"></script>
<script src="js/bootstrap.min.js"></script>
    </head>
    <body>
        
        <jsp:include page="AdminMenu.jsp"/>  
         
        <div class="container-fluid">
             
            <div class="middle">
                <div class="container-fluid">
                    <div class="row"><br><br>
                        <div class="col-md-12"><center>
                                <h2 style="color:cadetblue;">Admin Page</h2></center>
                            <br><br>
                        </div>
                        <div class="col-md-2"></div>
                        <div class="col-md-8">
                            <table class="table table-bordered table-hover table-responsive">
                                <tr>
                                    <td colspan="8" align="center" style="background-color: windowframe; color:black;"><h3>Product Section</h3></td>
                                </tr>
                                <tr>
                                     <td>Product Id</td>
                                     <td>Product Code</td>
                                    <td>Product Name</td>
                                    <td>Product Date Added</td>
                                    <td>Product Category</td>
                                    <td>Product Price</td>
                                    <td>Delete</td>
                                    <td>Update</td>
                                    
                               </tr>
                              <%
	Connection con=null;
        	Statement st;
        	ResultSet rs;
        	try{
            		Class.forName("com.mysql.jdbc.Driver");	
            		con = DriverManager.getConnection("jdbc:mysql://localhost:3306/image","root","");
            		st=con.createStatement();
            		rs=st.executeQuery("select * from product ");
            		while(rs.next())
            		{
                           int id=rs.getInt(2);
		   %>
		<tr>
                       
                        <td><%=rs.getString(1)%></td>
                         <td><%=id%></td>
			<td><%=rs.getString(3) %></td>
                        <td><%=rs.getDouble(4)%></td>
			<td><%=rs.getString(5) %></td>
                        <td><img src="<%=rs.getString(6)%>" height="200" width="200"></td>
                        <td><a href="DeleteProducts.jsp?id=<%=id%>"><span class="glyphicon glyphicon-remove" style="color:red;"></span></a></td>
                        <td><a href="UpdateProducts.jsp?id=<%=id%>"><span class="glyphicon glyphicon-pencil" style="color:blue;"></span></a></td>
                </tr>
                        <%			
		}
            	}catch(Exception e)
        	{
            		out.println(e.toString());
        	}
                %>
                          </table>  
                        </div>
                         <div class="col-md-2"></div>
                </div>
                
                
            </div>
            
            
            
        </div>
        
        
        </div>
        
        
        
        
            <jsp:include page="footer.jsp"/>
        
    </body>
</html>