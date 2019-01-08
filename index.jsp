<!DOCTYPE html>
<html>
<head>
    <meta name="viewport" content="width=device-width, initial-scale=1">
     <meta http-equiv="Cache-Control" content="no-cache, no-store, must-revalidate" />
     <meta http-equiv="Pragma" content="no-cache" />
     <meta http-equiv="Expires" content="0" />
<title>Index</title>
<link rel="stylesheet" href="https://cdnjs.cloudflare.com/ajax/libs/font-awesome/4.7.0/css/font-awesome.min.css">
<link href="home.css" rel="stylesheet" type="text/css">
<link rel="stylesheet" href="css/media.css">
<link rel="stylesheet" href="css/style.css">
<link href="css/bootstrap.min.css" rel="stylesheet">
<script src="script/jquery.min.js"></script>

<script src="js/bootstrap.min.js"></script>

<style>
    .catbox{
width:220px;
height:200px;
position:relative;
float:left;
z-index: 1;
margin:0 15 20 0;
}
.catbox span{
width:40px;
height:20px;
line-height:30px;
background:rgba(0,0,0,0.2);
color:white;
display:block;
bottom:30px;
position:absolute;
text-align:center;
}
.catbox :hover span{
color:cornsilk;
}
.catbox img{
max-width:100%;
transition:all 0.5s ease;
}
.catbox :hover  img{
  transform:scale(1.3,1.3);
  transition:all .5s ease;
}
</style>

</head>
<body>
    <jsp:include page="header.jsp"/>
     <%
	if(session.getAttribute("email")!=null)
	{
		String em=(String)session.getAttribute("email");
		
            %>
            <jsp:include page="header2.jsp"/>
            <%
	}
	%>
   
    
    <div class="container-fluid">
         <div class="middle">
             <!-------row1-------->
             <div class="container-fluid">  
            <div class="row">
            <div class="col-lg-12">
                <!-----Upper Slider Image--->
                <div id="myCarouselx" class="carousel slide" data-ride="carousel">
                      <!-- Indicators -->
                 <ol class="carousel-indicators">
             <li data-target="#myCarouselx" data-slide-to="1" class="active"></li>
                   <li data-target="#myCarouselx" data-slide-to="2"></li>
                      <li data-target="#myCarouselx" data-slide-to="3"></li>
                        <li data-target="#myCarouselx" data-slide-to="4"></li>
                      </ol>

                       <!-- Wrapper for slides -->
                      <center>
                     <div class="carousel-inner">
 
                     <div class="item active">
                    <img src="fashion1.jpg" alt="Chania">
                   <div class="carousel-caption2">
                       
                      </div>
                   </div>

                  <div class="item">
                   <img src="snap4.jpg" alt="Chicago">
                        <div class="carousel-caption2">
        
                              </div>
                              </div>

                      <div class="item">
                          <img src="snap6.jpg" alt="New York">
                             <div class="carousel-caption2">
  
                              </div>
                                  </div>
                            <div class="item">
                          <img src="gifts.jpg" alt="New York">
                             <div class="carousel-caption2">
                                
                              </div>
                                  </div>
	               
                                 </div>
                         </center>

  <!-- Left and right controls -->
                 <a class="left carousel-control" href="#myCarouselx" data-slide="prev">
               <span class="glyphicon glyphicon-chevron-left"></span>
                         <span class="sr-only">Previous</span>
                  </a>
               <a class="right carousel-control" href="#myCarouselx" data-slide="next">
                 <span class="glyphicon glyphicon-chevron-right"></span>
                       <span class="sr-only">Next</span>
                    </a>
                 </div>
                
            </div>
                
            </div></div> 
             <!----------Category Silder------><br><br>
              <div class="container">
            <div class="row">
                <div class="col-md-12">
                    <div class="container-fluid">
	 <!--heading of cat-->
	<div class="row">
	<div id="heading-block">
	 <h2>Men & Ladies Fashion</h2>
         <br><br>
	 </div>
            <!------------men section---->
    <div class="col-md-6">
    <div id="myCarousel1x" class="carousel slide" data-ride="carousel">
    <!-- Indicators -->
    <ol class="carousel-indicators">
    <li data-target="#myCarousel1x" data-slide-to="0" class="active"></li>
    <li data-target="#myCarousel1x" data-slide-to="1"></li>
    <li data-target="#myCarousel1x" data-slide-to="2"></li>
    </ol>

  <!-- Wrapper for slides -->
  <center>
  <div class="carousel-inner">
 <a href="jeans.html">
    <div class="item active">
    <img src="jeans8.jpg" alt="Chania">
    <div class="carousel-caption"><h2 style="color:papayawhip;">Upto 30% off on jeans</h2>
        </a>
      </div>
    </div> 
   <a href="shirt.html">
      <div class="item">
      <img src="shirt.jpg" alt="Chicago">
      <div class="carousel-caption"><h2 style="color:papayawhip;">Great deals on T-shirts</h2>
   </a>
      </div>
    </div>  
   <a href="wallet.html">
       <div class="item">
      <img src="wallet8.jpg" alt="New York">
      <div class="carousel-caption">
   </a>
      </div>
    </div> 
	
  </div>
  </center>
      
  <!-- Left and right controls -->
  <a class="left carousel-control" href="#myCarousel1x" data-slide="prev">
    <span class="glyphicon glyphicon-chevron-left"></span>
    <span class="sr-only">Previous</span>
  </a>
  <a class="right carousel-control" href="#myCarousel1x" data-slide="next">
    <span class="glyphicon glyphicon-chevron-right"></span>
    <span class="sr-only">Next</span>
  </a>
