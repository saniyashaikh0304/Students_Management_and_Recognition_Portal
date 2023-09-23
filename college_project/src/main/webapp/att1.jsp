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
	<!-- view form start -->
	<table>
	<div>
	<h4>Print: &nbsp;<a title="print screen" alt="print screen" onclick="window.print();" target="_blank" style="cursor:pointer;"><img src="images/print.png"></a></h4>
	</div>
	</table>
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
					try {
						Class.forName("com.mysql.jdbc.Driver");
						Connection con = DriverManager.getConnection("jdbc:mysql://localhost:3306/project?characterEncoding=latin1",
						"library", "securelib");
						Statement st = con.createStatement();
						String id = request.getParameter("id");
						ResultSet rs = st.executeQuery("select * from attend where id ='" + id + "' ORDER BY att_date");
						while (rs.next()) {
					%>
					<tr>
						<td><%=rs.getString(1)%></td>
						<td><%=rs.getString(2)%></td>
						<td><%=rs.getString(3)%></td>
					</tr>
				</tbody>
				<%
				}
				} catch (Exception e) {
				}
				%>
			
		</table>
	</div>
	<!-- view form end -->

</body>
</html>