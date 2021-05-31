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
@WebServlet("/addcompanies")
public class Companies extends HttpServlet {
	public void service(HttpServletRequest request,HttpServletResponse response) throws IOException,ServletException
	{  response.setContentType("text/html");
	   PrintWriter out =response.getWriter();
		Configuration cfg=new Configuration();
		cfg.configure("hibernate2.cfg.xml");
		SessionFactory sf=cfg.buildSessionFactory();
		Session sess=sf.openSession();
		
		String compname=request.getParameter("compname");
		String compemail=request.getParameter("compemail");
		String reqcgp=request.getParameter("compcgpa");
		float compcgpa=Float.parseFloat(reqcgp);
		String compsite=request.getParameter("compsite");
		String compphn=request.getParameter("compphn");
		String compaddress=request.getParameter("compaddress");
		String compabout=request.getParameter("compabout");
		Office o=new Office();
        o.setName(compname);
        o.setEmail(compemail);
		o.setReqcgpa(compcgpa);
		o.setWeblink(compsite);
		o.setPhonenumber(compphn);
		o.setAddress(compaddress);
		o.setAbout(compabout);
		Transaction txt=sess.beginTransaction();
		sess.save(o);
		txt.commit();
		sess.close();
		sf.close();
		
		out.println("<h5 align:center>Succesfully Inserted</h5>");
		RequestDispatcher rs=request.getRequestDispatcher("company.html");
		rs.include(request, response);
		
		
	}
       
    
}
