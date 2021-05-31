package jclasses;

import java.io.IOException;  
import java.io.PrintWriter;
import javax.servlet.RequestDispatcher;
import javax.servlet.ServletException;
import javax.servlet.annotation.WebServlet;
import javax.servlet.http.HttpServlet;
import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpServletResponse;
import org.hibernate.*;
import org.hibernate.cfg.*;
/**
 * Servlet implementation class Register
 */
@WebServlet("/addstudentdetails")
public class Register extends HttpServlet {
	public void service(HttpServletRequest request,HttpServletResponse response) throws IOException,ServletException
	{  response.setContentType("text/html");
	   PrintWriter out =response.getWriter();
		Configuration cfg=new Configuration();
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
		Student s=new Student();
		s.setId(id);
		s.setFirstname(fname);
		s.setLastname(lname);
		s.setDepartment(department);
		s.setGraduation(graduation);
		s.setCgpa(cgpa);
		s.setEmail(email);
		s.setPhonenumber(xy);
		s.setSkillset(skillset);
		s.setStreet(street);
		s.setDistrict(district);
		s.setState(state);
		s.setPincode(pincode);
		Transaction txt=sess.beginTransaction();
		sess.save(s);
		txt.commit();
		sess.close();
		sf.close();
		
		out.println("<h5 align:center>succesfully inserted</h5>");
		RequestDispatcher rs=request.getRequestDispatcher("studentdetails.html");
		rs.include(request, response);
		
		
	}
       
    
}
