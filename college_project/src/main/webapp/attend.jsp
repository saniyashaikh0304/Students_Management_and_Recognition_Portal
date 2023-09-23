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
					<li><a href="adminhome.jsp" class="linkcol">Add
							New Student</a></li>
					<li><a href="view.jsp" class="linkcol">View Students</a></li>
					<li><a href="attend.jsp" class="linkcol active" style="background-color: #f4beb2; color: #0e3d6b !important;">Add Attendance</a></li>
					<li><a href="att_view.jsp" class="linkcol">View Attendance</a></li>
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
	<!-- view form start -->
	<h1>ADD ATTENDANCE</h1>
	<div class="panel-body">
		<form action="att_ins.jsp" method="post">
			<div class="form-group row">
				<label for="full_name" class="col-md-4 col-form-label text-md-right">DATE:
				</label>
				<div class="col-md-4">
					<input type="date" class="form-control" name="att_date" required="required">
				</div>
			</div>
			<table id="table"
				class="table table-striped table-hover table-bordered">
				<thead>
					<tr>
						<th>Student Id</th>
						<th>Student Name</th>
						<th>Status</th>
					</tr>
				</thead>
				<tbody>
					<%
					Class.forName("com.mysql.jdbc.Driver");
					Connection con = DriverManager.getConnection("jdbc:mysql://localhost:3306/project?characterEncoding=latin1", "library",
							"securelib");
					Statement st = con.createStatement();
					ResultSet rs = st.executeQuery("select * from students");
					while (rs.next()) {
					%>
					<tr>

						<td><input type="text" name="id" value="<%=rs.getInt(1)%>"></td>
						<td><%=rs.getString(2)%></td>
						<td><input name="status" type="checkbox" value="<%=rs.getString(1)%>" checked> PRESENT</td>

					</tr>
					<%
					}
					%>
				</tbody>
			</table>
			<input type="submit" value="Take Attendance" class="btn btn-primary">
			<input type="reset" class="btn btn-danger" value="Clear">
		</form>
	</div>
	</div>
	</div>
	</div>
	</div>


	<!-- view form end -->
</body>
</html>