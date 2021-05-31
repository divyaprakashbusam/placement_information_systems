<%@ page import="java.sql.*" %>
<%@ page import="java.util.*,javax.mail.*"%>
<%@ page import="javax.mail.internet.*" %>

<%
 try{
	 
	 Class.forName("com.mysql.jdbc.Driver");
	 Connection con=null;
	 con=DriverManager.getConnection("jdbc:mysql://localhost:3306/project","root","root");
	 PreparedStatement stmt=con.prepareStatement("insert into signup values(?,?,?,?,?,?)");
	 String idd=request.getParameter("id");
	 int id=Integer.parseInt(idd);
	 String fname=request.getParameter("firstname");
	 String lname=request.getParameter("lastname");
	 String email=request.getParameter("email");
	 String category=request.getParameter("category");
	 String password=request.getParameter("password");
	 stmt.setInt(1, id);
	 stmt.setString(2,fname);
	 stmt.setString(3,lname);
	 stmt.setString(4,email);
	 stmt.setString(5,category);
	 stmt.setString(6, password);
	 int x=stmt.executeUpdate();
	 if(x>0)	 
	 {   String result;
	 final String from = "tanujandhavarapu@gmail.com";
	    final String pass = "tanuj123";
		 String host = "smtp.gmail.com";
		 Properties props = new Properties();
		 props.put("mail.smtp.host", host);
		    props.put("mail.transport.protocol", "smtp");
		    props.put("mail.smtp.auth", "true");
		    props.put("mail.smtp.starttls.enable", "true");
		    props.put("mail.user", from);
		    props.put("mail.password", pass);
		    props.put("mail.port", "587");
		    Session mailSession = Session.getInstance(props, new javax.mail.Authenticator() {
		        @Override
		        protected PasswordAuthentication getPasswordAuthentication() {
		            return new PasswordAuthentication(from, pass);
		        }
		    });
		 
		        // Create a default MimeMessage object.
		        MimeMessage message = new MimeMessage(mailSession);
		        // Set From: header field of the header.
		        message.setFrom(new InternetAddress(from));
		        // Set To: header field of the header.
		        message.addRecipient(Message.RecipientType.TO,new InternetAddress(email));
		        // Set Subject: header field
		        message.setSubject("Registration");
		        // Now set the actual message
		        message.setText("registered succesfully");
		        // Send message
		        Transport.send(message);
		        result = "mail sent successfully from W3Adda.com....";
		       
		 %><h3>Successfully Registered</h3>
		 <h3><%=result %></h3>
	     <jsp:include page="login.html"></jsp:include>
	     <%
	 }
 }
catch(Exception e)
{
	out.println(e);
}
%>