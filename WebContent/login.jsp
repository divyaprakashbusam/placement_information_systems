<%@ page import="java.sql.*"%>
<%
 try{
	 Class.forName("com.mysql.jdbc.Driver");
	 Connection con=null;
	 con=DriverManager.getConnection("jdbc:mysql://localhost:3306/project","root","root");
	 PreparedStatement stmt=con.prepareStatement("select * from signup where email=? and password=?");
	 String email=request.getParameter("email");
	 String password=request.getParameter("password");
	 stmt.setString(1, email);
	 stmt.setString(2,password);
	 ResultSet rs=stmt.executeQuery();
	 if(rs.next()==true)
	 {   session.setAttribute("id", rs.getInt("id"));
		 session.setAttribute("name", rs.getString("firstname"));
		 session.setMaxInactiveInterval(100);
		 if(rs.getString("category").equals("student"))
		 {
			 response.sendRedirect("display.html");
		 }
		 else if(rs.getString("category").equals("hod"))
		 {
			 response.sendRedirect("admin.html");
		 }
		 else{
			 response.sendRedirect("placementofficer.jsp");
		 }
		
		 
	 }
	 else{
		 out.println("<h1>invalid login</h1>");
		 out.println("<a href='login.html'>login page</a>");
	 }
 }
catch(Exception e)
{
	out.println(e);
}
%>