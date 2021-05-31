<html lang="en">
<head>
    <meta charset="UTF-8">
    <meta name="viewport" content="width=device-width, initial-scale=1.0">
    <title>Display</title>
    <link rel="stylesheet" href="updatestudent.css">
    <link href="https://cdn.jsdelivr.net/npm/bootstrap@5.0.0-beta1/dist/css/bootstrap.min.css" rel="stylesheet" integrity="sha384-giJF6kkoqNQ00vy+HMDP7azOuL0xtbfIcaT9wjKHr8RbDVddVHyTfAAsrekwKmP1" crossorigin="anonymous">
    <link rel="stylesheet" href="https://cdnjs.cloudflare.com/ajax/libs/font-awesome/4.7.0/css/font-awesome.min.css">
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
      <div class="adddetails">
        <form action="updates.jsp" method="POST">
          <h2 style="font-weight: bold; color: #333">Enter Details</h2>
          <div class="form-group">
          <div class="form-group">
            <label>Enter id:</label>
            <input class="form-control" type="text"  placeholder="enter id" name="id" required>
          </div>
            <div class="row">
              <div class="col">
                <label>Enter firstname:</label>
                <input type="text" class="form-control" placeholder="First Name" name="firstname" required/>
              </div>
              <div class="col">
                <label>Enter lastname:</label>
                <input  type="text" class="form-control" placeholder="Last Name" name="lastname" required/>
              </div>
            </div>
          </div>
           
          <div class="form-group">
            <label>Enter Department:</label>
            <input class="form-control" type="text" placeholder="Enter Department" name="department" required>
          </div>
          <div class="form-group">
             <input class="form-check-input" type="radio" name="graduation" id="inlineRadio1" value="UG">
             <label class="form-check-label" for="inlineRadio1">UG</label>
             <input class="form-check-input" type="radio" name="graduation" id="inlineRadio1" value="PG" style="margin-left: 30px;">
             <label class="form-check-label" for="inlineRadio1">PG</label>
          </div>
          <div class="form-group">
            <label>Enter cgpa:</label>
            <input class="form-control" type="text" maxlength="4" placeholder="enter cgpa" name="cgpa" required>
          </div>
          <div class="form-group">
            <label>Enter email:</label>
            <input class="form-control" type="email" required  placeholder="enter email" name="email">
          </div>
          <div class="form-group">
            <label>Enter phonenumber:</label>
            <input class="form-control" type="text" maxlength="10" placeholder="enter phonenumber" name="phonenumber" required>
          </div>
          <div class="form-group">
            <label for="skills" class="form-label">Enter your minimum 4 skill set:</label>
            <textarea class="form-control" id="skills" rows="3" name="skillset"></textarea>
          </div>
          <div class="form-group">
            <label>Enter Street:</label>
            <input class="form-control" type="text" placeholder="Enter Street" name="street" required>
          </div>
          <div class="form-group">
            <label>Enter District:</label>
            <input class="form-control" type="text" placeholder="Enter District" name="district" required>
          </div>
          <div class="form-group">
            <label>Enter State:</label>
            <input class="form-control" type="text" placeholder="Enter State" name="state" required>
          </div>
          <div class="form-group">
            <label>Enter pincode:</label>
            <input class="form-control" type="text" maxlength="6" placeholder="Enter pincode" name="pincode" required>
          </div>
          <button type="submit" class="btn btn-primary">Submit</button>
        </form>
      </div>
      
</body>
</html>