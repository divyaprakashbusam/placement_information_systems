<html lang="en">
<head>
    <meta charset="UTF-8">
    <meta name="viewport" content="width=device-width, initial-scale=1.0">
    <title>Display</title>
    <link rel="stylesheet" href="display.css">
    <script src="https://cdn.jsdelivr.net/npm/bootstrap@5.0.0-beta1/dist/js/bootstrap.bundle.min.js" integrity="sha384-ygbV9kiqUc6oa4msXn9868pTtWMgiQaeYH7/t7LECLbyPA2x65Kgf80OJFdroafW" crossorigin="anonymous"></script>
    <link href="https://cdn.jsdelivr.net/npm/bootstrap@5.0.0-beta1/dist/css/bootstrap.min.css" rel="stylesheet" integrity="sha384-giJF6kkoqNQ00vy+HMDP7azOuL0xtbfIcaT9wjKHr8RbDVddVHyTfAAsrekwKmP1" crossorigin="anonymous">
    <link rel="stylesheet" href="https://cdnjs.cloudflare.com/ajax/libs/font-awesome/4.7.0/css/font-awesome.min.css">
</head>

<body>
<%
 if(session!=null)
 {
	 %>
	 <nav class="na">
        <a href="#" id="head"><h3>Placement Information System</h3></a>
        <div class="drop">
            <button class="dbtn">My Account 
              <i class="fa fa-caret-down"></i>
            </button>
            <div class="dropdowncontent">
              <a href="display.html">Home</a>
              <a href="viewstatus.jsp">Check Status</a>
              <a href="viewcompanies2.jsp">Companies Registered</a>
              <a href="logout">Log out</a>
            </div>
          </div> 
      </nav>

     <div id="carouselExampleControls" class="carousel slide"  data-bs-ride="carousel">
        <div class="carousel-inner" style="height: 90%;">
          <div class="carousel-item active" style="height: 90%;">
            <div id="text">Welcome to student page</div>
            <img src="images/img2.jpg" class="d-block w-100" alt="...">
          </div>
          <div class="carousel-item" style="height: 90%;">
            <img src="images/img1.jpg" class="d-block w-100" alt="...">
          </div>
          <div class="carousel-item" style="height: 90%;">
            <img src="images/img3.jpg" class="d-block w-100" alt="...">
          </div>
        </div>
        <a class="carousel-control-prev" href="#carouselExampleControls" role="button" data-bs-slide="prev">
          <span class="carousel-control-prev-icon" aria-hidden="true"></span>
          <span class="visually-hidden">Previous</span>
        </a>
        <a class="carousel-control-next" href="#carouselExampleControls" role="button" data-bs-slide="next">
          <span class="carousel-control-next-icon" aria-hidden="true"></span>
          <span class="visually-hidden">Next</span>
        </a>
      </div>

      <footer >
        &#169 done by EP team 1
      </footer> 
	 <%
 }
 else{
	 %>
	 <h3>session expired</h3>
	 <jsp:include page="login.html"></jsp:include>
	 <% 
 }
%>
    
</body>
</html>