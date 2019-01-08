
<!doctype html>
<html>
<head>
<title>REGISTER</title>



<style>
     body{
   background-image:url(bags.jpg);
   height:auto;
   width: 100%;
   background-size:150%;
   background-position:center;
   }
  
   .login-page{
   width:500px;
   padding:10% 0 0;
   margin:auto;
   }
   .form1{
   position:relative;
   z-index:1;
   background:rgba(193,202,189,0.4);
   max-width:360px;
   margin:0 auto 100px;
   padding:45px;
   text-align:center;
   }
   .form1 input{
   font-family:"Roboto",sans-serif;
   outline:1;
   background:#f2f2f2;
   width:100%;
   border:0;
   margin:0 0 15px;
   padding:15px;
   box-sizing:border-box;
   font-size:14px;
   }
   .form1 button{
   font-family:"Roboto",sans-serif;
   text-transition:uppercase;
   outline:0;
   background:#DC143C;
   width:100%;
   border:0;
   padding:15px;
   color:#ffffff;
   font-size:14px;
   cursor:pointer;
   }
   .form1 button:hover,.form button:active{
   background:#8B0000;
   }
   .form1 .message{
   margin:15px 0 0;
   color: firebrick;
   font-size:12px;
   }
   .form1 .message a
   {
   color:#8B0000;
   text-decoration:none;
   }
  /* .form .register-form
   {
   display:none;
   }*/

</style>
  <link href="css/bootstrap.min.css" rel="stylesheet">
  <script src="js/bootstrap.min.js" type="text/javascript"></script>
  <script src="//code.jquery.com/jquery-3.3.1.min.js">
  
  $('.message a').click(function(){
  $('form').animate({height:"toggle",opacity:"toggle"},"slow");
  });
  </script>
  <script>
  function formvalidate()
  {
      var x=document.forms["regform"]["first"].value;
      var y=document.forms["regform"]["last"].value;
      var z=document.forms["regform"]["email"].value;
      var a=document.forms["regform"]["pass"].value;
      var b=document.forms["regform"]["conp"].value;
      
       if(x=="")
       {
          window.alert("Please provide your first name! ");
          return false;
       }
       if(!isNaN(x))
       {  
           window.alert("Please provide a valid name! ");
          return false;
           
       }
      
       if(y=="")
       {
           window.alert("Please provide your last name! ");
          return false;
       }
       if(!isNaN(y))
       {  
          window.alert("Please provide a valid name! ");
          return false;
           
       }
     
      if(z=="")
      {
          window.alert("Please provide your email! ");
          return false;
      }
      if(z.indexOf("@",0)<0)
      {
          window.alert("Invalid email");
          return false;
      }
      if(a.length<6)
      {
          window.alert("Passwords must be atleast 6 characters long ! ");
          return false;
      }
      if(a!=b)
      {
         window.alert("Passwords are nor matching! ");
          return false;
      }
      
      return true;
        
      
  }


</script>
  
</head>



<body>
 
 
   <jsp:include page="header.jsp"/>
 
   <form name="regform" onsubmit="return formvalidate()" action="fromfill.jsp" method="POST" >
  <div class="login-page">
  <div class="form1">
  <div class="register-form">
  <input name="first" type="text" id="fn" placeholder="First Name" autocomplete="off"/>
 
  <input name="last" type="text" id="ln" placeholder="Last Name"  autocomplete="off"/>
  
  <input name="email" type="email" id="em" placeholder="Email-id"  autocomplete="off"/>
  
  <input name="pass" type="password" id="ps" placeholder="Password"  autocomplete="off"/>
  
  <input  type="password" name="conp" placeholder="Confirm Password"  autocomplete="off"/>
 
     
  <button name="b3">SUBMIT</button>  
   <span id="msg" style="color:red;"></span>
<p class="message">Already Registered? <a href="index.jsp">LOGIN</a></p>
    </div></div></div>  
</form>
 

 
 
 
<jsp:include page="footer.jsp"/>


</body>
</html>