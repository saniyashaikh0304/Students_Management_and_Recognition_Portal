<!DOCTYPE html>
<html>
<head>
<title>view students</title>
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
					<li><a href="att_view.jsp" class="linkcol active" style="background-color: #f4beb2; color: #0e3d6b !important;">View Attendance</a></li>
					<li><a href="result.jsp" class="linkcol">Add
							Marks</a></li>
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

	<!-- view form start -->
	<div class="tbl-header">
		<table cellpadding="0" cellspacing="0" border="0">
			<thead style="background-color: pink;">
				<tr>
					<th>ID</th>
					<th>DATE</th>
					<th>STATUS</th>
				</tr>
			</thead>
	</div>
	<div class="tbl-content">
			<tbody>
				<%@page import="java.sql.*"%>
				<%
      	try{
      		Class.forName("com.mysql.jdbc.Driver");
    		Connection con = DriverManager.getConnection("jdbc:mysql://localhost:3306/project?characterEncoding=latin1", "library", "securelib");
    		Statement st = con.createStatement();
			String id = request.getParameter("id");
    		ResultSet rs = st.executeQuery("select * from attend where id ='"+id+"' ORDER BY att_date");
    		while(rs.next()){
      %>
				<tr>
					<td><%=rs.getString(1) %></td>
					<td><%=rs.getString(2) %></td>
					<td><%=rs.getString(3) %></td>
				</tr>
			</tbody>
			<% } }
      catch(Exception e){}
     %>
		</table>
	</div>
	<!-- view form end -->

</body>
</html>