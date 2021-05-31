<%@ page import="java.sql.*,java.util.*" %>
<%
Connection con=null;
Class.forName("com.mysql.jdbc.Driver");
System.out.println("Driver class loaded");
con=DriverManager.getConnection("jdbc:mysql://localhost:3306/project","root","root");
String id=request.getParameter("id");
PreparedStatement stmt=con.prepareStatement("delete from studentsdata where id=?");
stmt.setString(1, id);
int z=stmt.executeUpdate();
if(z>0)
{
	response.sendRedirect("viewstudents.jsp");
}
else{
	%>
	<h3>not deleted</h3>
	<jsp:include page="viewstudents.jsp"></jsp:include>
	<%
}
%>