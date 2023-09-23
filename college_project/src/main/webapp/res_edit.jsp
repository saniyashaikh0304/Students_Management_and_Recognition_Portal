<%@page import="java.sql.*"%>
<html>
<head>
<title>student Update</title>
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
					<li><a href="adminhome.jsp" class="linkcol"
						style="background-color: #f4beb2; color: #0e3d6b !important;">Add
							New Student</a></li>
					<li><a href="view.jsp" class="linkcol">View Students</a></li>
					<li><a href="attend.jsp" class="linkcol">Add Attendance</a></li>
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

	<!-- Add from start -->
	<main class="my-form f1">
		<div class="cotainer">
			<div class="row justify-content-center">
				<div class="card">
					<h1>Update Marks</h1>
					<div class="card-body">
						<form name="my-form" onsubmit="return validform()"
							action="res_edit_action.jsp" method="post">
							<div class="form-group row">
							
							<% 
							Class.forName("com.mysql.jdbc.Driver");
				    		Connection con = DriverManager.getConnection("jdbc:mysql://localhost:3306/project?characterEncoding=latin1", "library", "securelib");
				    		String id1 = request.getParameter("id");
				    		PreparedStatement ps = con.prepareStatement("select * from result where id = ?");
				    		ps.setString(1, id1);
							ResultSet rs = ps.executeQuery();
							while(rs.next()){
								
							%>
							
								<div class="form-group row">
								<label for="id" class="col-md-4 col-form-label text-md-right">ID:
								</label>
								<div class="col-md-6">
									<input type="text" class="form-control" name="id" value="<%=rs.getString("id") %>">
								</div>
							</div>

							<div class="form-group row">
								<label for="sub1" class="col-md-4 col-form-label text-md-right">ENGLISH:
								</label>
								<div class="col-md-6">
									<input type="text" class="form-control" name="s1" value="<%=rs.getString("s1") %>">
								</div>
							</div>

							<div class="form-group row">
								<label for="sub2" class="col-md-4 col-form-label text-md-right">MATHS:
								</label>
								<div class="col-md-6">
									<input type="text" class="form-control" name="s2" value="<%=rs.getString("s2") %>">
								</div>
							</div>

							<div class="form-group row">
								<label for="sub3" class="col-md-4 col-form-label text-md-right">SCIENCE:
								</label>
								<div class="col-md-6">
									<input type="text" class="form-control" name="s3" value="<%=rs.getString("s3") %>">
								</div>
							</div>

							<div class="form-group row">
								<label for="sub4" class="col-md-4 col-form-label text-md-right">SOCIAL-SCIENCE:
								</label>
								<div class="col-md-6">
									<input type="text" class="form-control" name="s4" value="<%=rs.getString("s4") %>">
								</div>
							</div>

							<div class="form-group row">
								<label for="sub5" class="col-md-4 col-form-label text-md-right">HINDI:
								</label>
								<div class="col-md-6">
									<input type="text" class="form-control" name="s5" value="<%=rs.getString("s5") %>">
								</div>
							</div>

							<div class="form-group row">
								<label for="sub6" class="col-md-4 col-form-label text-md-right">MARATHI:
								</label>
								<div class="col-md-6">
									<input type="text" class="form-control" name="s6" value="<%=rs.getString("s6") %>">
								</div>
							</div>
							<%} %>

							<div>
								<button type="submit" class="btn btn-primary">UPDATE</button>
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