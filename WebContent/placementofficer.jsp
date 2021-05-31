<%@ page import="java.sql.*,org.hibernate.*,org.hibernate.cfg.*,jclasses.Student,java.util.*" %>
<%!int val1=23;
int val2=3232;%>

<html lang="en">
<head>
    <meta charset="UTF-8">
    <meta name="viewport" content="width=device-width, initial-scale=1.0">
    <title>Placements</title>
    <link rel="stylesheet" href="placementofficer.css">
    <link href="https://cdn.jsdelivr.net/npm/bootstrap@5.0.0-beta1/dist/css/bootstrap.min.css" rel="stylesheet" integrity="sha384-giJF6kkoqNQ00vy+HMDP7azOuL0xtbfIcaT9wjKHr8RbDVddVHyTfAAsrekwKmP1" crossorigin="anonymous">
    <link rel="stylesheet" href="https://cdnjs.cloudflare.com/ajax/libs/font-awesome/4.7.0/css/font-awesome.min.css">
    <script type="text/javascript" src="https://www.gstatic.com/charts/loader.js"></script>
    <script type="text/javascript">
      google.charts.load('current', {'packages':['corechart']});
      google.charts.setOnLoadCallback(drawChart);

      function drawChart() {
       <%
       Configuration cfg=new Configuration();
       cfg.configure("hibernate.cfg.xml");
       SessionFactory sf=cfg.buildSessionFactory();
       Session sess=sf.openSession();
       Query qry=sess.createQuery("select count(s.cgpa) from Student s where s.cgpa>8.0");
       List<Student> ls=qry.list();
  
       %>
        var data = google.visualization.arrayToDataTable([
          ['Task', 'Hours per Day'],
          ['Eligible', <%=val1%>],
          ['Not Eligible',<%=val2%>],
        ]);

        var options = {
          title: 'My Daily Activities'
        };

        var chart = new google.visualization.PieChart(document.getElementById('piechart'));

        chart.draw(data, options);
      }
    </script>
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
              <a href="viewstudents2.jsp">view students</a>
              <a href="company.html">Add companies</a>
              <a href="viewcompanies.jsp">Companies registered</a>
              <a href="viewselectedstudents.jsp">eligible students details</a>
              <a href="login.html">Log out</a>
            </div>
          </div> 
      </nav>
 
 <header class="gradient" style="height:40vh;">
  <div class="container pt-3">
         <div class="row align-items-center justify-content-center">
  <div class="col-3">
    <div class="card" style="width: 18rem;">
  <div class="card-body">
    <h5 class="card-title">Students</h5>
    <p class="card-text">Students Eligible for Placement</p>
    <a href="#" class="btn btn-primary">View List</a>
    
  </div>
</div>
  </div>
  <div class="col-3">
     <div class="card" style="width: 18rem;">
  <div class="card-body">
    <h5 class="card-title">Company</h5>
   
    <p class="card-text">Add the Details of the Company</p>
    <a href="#" class="btn btn-primary">Add Company Details</a>
    
  </div>
</div>
  </div>
  <div class="col-3">
     <div class="card" style="width: 18rem;">
  <div class="card-body">
    <h5 class="card-title">Registered Companies</h5>
    
    <p class="card-text">View the Details of the Registered Companies</p>
    <a href="#" class="btn btn-primary">Company List</a>
    
  </div>
</div>
  </div>
  <div class="col-3">
    <div class="card" style="width: 18rem;">
  <div class="card-body">
    <h5 class="card-title">Placements</h5>
    <p class="card-text">Students Placed for Certain Companies</p>
    <a href="#" class="btn btn-primary">Placed Student Details</a>
    
  </div>
</div>
  </div>
 
 </div>
 </div>
 </header>   
 <svg xmlns="http://www.w3.org/2000/svg" viewBox="0 0 1440 200"><path fill="#0099ff" fill-opacity="1" d="M0,160L48,149.3C96,139,192,117,288,96C384,75,480,53,576,69.3C672,85,768,139,864,165.3C960,192,1056,192,1152,165.3C1248,139,1344,85,1392,58.7L1440,32L1440,0L1392,0C1344,0,1248,0,1152,0C1056,0,960,0,864,0C768,0,672,0,576,0C480,0,384,0,288,0C192,0,96,0,48,0L0,0Z"></path></svg>       
     <div id="piechart" style="width: 900px; height: 500px;"></div>
</body>
</html>