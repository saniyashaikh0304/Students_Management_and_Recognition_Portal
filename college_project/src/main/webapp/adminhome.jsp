<!DOCTYPE html>
<html>
<head>
<title>Admin Home</title>
<link rel="stylesheet" type="text/css" href="style.css">
<link rel="stylesheet"
	href="https://maxcdn.bootstrapcdn.com/bootstrap/3.4.1/css/bootstrap.min.css">
<link rel="stylesheet"
	href="https://cdnjs.cloudflare.com/ajax/libs/font-awesome/4.7.0/css/font-awesome.min.css">
<script
	src="https://ajax.googleapis.com/ajax/libs/jquery/3.6.0/jquery.min.js"></script>
<script
	src="https://maxcdn.bootstrapcdn.com/bootstrap/3.4.1/js/bootstrap.min.js"></script>
</head>

<body class="bg3">
	<!-- Navigation bar Begin -->
	<nav class="navbar navbar-default" style="width: 100%;">
	<div class="container-fluid conflu">
	<div class="navcls">
	<ul class="nav navbar-nav nav1 active">
		<li><a href="adminhome.jsp" class="linkcol" style="background-color: #f4beb2; color: #0e3d6b !important;">Add New Student</a></li>
		<li><a href="view.jsp" class="linkcol">View Students</a></li>
		<li><a href="attend.jsp" class="linkcol">Add Attendance</a></li>
		<li><a href="att_view.jsp" class="linkcol">View Attendance</a></li>
		<li><a href="result.jsp" class="linkcol">Add Marks</a></li>
		<li><a href="resultall.jsp" class="linkcol">All Student Marks</a></li>
	</ul>
	<ul class="nav navbar-nav navbar-right" style="position: relative; left: -10px">
		<li><a href="login.html" class="linkclr"><span class="glyphicon glyphicon-log-in"></span> Logout</a></li>
	</ul>
	</div>
	</nav>
	<!-- Navigation bar End -->

	<!-- Add from start -->
	<main class="my-form f1">
	<div class="cotainer">
	<div class="row justify-content-center">
	<div class="card">
		<h1>Add New Students</h1>
		<div class="card-body bd1">
		<form name="my-form" onsubmit="return validform()" action="AddnewStudent.jsp" method="post">
			<div class="form-group row">
			<label for="present_id" class="col-md-4 col-form-label text-md-right">Student ID : </label>
			<div class="col-md-6">
			<input type="text" class="form-control" name="id" required="required" placeholder="Enter id" oninvalid="this.setCustomValidity('Enter id Here')" oninput="this.setCustomValidity('')" />
			</div>
			</div>

			<div class="form-group row">
			<label for="full_name" class="col-md-4 col-form-label text-md-right">Student Name</label>
			<div class="col-md-6">
			<input type="text" class="form-control" name="name" required="required" placeholder="Enter Name" oninvalid="this.setCustomValidity('Enter Name Here')" oninput="this.setCustomValidity('')" />
			</div>
			</div>

			<div class="form-group row">
			<label for="email_address" class="col-md-4 col-form-label text-md-right ">Email-id: </label>
			<div class="col-md-6">
			<input type="email" class="form-control" name="email_id" required="required" placeholder="Enter Email-id" oninvalid="this.setCustomValidity('Enter Email-id Here')" oninput="this.setCustomValidity('')" />
			</div>
			</div>

			<div class="form-group row">
			<label for="password" class="col-md-4 col-form-label text-md-right">Password: </label>
			<div class="col-md-6">
			<input type="password" class="form-control" name="password" required="required" placeholder="Enter Password" oninvalid="this.setCustomValidity('Enter Password Here')" oninput="this.setCustomValidity('')" />
			</div>
			</div>

			<div class="form-group row">
			<label for="permanent_address" class="col-md-4 col-form-label text-md-right">Number</label>
			<div class="col-md-6">
			<input type="tel" pattern="[1-9]{1}[0-9]{9}" class="form-control" name="num" required="required" placeholder="Enter Contact Number" oninvalid="this.setCustomValidity('Enter 10 Digit Number Only')" oninput="this.setCustomValidity('')" />
			</div>
			</div>

			<div class="form-group row">
			<label for="permanent_address" class="col-md-4 col-form-label text-md-right">Address</label>
			<div class="col-md-6">
			<input type="text" class="form-control" name="address" required="required" placeholder="Enter Address" oninvalid="this.setCustomValidity('Enter Address Here')" oninput="this.setCustomValidity('')" />
			</div>
			</div>

			<div class="form-group row">
			<label for="gender" class="col-md-4 col-form-label text-md-right">Gender :</label>
			<div class="col-md-6">
			<input type="radio" name="gender" value="Male" required="required">MALE <input type="radio" name="gender" value="Female" required="required">FEMALE
			</div>
			</div>

			<div>
			<button type="submit" class="btn btn-primary">Save</button>
			</div>
			</form>
		</div>
	</div>
	</div>
	</div>
	</main>
	<!-- add form end -->
</body>
</html>