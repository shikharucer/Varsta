<!DOCTYPE html>
<html>
<head>
	<title>Cart</title>
	<link rel="stylesheet" href="css/bootstrap.min.css">
	<script type="text/javascript" src="js/bootstrap.min.js"></script>
	<script type="text/javascript" src="script/jquery.min.js"></script>
        <link href="home.css" rel="stylesheet"/>
</head>
<body>
       <jsp:include page="header.jsp"/>
       <%
	if(session.getAttribute("email")!=null)
	{
		String un=(String)session.getAttribute("email");
		
            %>
            <jsp:include page="header2.jsp"/>
            <%
	}
	else
		response.sendRedirect("index.jsp");		
        %>
        
        <div class="container-fluid">
            <div class="middle">
                <br><br><br>
        	<div class="row">
                    <div class="col-md-2"></div>
                    <div class="col-md-8"><h2 style="color: blue; text-align: center;">Welcome to your Cart</h2></div>
                    <div class="col-md-2"></div>
                </div>
                <div class="row">
                    <div class="col-md-2"></div>
                    <div class="col-md-8">
       <table class="table table-responsive table-bordered">
       	<tr>
       		<td>Product Name</td>
       		<td>Product Image</td>
       		<td>Product Id</td>
       		<td>Product Code</td>
       		<td>Price</td>
       		<td>Category</td>
                
       			
       		
       	</tr>
       </table>
               </div>
                     <div class="col-md-2"></div>
                    
   </div>
</div>
</div>
        </div>
</body>
</html>