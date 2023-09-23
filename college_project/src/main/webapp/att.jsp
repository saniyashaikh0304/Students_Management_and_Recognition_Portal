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
</head>

<body class="bg3">
<!-- Navigation bar Begin -->
<nav class="navbar navbar-default">
	<div class="container-fluid"
		style="padding-left: 0px !important; background-color: #3d4b78 !important;">
		<div class="navbar-header">
			<img src="images/logo1.jpg"
				style="height: 120px; width: 200px; background-color: pink; position: relative; left: 40px;">
		</div>
		<div class="navcls">
	<ul class="nav navbar-nav navbar-right" >
		<li><a href="stlogin.html" style="color: #f4beb2 !important;"><span class="glyphicon glyphicon-log-in"></span> Logout</a></li>
	</ul>
	</div>
	</div>
</nav>
<br>
<!-- Navigation bar End -->

	<!-- Form section start -->
	<main class="my-form f1">
	<div class="cotainer">
	<div class="row justify-content-center">
	<div class="card">
		<h1>View Attendance</h1>
		<div class="card-body">
		<form name="my-form" onsubmit="return validform()" action="att1.jsp" method="post">
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