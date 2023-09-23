<%@page import="java.sql.*"%>
<!DOCTYPE html>
<html>
<head>
<title>Home Page</title>
<link rel="stylesheet"
	href="https://maxcdn.bootstrapcdn.com/bootstrap/3.4.1/css/bootstrap.min.css">
<link rel="stylesheet"
	href="https://cdnjs.cloudflare.com/ajax/libs/font-awesome/4.7.0/css/font-awesome.min.css">
<script
	src="https://ajax.googleapis.com/ajax/libs/jquery/3.6.0/jquery.min.js"></script>
</head>
<%
try {
	String id = request.getParameter("id");
	Class.forName("com.mysql.jdbc.Driver");
	Connection con = DriverManager.getConnection("jdbc:mysql://localhost:3306/project?characterEncoding=latin1",
	"library", "securelib");
	Statement st = con.createStatement();
	ResultSet rs = st.executeQuery(
	"select * from students inner join result where students.id=result.id and students.id='" + id + "'");
	if (rs.next()) {
%>

<!-- Navigation bar Begin -->
<nav class="navbar navbar-default">
	<div class="container-fluid"
		style="padding-left: 0px !important; background-color: #3d4b78 !important;">
		<div class="navbar-header">
			<img src="images/logo1.jpg"
				style="height: 120px; width: 200px; background-color: pink; position: relative; left: 40px;">
		</div>
		<div class="navcls">
	<ul class="nav navbar-nav navbar-right" style="position: relative; left: -50px; top: 30px; background-color: #0e3d6b !important; font-size: 18px; border: 3px solid #f4beb2; border-radius: 5px; margin-left: 20px;">
		<li><a href="stlogin.html" style="color: #f4beb2 !important;"><span class="glyphicon glyphicon-log-in"></span> Logout</a></li>
	</ul>
	</div>
	</div>
</nav>
<br>
<!-- Navigation bar End -->
<style>
table {
	width: 100%;
	table-layout: fixed;
}

th {
	padding: 20px 15px;
	text-align: left;
	font-weight: 500;
	font-size: 12px;
	color: #fff;
	text-transform: uppercase;
	border: 2px solid rgba(255, 255, 255, 0.3);
}

/* demo styles */
@import
	url(https://fonts.googleapis.com/css?family=Roboto:400,500,300,700);

body {
	background-color: #929fca;
	font-family: "Georgia", serif;
}
</style>
<!--for demo wrap-->
<div class="tbl-header">
	<table cellpadding="0" cellspacing="0" border="0">
		<thead>
			<tr>
				<th colspan="2"><center>institution Name: ARIBA CLASSES</th>
				<th colspan="2"><center>ID:
						<%=rs.getString(1)%></center></th>
			</tr>
		</thead>
		<thead>
			<tr>
				<th style="text-align: center; color: white;">Name: <%=rs.getString(2)%></th>
				<th style="text-align: center; color: white;">Email ID: <%=rs.getString(3)%></th>
				<th style="text-align: center; color: white;">Gender: <%=rs.getString(6)%></th>
				<th><a title="print screen" alt="print screen"
					onclick="window.print();" target="_blank" style="cursor: pointer;"><center>
							<img src="images/print.png">
						</center></a></th>
			</tr>
		</thead>
	</table>
</div>
<style>
html {
	font-family: arial;
	font-size: 25px;
}

td {
	border: 2px solid #726E6D;
	padding: 15px;
	color: black;
	text-align: center;
}

thead {
	font-weight: bold;
	text-align: center;
	background: #3d4b78;
	color: white;
}

table {
	border-collapse: collapse;
}

.footer {
	text-align: right;
	font-weight: bold;
}

tbody>tr:nth-child(odd) {
	background: #D1D0CE;
}
</style>
<head>
<hr class="new1">
</head>
<body>
	<table>
		<thead>
			<tr>
				<td colspan="3">Course</td>
				<td rowspan="2">Type</td>
				<td rowspan="2">Full Marks</td>
				<td rowspan="2">Passing Marks</td>
				<td rowspan="2">Obtained Marks</td>

			</tr>
			<tr>
				<td>Code</td>
				<td colspan="2">Name</td>
			</tr>
		</thead>
		<tbody>
			<tr>
				<td>1</td>
				<td colspan="2">ENGLISH</td>
				<td>Theory</td>
				<td>100</td>
				<td>35</td>
				<td><%=rs.getString(9)%></td>
			</tr>
			<tr>
				<td>2</td>
				<td colspan="2">MATHS</td>
				<td>Theory</td>
				<td>100</td>
				<td>35</td>
				<td><%=rs.getString(10)%></td>
			</tr>
			<tr>
				<td>3</td>
				<td colspan="2">SCIENCE</td>
				<td>Theory</td>
				<td>100</td>
				<td>35</td>
				<td><%=rs.getString(11)%></td>
			</tr>
			<tr>
				<td>4</td>
				<td colspan="2">SOCIAL-SCIENCE</td>
				<td>Theory</td>
				<td>100</td>
				<td>35</td>
				<td><%=rs.getString(12)%></td>
			</tr>
			<tr>
				<td>5</td>
				<td colspan="2">HINDI</td>
				<td>Theory</td>
				<td>100</td>
				<td>35</td>
				<td><%=rs.getString(13)%></td>
			</tr>
			<tr>
				<td>6</td>
				<td colspan="2">MARATHI</td>
				<td>Theory</td>
				<td>100</td>
				<td>35</td>
				<td><%=rs.getString(14)%></td>
			</tr>
		</tbody>
		<tfoot>
			<tr>
				<td colspan="4" class="footer">Total Marks</td>
				<td>600</td>
				<td>210</td>
				<td>
					<%
					int sum = rs.getInt(9) + rs.getInt(10) + rs.getInt(11) + rs.getInt(12) + rs.getInt(13) + rs.getInt(14);
					out.println(sum);
					%>
				</td>
			</tr>
			<tr>
				<td colspan="4" class="footer">Percentage</td>
				<td colspan="3">
					<%
					out.println((sum * 100) / 600); out.print("%");
					%>
				</td>
			</tr>
	</table>
</body>
<%
} else {
response.sendRedirect("error.html");
}
} catch (Exception e) {
}
%>
