<!DOCTYPE html>
<html>
<head>
    <title></title>
    <link rel="stylesheet" type="text/css" href="css/bootstrap.min.css">
    <script type="text/javascript" src="js/bootstrap.min.js"></script>
    <link rel="stylesheet" type="text/css" href="home.css">

</head>
<body>
  <jsp:include page="AdminMenu.jsp"/>
    <div class="container-fluid">
        <div class="middle">
            <div class="container-fluid">
        <div class="row">
              <br><br><br><br>
            <div class="col-md-2"></div>
            <div class="col-md-8">
                <h3 style="color: cadetblue; text-align: center; ">Products Add Page</h3>
                 
            </div>
           
        </div>
            <div class="row">
               
             <div class="col-md-8">
                 <form method="get" action="#">
                 <table class="table table bordered ">
                    <tr>
                        <td><label>Name</label><input type="text" name="name" class="from-control" placeholder="Name"></td>
                        <td><label>Id</label><input type="text" name="ID" class="from-control" placeholder="Product Id"></td>
                        <td><label>Code</label><input type="text" name="code" class="from-control" placeholder="Product Code"></td>
                        <td><label>Category</label><input type="text" name="cat" class="from-control" placeholder="Category"></td>
                        <td><label>Price</label><input type="text" name="price" class="from-control" placeholder="Price"></td>
                        <td><label>Image</label><input type="file" name="img" class="from-control" placeholder="Image"></td>   
                       
                     </tr>  
               <div class="col-md-2"><button class="btn btn-success" name="btn1" ><span class="glyphicon glyphicon-plus-sign">Add</span></button></div>
                  </table>
                    <jsp:useBean id="add" class="Products.AddProducts"/>
                    <% 
                        if(request.getParameter("btn1")!=null)
                        {
                        String Name=request.getParameter("name");
                        int id=Integer.parseInt(request.getParameter("ID"));
                        String cd=request.getParameter("code");
                        String cat=request.getParameter("cat");
                        double prc=Double.parseDouble(request.getParameter("price"));
                        String img=request.getParameter("img");
                        boolean flag=add.insert(Name, id, cd, prc, cat, img);
                        if(flag==true)
                        {
                            out.println("<script>window.alert('Record inserted');</script>");
                        }
                        else
                        {
                            out.println("<script>window.alert('Error')</script>");
                        }
                        }
                    %>
                    
              </form>
             </div>
                    
            </div>
          </div>
        </div>          
      </div>

<jsp:include page="footer.jsp"/>
</body>
</html>