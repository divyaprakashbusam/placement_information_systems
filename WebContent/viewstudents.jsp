<%@ page import="java.sql.*,org.hibernate.*,org.hibernate.cfg.*,jclasses.Student,java.util.*" %>
<html lang="en">
<head>
    <meta charset="UTF-8">
    <meta name="viewport" content="width=device-width, initial-scale=1.0">
    <title>Display</title>
    <link rel="stylesheet" href="viewstudents.css">
    <link href="https://cdn.jsdelivr.net/npm/bootstrap@5.0.0-beta1/dist/css/bootstrap.min.css" rel="stylesheet" integrity="sha384-giJF6kkoqNQ00vy+HMDP7azOuL0xtbfIcaT9wjKHr8RbDVddVHyTfAAsrekwKmP1" crossorigin="anonymous">
    <link rel="stylesheet" href="https://cdnjs.cloudflare.com/ajax/libs/font-awesome/4.7.0/css/font-awesome.min.css">
    <!-- Custom fonts for this template -->
    <link href="vendor/fontawesome-free/css/all.min.css" rel="stylesheet" type="text/css">
    <link
        href="https://fonts.googleapis.com/css?family=Nunito:200,200i,300,300i,400,400i,600,600i,700,700i,800,800i,900,900i"
        rel="stylesheet">

    <!-- Custom styles for this template -->
    <link href="css/sb-admin-2.min.css" rel="stylesheet">

    <!-- Custom styles for this page -->
    <link href="vendor/datatables/dataTables.bootstrap4.min.css" rel="stylesheet">
</head>
<body>

    <nav class="na">
        <a href="#" id="head"><h3>Placement Information System</h3></a>
        <div class="drop">
            <button class="dbtn">My Account 
              <i class="fa fa-caret-down"></i>
            </button>
            <div class="dropdowncontent">
            <a href="admin.html">Home</a>
              <a href="studentdetails.html">Add details</a>
              <a href="viewstudents.jsp">View Students</a>
              <a href="vieweligiblestudents.jsp">View Eligible Students</a>
              <a href="updatestudent.jsp">Update Student</a>
              <a href="login.html">Log out</a>
            </div>
          </div> 
      </nav>
      <div id="wrapper">
                        <div class="card-body" style="background-color:white">
                            <div class="table-responsive">
                                <table class="table table-bordered" id="dataTable" width="100%" cellspacing="0">
                                    <thead>
                                        <tr>
                                            <th>id</th>
                                            <th>first name</th>
                                            <th>last name</th>
                                            <th>department</th>
                                            <th>graduation</th>
                                            <th>cgpa</th>
                                            <th>email</th>
                                            <th>phone number</th>
                                            <th>skill set</th>
                                            <th>street</th>
                                            <th>district</th>
                                            <th>state</th>
                                            <th>pincode</th>
                                            <th>Delete</th>
                                        </tr>
                                    </thead>
                                    <tbody>
<%
Configuration cfg=new Configuration();
cfg.configure("hibernate.cfg.xml");
SessionFactory sf=cfg.buildSessionFactory();
Session sess=sf.openSession();
Query qry=sess.createQuery("from Student s");
List<Student> ls=qry.list();
for(Student s:ls)
{
	
		%>
		<tr>
		   <td><%=s.getId() %></td>
		   <td><%=s.getFirstname() %></td>
		   <td><%=s.getLastname()%></td>
		   <td><%=s.getDepartment() %></td>
		   <td><%=s.getGraduation() %></td>
		   <td><%=s.getCgpa()%></td>
		   <td><%=s.getEmail() %></td>
		   <td><%=s.getPhonenumber() %></td>
		   <td><%=s.getSkillset() %></td>
		   <td><%=s.getStreet() %></td>
		   <td><%=s.getDistrict() %></td>
		   <td><%=s.getState() %></td>
		   <td><%=s.getPincode() %></td>
		   <td><a href="deletestudent.jsp?id=<%=s.getId()%>">delete</a></td>
		</tr>
		<% 
	
}
sess.close();
sf.close();


%>
                                    </tbody>
                                </table>
                            </div>
                        </div>

                </div>
                <!-- /.container-fluid -->

    </div>
     <!-- End of Page Wrapper -->

    <!-- Bootstrap core JavaScript-->
    <script src="vendor/jquery/jquery.min.js"></script>
    <script src="vendor/bootstrap/js/bootstrap.bundle.min.js"></script>

    <!-- Core plugin JavaScript-->
    <script src="vendor/jquery-easing/jquery.easing.min.js"></script>

    <!-- Custom scripts for all pages-->
    <script src="js/sb-admin-2.min.js"></script>

    <!-- Page level plugins -->
    <script src="vendor/datatables/jquery.dataTables.min.js"></script>
    <script src="vendor/datatables/dataTables.bootstrap4.min.js"></script>

    <!-- Page level custom scripts -->
    <script src="js/demo/datatables-demo.js"></script>
</body>
</html>