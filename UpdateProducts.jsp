
<%@page import="java.sql.*"%>
<%
	int id=Integer.parseInt(request.getParameter("id"));
	Connection con=null;
        	Statement st;
        	ResultSet rs;
	try{
            		Class.forName("com.mysql.jdbc.Driver");	
            		con = DriverManager.getConnection("jdbc:mysql://localhost:3306/image","root","");
            		st=con.createStatement();
		String sql="select * from product where id="+id+"";
		rs=st.executeQuery(sql);
		rs.next();
		%>
		<form method="post" action="">
		<input type="text" value="<%=rs.getString(1)%>" name="t1" readonly /><br>
		<input type="text" value="<%=rs.getString(2)%>" name="t2" /><br>
		<input type="text" value="<%=rs.getString(3)%>" name="t3" /><br>
		<input type="text" value="<%=rs.getString(4)%>" name="t4" /><br>
                <input type="text" value="<%=rs.getString(5)%>" name="t5" /><br>
                <input type="file" value="<%=rs.getString(6)%>" name="t6" /><br>
                <input type="submit" value="Update" name="btn2" />
		<%
		if(request.getParameter("btn2")!=null)
		{
			
                      
                        String name,cat,img,code;
                        name=request.getParameter("t1");
                        int gid=Integer.parseInt(request.getParameter("t2"));
                        code=request.getParameter("t3");
                        double price=Double.parseDouble(request.getParameter("t4"));
                        cat=request.getParameter("t5");
                        img=request.getParameter("t6");
                     
			sql="update product set Name='"+name+"',id="+gid+",Code='"+code+"',Price="+price+", category='"+cat+"',Image='"+img+"' where id="+gid+"";
			int res=st.executeUpdate(sql);
			if(res!=0)
				response.sendRedirect("ADMIN.jsp");
			else	
				out.println("<script>alert('Error in updating')</script>");
		}
		%>
		</form>
	<%
               	}catch(Exception e)
        	{
            		out.println(e.toString());
        	}
%>
