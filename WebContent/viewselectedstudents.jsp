<%@page import="java.sql.*" %>


<html lang="en">
<head>
    <meta charset="UTF-8">
    <meta name="viewport" content="width=device-width, initial-scale=1.0">
    <title>Display</title>
    <link rel="stylesheet" href="viewselectedstudents.css">
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
             <a href="placementofficer.jsp">Home</a>
              <a href="viewstudents2.jsp">View Students</a>
              <a href="company.html">Add Companies</a>
              <a href="viewcompanies.jsp">Companies Registered</a>
              <a href="viewselectedstudents.jsp">Eligible Students Details</a>
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
                                            <th>Company Name</th>
                                            
                                        </tr>
                                    </thead>
                                    <tbody>
<%
try {
	
	 Class.forName("com.mysql.jdbc.Driver");
	 Connection con=null;
	 con=DriverManager.getConnection("jdbc:mysql://localhost:3306/project","root","root");
	 PreparedStatement stmt=con.prepareStatement("select studentsdata.id,studentsdata.firstname,studentsdata.lastname,studentsdata.department,studentsdata.graduation,studentsdata.cgpa,studentsdata.email,studentsdata.phonenumber,studentsdata.skillset,companydata.name from studentsdata inner join companydata where studentsdata.cgpa>=companydata.reqcgpa");
	 ResultSet rs=stmt.executeQuery();
	 


while(rs.next())
{%> <tr>
	<td><%=rs.getInt("id")%></td>
	<td><%=rs.getString("firstname")%></td>
   <td><%=rs.getString("lastname")%></td>
	<td><%=rs.getString("department")%></td>
	<td><%=rs.getString("graduation")%></td>
   <td><%=rs.getFloat("cgpa")%></td>
	<td><%=rs.getString("email")%></td>
   <td><%=rs.getLong("phonenumber")%></td>
	<td><%=rs.getString("skillset")%></td>
	<td><%=rs.getString("name")%></td>
	</tr>
	<%
}
}
catch(Exception e)
{
System.out.println(e);
}


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