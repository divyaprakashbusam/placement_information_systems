<%
String name=(String)session.getAttribute("name");
if(name==null)
{
	response.sendRedirect("welcome.html");
}
%>

<%
  response.sendRedirect("display.html");
%>