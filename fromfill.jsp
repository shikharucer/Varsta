<%@page import="java.sql.*" %>

<% if(request.getParameter("b3")!=null)
{
     Connection con=null;
     Statement st;
     String Email,Pass,First,Last;
     Email=request.getParameter("email");
     Pass=request.getParameter("pass");
     First=request.getParameter("first");
     Last=request.getParameter("last");
    
     try{  
        
        
          Class.forName("com.mysql.jdbc.Driver");
     	
            		con = DriverManager.getConnection("jdbc:mysql://localhost:3306/reg","root","");
            		st=con.createStatement();
                        String sql="insert into user values('"+First+"','"+Last+"','"+Email+"','"+Pass+"')";
                        int res=st.executeUpdate(sql);
                        if(res!=0)
                        {
                            out.println("<script>alert('Registered Succesfully!')</script>");
                            response.sendRedirect("index.jsp");
                        }
     
        
     }catch(Exception e)
     {
        out.println(e.toString());
        
     }
    }
%>