<%-- 
    Document   : Update
    Created on : Jun 23, 2018, 10:48:39 AM
    Author     : Shikhar Shukla
--%>

<%@page contentType="text/html" pageEncoding="UTF-8"%>
<!DOCTYPE html>
<html>
    <head>
        <meta http-equiv="Content-Type" content="text/html; charset=UTF-8">
        <title>JSP Page</title>
           <jsp:include page="ADMIN.jsp"/>
    </head>
    <body>
        
        <div class="container-fluid">
            <div class="mid-left">
                 
                <div class="row">
                    <div class="col-md-12">
                        <div style="width: 900px; height: 50px; border-radius: 5px 5px 5px 5px;
                                background-color:  lightsteelblue;font-family: Lucida Sans ; font-size: 20px;">
                            <h1 align='center'>&nbsp; Add Products</h1>
                        </div>
                        <br>
                    </div>
                            </div>
                    <div class="container-fluid">
                        <div class="row">
                            <div class="col-md-12">
                                <form class="form-horizontal" role="form" method="POST" action="ADMIN.jsp">
                                               <div class="form-group">
                                        <label for="productid" class="col-sm-2 control-label">Product ID: </label>
                                                      <div class="col-sm-10">
                                            <input type="text" class="form-control" id="productid" placeholder="Product ID">
                                            </div>
                                                </div>
                                <div class="form-group">
                                        <label for="productname" class="col-sm-2 control-label">Product Name: </label>
                                                      <div class="col-sm-10">
                                            <input type="text" class="form-control" id="productname" placeholder="Product Name">
                                            </div>
                                                </div>
                                <div class="form-group">
                                        <label for="productdate" class="col-sm-2 control-label">Date Added: </label>
                                                      <div class="col-sm-10">
                                            <input type="date" class="form-control" id="productdate" placeholder="Date Added">
                                            </div>
                                                </div>
                                 <div class="btn-group">
                                        <label for="image" class="col-md-5 control-label">Add Product Image:</label>
                                          
                                            <input type="file" class="btn-block" vlaue="Choose File"id="image">
                                            
                                 </div><br><br>
                                <div class="form-group">
                                        <label for="productprice" class="col-sm-2 control-label">Price: </label>
                                                      <div class="col-sm-10">
                                            <input type="digit" class="form-control" id="productprice" placeholder="Price">
                                            </div>
                                                </div>
                                <div class="form-group">
                                        <label for="productdes" class="col-sm-2 control-label">Product Description: </label>
                                                      <div class="col-sm-10">
                                                          <textarea class="form-control" rows="3"></textarea>
                                            </div>
                                                </div>
                                <div class="btn btn-group">
                                    <a href="#"> <input type="button" value="Submit"></a>
                                    
                                     </div>
                                 
                                         </form>
                            </div>
                    
                        </div>
                    
   
                    
                        </div>
                
                    </div>
                
           
            <div class="mid-right">
                <div class="container">
                <div class="row">
                    <div class="col-md-12">
                    <div class="font-style">
                        <a href="index.jsp"><h3 align="center">Vastra.com</h3></a>
                    </div>
                </div>
                    <br><br><br>
                        <div class="col-md-12">
                    <img src="male3.svg" height="100%" width="100%" align="right">
                        </div>
                </div><div class="well">
                    <div class="col-md-12">
                        Administrator: Name
                    </div>    
                    <div class="col-md-12">
                        Administrator ID: ID
                    </div>  
                    <div class="col-md-12">
                        Administrator E-mail: E-mail
                    </div>  
                </div>
                    
        </div>
        </div>
        </div>
        <div class="container-fluid">
            <div class="footer">
                <div class="row">
                    <div class="col-md-12"><p align="center">This is the administrator page.It is for the purpose of the administrator only.</p></div>
                    <div class="col-md-12"></div>
                    <div class="col-md-12"></div>
                    <div class="col-md-12"></div>
                    <br><br><br><br>
                   
                    <div class="col-md-12">
                <div clss="well-lg">
                    
                    <p align="center">
                       
                            Vastra.com. All Rights Reserved
                </p>
                </div></div>
            </div>
    </div>      
    </div>
    </body>
</html>
