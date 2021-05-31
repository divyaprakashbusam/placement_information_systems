<%@ page import="java.sql.*,java.util.*" %>
<%
Connection con=null;
Class.forName("com.mysql.jdbc.Driver");
System.out.println("Driver class loaded");
con=DriverManager.getConnection("jdbc:mysql://localhost:3306/project","root","root");
String sno=request.getParameter("sno");
PreparedStatement stmt=con.prepareStatement("delete from companydata where sno=?");
stmt.setString(1, sno);
int z=stmt.executeUpdate();
if(z>0)
{
	response.sendRedirect("viewcompanies.jsp");
}
else{
	%>
	<h3>not deleted</h3>
	<jsp:include page="viewcompanies.jsp"></jsp:include>
	<%
}
%>