</div>
  </div>
            <!--------Women section---->
  <div class="col-md-6">
 <div id="myCarousel2x" class="carousel slide" data-ride="carousel">
  <!-- Indicators -->
  <ol class="carousel-indicators">
    <li data-target="#myCarousel2x" data-slide-to="0" class="active"></li>
    <li data-target="#myCarousel2x" data-slide-to="1"></li>
    <li data-target="#myCarousel2x" data-slide-to="2"></li>
  </ol>

  <!-- Wrapper for slides -->
  <center>
  <div class="carousel-inner">
     <a href="top.html">
       <div class="item active">
       <img src="kurta2.jpg" height="750" width="750" alt="Chania">
       <div class="carousel-caption">
          <h2 style="color: yellow; font-family:sans-serif;">Women's Tops and Casuals. Upto 20% off!</h2> 
        </a>
      </div>
    </div>  
    <a href="gjeans.html">
      <div class="item">
          <img src="g1.gif" height="600px" width="750px" alt="Chicago"  > 
      <div class="carousel-caption">
          <h2>Attractive deals on jeans!</h2>
     </a>
      </div>
    </div>  
     <a href="bag.html">
      <div class="item">
      <img src="bag5.jpg" alt="New York">
      <div class="carousel-caption"><h2 style="color: papayawhip; font-family:Lucida Handwriting;">Handbags @Vastra.com</h2> 
    </a>
      </div>
    </div>
	  
  </div>
  </center>

  <!-- Left and right controls -->
  <a class="left carousel-control" href="#myCarousel2x" data-slide="prev">
    <span class="glyphicon glyphicon-chevron-left"></span>
    <span class="sr-only">Previous</span>
  </a>
  <a class="right carousel-control" href="#myCarousel2x" data-slide="next">
    <span class="glyphicon glyphicon-chevron-right"></span>
    <span class="sr-only">Next</span>
  </a>
</div>
  </div>
  </div>

</div>
</div>
                    
        
    </div> 
     
              </div><br><br>
             <div class="container-fluid">
                 <br><br>
                 <div class="row">
                    
                     <div class="col-lg-6">
                        
                         <img src="FashionSale1.png" style="height: 300px; width: 1140px; margin-left: 10px;"> 
                         
                     </div>
                 </div>
                 
             </div>
             <br><br>
             <div class="container-fluid">
                 <div class="row">
                     <div class="col-lg-12"><h1 style="color: #009688;">&nbsp;&nbsp;=====================Men Special======================</h1></div>
                     <br><br><br><br><br>
                     </div>
                 <div class="row" style="margin-left: 70px;">
                     <div class="col-lg-4">
                         <a href="shirt.jsp">
	                <div class="catbox">
	               <img src="shirt3.jpg" alt="Men-Shirt" width="260" height="200">
	                <span>Men Shirts/T-shirts</span>
                        </div>
	                  </a>
                     </div>
                  
                     <div class="col-lg-4">
                           <!---2nd catbox-->
	                   <a href="jeans.jsp">
	                            <div class="catbox">
	                     <img src="jeans.jpg" alt="Men-Jeans"  width="260" height="200">
	                       <span>Men Jeans/Trousers</span>
	
	                     </div>
	                    </a>
                     </div> 

                 
                     
                      <div class="col-lg-4">
                             <a href="wallet.jsp">
	                  <div class="catbox">
	              <img src="wallet.jpg" alt="wallet"  width="260" height="200">
	                  <span>Wallets</span>
	
	                        </div>
	                 </a>
                          </div>
                      </div>
                 <br><br>
                 <div class="row">
                     <div class="col-lg-12"><h1 style="color: #009688;" align="center">======================Women's Corner===================</h1></div>
                 </div> <br> <br> <br>
                 <div class="row" style="margin-left:70px;">
                     <div class="col-md-4">
                        <a href="top.jsp">
	                   <div class="catbox">
	                   <img src="top4.jpg" alt="women-tops" width="260" height="200">
	                  <span>Women Tops/kurtas</span>
	                    </div>
                        </a></div>
                     <div class="col-md-4">
	                   <!---2nd catbox-->
	                  <a href="gjeans.jsp">
	                   <div class="catbox">
	                  <img src="gjeans3.jpg" alt="women-Jeans"  width="260" height="200">
	                  <span>Women Jeans</span>
	                  </div>
                          </a></div>
                     <div class="col-md-4>"
	                    <!---3rd catbox-->
	                    <a href="bag.jsp">
	                        <div class="catbox">
	                    <img src="bag1.jpg" alt="handbags"  width="260" height="200">
	                    <span>Handbags</span>
	                      </div>
                         </a></div>
	   
                 </div>
                  </div>
         </div>
    </div>
    
     <jsp:include page="footer.jsp"/>
 
</body>
</html>