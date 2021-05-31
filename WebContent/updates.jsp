<%@ page import="java.sql.*,org.hibernate.*,org.hibernate.cfg.*,jclasses.Student" %>
<% Configuration cfg=new Configuration();
cfg.configure("hibernate.cfg.xml");
SessionFactory sf=cfg.buildSessionFactory();
Session sess=sf.openSession();
String idd=request.getParameter("id");
int id=Integer.parseInt(idd);
String fname=request.getParameter("firstname");
String lname=request.getParameter("lastname");

String department=request.getParameter("department");
String graduation=request.getParameter("graduation");
String cgp=request.getParameter("cgpa");
float cgpa=Float.parseFloat(cgp);
String email=request.getParameter("email");
String phonenumber=request.getParameter("phonenumber");
long xy=Long.parseLong(phonenumber);
String skillset=request.getParameter("skillset");
String street=request.getParameter("street");
String district=request.getParameter("district");
String state=request.getParameter("state");
String pin=request.getParameter("pincode");
long pincode=Long.parseLong(pin);
Transaction txt=sess.beginTransaction();
Query qry=sess.createQuery("update Student set firstname=:firstname,lastname=:lastname,department=:department,graduation=:graduation,cgpa=:cgpa,email=:email,phonenumber=:phonenumber,skillset=:skillset,street=:street,district=:district,state=:state,pincode=:pincode where id=:id");
qry.setParameter("firstname",fname);
qry.setParameter("lastname",lname);
qry.setParameter("department",department);
qry.setParameter("graduation",graduation);
qry.setParameter("cgpa",cgpa);
qry.setParameter("email",email);
qry.setParameter("phonenumber",xy);
qry.setParameter("skillset",skillset);
qry.setParameter("street",street);
qry.setParameter("district",district);
qry.setParameter("state",state);
qry.setParameter("pincode",pincode);
qry.setParameter("id",id);
int flag=qry.executeUpdate();
txt.commit();
if(flag>0)
{
	response.sendRedirect("viewstudents.jsp");
}
else{
	%>
	<h3>Student Not Found</h3>
	<jsp:include page="updatestudent.jsp"></jsp:include>
	<%
}
%>