<%@page import="java.sql.*"%>
<!DOCTYPE html>
<html>
<head>
<title>Add Attendance</title>
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
				<ul class="nav navbar-nav nav1">
					<li><a href="adminhome.jsp" class="linkcol">Add New
							Student</a></li>
					<li><a href="view.jsp" class="linkcol">View Students</a></li>
					<li><a href="attend.jsp" class="linkcol">Add Attendance</a></li>
					<li><a href="att_view.jsp" class="linkcol active"
						style="background-color: #f4beb2; color: #0e3d6b !important;">View
							Attendance</a></li>
					<li><a href="result.jsp" class="linkcol">Add Marks</a></li>
					<li><a href="resultall.jsp" class="linkcol">All Student
							Marks</a></li>
				</ul>
				<ul class="nav navbar-nav navbar-right"
					style="position: relative; left: -10px">
					<li><a href="login.html" class="linkclr"><span
							class="glyphicon glyphicon-log-in"></span> Logout</a></li>
				</ul>
			</div>
	</nav>
	<!-- Navigation bar End -->

	<!-- Form section start -->
	<main class="my-form f1">
	<div class="cotainer">
	<div class="row justify-content-center">
	<div class="card">
		<h1>View Attendance</h1>
		<div class="card-body">
		<form name="my-form" onsubmit="return validform()" action="att_view1.jsp" method="post">
			<select name="id" onchange="showCustomer(this.value)">
			<option value="id" selected="selected">-- Select ID --</option>
			<%
				Class.forName("com.mysql.jdbc.Driver");
				Connection con = DriverManager.getConnection("jdbc:mysql://localhost:3306/project?characterEncoding=latin1", "library", "securelib");
				Statement st = con.createStatement();
				ResultSet rs = st.executeQuery("select * from students");
				while (rs.next()) {
			%>
			<option><%=rs.getString("id")%></option>
			<% } %>
			</select>
			<button type="submit" class="btn btn-primary">Search</button>
		</form>
		</div>
	</div>
	</div>
	</div>
	</main>
	<!-- view form end -->
</body>
</html>