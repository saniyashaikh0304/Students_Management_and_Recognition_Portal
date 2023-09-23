<%@page import="java.sql.*"%>


<%
String id = request.getParameter("id");
String password = request.getParameter("password");
Class.forName("com.mysql.jdbc.Driver");
Connection con = DriverManager.getConnection("jdbc:mysql://localhost:3306/project?characterEncoding=latin1", "library",
		"securelib");
Statement st = con.createStatement();
ResultSet rs = st.executeQuery("select * from students where id='" + id + "' and password='" + password + "'");
if (rs.next()) {

	session.setAttribute("id", id);
	response.sendRedirect("student.html");
} else {
	out.println("<h1>Invalid password <a href='stlogin.html'>try again</a></h1>");
}
%>

</body>
</html>